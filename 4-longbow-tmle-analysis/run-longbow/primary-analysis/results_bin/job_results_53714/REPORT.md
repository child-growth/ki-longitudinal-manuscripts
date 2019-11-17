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
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
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
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       37     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1        7     147
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       40      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        2      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       28      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1        0      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       26      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1        2      98
0-24 months   ki0047075b-MAL-ED          PERU                           High                   0      116     250
0-24 months   ki0047075b-MAL-ED          PERU                           High                   1        4     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       69     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    1        0     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       61     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1        0     250
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       43     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        0     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       32     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        5     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       30     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        0     110
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0      125     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        5     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       58     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1        3     211
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0      125     684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       44     684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      210     684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1       82     684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0      172     684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       51     684
0-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2528   16315
0-24 months   ki1119695-PROBIT           BELARUS                        High                   1      180   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     5911   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    1      507   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     6615   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1      574   16315
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      920   13568
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1       72   13568
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2060   13568
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      224   13568
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     9350   13568
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      942   13568
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
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0      289     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1        2     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0      269     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1        2     813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     6118   25970
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1      359   25970
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     9936   25970
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      701   25970
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     8344   25970
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      512   25970
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0     1184    5277
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1       63    5277
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1819    5277
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      135    5277
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0     1947    5277
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1      129    5277
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   0       51     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   1        3     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    0       34     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    1        5     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       50     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 1        4     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   0       43     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   1        1     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    0       52     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    1        7     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 0       39     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 1        5     147
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       35     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        2     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       30     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        0     110
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0      128     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        2     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       60     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1        1     211
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   0      148     684
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   1       21     684
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    0      263     684
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    1       29     684
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 0      194     684
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 1       29     684
0-6 months    ki1119695-PROBIT           BELARUS                        High                   0     2529   16312
0-6 months    ki1119695-PROBIT           BELARUS                        High                   1      179   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    0     5928   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    1      490   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 0     6618   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 1      568   16312
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      929   13478
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   1       56   13478
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2124   13478
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      145   13478
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     9507   13478
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      717   13478
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   0     6187   25882
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   1      263   25882
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    0    10141   25882
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      460   25882
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     8490   25882
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      341   25882
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   0     1149    4948
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   1       26    4948
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1788    4948
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    1       43    4948
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0     1906    4948
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       36    4948
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       47     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1        1     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       36     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1        1     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       45     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1        1     131
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       43     137
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   1        0     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       52     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1        2     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       38     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1        2     137
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       39      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        0      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       27      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1        0      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       26      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1        2      94
6-24 months   ki0047075b-MAL-ED          PERU                           High                   0      103     223
6-24 months   ki0047075b-MAL-ED          PERU                           High                   1        3     223
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
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0      125     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        3     202
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0      164     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       27     589
6-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2635   16027
6-24 months   ki1119695-PROBIT           BELARUS                        High                   1        1   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     6302   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    1       19   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     7064   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1        6   16027
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      700   10504
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1       17   10504
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1729   10504
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1       84   10504
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     7734   10504
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      240   10504
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
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0      287     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1        2     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0      264     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1        2     802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     4292   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1       99   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     6246   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      250   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     5541   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      178   16606
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0     1206    5273
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1       39    5273
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1857    5273
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1       96    5273
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0     1981    5273
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       94    5273


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
![](/tmp/847d36bf-2674-4d3c-851f-123ea98729f5/2c6bc859-f392-4337-8041-b4e1ecf12511/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/847d36bf-2674-4d3c-851f-123ea98729f5/2c6bc859-f392-4337-8041-b4e1ecf12511/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/847d36bf-2674-4d3c-851f-123ea98729f5/2c6bc859-f392-4337-8041-b4e1ecf12511/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/847d36bf-2674-4d3c-851f-123ea98729f5/2c6bc859-f392-4337-8041-b4e1ecf12511/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0893430   0.0470145   0.1316715
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1874065   0.1455511   0.2292620
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1366755   0.0967674   0.1765836
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1612536   0.0927412   0.2297661
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1572068   0.0968251   0.2175884
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1858570   0.1248521   0.2468619
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0560345   0.0264189   0.0856501
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0840336   0.0487611   0.1193061
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0391304   0.0140529   0.0642079
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0747005   0.0443799   0.1050211
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1214740   0.0803419   0.1626060
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0680558   0.0339951   0.1021166
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0445668   0.0254695   0.0636641
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0675440   0.0537894   0.0812987
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0752009   0.0548654   0.0955365
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2551872   0.1896204   0.3207541
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2834718   0.2329457   0.3339978
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2321152   0.1773510   0.2868795
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0737458   0.0396107   0.1078809
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0787225   0.0473072   0.1101377
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0772681   0.0439331   0.1106030
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0838726   0.0699008   0.0978444
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0990045   0.0881091   0.1098999
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0903850   0.0851464   0.0956237
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0765589   0.0429992   0.1101185
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0669854   0.0464268   0.0875439
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0747847   0.0500881   0.0994813
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1015006   0.0766818   0.1263194
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0774994   0.0535067   0.1014921
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1066539   0.0765226   0.1367852
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1077872   0.0899903   0.1255841
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.1271358   0.1053205   0.1489510
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.1335914   0.1136243   0.1535585
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0549921   0.0486774   0.0613067
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0651892   0.0597501   0.0706282
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0585540   0.0527638   0.0643441
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0493305   0.0351814   0.0634797
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0690280   0.0571195   0.0809364
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0624902   0.0512855   0.0736950
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0449233   0.0131587   0.0766879
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.0855898   0.0639929   0.1071866
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0567937   0.0216242   0.0919633
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.0545455   0.0120569   0.0970340
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.0476190   0.0131519   0.0820862
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.0434783   0.0119399   0.0750166
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0517241   0.0232055   0.0802428
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0420168   0.0165097   0.0675239
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0304348   0.0082187   0.0526509
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0588905   0.0318742   0.0859068
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0842244   0.0492545   0.1191943
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0556987   0.0254340   0.0859635
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0246145   0.0103329   0.0388961
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0338496   0.0238916   0.0438076
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0377059   0.0232411   0.0521707
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1227422   0.0728451   0.1726393
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1014756   0.0665037   0.1364476
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1281098   0.0836218   0.1725979
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0733649   0.0392919   0.1074379
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0754427   0.0436273   0.1072580
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0767811   0.0434622   0.1100999
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0505851   0.0365654   0.0646048
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0668041   0.0552673   0.0783409
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0693608   0.0643947   0.0743269
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0707031   0.0363429   0.1050634
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0577330   0.0365281   0.0789378
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0600632   0.0351195   0.0850068
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0789220   0.0564149   0.1014292
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0368012   0.0196851   0.0539173
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0748896   0.0492372   0.1005421
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0744832   0.0583951   0.0905714
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0466222   0.0324866   0.0607578
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0732901   0.0572980   0.0892822
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0393170   0.0343499   0.0442841
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0433789   0.0390576   0.0477002
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0393464   0.0343549   0.0443380
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0218173   0.0100469   0.0335877
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0234505   0.0151079   0.0317931
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0187381   0.0117866   0.0256895
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0589355   0.0267878   0.0910832
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1249279   0.0882143   0.1616415
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0904645   0.0667927   0.1141364
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1031265   0.0435762   0.1626768
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1214899   0.0661658   0.1768140
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1463077   0.0896820   0.2029334
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0260998   0.0101215   0.0420782
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0438186   0.0315104   0.0561269
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0447611   0.0273133   0.0622088
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1860404   0.1224422   0.2496386
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2305917   0.1783056   0.2828779
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1391455   0.0895066   0.1887843
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0262802   0.0137354   0.0388249
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0472409   0.0360748   0.0584069
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0301327   0.0262855   0.0339798
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0238095   0.0031807   0.0444383
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0234834   0.0103477   0.0366190
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0272277   0.0113510   0.0431045
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0284956   0.0140820   0.0429092
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0484687   0.0286614   0.0682760
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0329215   0.0150695   0.0507735
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0461950   0.0324189   0.0599711
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0855331   0.0657490   0.1053171
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0720929   0.0553290   0.0888568
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0250745   0.0190402   0.0311088
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0366378   0.0316795   0.0415961
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0319929   0.0265352   0.0374506
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0317748   0.0198041   0.0437456
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0483071   0.0378332   0.0587809
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0454913   0.0363674   0.0546153


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1476821   0.1188009   0.1765633
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1698565   0.1338154   0.2058975
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0658833   0.0559209   0.0758458
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2587719   0.2259267   0.2916172
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0772908   0.0449502   0.1096314
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0912441   0.0863987   0.0960895
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0713128   0.0569485   0.0856771
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0967519   0.0815150   0.1119888
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1227336   0.1107225   0.1347447
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0605314   0.0569870   0.0640758
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0619670   0.0548012   0.0691329
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0665779   0.0427569   0.0903989
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.0478469   0.0273607   0.0683330
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0414286   0.0266555   0.0562017
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0331515   0.0259618   0.0403411
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1154971   0.0915268   0.1394673
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0758337   0.0433525   0.1083150
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0681110   0.0638575   0.0723645
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0601805   0.0454109   0.0749501
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0642202   0.0514517   0.0769887
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669690   0.0578174   0.0761205
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0411097   0.0380745   0.0441448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0212207   0.0163071   0.0261342
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0966811   0.0731505   0.1202117
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1268657   0.0942904   0.1594410
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0408163   0.0321620   0.0494707
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1901528   0.1584343   0.2218713
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0324638   0.0290744   0.0358532
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0248889   0.0157815   0.0339963
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0362989   0.0265157   0.0460822
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0666667   0.0571766   0.0761568
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0317355   0.0287378   0.0347333
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0434288   0.0375191   0.0493385


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.0976072   1.2247467   3.5925437
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.5297842   0.8597866   2.7218843
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              0.9749040   0.5511104   1.7245867
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.1525760   0.6732785   1.9730786
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.4996768   0.7636284   2.9451898
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.6983278   0.3042943   1.6025988
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.6261466   0.9582966   2.7594304
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9110491   0.4782160   1.7356393
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.5155683   0.9429685   2.4358687
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.6873758   1.0165296   2.8009386
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.1108383   0.8163076   1.5116382
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9095879   0.6440540   1.2845976
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.0674844   0.9219474   1.2359956
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0477628   0.9195264   1.1938829
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1804157   0.9732612   1.4316622
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0776468   0.9113251   1.2743231
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8749522   0.5128685   1.4926658
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9768263   0.5646898   1.6897587
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              0.7635366   0.5145473   1.1330119
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.0507713   0.7230040   1.5271290
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.1795072   0.9365182   1.4855421
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.2393993   1.0017733   1.5333915
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1854284   1.0361576   1.3562034
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0647711   0.9211859   1.2307370
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.3992950   0.9989836   1.9600187
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2667664   0.9035336   1.7760236
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.4301869   0.7704569   2.6548331
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9458021   0.4648120   1.9245234
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.3751905   0.7175722   2.6354823
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.5318577   0.7639915   3.0714846
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.8267379   0.4850311   1.4091787
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0437306   0.6113536   1.7819042
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.0283212   0.9001360   1.1747608
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0465642   0.9221340   1.1877847
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.3206291   0.9529813   1.8301107
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.3711705   1.0301426   1.8250954
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8165545   0.4457208   1.4959169
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8495121   0.4491479   1.6067554
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              0.4662983   0.2702381   0.8046021
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              0.9489065   0.6076097   1.4819113
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.6259424   0.4315335   0.9079339
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9839812   0.7243217   1.3367251
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1033120   0.9518748   1.2788420
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0007482   0.8487061   1.1800279
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0748579   0.5633783   2.0506993
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.8588629   0.4410228   1.6725791
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.1197386   1.1454515   3.9227254
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.5349750   0.8624821   2.7318227
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.1780668   0.5644880   2.4585842
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.4187210   0.7072426   2.8459391
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.6788875   0.8559746   3.2929285
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.7149955   0.8298684   3.5441880
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2394713   0.8227134   1.8673441
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.7479315   0.4562269   1.2261478
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.7975846   1.0552560   3.0621103
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1465928   0.6995562   1.8792987
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9863014   0.3516643   2.7662471
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.1435644   0.4024405   3.2495222
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.7009182   0.8876660   3.2592470
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1553187   0.5504174   2.4249984
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.8515665   1.2692624   2.7010162
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.5606226   1.0693318   2.2776306
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.4611585   1.1144462   1.9157356
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.2759130   0.9528698   1.7084747
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.5202946   0.9826624   2.3520750
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.4316793   0.9333902   2.1959793


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0583391    0.0177638   0.0989145
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0086028   -0.0510377   0.0682434
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0039655   -0.0206446   0.0285756
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0123707   -0.0124699   0.0372113
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0213166    0.0031968   0.0394363
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0035847   -0.0528692   0.0600386
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0035451   -0.0045330   0.0116231
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0073715   -0.0058421   0.0205851
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0052461   -0.0353787   0.0248865
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0047487   -0.0238251   0.0143277
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0149464    0.0006271   0.0292658
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0055393    0.0000484   0.0110302
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0126365    0.0000995   0.0251735
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0216546   -0.0018794   0.0451887
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0066986   -0.0424031   0.0290059
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0102956   -0.0324867   0.0118956
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0070726   -0.0145830   0.0287282
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0085370   -0.0048308   0.0219048
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0072451   -0.0501877   0.0356974
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0024689   -0.0050327   0.0099704
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0175259    0.0038979   0.0311540
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0105226   -0.0411728   0.0201276
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0147019   -0.0312456   0.0018419
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0075143   -0.0198261   0.0047976
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0017926   -0.0023645   0.0059497
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0005966   -0.0105469   0.0093537
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0377456    0.0055675   0.0699237
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0237392   -0.0291344   0.0766128
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0147165   -0.0005732   0.0300062
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0041124   -0.0515503   0.0597750
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0061836   -0.0060872   0.0184544
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0010794   -0.0176188   0.0197775
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0078033   -0.0045454   0.0201520
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0204717    0.0080121   0.0329313
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0066610    0.0012598   0.0120622
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0116540    0.0010840   0.0222240


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3950317    0.0661532   0.6080871
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0506477   -0.3738635   0.3439889
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0660920   -0.4482931   0.3977847
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1420759   -0.1943663   0.3837453
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3235499   -0.0095147   0.5467281
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0138527   -0.2303504   0.2095858
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0458666   -0.0687033   0.1481541
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0807890   -0.0760198   0.2147460
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0735643   -0.5914138   0.2757759
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0490810   -0.2658581   0.1305732
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1217794   -0.0024004   0.2305756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0915115   -0.0036266   0.1776311
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2039231   -0.0267897   0.3827962
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3252525   -0.1519484   0.6047703
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.1400000   -1.1896424   0.4064785
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.2485137   -0.9073454   0.1827456
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1072203   -0.2885848   0.3814488
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2575149   -0.2714765   0.5664221
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0627301   -0.5075596   0.2508453
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0325561   -0.0742340   0.1287302
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.2573140    0.0281564   0.4324369
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1748505   -0.8134927   0.2388865
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.2289289   -0.5111836   0.0006071
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1122051   -0.3109823   0.0564326
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0436061   -0.0628539   0.1394026
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0281146   -0.6206826   0.3477936
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3904132   -0.0149859   0.6338904
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1871207   -0.3547395   0.5122510
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3605547   -0.1349971   0.6397433
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0216268   -0.3195528   0.2745920
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1904779   -0.2902962   0.4921119
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0433673   -1.0976561   0.5637292
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2149738   -0.2034627   0.4879225
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3070755    0.0993651   0.4668823
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2098914    0.0198702   0.3630725
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2683471   -0.0228590   0.4766473
