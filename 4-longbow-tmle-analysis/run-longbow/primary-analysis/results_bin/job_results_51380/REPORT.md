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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
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

agecat        studyid                    country                        feducyrs    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       50     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1        4     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       33     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1        6     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       49     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1        5     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       43     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   1        1     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       51     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1        8     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       38     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1        6     147
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       40      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        2      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       28      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1        0      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       26      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1        2      98
0-24 months   ki0047075b-MAL-ED          PERU                           High                   0      117     250
0-24 months   ki0047075b-MAL-ED          PERU                           High                   1        3     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       69     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    1        0     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       61     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1        0     250
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       43     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        0     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       33     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        4     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       30     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        0     110
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0      126     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        4     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       59     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1        2     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       20     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        0     211
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      352    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1       34    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      520    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1      123    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      415    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1       66    1510
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       93     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       17     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0      123     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1       24     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0      131     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       30     418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      219     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       13     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0      218     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1       20     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      221     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1        9     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      274     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       22     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      213     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       29     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      205     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       15     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      429    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       20    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0     1182    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       88    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      615    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       49    2383
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0      114     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       33     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      179     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1       78     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0      152     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       45     601
0-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2528   16315
0-24 months   ki1119695-PROBIT           BELARUS                        High                   1      180   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     5911   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    1      507   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     6615   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1      574   16315
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      920   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1       72   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2062   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      221   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     9351   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      936   13562
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0      214    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1       17    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0      521    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1       37    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0      411    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1       34    1234
0-24 months   ki1135781-COHORTS          INDIA                          High                   0      508    1447
0-24 months   ki1135781-COHORTS          INDIA                          High                   1       59    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low                    0      434    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low                    1       38    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 0      365    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 1       43    1447
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0      911    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1      117    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      726    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1      100    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      879    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1      135    2868
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   0      247     813
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   1        4     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0      288     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1        3     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0      269     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1        2     813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     6118   25974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1      359   25974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     9941   25974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      700   25974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     8345   25974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      511   25974
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0      365    3079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1       22    3079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     2084    3079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      154    3079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      428    3079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       26    3079
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   0       51     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   1        3     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    0       34     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    1        5     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       50     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 1        4     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   0       43     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   1        1     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    0       51     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    1        8     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 0       40     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 1        4     147
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   0       40      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   1        2      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    0       28      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    1        0      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 0       28      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 1        0      98
0-6 months    ki0047075b-MAL-ED          PERU                           High                   0      119     250
0-6 months    ki0047075b-MAL-ED          PERU                           High                   1        1     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    0       69     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    1        0     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 0       61     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 1        0     250
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       43     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        0     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       36     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        1     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       30     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        0     110
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0      128     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        2     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       61     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1        0     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       20     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        0     211
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   0      367    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   1       18    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    0      585    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    1       55    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      450    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 1       27    1502
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   0      104     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   1        6     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0      140     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1        7     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0      154     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1        7     418
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   0      220     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   1       12     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    0      228     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    1       10     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      223     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 1        7     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      278     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       18     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      222     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       20     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      208     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       12     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      438    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       11    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0     1227    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       43    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      639    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       25    2383
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   0      137     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   1       10     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    0      233     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    1       24     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 0      175     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 1       22     601
0-6 months    ki1119695-PROBIT           BELARUS                        High                   0     2529   16312
0-6 months    ki1119695-PROBIT           BELARUS                        High                   1      179   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    0     5928   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    1      490   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 0     6618   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 1      568   16312
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      929   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   1       56   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2124   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      144   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     9503   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      716   13472
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   0      178     997
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   1       12     997
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    0      418     997
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    1       25     997
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 0      341     997
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 1       23     997
0-6 months    ki1135781-COHORTS          INDIA                          High                   0      513    1417
0-6 months    ki1135781-COHORTS          INDIA                          High                   1       44    1417
0-6 months    ki1135781-COHORTS          INDIA                          Low                    0      441    1417
0-6 months    ki1135781-COHORTS          INDIA                          Low                    1       17    1417
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 0      372    1417
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 1       30    1417
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   0      946    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   1       82    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    0      788    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    1       38    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 0      941    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 1       72    2867
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   0       73     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    0      104     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 0       90     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 1        0     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   0     6187   25886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   1      263   25886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    0    10146   25886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      459   25886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     8491   25886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      340   25886
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   0      354    2889
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   1        4    2889
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     2050    2889
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    1       54    2889
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      419    2889
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1        8    2889
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       47     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1        1     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       36     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1        1     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       45     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1        1     131
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       43     137
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   1        0     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       53     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1        1     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       38     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1        2     137
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       39      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        0      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       27      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1        0      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       26      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1        2      94
6-24 months   ki0047075b-MAL-ED          PERU                           High                   0      104     223
6-24 months   ki0047075b-MAL-ED          PERU                           High                   1        2     223
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       60     223
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    1        0     223
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       57     223
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1        0     223
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       36      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        0      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       33      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        3      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       24      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        0      96
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0      126     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        2     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       53     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1        2     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       19     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        0     202
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      351    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1       19    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      499    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1       73    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      402    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1       42    1386
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       96     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       11     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0      123     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1       17     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0      132     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       23     402
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      213     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1        1     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0      198     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1       10     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      191     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1        2     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      282     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1        4     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      216     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       13     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      212     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1        3     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      365    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       10    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0     1025    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       47    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      537    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       25    2009
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0      119     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       26     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      194     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1       59     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0      163     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       28     589
6-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2635   16027
6-24 months   ki1119695-PROBIT           BELARUS                        High                   1        1   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     6302   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    1       19   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     7064   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1        6   16027
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      690   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1       17   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1709   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1       82   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     7653   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      235   10386
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0      205    1125
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1        5    1125
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0      499    1125
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1       12    1125
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0      393    1125
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1       11    1125
6-24 months   ki1135781-COHORTS          INDIA                          High                   0      534    1405
6-24 months   ki1135781-COHORTS          INDIA                          High                   1       15    1405
6-24 months   ki1135781-COHORTS          INDIA                          Low                    0      436    1405
6-24 months   ki1135781-COHORTS          INDIA                          Low                    1       23    1405
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 0      384    1405
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 1       13    1405
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0      883    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1       40    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      710    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1       68    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      885    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1       69    2655
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   0      243     802
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   1        4     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0      286     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1        3     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0      264     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1        2     802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     4292   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1       99   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     6246   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      250   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     5541   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      178   16606
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0      369    3072
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1       18    3072
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     2131    3072
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      101    3072
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      434    3072
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       19    3072


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/9b75a287-5128-4d4e-a7cf-444aba7b1519/a0fe3975-8661-4b87-9a35-26acfece0cb0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9b75a287-5128-4d4e-a7cf-444aba7b1519/a0fe3975-8661-4b87-9a35-26acfece0cb0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9b75a287-5128-4d4e-a7cf-444aba7b1519/a0fe3975-8661-4b87-9a35-26acfece0cb0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9b75a287-5128-4d4e-a7cf-444aba7b1519/a0fe3975-8661-4b87-9a35-26acfece0cb0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0882745   0.0443705   0.1321784
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1887480   0.1466493   0.2308466
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1369567   0.0959377   0.1779756
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1622967   0.0940589   0.2305345
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1607432   0.1003663   0.2211201
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1872143   0.1262278   0.2482009
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0560345   0.0264189   0.0856501
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0840336   0.0487611   0.1193061
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0391304   0.0140529   0.0642079
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0733141   0.0435125   0.1031158
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1202922   0.0790835   0.1615009
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0698594   0.0354802   0.1042386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0433278   0.0248274   0.0618282
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0680352   0.0542036   0.0818668
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0749431   0.0547009   0.0951853
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2336204   0.1643394   0.3029015
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2982765   0.2422780   0.3542750
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2284450   0.1683210   0.2885691
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0734960   0.0402459   0.1067461
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0786859   0.0469374   0.1104345
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0775346   0.0442740   0.1107952
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0840890   0.0707107   0.0974673
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1005949   0.0897484   0.1114415
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0893583   0.0841899   0.0945266
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0759957   0.0423376   0.1096538
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0671773   0.0465423   0.0878123
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0738791   0.0491908   0.0985674
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1042281   0.0790092   0.1294469
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0773829   0.0532709   0.1014949
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1052108   0.0753175   0.1351041
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1069017   0.0891082   0.1246953
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.1290283   0.1067627   0.1512938
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.1330900   0.1128502   0.1533298
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0538863   0.0478422   0.0599304
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0647747   0.0595979   0.0699515
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0595275   0.0539195   0.0651355
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0579972   0.0311215   0.0848728
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0688635   0.0574087   0.0803183
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0561410   0.0247342   0.0875478
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0449233   0.0131587   0.0766879
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.0855898   0.0639929   0.1071866
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0567937   0.0216242   0.0919633
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.0545455   0.0120569   0.0970340
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.0476190   0.0131519   0.0820862
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.0434783   0.0119399   0.0750166
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0517241   0.0232055   0.0802428
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0420168   0.0165097   0.0675239
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0304348   0.0082187   0.0526509
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0585777   0.0314941   0.0856613
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0842129   0.0491508   0.1192751
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0572854   0.0263111   0.0882596
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0244008   0.0102144   0.0385872
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0337840   0.0238077   0.0437603
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0378107   0.0233093   0.0523121
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0694716   0.0277234   0.1112197
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.0933827   0.0575798   0.1291856
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1101024   0.0663730   0.1538317
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0746587   0.0409507   0.1083667
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0756467   0.0441346   0.1071589
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0769229   0.0434632   0.1103825
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0667627   0.0564156   0.0771097
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0674197   0.0599481   0.0748913
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0687003   0.0642428   0.0731577
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0670500   0.0323475   0.1017524
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0575153   0.0362486   0.0787819
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0601112   0.0351089   0.0851136
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0789883   0.0564745   0.1015022
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0363644   0.0193657   0.0533631
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0742447   0.0487165   0.0997728
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0742350   0.0581765   0.0902934
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0472900   0.0329105   0.0616695
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0730922   0.0570691   0.0891153
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0386663   0.0340474   0.0432852
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0430329   0.0388541   0.0472116
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0395221   0.0346157   0.0444284
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0589355   0.0267878   0.0910832
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1249279   0.0882143   0.1616415
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0904645   0.0667927   0.1141364
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1081612   0.0493503   0.1669721
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1216704   0.0669624   0.1763785
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1449154   0.0886606   0.2011702
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0259844   0.0101176   0.0418513
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0437828   0.0314411   0.0561245
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0452642   0.0276651   0.0628633
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1777877   0.1151473   0.2404280
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2275820   0.1754465   0.2797174
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1463797   0.0951741   0.1975853
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0263821   0.0138130   0.0389512
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0469260   0.0356599   0.0581921
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0298376   0.0259958   0.0336794
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0238095   0.0031807   0.0444383
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0234834   0.0103477   0.0366190
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0272277   0.0113510   0.0431045
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0279694   0.0139479   0.0419908
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0487037   0.0285722   0.0688353
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0329714   0.0149752   0.0509677
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0482739   0.0339559   0.0625919
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0853150   0.0654671   0.1051629
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0716049   0.0547473   0.0884626
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0250285   0.0188966   0.0311603
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0362975   0.0314516   0.0411435
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0312080   0.0263456   0.0360704
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0466696   0.0213559   0.0719834
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0453691   0.0359455   0.0547927
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0412655   0.0132525   0.0692784


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1476821   0.1188009   0.1765633
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1698565   0.1338154   0.2058975
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0658833   0.0559209   0.0758458
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2595674   0.2244889   0.2946458
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0772908   0.0449502   0.1096314
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0906209   0.0857893   0.0954524
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0713128   0.0569485   0.0856771
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0967519   0.0815150   0.1119888
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1227336   0.1107225   0.1347447
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0604451   0.0569083   0.0639818
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0656057   0.0555292   0.0756822
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0665779   0.0427569   0.0903989
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.0478469   0.0273607   0.0683330
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0414286   0.0266555   0.0562017
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0331515   0.0259618   0.0403411
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0931780   0.0699191   0.1164370
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0758337   0.0433525   0.1083150
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0679929   0.0637419   0.0722439
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0601805   0.0454109   0.0749501
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0642202   0.0514517   0.0769887
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669690   0.0578174   0.0761205
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0410260   0.0379970   0.0440550
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0966811   0.0731505   0.1202117
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1268657   0.0942904   0.1594410
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0408163   0.0321620   0.0494707
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1918506   0.1600242   0.2236769
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0321587   0.0287656   0.0355518
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0248889   0.0157815   0.0339963
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0362989   0.0265157   0.0460822
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0666667   0.0571766   0.0761568
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0317355   0.0287378   0.0347333
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0449219   0.0363514   0.0534923


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.1381937   1.2273148   3.7251013
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.5514863   0.8569561   2.8089067
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              0.9904282   0.5648332   1.7367039
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.1535315   0.6768937   1.9657961
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.4996768   0.7636284   2.9451898
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.6983278   0.3042943   1.6025988
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.6407776   0.9640402   2.7925716
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9528775   0.5033959   1.8037008
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.5702434   0.9784458   2.5199804
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.7296761   1.0434649   2.8671584
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2767569   0.8984639   1.8143280
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9778471   0.6578722   1.4534509
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.0706152   0.9370315   1.2232426
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0549497   0.9379794   1.1865068
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1962917   0.9946684   1.4387849
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0626631   0.9062930   1.2460131
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8839615   0.5160657   1.5141250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9721480   0.5585261   1.6920818
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              0.7424379   0.5004051   1.1015357
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.0094289   0.6949029   1.4663151
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.2069801   0.9561219   1.5236562
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.2449752   1.0030377   1.5452692
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.2020621   1.0570401   1.3669806
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1046876   0.9627358   1.2675698
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1873593   0.7258340   1.9423479
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9679958   0.4647110   2.0163412
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.9052436   0.9556866   3.7982674
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2642389   0.5954526   2.6841769
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              0.8730159   0.3014555   2.5282558
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              0.7971015   0.2749475   2.3108801
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.8123249   0.3577453   1.8445294
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.5884058   0.2357163   1.4688054
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.4376286   0.7717284   2.6781132
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9779383   0.4803562   1.9909462
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.3845447   0.7213149   2.6575967
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.5495665   0.7722471   3.1093110
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3441860   0.6588090   2.7425796
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.5848554   0.7711936   3.2569858
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.0132342   0.8925971   1.1501758
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0303273   0.9184641   1.1558147
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0098418   0.8477653   1.2029042
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0290222   0.8858240   1.1953692
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8577973   0.4553471   1.6159456
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8965143   0.4623939   1.7382103
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              0.4603767   0.2662663   0.7959955
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              0.9399447   0.6013475   1.4691936
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.6370316   0.4387496   0.9249221
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9846059   0.7240572   1.3389119
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1129304   0.9716558   1.2747456
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0221324   0.8746357   1.1945027
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.1197386   1.1454515   3.9227254
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.5349750   0.8624821   2.7318227
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.1248994   0.5550617   2.2797441
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.3398096   0.6861810   2.6160587
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.6849622   0.8599492   3.3014710
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.7419755   0.8445395   3.5930569
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2800774   0.8408669   1.9487011
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.8233401   0.5014373   1.3518917
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.7787064   1.0432948   3.0325047
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1309781   0.6904213   1.8526533
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9863014   0.3516643   2.7662471
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.1435644   0.4024405   3.2495222
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.7413239   0.9090711   3.3355024
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1788410   0.5617988   2.4736012
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.7673104   1.2119779   2.5770983
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.4833044   1.0159651   2.1656178
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.4502505   1.1029070   1.9069843
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.2469018   0.9362582   1.6606146
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.9721335   0.5447091   1.7349509
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.8842040   0.3683156   2.1226816


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0594076    0.0177874   0.1010278
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0075598   -0.0519820   0.0671015
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0039655   -0.0206446   0.0285756
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0137571   -0.0106858   0.0382000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0225555    0.0049545   0.0401565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0259470   -0.0354843   0.0873782
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0037949   -0.0034284   0.0110181
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0065319   -0.0060221   0.0190859
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0046829   -0.0348940   0.0255281
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0074762   -0.0268337   0.0118814
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0158319    0.0014451   0.0302186
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0065588    0.0013167   0.0118008
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0076086   -0.0178361   0.0330532
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0216546   -0.0018794   0.0451887
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0066986   -0.0424031   0.0290059
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0102956   -0.0324867   0.0118956
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0073854   -0.0143243   0.0290951
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0087507   -0.0045381   0.0220394
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0237065   -0.0144348   0.0618478
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0011751   -0.0059641   0.0083143
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0012302   -0.0081706   0.0106310
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0068694   -0.0378325   0.0240936
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0147682   -0.0313301   0.0017938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0072660   -0.0195460   0.0050140
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0023598   -0.0014132   0.0061327
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0377456    0.0055675   0.0699237
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0187045   -0.0335474   0.0709564
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0148319   -0.0003549   0.0300187
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0140629   -0.0410016   0.0691275
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0057766   -0.0065050   0.0180582
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0010794   -0.0176188   0.0197775
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0083296   -0.0037083   0.0203674
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0183927    0.0054917   0.0312938
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0067071    0.0012421   0.0121720
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0017478   -0.0253114   0.0218159


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.4022669    0.0582640    0.6206104
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0445069   -0.3785644    0.3377408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0660920   -0.4482931    0.3977847
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1579982   -0.1726434    0.3954113
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3423554    0.0200883    0.5586373
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0999624   -0.1704063    0.3078747
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0490983   -0.0519233    0.1404183
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0720791   -0.0773189    0.2007593
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0656674   -0.5858708    0.2838969
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0772714   -0.2968530    0.1051310
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1289938    0.0041921    0.2381545
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1085078    0.0178216    0.1908208
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1159740   -0.3700777    0.4295930
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3252525   -0.1519484    0.6047703
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.1400000   -1.1896424    0.4064785
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.2485137   -0.9073454    0.1827456
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1119624   -0.2855570    0.3865610
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2639605   -0.2619481    0.5707001
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2544213   -0.2838553    0.5670169
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0154955   -0.0840266    0.1058807
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0180934   -0.1303916    0.1470739
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1141467   -0.7679324    0.2978675
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.2299613   -0.5125876   -0.0001436
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1084983   -0.3067952    0.0597084
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0575185   -0.0387656    0.1448780
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3904132   -0.0149859    0.6338904
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1474355   -0.3788951    0.4728633
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3633813   -0.1280748    0.6407301
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0733015   -0.2629094    0.3200066
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1796272   -0.3059002    0.4846378
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0433673   -1.0976561    0.5637292
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2294713   -0.1760164    0.4951477
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2758910    0.0596804    0.4423875
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2113426    0.0184032    0.3663585
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0389065   -0.7210056    0.3728511
