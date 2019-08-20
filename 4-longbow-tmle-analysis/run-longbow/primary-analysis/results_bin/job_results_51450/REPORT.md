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
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                0       74     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                1        0     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                 0       59     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                 1        1     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium              0       81     216
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium              1        1     216
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       78     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0      132     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        2     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       61     273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0     273
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
0-24 months   ki1000109-EE               PAKISTAN                       Low                 0      300     374
0-24 months   ki1000109-EE               PAKISTAN                       Low                 1       26     374
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                0      218     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                1        2     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 0      187     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 1        9     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              0      220     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              1        4     640
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                0       64     589
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                1        8     589
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 0      354     589
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 1       61     589
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              0       86     589
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              1       16     589
0-24 months   ki1119695-PROBIT           BELARUS                        High                0     2758   16581
0-24 months   ki1119695-PROBIT           BELARUS                        High                1       16   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Low                 0     5899   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Low                 1       68   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Medium              0     7765   16581
0-24 months   ki1119695-PROBIT           BELARUS                        Medium              1       75   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                0     4915    9319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                1       78    9319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0     1915    9319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1       48    9319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0     2322    9319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1       41    9319
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                0     5243   15665
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                1      284   15665
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 0     4907   15665
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 1      361   15665
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              0     4618   15665
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              1      252   15665
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                0       69    2242
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                1        5    2242
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 0     1909    2242
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 1      180    2242
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              0       71    2242
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              1        8    2242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                0       75     202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                1        0     202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                 0       61     202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                 1        5     202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium              0       61     202
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium              1        0     202
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                0       74     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                1        0     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                 0       59     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                 1        1     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium              0       82     216
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium              1        0     216
0-6 months    ki0047075b-MAL-ED          INDIA                          High                0       54     209
0-6 months    ki0047075b-MAL-ED          INDIA                          High                1        5     209
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                 0       67     209
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                 1        6     209
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium              0       72     209
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium              1        5     209
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                0       52     222
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                1        0     222
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                 0       93     222
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                 1        1     222
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium              0       72     222
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium              1        4     222
0-6 months    ki0047075b-MAL-ED          PERU                           High                0       85     283
0-6 months    ki0047075b-MAL-ED          PERU                           High                1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           Low                 0       98     283
0-6 months    ki0047075b-MAL-ED          PERU                           Low                 1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           Medium              0      100     283
0-6 months    ki0047075b-MAL-ED          PERU                           Medium              1        0     283
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       78     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0      130     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        2     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       61     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0     271
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
0-6 months    ki1000109-EE               PAKISTAN                       High                0       15     363
0-6 months    ki1000109-EE               PAKISTAN                       High                1        0     363
0-6 months    ki1000109-EE               PAKISTAN                       Low                 0      290     363
0-6 months    ki1000109-EE               PAKISTAN                       Low                 1       25     363
0-6 months    ki1000109-EE               PAKISTAN                       Medium              0       31     363
0-6 months    ki1000109-EE               PAKISTAN                       Medium              1        2     363
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                0       36     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                1        5     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                 0       67     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                 1        2     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium              0       55     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium              1        4     169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                0      216     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                1        4     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                 0      190     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                 1        5     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium              0      217     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium              1        5     637
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                0       58     539
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                1        7     539
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                 0      334     539
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                 1       46     539
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium              0       82     539
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium              1       12     539
0-6 months    ki1119695-PROBIT           BELARUS                        High                0     2028   13545
0-6 months    ki1119695-PROBIT           BELARUS                        High                1      180   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Low                 0     4416   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Low                 1      417   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Medium              0     5955   13545
0-6 months    ki1119695-PROBIT           BELARUS                        Medium              1      549   13545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                0      333     608
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                1        9     608
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0      112     608
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1        1     608
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0      149     608
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1        4     608
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                0      301     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                1       15     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                 0      243     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                 1       19     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium              0      257     853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium              1       18     853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                0       19      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                1        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                 0       14      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                 1        1      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium              0       11      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium              1        0      46
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                0       71     202
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                1        4     202
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 0       62     202
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                 1        4     202
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              0       59     202
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium              1        2     202
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                0       74     216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                1        0     216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                 0       59     216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                 1        1     216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium              0       81     216
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium              1        1     216
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
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                0       78     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                1        0     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 0      132     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                 1        2     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              0       61     273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium              1        0     273
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
6-24 months   ki1000109-EE               PAKISTAN                       Low                 0      300     374
6-24 months   ki1000109-EE               PAKISTAN                       Low                 1       26     374
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                0      218     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                1        2     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 0      187     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                 1        9     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              0      220     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium              1        4     640
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                0       64     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                1        8     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 0      354     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                 1       61     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              0       86     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium              1       16     589
6-24 months   ki1119695-PROBIT           BELARUS                        High                0     2758   16581
6-24 months   ki1119695-PROBIT           BELARUS                        High                1       16   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Low                 0     5899   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Low                 1       68   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Medium              0     7765   16581
6-24 months   ki1119695-PROBIT           BELARUS                        Medium              1       75   16581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                0     4915    9319
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                1       78    9319
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 0     1915    9319
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                 1       48    9319
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              0     2322    9319
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium              1       41    9319
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                0     5243   15665
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                1      284   15665
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 0     4907   15665
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                 1      361   15665
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              0     4618   15665
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium              1      252   15665
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                0       69    2242
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                1        5    2242
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 0     1909    2242
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                 1      180    2242
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              0       71    2242
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium              1        8    2242


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/5c713999-683d-437b-996e-4db1c39aabeb/88823426-8e79-4b2a-a792-3f5d24af3320/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5c713999-683d-437b-996e-4db1c39aabeb/88823426-8e79-4b2a-a792-3f5d24af3320/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5c713999-683d-437b-996e-4db1c39aabeb/88823426-8e79-4b2a-a792-3f5d24af3320/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5c713999-683d-437b-996e-4db1c39aabeb/88823426-8e79-4b2a-a792-3f5d24af3320/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0506329   0.0164006   0.0848652
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0754717   0.0251181   0.1258253
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181372   0.1103031
0-24 months   ki1000108-IRC              INDIA         High                 NA                0.0881305   0.0373923   0.1388688
0-24 months   ki1000108-IRC              INDIA         Low                  NA                0.1064481   0.0558676   0.1570286
0-24 months   ki1000108-IRC              INDIA         Medium               NA                0.1483846   0.0882659   0.2085034
0-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0375958   0.0215488   0.0536428
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1256370   0.0819409   0.1693331
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0588288   0.0304520   0.0872055
0-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0726079   0.0307618   0.1144541
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.0959274   0.0536425   0.1382123
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.0900806   0.0486149   0.1315464
0-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1111111   0.0384582   0.1837641
0-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1469880   0.1128913   0.1810846
0-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.1568627   0.0862268   0.2274987
0-24 months   ki1119695-PROBIT           BELARUS       High                 NA                0.0056391   0.0012138   0.0100643
0-24 months   ki1119695-PROBIT           BELARUS       Low                  NA                0.0117737   0.0059834   0.0175641
0-24 months   ki1119695-PROBIT           BELARUS       Medium               NA                0.0094214   0.0049576   0.0138852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0153638   0.0119212   0.0188063
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0241318   0.0168529   0.0314107
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0172372   0.0116933   0.0227811
0-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.0287081   0.0060586   0.0513577
0-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0414938   0.0236814   0.0593061
0-24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0280899   0.0109180   0.0452618
0-24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0511249   0.0338120   0.0684378
0-24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.1448565   0.1266631   0.1630498
0-24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.0779349   0.0672483   0.0886214
0-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0427082   0.0298923   0.0555241
0-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0694956   0.0521613   0.0868299
0-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0428831   0.0297447   0.0560215
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0522756   0.0456578   0.0588935
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0641158   0.0568113   0.0714202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0517358   0.0441242   0.0593475
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0675676   0.0145705   0.1205647
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0861656   0.0712253   0.1011060
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.1012658   0.0175104   0.1850212
0-6 months    ki0047075b-MAL-ED          INDIA         High                 NA                0.0847458   0.0135108   0.1559808
0-6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                0.0821918   0.0190352   0.1453483
0-6 months    ki0047075b-MAL-ED          INDIA         Medium               NA                0.0649351   0.0097648   0.1201053
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.1482398   0.0919625   0.2045170
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.1374182   0.0673306   0.2075059
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1284090   0.0623627   0.1944553
0-6 months    ki1000108-IRC              INDIA         High                 NA                0.1481579   0.0851457   0.2111701
0-6 months    ki1000108-IRC              INDIA         Low                  NA                0.1743247   0.1124637   0.2361857
0-6 months    ki1000108-IRC              INDIA         Medium               NA                0.1601793   0.0995601   0.2207985
0-6 months    ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1076923   0.0322623   0.1831223
0-6 months    ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1210526   0.0882259   0.1538794
0-6 months    ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.1276596   0.0601357   0.1951834
0-6 months    ki1119695-PROBIT           BELARUS       High                 NA                0.0852902   0.0505304   0.1200499
0-6 months    ki1119695-PROBIT           BELARUS       Low                  NA                0.0847643   0.0588857   0.1106429
0-6 months    ki1119695-PROBIT           BELARUS       Medium               NA                0.0832579   0.0549852   0.1115305
0-6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0474923   0.0238686   0.0711160
0-6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0719956   0.0405003   0.1034910
0-6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0649845   0.0356393   0.0943296
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0506329   0.0164006   0.0848652
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0754717   0.0251181   0.1258253
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181372   0.1103031
6-24 months   ki1000108-IRC              INDIA         High                 NA                0.0836811   0.0325019   0.1348604
6-24 months   ki1000108-IRC              INDIA         Low                  NA                0.1066537   0.0557886   0.1575187
6-24 months   ki1000108-IRC              INDIA         Medium               NA                0.1494246   0.0892411   0.2096081
6-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0375958   0.0215488   0.0536428
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1256370   0.0819409   0.1693331
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0588288   0.0304520   0.0872055
6-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0712488   0.0297984   0.1126993
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.0979254   0.0554407   0.1404102
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.0900962   0.0484949   0.1316974
6-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1111111   0.0384582   0.1837641
6-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1469880   0.1128913   0.1810846
6-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.1568627   0.0862268   0.2274987
6-24 months   ki1119695-PROBIT           BELARUS       High                 NA                0.0057664   0.0013716   0.0101613
6-24 months   ki1119695-PROBIT           BELARUS       Low                  NA                0.0120079   0.0061679   0.0178479
6-24 months   ki1119695-PROBIT           BELARUS       Medium               NA                0.0093809   0.0049626   0.0137992
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0155528   0.0120225   0.0190831
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0244780   0.0171308   0.0318253
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0172260   0.0116558   0.0227961
6-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.0287081   0.0060586   0.0513577
6-24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0414938   0.0236814   0.0593061
6-24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0280899   0.0109180   0.0452618
6-24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0512549   0.0337969   0.0687128
6-24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.1451872   0.1270525   0.1633219
6-24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.0777540   0.0670897   0.0884184
6-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0425319   0.0299263   0.0551375
6-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0701192   0.0525190   0.0877194
6-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0428947   0.0297209   0.0560686
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0527972   0.0461534   0.0594411
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0641453   0.0568451   0.0714455
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0511646   0.0436875   0.0586416
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0675676   0.0145705   0.1205647
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0861656   0.0712253   0.1011060
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.1012658   0.0175104   0.1850212


