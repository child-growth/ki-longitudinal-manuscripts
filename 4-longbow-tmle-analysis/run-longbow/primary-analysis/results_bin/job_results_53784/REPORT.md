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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        meducyrs    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ---------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                0       71     202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                1        4     202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 0       62     202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 1        4     202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              0       59     202
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              1        2     202
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                0       74     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                 0       59     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                 1        1     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium              0       82     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium              1        1     217
0-24 months   ki0047075b-MAL-ED          INDIA                          High                0       56     210
0-24 months   ki0047075b-MAL-ED          INDIA                          High                1        4     210
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                 0       63     210
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                 1       10     210
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium              0       72     210
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium              1        5     210
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                0       53     223
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                1        0     223
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 0       93     223
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 1        1     223
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              0       74     223
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              1        2     223
0-24 months   ki0047075b-MAL-ED          PERU                           High                0       85     283
0-24 months   ki0047075b-MAL-ED          PERU                           High                1        0     283
0-24 months   ki0047075b-MAL-ED          PERU                           Low                 0       98     283
0-24 months   ki0047075b-MAL-ED          PERU                           Low                 1        0     283
0-24 months   ki0047075b-MAL-ED          PERU                           Medium              0       99     283
0-24 months   ki0047075b-MAL-ED          PERU                           Medium              1        1     283
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       79     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0      133     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        2     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       61     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0     275
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0        9     208
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0     208
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       63     208
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0     208
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0      136     208
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0     208
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                0      150     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                1        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                 0       98     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                 1        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium              0      102     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium              1        7     373
0-24 months   ki1000108-IRC              INDIA                          High                0      113     410
0-24 months   ki1000108-IRC              INDIA                          High                1       11     410
0-24 months   ki1000108-IRC              INDIA                          Low                 0      131     410
0-24 months   ki1000108-IRC              INDIA                          Low                 1       16     410
0-24 months   ki1000108-IRC              INDIA                          Medium              0      118     410
0-24 months   ki1000108-IRC              INDIA                          Medium              1       21     410
0-24 months   ki1000109-EE               PAKISTAN                       High                0       15     374
0-24 months   ki1000109-EE               PAKISTAN                       High                1        0     374
0-24 months   ki1000109-EE               PAKISTAN                       Low                 0      295     374
0-24 months   ki1000109-EE               PAKISTAN                       Low                 1       31     374
0-24 months   ki1000109-EE               PAKISTAN                       Medium              0       31     374
0-24 months   ki1000109-EE               PAKISTAN                       Medium              1        2     374
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                0      289    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                1       10    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 0      526    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 1       76    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              0      437    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              1       28    1366
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                0       36     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                1        2     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 0      242     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 1       55     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              0       32     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              1        8     375
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                0      144     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                1       11     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                 0      174     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                 1       19     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium              0      169     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium              1       17     534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                0      218     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                1        2     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 0      187     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 1        9     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              0      221     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              1        4     641
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                0      246     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                1        0     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 0      220     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 1       14     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              0      238     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              1       12     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      535    2158
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       18    2158
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0       75    2158
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1        1    2158
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0     1490    2158
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       39    2158
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                0      105     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                1        1     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                 0       66     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                 1        1     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium              0       76     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium              1        2     251
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                0       66     594
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                1        8     594
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 0      360     594
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 1       57     594
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              0       88     594
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              1       15     594
0-24 months   ki1119695-PROBIT           BELARUS                        High                0     2758   16581
0-24 months   ki1119695-PROBIT           BELARUS                        High                1       16   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Low                 0     5899   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Low                 1       68   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Medium              0     7765   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Medium              1       75   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                0     5030    9513
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                1       79    9513
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0     1953    9513
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1       48    9513
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0     2362    9513
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1       41    9513
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                0      203    1047
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                1        6    1047
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 0      462    1047
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 1       20    1047
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              0      346    1047
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              1       10    1047
0-24 months   ki1135781-COHORTS          INDIA                          High                0      579    4519
0-24 months   ki1135781-COHORTS          INDIA                          High                1       31    4519
0-24 months   ki1135781-COHORTS          INDIA                          Low                 0     1254    4519
0-24 months   ki1135781-COHORTS          INDIA                          Low                 1      218    4519
0-24 months   ki1135781-COHORTS          INDIA                          Medium              0     2248    4519
0-24 months   ki1135781-COHORTS          INDIA                          Medium              1      189    4519
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                0     1013    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                1       42    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 0      787    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 1       61    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              0      867    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              1       41    2811
0-24 months   ki1148112-LCNI-5           MALAWI                         High                0      262     713
0-24 months   ki1148112-LCNI-5           MALAWI                         High                1        1     713
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                 0      225     713
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                 1        2     713
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium              0      220     713
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium              1        3     713
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                0     5301   15788
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                1      283   15788
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 0     4926   15788
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 1      365   15788
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              0     4664   15788
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              1      249   15788
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                0     1745    5272
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                1      105    5272
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 0     1557    5272
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 1      176    5272
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              0     1544    5272
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              1      145    5272
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                0       75     202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                1        0     202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                 0       61     202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                 1        5     202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium              0       61     202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium              1        0     202
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                0       74     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                 0       59     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                 1        1     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium              0       83     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium              1        0     217
0-6 months    ki0047075b-MAL-ED          INDIA                          High                0       54     209
0-6 months    ki0047075b-MAL-ED          INDIA                          High                1        5     209
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                 0       67     209
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                 1        6     209
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium              0       72     209
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium              1        5     209
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                0       52     223
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                1        1     223
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                 0       92     223
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                 1        2     223
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium              0       72     223
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium              1        4     223
0-6 months    ki0047075b-MAL-ED          PERU                           High                0       85     283
0-6 months    ki0047075b-MAL-ED          PERU                           High                1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           Low                 0       98     283
0-6 months    ki0047075b-MAL-ED          PERU                           Low                 1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           Medium              0      100     283
0-6 months    ki0047075b-MAL-ED          PERU                           Medium              1        0     283
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       79     274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0     274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0      132     274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        2     274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       61     274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0     274
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0        9     208
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0     208
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       63     208
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0     208
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0      136     208
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0     208
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                0      133     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                1       23     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                 0       84     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                 1       13     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium              0       91     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium              1       14     358
0-6 months    ki1000108-IRC              INDIA                          High                0      104     402
0-6 months    ki1000108-IRC              INDIA                          High                1       18     402
0-6 months    ki1000108-IRC              INDIA                          Low                 0      119     402
0-6 months    ki1000108-IRC              INDIA                          Low                 1       24     402
0-6 months    ki1000108-IRC              INDIA                          Medium              0      115     402
0-6 months    ki1000108-IRC              INDIA                          Medium              1       22     402
0-6 months    ki1000109-EE               PAKISTAN                       High                0       15     368
0-6 months    ki1000109-EE               PAKISTAN                       High                1        0     368
0-6 months    ki1000109-EE               PAKISTAN                       Low                 0      296     368
0-6 months    ki1000109-EE               PAKISTAN                       Low                 1       24     368
0-6 months    ki1000109-EE               PAKISTAN                       Medium              0       32     368
0-6 months    ki1000109-EE               PAKISTAN                       Medium              1        1     368
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                0       36     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                1        5     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                 0       67     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                 1        2     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium              0       55     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium              1        4     169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                0      216     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                1        4     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                 0      190     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                 1        5     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium              0      218     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium              1        5     638
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                0       57     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                1        0     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                 0      105     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                 1        2     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium              0       83     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium              1        3     250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      506    2054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       17    2054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0       72    2054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1        1    2054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0     1424    2054
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       34    2054
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                0       63     564
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                1        6     564
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                 0      353     564
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                 1       44     564
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium              0       86     564
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium              1       12     564
0-6 months    ki1119695-PROBIT           BELARUS                        High                0     2028   13545
0-6 months    ki1119695-PROBIT           BELARUS                        High                1      180   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Low                 0     4416   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Low                 1      417   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Medium              0     5955   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Medium              1      549   13545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                0      347     630
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                1        9     630
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0      118     630
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1        1     630
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0      151     630
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1        4     630
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                0      301     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                1       15     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                 0      243     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                 1       19     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium              0      257     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium              1       18     853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                0       22      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                1        1      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                 0       15      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                 1        1      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium              0       11      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium              1        0      50
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                0       71     202
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                1        4     202
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 0       62     202
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 1        4     202
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              0       59     202
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              1        2     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                0       74     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                1        0     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                 0       59     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                 1        1     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium              0       82     217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium              1        1     217
6-24 months   ki0047075b-MAL-ED          INDIA                          High                0       56     210
6-24 months   ki0047075b-MAL-ED          INDIA                          High                1        4     210
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                 0       63     210
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                 1       10     210
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium              0       72     210
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium              1        5     210
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                0       53     223
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                1        0     223
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 0       93     223
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                 1        1     223
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              0       74     223
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium              1        2     223
6-24 months   ki0047075b-MAL-ED          PERU                           High                0       85     283
6-24 months   ki0047075b-MAL-ED          PERU                           High                1        0     283
6-24 months   ki0047075b-MAL-ED          PERU                           Low                 0       98     283
6-24 months   ki0047075b-MAL-ED          PERU                           Low                 1        0     283
6-24 months   ki0047075b-MAL-ED          PERU                           Medium              0       99     283
6-24 months   ki0047075b-MAL-ED          PERU                           Medium              1        1     283
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       79     275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0     275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0      133     275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        2     275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       61     275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0     275
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                0        9     208
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                1        0     208
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 0       63     208
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                 1        0     208
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              0      136     208
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium              1        0     208
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                0      150     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                1        8     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                 0       98     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                 1        8     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium              0      102     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium              1        7     373
6-24 months   ki1000108-IRC              INDIA                          High                0      113     410
6-24 months   ki1000108-IRC              INDIA                          High                1       11     410
6-24 months   ki1000108-IRC              INDIA                          Low                 0      131     410
6-24 months   ki1000108-IRC              INDIA                          Low                 1       16     410
6-24 months   ki1000108-IRC              INDIA                          Medium              0      118     410
6-24 months   ki1000108-IRC              INDIA                          Medium              1       21     410
6-24 months   ki1000109-EE               PAKISTAN                       High                0       15     374
6-24 months   ki1000109-EE               PAKISTAN                       High                1        0     374
6-24 months   ki1000109-EE               PAKISTAN                       Low                 0      295     374
6-24 months   ki1000109-EE               PAKISTAN                       Low                 1       31     374
6-24 months   ki1000109-EE               PAKISTAN                       Medium              0       31     374
6-24 months   ki1000109-EE               PAKISTAN                       Medium              1        2     374
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                0      289    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                1       10    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 0      526    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                 1       76    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              0      437    1366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium              1       28    1366
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                0       36     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                1        2     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 0      242     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                 1       55     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              0       32     375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium              1        8     375
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                0      144     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                1       11     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                 0      174     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                 1       19     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium              0      169     534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium              1       17     534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                0      218     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                1        2     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 0      187     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 1        9     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              0      221     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              1        4     641
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                0      246     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                1        0     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 0      220     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                 1       14     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              0      238     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium              1       12     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      535    2158
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       18    2158
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0       75    2158
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1        1    2158
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0     1490    2158
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       39    2158
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                0      105     251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                1        1     251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                 0       66     251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                 1        1     251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium              0       76     251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium              1        2     251
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                0       66     594
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                1        8     594
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 0      360     594
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 1       57     594
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              0       88     594
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              1       15     594
6-24 months   ki1119695-PROBIT           BELARUS                        High                0     2758   16581
6-24 months   ki1119695-PROBIT           BELARUS                        High                1       16   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Low                 0     5899   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Low                 1       68   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Medium              0     7765   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Medium              1       75   16581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                0     5030    9513
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                1       79    9513
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0     1953    9513
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1       48    9513
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0     2362    9513
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1       41    9513
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                0      203    1047
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                1        6    1047
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 0      462    1047
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                 1       20    1047
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              0      346    1047
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium              1       10    1047
6-24 months   ki1135781-COHORTS          INDIA                          High                0      579    4519
6-24 months   ki1135781-COHORTS          INDIA                          High                1       31    4519
6-24 months   ki1135781-COHORTS          INDIA                          Low                 0     1254    4519
6-24 months   ki1135781-COHORTS          INDIA                          Low                 1      218    4519
6-24 months   ki1135781-COHORTS          INDIA                          Medium              0     2248    4519
6-24 months   ki1135781-COHORTS          INDIA                          Medium              1      189    4519
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                0     1013    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                1       42    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 0      787    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                 1       61    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              0      867    2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium              1       41    2811
6-24 months   ki1148112-LCNI-5           MALAWI                         High                0      262     713
6-24 months   ki1148112-LCNI-5           MALAWI                         High                1        1     713
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                 0      225     713
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                 1        2     713
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium              0      220     713
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium              1        3     713
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                0     5301   15788
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                1      283   15788
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 0     4926   15788
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 1      365   15788
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              0     4664   15788
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              1      249   15788
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                0     1745    5272
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                1      105    5272
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 0     1557    5272
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 1      176    5272
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              0     1544    5272
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              1      145    5272


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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