### Parameter: E(Y)


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA         NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1443124   0.1159091   0.1727157
0-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0179204   0.0152268   0.0206140
0-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0343840   0.0233416   0.0454263
0-24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0969241   0.0882972   0.1055510
0-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0572614   0.0531676   0.0613553
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0860839   0.0717318   0.1004359
0-6 months    ki0047075b-MAL-ED          INDIA         NA                   NA                0.0765550   0.0404216   0.1126884
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA         NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1205937   0.0930759   0.1481115
0-6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0846069   0.0570929   0.1121208
0-6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0616622   0.0372186   0.0861058
6-24 months   ki1000108-IRC              INDIA         NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1443124   0.1159091   0.1727157
6-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0095893   0.0052864   0.0138922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0179204   0.0152268   0.0206140
6-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0343840   0.0233416   0.0454263
6-24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0969241   0.0882972   0.1055510
6-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0572614   0.0531676   0.0613553
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0860839   0.0717318   0.1004359


### Parameter: RR


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  High              1.4905660   0.5765449   3.853624
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               High              1.2683486   0.4732218   3.399481
0-24 months   ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA         Low                  High              1.2078458   0.5723475   2.548961
0-24 months   ki1000108-IRC              INDIA         Medium               High              1.6836913   0.8324092   3.405556
0-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  High              3.3417837   2.4756821   4.510885
0-24 months   ki1000304b-SAS-CompFeed    INDIA         Medium               High              1.5647706   0.8438352   2.901641
0-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  High              1.3211698   0.6395110   2.729413
0-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               High              1.2406443   0.5933861   2.593924
0-24 months   ki1113344-GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  High              1.3228916   0.6610114   2.647522
0-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               High              1.4117647   0.6382074   3.122934
0-24 months   ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS       Low                  High              2.0878919   1.0187721   4.278968
0-24 months   ki1119695-PROBIT           BELARUS       Medium               High              1.6707370   0.7853365   3.554352
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              1.5706956   1.0787788   2.286924
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              1.1219359   0.7580815   1.660429
0-24 months   ki1135781-COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA     Low                  High              1.4453665   0.5887096   3.548582
0-24 months   ki1135781-COHORTS          GUATEMALA     Medium               High              0.9784644   0.3606476   2.654648
0-24 months   ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA         Low                  High              2.8333860   1.9751800   4.064478
0-24 months   ki1135781-COHORTS          INDIA         Medium               High              1.5244026   1.0583221   2.195743
0-24 months   ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  High              1.6272202   1.1016717   2.403480
0-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               High              1.0040962   0.6541115   1.541342
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  High              1.2264945   1.0415179   1.444323
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               High              0.9896737   0.8218993   1.191696
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  High              1.2752513   0.5740094   2.833169
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               High              1.4987342   0.4781595   4.697604
0-6 months    ki0047075b-MAL-ED          INDIA         High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA         Low                  High              0.9698630   0.3105336   3.029090
0-6 months    ki0047075b-MAL-ED          INDIA         Medium               High              0.7662338   0.2319037   2.531715
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  High              0.9269998   0.4900121   1.753689
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               High              0.8662250   0.4570410   1.641747
0-6 months    ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA         Low                  High              1.1766143   0.6760707   2.047746
0-6 months    ki1000108-IRC              INDIA         Medium               High              1.0811389   0.6112811   1.912151
0-6 months    ki1113344-GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL         Low                  High              1.1240601   0.5303929   2.382217
0-6 months    ki1113344-GMS-Nepal        NEPAL         Medium               High              1.1854103   0.4928181   2.851352
0-6 months    ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS       Low                  High              0.9938345   0.8158892   1.210590
0-6 months    ki1119695-PROBIT           BELARUS       Medium               High              0.9761720   0.8168015   1.166638
0-6 months    ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   Low                  High              1.5159429   0.7815383   2.940461
0-6 months    ki1135781-COHORTS          PHILIPPINES   Medium               High              1.3683157   0.6987503   2.679480
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  High              1.4905660   0.5765449   3.853624
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               High              1.2683486   0.4732218   3.399481
6-24 months   ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA         Low                  High              1.2745248   0.5862483   2.770863
6-24 months   ki1000108-IRC              INDIA         Medium               High              1.7856426   0.8585019   3.714050
6-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Low                  High              3.3417837   2.4756821   4.510885
6-24 months   ki1000304b-SAS-CompFeed    INDIA         Medium               High              1.5647706   0.8438352   2.901641
6-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  High              1.3744148   0.6643578   2.843371
6-24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               High              1.2645288   0.6008030   2.661493
6-24 months   ki1113344-GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL         Low                  High              1.3228916   0.6610114   2.647522
6-24 months   ki1113344-GMS-Nepal        NEPAL         Medium               High              1.4117647   0.6382074   3.122934
6-24 months   ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS       Low                  High              2.0823817   1.0398122   4.170285
6-24 months   ki1119695-PROBIT           BELARUS       Medium               High              1.6268173   0.7784406   3.399790
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              1.5738648   1.0803171   2.292892
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              1.1075798   0.7461003   1.644193
6-24 months   ki1135781-COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA     Low                  High              1.4453665   0.5887096   3.548582
6-24 months   ki1135781-COHORTS          GUATEMALA     Medium               High              0.9784644   0.3606476   2.654648
6-24 months   ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA         Low                  High              2.8326517   1.9712415   4.070488
6-24 months   ki1135781-COHORTS          INDIA         Medium               High              1.5170077   1.0510789   2.189476
6-24 months   ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   Low                  High              1.6486270   1.1182686   2.430517
6-24 months   ki1135781-COHORTS          PHILIPPINES   Medium               High              1.0085310   0.6583142   1.545060
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  High              1.2149363   1.0323642   1.429796
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               High              0.9690768   0.8072562   1.163335
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  High              1.2752513   0.5740094   2.833169
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               High              1.4987342   0.4781595   4.697604


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0110293   -0.0168377   0.0388962
0-24 months   ki1000108-IRC              INDIA         High                 NA                 0.0289426   -0.0158665   0.0737518
0-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.0458596    0.0250560   0.0666631
0-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0154070   -0.0213098   0.0521239
0-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.0332013   -0.0360426   0.1024451
0-24 months   ki1119695-PROBIT           BELARUS       High                 NA                 0.0039502   -0.0000814   0.0079818
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0025566   -0.0000286   0.0051418
0-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0056758   -0.0150637   0.0264153
0-24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.0457992    0.0286542   0.0629442
0-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0085191   -0.0024354   0.0194737
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0049858   -0.0002906   0.0102622
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0185163   -0.0342483   0.0712809
0-6 months    ki0047075b-MAL-ED          INDIA         High                 NA                -0.0081907   -0.0674787   0.0510972
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                -0.0085750   -0.0503238   0.0331739
0-6 months    ki1000108-IRC              INDIA         High                 NA                 0.0110461   -0.0423585   0.0644506
0-6 months    ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.0129014   -0.0583351   0.0841379
0-6 months    ki1119695-PROBIT           BELARUS       High                 NA                -0.0006833   -0.0138400   0.0124734
0-6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0134690   -0.0066777   0.0336157
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0110293   -0.0168377   0.0388962
6-24 months   ki1000108-IRC              INDIA         High                 NA                 0.0333920   -0.0118727   0.0786568
6-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.0458596    0.0250560   0.0666631
6-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0167662   -0.0196578   0.0531901
6-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.0332013   -0.0360426   0.1024451
6-24 months   ki1119695-PROBIT           BELARUS       High                 NA                 0.0038229   -0.0001892   0.0078350
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0023676   -0.0003102   0.0050454
6-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0056758   -0.0150637   0.0264153
6-24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.0456692    0.0284116   0.0629268
6-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0086954   -0.0020840   0.0194749
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0044642   -0.0007959   0.0097243
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0185163   -0.0342483   0.0712809


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.1788663   -0.4151376   0.5235371
0-24 months   ki1000108-IRC              INDIA         High                 NA                 0.2472183   -0.2451928   0.5449056
0-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.5495101    0.3421911   0.6914892
0-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.1750502   -0.3645289   0.5012621
0-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.2300654   -0.4328814   0.5862886
0-24 months   ki1119695-PROBIT           BELARUS       High                 NA                 0.4119417   -0.1183909   0.6907946
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.1426650   -0.0125179   0.2740639
0-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.1650718   -0.7149568   0.5935145
0-24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.4725268    0.2690778   0.6193466
0-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.1663004   -0.0753286   0.3536347
0-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0870707   -0.0099902   0.1748039
0-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.2150959   -0.7067246   0.6390311
0-6 months    ki0047075b-MAL-ED          INDIA         High                 NA                -0.1069915   -1.2256042   0.4493944
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                -0.0613967   -0.4062960   0.1989148
0-6 months    ki1000108-IRC              INDIA         High                 NA                 0.0693831   -0.3340521   0.3508141
0-6 months    ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.1069822   -0.7296280   0.5389293
0-6 months    ki1119695-PROBIT           BELARUS       High                 NA                -0.0080760   -0.1750609   0.1351791
0-6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.2209433   -0.1839491   0.4873687
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.1788663   -0.4151376   0.5235371
6-24 months   ki1000108-IRC              INDIA         High                 NA                 0.2852237   -0.2219681   0.5818997
6-24 months   ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.5495101    0.3421911   0.6914892
6-24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.1904921   -0.3459007   0.5131119
6-24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.2300654   -0.4328814   0.5862886
6-24 months   ki1119695-PROBIT           BELARUS       High                 NA                 0.3986602   -0.1221558   0.6777546
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.1321158   -0.0292974   0.2682164
6-24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.1650718   -0.7149568   0.5935145
6-24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.4711854    0.2659359   0.6190457
6-24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.1697423   -0.0672744   0.3541231
6-24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0779613   -0.0187776   0.1655143
6-24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.2150959   -0.7067246   0.6390311