# Results Detail

## Results Plots
![](/tmp/f5d437a0-04ef-4bc5-af22-0546971ed69c/3ebce3f1-fa5f-49fe-b233-838da2ffdd98/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f5d437a0-04ef-4bc5-af22-0546971ed69c/3ebce3f1-fa5f-49fe-b233-838da2ffdd98/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f5d437a0-04ef-4bc5-af22-0546971ed69c/3ebce3f1-fa5f-49fe-b233-838da2ffdd98/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f5d437a0-04ef-4bc5-af22-0546971ed69c/3ebce3f1-fa5f-49fe-b233-838da2ffdd98/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0506329   0.0164006   0.0848652
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0754717   0.0251181   0.1258253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181372   0.1103031
0-24 months   ki1000108-IRC              INDIA         High                 NA                0.0862347   0.0358462   0.1366232
0-24 months   ki1000108-IRC              INDIA         Low                  NA                0.1066792   0.0561937   0.1571647
0-24 months   ki1000108-IRC              INDIA         Medium               NA                0.1501934   0.0898051   0.2105816
0-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0375958   0.0215488   0.0536428
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1256370   0.0819409   0.1693331
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0588288   0.0304520   0.0872055
0-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0712106   0.0310302   0.1113909
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.0994117   0.0573101   0.1415133
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.0942542   0.0522188   0.1362896
0-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1081081   0.0372999   0.1789163
0-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1366906   0.1036918   0.1696895
0-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.1456311   0.0774529   0.2138092
0-24 months   ki1119695-PROBIT           BELARUS       High                 NA                0.0056801   0.0013756   0.0099847
0-24 months   ki1119695-PROBIT           BELARUS       Low                  NA                0.0117934   0.0059001   0.0176868
0-24 months   ki1119695-PROBIT           BELARUS       Medium               NA                0.0094588   0.0050526   0.0138650
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0149423   0.0116354   0.0182492
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0238103   0.0166698   0.0309507
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0171869   0.0117268   0.0226469
0-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.0287081   0.0060586   0.0513577
0-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0414938   0.0236814   0.0593061
0-24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0280899   0.0109180   0.0452618
0-24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0518690   0.0344009   0.0693372
0-24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.1444749   0.1264411   0.1625087
0-24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.0773732   0.0667263   0.0880200
0-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0424298   0.0298534   0.0550063
0-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0703407   0.0528048   0.0878766
0-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0429874   0.0296533   0.0563216
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0523613   0.0454943   0.0592282
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0647967   0.0571607   0.0724328
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0516411   0.0443900   0.0588922
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0585615   0.0447475   0.0723755
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0982283   0.0828394   0.1136171
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0869216   0.0718153   0.1020280
0-6 months    ki0047075b-MAL-ED          INDIA         High                 NA                0.0847458   0.0135108   0.1559808
0-6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                0.0821918   0.0190352   0.1453483
0-6 months    ki0047075b-MAL-ED          INDIA         Medium               NA                0.0649351   0.0097648   0.1201053
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.1504176   0.0937555   0.2070797
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.1414297   0.0703143   0.2125450
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1255141   0.0598133   0.1912149
0-6 months    ki1000108-IRC              INDIA         High                 NA                0.1604965   0.0987244   0.2222686
0-6 months    ki1000108-IRC              INDIA         Low                  NA                0.1794427   0.1170796   0.2418059
0-6 months    ki1000108-IRC              INDIA         Medium               NA                0.1630652   0.1018998   0.2242305
0-6 months    ki1113344-GMS-Nepal        NEPAL         High                 NA                0.0869565   0.0204130   0.1535000
0-6 months    ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1108312   0.0799239   0.1417386
0-6 months    ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.1224490   0.0574907   0.1874072
0-6 months    ki1119695-PROBIT           BELARUS       High                 NA                0.0824402   0.0490149   0.1158654
0-6 months    ki1119695-PROBIT           BELARUS       Low                  NA                0.0845231   0.0583935   0.1106526
0-6 months    ki1119695-PROBIT           BELARUS       Medium               NA                0.0834385   0.0551924   0.1116847
0-6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0474286   0.0238113   0.0710459
0-6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0723615   0.0408878   0.1038353
0-6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0649306   0.0354871   0.0943742
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0506329   0.0164006   0.0848652
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0754717   0.0251181   0.1258253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181372   0.1103031
6-24 months   ki1000108-IRC              INDIA         High                 NA                0.0857649   0.0348611   0.1366687
6-24 months   ki1000108-IRC              INDIA         Low                  NA                0.1086559   0.0580912   0.1592207
6-24 months   ki1000108-IRC              INDIA         Medium               NA                0.1484573   0.0884055   0.2085091
6-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0375958   0.0215488   0.0536428
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1256370   0.0819409   0.1693331
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0588288   0.0304520   0.0872055
6-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0717937   0.0307846   0.1128029
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.0995150   0.0573503   0.1416797
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.0900854   0.0492577   0.1309132
6-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1081081   0.0372999   0.1789163
6-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1366906   0.1036918   0.1696895
6-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.1456311   0.0774529   0.2138092
6-24 months   ki1119695-PROBIT           BELARUS       High                 NA                0.0057071   0.0013629   0.0100513
6-24 months   ki1119695-PROBIT           BELARUS       Low                  NA                0.0119894   0.0061513   0.0178274
6-24 months   ki1119695-PROBIT           BELARUS       Medium               NA                0.0093478   0.0049097   0.0137859
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0149764   0.0116553   0.0182975
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0241262   0.0168544   0.0313980
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0174878   0.0118830   0.0230925
6-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.0287081   0.0060586   0.0513577
6-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0414938   0.0236814   0.0593061
6-24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0280899   0.0109180   0.0452618
6-24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0524910   0.0348785   0.0701036
6-24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.1453574   0.1272521   0.1634627
6-24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.0773497   0.0667040   0.0879954
6-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0415014   0.0291477   0.0538551
6-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0692428   0.0519810   0.0865046
6-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0429055   0.0297222   0.0560888
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0518924   0.0449726   0.0588122
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0640615   0.0565171   0.0716059
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0525629   0.0450513   0.0600745
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0589516   0.0451290   0.0727743
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0978032   0.0823119   0.1132946
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0870715   0.0718993   0.1022436


### Parameter: E(Y)


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA         NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1346801   0.1072037   0.1621566
0-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0176600   0.0150131   0.0203070
0-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0343840   0.0233416   0.0454263
0-24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0969241   0.0882972   0.1055510
0-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0568153   0.0526983   0.0609323
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0808042   0.0721841   0.0894244
0-6 months    ki0047075b-MAL-ED          INDIA         NA                   NA                0.0765550   0.0404216   0.1126884
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA         NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1099291   0.0840909   0.1357673
0-6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0846069   0.0570929   0.1121208
0-6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0616622   0.0372186   0.0861058
6-24 months   ki1000108-IRC              INDIA         NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1346801   0.1072037   0.1621566
6-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0095893   0.0052864   0.0138922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0176600   0.0150131   0.0203070
6-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0343840   0.0233416   0.0454263
6-24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0969241   0.0882972   0.1055510
6-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0568153   0.0526983   0.0609323
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0808042   0.0721841   0.0894244


### Parameter: RR


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  High              1.4905660   0.5765449   3.853624
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               High              1.2683486   0.4732218   3.399481
0-24 months   ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA         Low                  High              1.2370795   0.5830670   2.624683
0-24 months   ki1000108-IRC              INDIA         Medium               High              1.7416811   0.8563183   3.542436
0-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  High              3.3417837   2.4756821   4.510885
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Medium               High              1.5647706   0.8438352   2.901641
0-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  High              1.3960248   0.6891714   2.827867
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               High              1.3235983   0.6447334   2.717266
0-24 months   ki1113344-GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  High              1.2643885   0.6291027   2.541204
0-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               High              1.3470874   0.6022147   3.013285
0-24 months   ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS       Low                  High              2.0762655   1.0293644   4.187903
0-24 months   ki1119695-PROBIT           BELARUS       Medium               High              1.6652459   0.8031041   3.452907
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              1.5934784   1.0977555   2.313059
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              1.1502152   0.7809756   1.694029
0-24 months   ki1135781-COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA     Low                  High              1.4453665   0.5887096   3.548582
0-24 months   ki1135781-COHORTS          GUATEMALA     Medium               High              0.9784644   0.3606476   2.654648
0-24 months   ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA         Low                  High              2.7853783   1.9454441   3.987949
0-24 months   ki1135781-COHORTS          INDIA         Medium               High              1.4917024   1.0371204   2.145533
0-24 months   ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  High              1.6578119   1.1256592   2.441538
0-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               High              1.0131413   0.6598878   1.555500
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  High              1.2374937   1.0442285   1.466528
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               High              0.9862464   0.8232128   1.181568
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  High              1.6773523   1.2665216   2.221447
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               High              1.4842799   1.1054987   1.992844
0-6 months    ki0047075b-MAL-ED          INDIA         High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA         Low                  High              0.9698630   0.3105336   3.029090
0-6 months    ki0047075b-MAL-ED          INDIA         Medium               High              0.7662338   0.2319037   2.531715
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  High              0.9402467   0.5008156   1.765248
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               High              0.8344377   0.4380275   1.589595
0-6 months    ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA         Low                  High              1.1180478   0.6641323   1.882202
0-6 months    ki1000108-IRC              INDIA         Medium               High              1.0160047   0.5925674   1.742022
0-6 months    ki1113344-GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL         Low                  High              1.2745589   0.5644641   2.877952
0-6 months    ki1113344-GMS-Nepal        NEPAL         Medium               High              1.4081630   0.5549605   3.573089
0-6 months    ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS       Low                  High              1.0252658   0.8448333   1.244234
0-6 months    ki1119695-PROBIT           BELARUS       Medium               High              1.0121105   0.8398099   1.219761
0-6 months    ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   Low                  High              1.5256935   0.7875686   2.955604
0-6 months    ki1135781-COHORTS          PHILIPPINES   Medium               High              1.3690178   0.6978110   2.685842
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  High              1.4905660   0.5765449   3.853624
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               High              1.2683486   0.4732218   3.399481
6-24 months   ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA         Low                  High              1.2669043   0.5953334   2.696046
6-24 months   ki1000108-IRC              INDIA         Medium               High              1.7309796   0.8438177   3.550874
6-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  High              3.3417837   2.4756821   4.510885
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Medium               High              1.5647706   0.8438352   2.901641
6-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  High              1.3861245   0.6802160   2.824604
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               High              1.2547814   0.6052221   2.601485
6-24 months   ki1113344-GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  High              1.2643885   0.6291027   2.541204
6-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               High              1.3470874   0.6022147   3.013285
6-24 months   ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS       Low                  High              2.1007920   1.0449468   4.223495
6-24 months   ki1119695-PROBIT           BELARUS       Medium               High              1.6379382   0.7835460   3.423975
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              1.6109467   1.1080925   2.341997
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              1.1676862   0.7907588   1.724282
6-24 months   ki1135781-COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA     Low                  High              1.4453665   0.5887096   3.548582
6-24 months   ki1135781-COHORTS          GUATEMALA     Medium               High              0.9784644   0.3606476   2.654648
6-24 months   ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA         Low                  High              2.7691855   1.9364938   3.959934
6-24 months   ki1135781-COHORTS          INDIA         Medium               High              1.4735796   1.0257487   2.116929
6-24 months   ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  High              1.6684437   1.1317431   2.459661
6-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               High              1.0338324   0.6742659   1.585145
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  High              1.2345066   1.0394419   1.466178
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               High              1.0129208   0.8429655   1.217142
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  High              1.6590416   1.2540543   2.194816
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               High              1.4769978   1.1010416   1.981326


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0110293   -0.0168377   0.0388962
0-24 months   ki1000108-IRC              INDIA         High                 NA                 0.0308385   -0.0137610   0.0754379
0-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.0458596    0.0250560   0.0666631
0-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0168044   -0.0185555   0.0521643
0-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.0265720   -0.0406554   0.0937994
0-24 months   ki1119695-PROBIT           BELARUS       High                 NA                 0.0039092   -0.0000537   0.0078720
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0027177    0.0002496   0.0051858
0-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0056758   -0.0150637   0.0264153
0-24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.0450551    0.0277825   0.0623277
0-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0087975   -0.0019555   0.0195504
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0044540   -0.0010340   0.0099421
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0222428    0.0107535   0.0337320
0-6 months    ki0047075b-MAL-ED          INDIA         High                 NA                -0.0081907   -0.0674787   0.0510972
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                -0.0107528   -0.0527961   0.0312905
0-6 months    ki1000108-IRC              INDIA         High                 NA                -0.0012925   -0.0539279   0.0513429
0-6 months    ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.0229725   -0.0403694   0.0863144
0-6 months    ki1119695-PROBIT           BELARUS       High                 NA                 0.0021667   -0.0104835   0.0148170
0-6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0135327   -0.0066140   0.0336794
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0110293   -0.0168377   0.0388962
6-24 months   ki1000108-IRC              INDIA         High                 NA                 0.0313083   -0.0137205   0.0763370
6-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.0458596    0.0250560   0.0666631
6-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0162213   -0.0198373   0.0522798
6-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.0265720   -0.0406554   0.0937994
6-24 months   ki1119695-PROBIT           BELARUS       High                 NA                 0.0038822   -0.0001216   0.0078860
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0026836    0.0002028   0.0051644
6-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0056758   -0.0150637   0.0264153
6-24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.0444331    0.0270383   0.0618278
6-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0097259   -0.0008334   0.0202852
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0049229   -0.0005942   0.0104401
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0218526    0.0104009   0.0333043


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.1788663   -0.4151376   0.5235371
0-24 months   ki1000108-IRC              INDIA         High                 NA                 0.2634119   -0.2284719   0.5583440
0-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.5495101    0.3421911   0.6914892
0-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.1909267   -0.3240990   0.5056264
0-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.1972973   -0.4926666   0.5683352
0-24 months   ki1119695-PROBIT           BELARUS       High                 NA                 0.4076596   -0.1006380   0.6812148
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.1538911    0.0041999   0.2810804
0-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.1650718   -0.7149568   0.5935145
0-24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.4648490    0.2598375   0.6130761
0-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.1717340   -0.0646497   0.3556335
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0783951   -0.0236404   0.1702598
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.2752672    0.1172797   0.4049783
0-6 months    ki0047075b-MAL-ED          INDIA         High                 NA                -0.1069915   -1.2256042   0.4493944
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                -0.0769902   -0.4238625   0.1853793
0-6 months    ki1000108-IRC              INDIA         High                 NA                -0.0081185   -0.3995603   0.2738413
0-6 months    ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.2089760   -0.6353748   0.6173850
0-6 months    ki1119695-PROBIT           BELARUS       High                 NA                 0.0256092   -0.1390309   0.1664516
0-6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.2219883   -0.1829896   0.4883283
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.1788663   -0.4151376   0.5235371
6-24 months   ki1000108-IRC              INDIA         High                 NA                 0.2674247   -0.2320749   0.5644204
6-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.5495101    0.3421911   0.6914892
6-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.1843011   -0.3435504   0.5047713
6-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.1972973   -0.4926666   0.5683352
6-24 months   ki1119695-PROBIT           BELARUS       High                 NA                 0.4048494   -0.1118034   0.6814147
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.1519606    0.0013742   0.2798396
6-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.1650718   -0.7149568   0.5935145
6-24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.4584315    0.2518926   0.6079487
6-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.1898580   -0.0419752   0.3701096
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0866476   -0.0161106   0.1790140
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.2704388    0.1130047   0.3999297
