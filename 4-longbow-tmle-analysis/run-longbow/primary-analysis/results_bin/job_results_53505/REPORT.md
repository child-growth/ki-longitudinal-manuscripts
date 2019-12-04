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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* W_nrooms
* impsan
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        meducyrs    ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                    0       64     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                    1       14     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                     0       55     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                     1       15     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                  0       55     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                  1       11     214
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                    0       69     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                    1       10     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                     0       60     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                     1        3     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                  0       81     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                  1        9     232
0-24 months   ki0047075b-MAL-ED          INDIA                          High                    0       50     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High                    1       13     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                     0       59     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                     1       17     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                  0       64     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                  1       17     220
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                    0       48     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                    1        5     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                     0       88     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                     1        8     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                  0       70     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                  1        6     225
0-24 months   ki0047075b-MAL-ED          PERU                           High                    0       71     302
0-24 months   ki0047075b-MAL-ED          PERU                           High                    1       20     302
0-24 months   ki0047075b-MAL-ED          PERU                           Low                     0       83     302
0-24 months   ki0047075b-MAL-ED          PERU                           Low                     1       21     302
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                  0       84     302
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                  1       23     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                    0       75     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                    1       20     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                     0      111     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                     1       39     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                  0       55     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                  1       14     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    0        6     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    1        5     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                     0       27     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                     1       37     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                  0       77     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                  1       65     217
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                    0       65     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                    1       93     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                     0       37     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                     1       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                  0       34     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                  1       75     373
0-24 months   ki1000108-IRC              INDIA                          High                    0      101     410
0-24 months   ki1000108-IRC              INDIA                          High                    1       23     410
0-24 months   ki1000108-IRC              INDIA                          Low                     0      111     410
0-24 months   ki1000108-IRC              INDIA                          Low                     1       36     410
0-24 months   ki1000108-IRC              INDIA                          Medium                  0       96     410
0-24 months   ki1000108-IRC              INDIA                          Medium                  1       43     410
0-24 months   ki1000109-EE               PAKISTAN                       High                    0        8     376
0-24 months   ki1000109-EE               PAKISTAN                       High                    1        7     376
0-24 months   ki1000109-EE               PAKISTAN                       Low                     0      122     376
0-24 months   ki1000109-EE               PAKISTAN                       Low                     1      206     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium                  0       20     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium                  1       13     376
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                    0      265    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                    1       58    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                     0      401    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                     1      295    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                  0      360    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                  1      154    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                    0       27     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                    1       14     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                     0      167     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                     1      165     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                  0       23     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                  1       22     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                    0      138     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                    1       41     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                     0      139     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                     1       91     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                  0      156     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                  1       64     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                    0      217     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                    1       18     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                     0      180     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                     1       34     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                  0      208     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                  1       43     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                    0      234     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                    1       20     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                     0      202     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                     1       40     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                  0      223     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                  1       39     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    0      568    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    1       53    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     0       71    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     1       11    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  0     1510    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  1      173    2386
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                    0       96     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                    1       22     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                     0       57     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                     1       19     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                  0       76     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                  1       12     282
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                    0       71     695
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                    1       14     695
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                     0      360     695
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                     1      126     695
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                  0       95     695
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                  1       29     695
0-24 months   ki1119695-PROBIT           BELARUS                        High                    0     2763   16897
0-24 months   ki1119695-PROBIT           BELARUS                        High                    1       77   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low                     0     5788   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low                     1      312   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                  0     7680   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                  1      277   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                    0     6498   14054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                    1     1126   14054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                     0     2367   14054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                     1      592   14054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  0     2824   14054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  1      647   14054
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                    0      161    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                    1      124    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                     0      326    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                     1      310    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                  0      232    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                  1      188    1341
0-24 months   ki1135781-COHORTS          INDIA                          High                    0      761    5852
0-24 months   ki1135781-COHORTS          INDIA                          High                    1       32    5852
0-24 months   ki1135781-COHORTS          INDIA                          Low                     0     1530    5852
0-24 months   ki1135781-COHORTS          INDIA                          Low                     1      426    5852
0-24 months   ki1135781-COHORTS          INDIA                          Medium                  0     2788    5852
0-24 months   ki1135781-COHORTS          INDIA                          Medium                  1      315    5852
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                    0      885    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                    1      288    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                     0      481    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                     1      422    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                  0      603    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                  1      379    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         High                    0      251     814
0-24 months   ki1148112-LCNI-5           MALAWI                         High                    1       47     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                     0      191     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                     1       70     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                  0      203     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                  1       52     814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                    0     7817   27193
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                    1     1210   27193
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                     0     7779   27193
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                     1     2088   27193
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                  0     6577   27193
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                  1     1722   27193
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                    0     1623    5419
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                    1      278    5419
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                     0     1328    5419
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                     1      457    5419
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                  0     1365    5419
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                  1      368    5419
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                    0       71     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                    1        7     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                     0       63     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                     1        7     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                  0       64     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                  1        2     214
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                    0       71     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                    1        8     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                     0       61     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                     1        2     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                  0       83     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                  1        7     232
0-6 months    ki0047075b-MAL-ED          INDIA                          High                    0       60     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High                    1        3     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                     0       72     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                     1        4     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                  0       72     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                  1        9     220
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                    0       52     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                    1        1     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                     0       92     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                     1        4     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                  0       73     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                  1        3     225
0-6 months    ki0047075b-MAL-ED          PERU                           High                    0       78     302
0-6 months    ki0047075b-MAL-ED          PERU                           High                    1       13     302
0-6 months    ki0047075b-MAL-ED          PERU                           Low                     0       94     302
0-6 months    ki0047075b-MAL-ED          PERU                           Low                     1       10     302
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                  0       92     302
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                  1       15     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                    0       85     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                    1       10     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                     0      136     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                     1       14     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                  0       64     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                  1        5     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    0       11     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    1        0     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                     0       55     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                     1        9     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                  0      125     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                  1       17     217
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                    0      125     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                    1       32     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                     0       76     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                     1       28     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                  0       76     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                  1       31     368
0-6 months    ki1000108-IRC              INDIA                          High                    0      113     410
0-6 months    ki1000108-IRC              INDIA                          High                    1       11     410
0-6 months    ki1000108-IRC              INDIA                          Low                     0      126     410
0-6 months    ki1000108-IRC              INDIA                          Low                     1       21     410
0-6 months    ki1000108-IRC              INDIA                          Medium                  0      109     410
0-6 months    ki1000108-IRC              INDIA                          Medium                  1       30     410
0-6 months    ki1000109-EE               PAKISTAN                       High                    0        9     376
0-6 months    ki1000109-EE               PAKISTAN                       High                    1        6     376
0-6 months    ki1000109-EE               PAKISTAN                       Low                     0      186     376
0-6 months    ki1000109-EE               PAKISTAN                       Low                     1      142     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium                  0       22     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium                  1       11     376
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                    0      296    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                    1       27    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                     0      567    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                     1      128    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                  0      438    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                  1       74    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                    0       38     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                    1        2     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                     0      287     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                     1       44     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                  0       41     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                  1        4     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                    0      163     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                    1       16     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                     0      203     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                     1       27     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                  0      204     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                  1       16     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                    0      231     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                    1        4     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                     0      204     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                     1       10     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                  0      234     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                  1       17     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                    0      244     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                    1       10     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                     0      226     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                     1       16     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                  0      241     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                  1       21     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    0      594    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    1       27    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     0       79    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     1        3    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  0     1610    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  1       73    2386
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                    0       97     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                    1       15     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                     0       70     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                     1        4     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                  0       74     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                  1        5     265
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                    0       80     695
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                    1        5     695
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                     0      438     695
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                     1       48     695
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                  0      117     695
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                  1        7     695
0-6 months    ki1119695-PROBIT           BELARUS                        High                    0     2818   16893
0-6 months    ki1119695-PROBIT           BELARUS                        High                    1       22   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low                     0     5970   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low                     1      128   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                  0     7865   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                  1       90   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                    0     6976   14037
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                    1      641   14037
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                     0     2653   14037
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                     1      301   14037
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  0     3126   14037
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  1      340   14037
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                    0      207    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                    1       17    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                     0      448    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                     1       66    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                  0      314    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                  1       26    1078
0-6 months    ki1135781-COHORTS          INDIA                          High                    0      741    5662
0-6 months    ki1135781-COHORTS          INDIA                          High                    1       12    5662
0-6 months    ki1135781-COHORTS          INDIA                          Low                     0     1775    5662
0-6 months    ki1135781-COHORTS          INDIA                          Low                     1      134    5662
0-6 months    ki1135781-COHORTS          INDIA                          Medium                  0     2878    5662
0-6 months    ki1135781-COHORTS          INDIA                          Medium                  1      122    5662
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                    0     1130    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                    1       43    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                     0      824    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                     1       79    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                  0      913    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                  1       69    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         High                    0       85     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                    1        2     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                     0       83     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                     1        9     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                  0       80     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                  1        8     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                    0     8054   27127
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                    1      941   27127
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                     0     8182   27127
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                     1     1665   27127
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                  0     6889   27127
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                  1     1396   27127
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                    0     1661    5111
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                    1      135    5111
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                     0     1463    5111
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                     1      217    5111
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                  0     1469    5111
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                  1      166    5111


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/b366a947-be2d-4f34-9f0a-0cf1845f883d/ff215a75-13da-4fcd-b927-d8eb9d552319/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b366a947-be2d-4f34-9f0a-0cf1845f883d/ff215a75-13da-4fcd-b927-d8eb9d552319/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b366a947-be2d-4f34-9f0a-0cf1845f883d/ff215a75-13da-4fcd-b927-d8eb9d552319/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b366a947-be2d-4f34-9f0a-0cf1845f883d/ff215a75-13da-4fcd-b927-d8eb9d552319/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2037312   0.1178563   0.2896062
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.1926059   0.0999751   0.2852367
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1559952   0.0687441   0.2432464
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.2248450   0.1138422   0.3358479
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2253605   0.1323312   0.3183898
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1937449   0.1085059   0.2789840
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.0943396   0.0154705   0.1732088
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.0833333   0.0279225   0.1387442
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.0789474   0.0181871   0.1397076
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.2340737   0.1481048   0.3200427
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.1919764   0.1168811   0.2670717
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.2219694   0.1425797   0.3013591
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.2120501   0.1287986   0.2953015
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2554448   0.1855965   0.3252930
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1989835   0.1023769   0.2955902
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.4545455   0.1596129   0.7494780
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.5781250   0.4568521   0.6993979
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4577465   0.3756129   0.5398800
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.5816873   0.5043469   0.6590277
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6523082   0.5602507   0.7443656
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6905502   0.6002677   0.7808327
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.1835758   0.1137561   0.2533955
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.2501824   0.1816187   0.3187461
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3087721   0.2354477   0.3820965
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                0.4666667   0.2138629   0.7194704
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.6280488   0.5756732   0.6804244
0-24 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.3939394   0.2270064   0.5608724
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2412748   0.1819459   0.3006036
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3818969   0.3469713   0.4168225
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3211522   0.2918245   0.3504799
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3473978   0.1858647   0.5089310
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4940583   0.4399035   0.5482132
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4892857   0.3175943   0.6609771
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.2670557   0.2046780   0.3294335
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3822300   0.3231488   0.4413113
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2860589   0.2255795   0.3465384
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0761190   0.0417857   0.1104524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1535483   0.1037762   0.2033204
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1680045   0.1212824   0.2147267
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0853576   0.0528551   0.1178601
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1651661   0.1190674   0.2112649
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1368523   0.0942679   0.1794366
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0894819   0.0672000   0.1117638
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1301955   0.0583777   0.2020133
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1011256   0.0866829   0.1155684
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.1855719   0.1146331   0.2565106
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.2602711   0.1621403   0.3584019
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.1371800   0.0645600   0.2098000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1656891   0.0815680   0.2498101
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2560346   0.2165703   0.2954990
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2195747   0.1421258   0.2970237
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0267885   0.0174119   0.0361650
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0470439   0.0371274   0.0569604
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0357420   0.0263095   0.0451745
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1530549   0.1449558   0.1611539
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1884970   0.1746699   0.2023240
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1801385   0.1677006   0.1925765
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4855854   0.4286039   0.5425670
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4618177   0.4231812   0.5004542
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4678063   0.4206931   0.5149195
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0388163   0.0247878   0.0528449
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.2096291   0.1906079   0.2286504
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1015667   0.0906660   0.1124675
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2744842   0.2488570   0.3001114
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4034682   0.3714321   0.4355042
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.3912690   0.3602238   0.4223142
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.1758375   0.1341285   0.2175466
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.2456978   0.1937465   0.2976490
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.2054055   0.1560189   0.2547922
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1731455   0.1650753   0.1812157
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1883650   0.1802144   0.1965155
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1928529   0.1841692   0.2015365
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1646053   0.1470928   0.1821178
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2353978   0.2150661   0.2557295
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2124922   0.1922215   0.2327628
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.1427888   0.0701162   0.2154615
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.0968892   0.0397864   0.1539921
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.1407908   0.0757117   0.2058699
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1052632   0.0434523   0.1670740
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.0933333   0.0467063   0.1399603
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.0724638   0.0111946   0.1337330
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.2043771   0.1417970   0.2669572
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2667585   0.1801228   0.3533942
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2889285   0.2017327   0.3761243
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.0898521   0.0393036   0.1404005
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.1440650   0.0874226   0.2007074
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.2137583   0.1459803   0.2815363
0-6 months    ki1000109-EE               PAKISTAN                       High                 NA                0.4000000   0.1517516   0.6482484
0-6 months    ki1000109-EE               PAKISTAN                       Low                  NA                0.4329268   0.3792340   0.4866197
0-6 months    ki1000109-EE               PAKISTAN                       Medium               NA                0.3333333   0.1722824   0.4943842
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0924843   0.0611080   0.1238605
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1749474   0.1477267   0.2021681
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1463538   0.1305449   0.1621626
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.0932536   0.0479417   0.1385656
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.1176250   0.0749603   0.1602897
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.0729037   0.0370413   0.1087661
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0398245   0.0157306   0.0639185
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0619343   0.0304729   0.0933956
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0786906   0.0456737   0.1117075
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0588235   0.0087668   0.1088802
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.0987654   0.0722216   0.1253093
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0564516   0.0158007   0.0971025
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0078179   0.0037115   0.0119243
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0202702   0.0139062   0.0266342
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0115215   0.0079475   0.0150954
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0877145   0.0817631   0.0936659
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0959989   0.0862920   0.1057057
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0930276   0.0842399   0.1018154
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0750682   0.0405780   0.1095584
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1273604   0.0984555   0.1562653
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0785911   0.0504635   0.1067188
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0171340   0.0075219   0.0267461
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0703811   0.0588059   0.0819563
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0407729   0.0336563   0.0478895
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0461301   0.0355588   0.0567013
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0685883   0.0532263   0.0839502
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0701040   0.0554152   0.0847928
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1365882   0.1299201   0.1432564
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1498384   0.1427958   0.1568810
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1555677   0.1480564   0.1630791
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0860649   0.0738494   0.0982803
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1167686   0.1026506   0.1308866
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1032609   0.0897178   0.1168039


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1869159   0.1345620   0.2392698
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2136364   0.1593519   0.2679208
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0844444   0.0480318   0.1208571
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2119205   0.1657530   0.2580880
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2324841   0.1856873   0.2792809
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4930876   0.4264146   0.5597605
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6353887   0.5864772   0.6843003
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.6010638   0.5515023   0.6506253
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3307241   0.3024794   0.3589688
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4808612   0.4329065   0.5288160
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0993294   0.0873254   0.1113334
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1879433   0.1422658   0.2336207
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2431655   0.2112486   0.2750823
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0394153   0.0310085   0.0478221
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1682795   0.1620941   0.1744649
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4638330   0.4371320   0.4905339
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1320916   0.1234158   0.1407674
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2076167   0.1797361   0.2354973
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1846063   0.1789984   0.1902143
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2035431   0.1916695   0.2154167
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1258278   0.0883606   0.1632951
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0923567   0.0602816   0.1244318
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2472826   0.2031431   0.2914222
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.4228723   0.3728720   0.4728727
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1496732   0.1307571   0.1685893
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0863309   0.0654358   0.1072261
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0142071   0.0107237   0.0176904
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0913301   0.0865643   0.0960959
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1011132   0.0831080   0.1191183
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0473331   0.0418015   0.0528647
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0624591   0.0538810   0.0710373
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1475283   0.1424745   0.1525821
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1013500   0.0923758   0.1103243


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              0.9453922   0.5043978   1.771948
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              0.7656913   0.3815480   1.536591
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.0022925   0.5289796   1.899110
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.8616821   0.4452098   1.667744
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              0.8833333   0.3035369   2.570619
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              0.8368421   0.2686218   2.607028
0-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              0.8201538   0.4821009   1.395252
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              0.9482884   0.5681179   1.582860
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.2046436   0.7484974   1.938773
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              0.9383800   0.5029678   1.750722
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2718750   0.6431191   2.515344
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0070423   0.5136638   1.974315
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.1214069   0.9234630   1.361780
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.1871502   0.9851189   1.430615
0-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High              1.3628288   0.8558731   2.170067
0-24 months   ki1000108-IRC              INDIA                          Medium               High              1.6819869   1.0803101   2.618766
0-24 months   ki1000109-EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN                       Low                  High              1.3458188   0.7779437   2.328225
0-24 months   ki1000109-EE               PAKISTAN                       Medium               High              0.8441558   0.4243530   1.679260
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.5828298   1.2022804   2.083832
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.3310643   1.0381615   1.706606
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.4221687   0.8818167   2.293633
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.4084304   0.7864734   2.522242
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.4312744   1.0905123   1.878517
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.0711582   0.7886510   1.454864
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.0172128   1.1575732   3.515240
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              2.2071291   1.2994090   3.748950
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.9349898   1.2149751   3.081697
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.6032810   0.9864305   2.605870
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.4549926   0.7947180   2.663842
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1301239   0.8485616   1.505112
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              1.4025355   0.8181932   2.404207
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              0.7392285   0.3840611   1.422843
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.5452715   0.9085515   2.628210
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.3252215   0.7144513   2.458127
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.7561229   1.2511534   2.464900
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.3342309   0.9365243   1.900829
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.2315646   1.1288222   1.343658
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1769540   1.0827748   1.279325
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9510535   0.8265480   1.094314
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9633862   0.8285274   1.120196
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              5.4005379   3.7208789   7.838419
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              2.6165975   1.7950251   3.814199
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.4699140   1.3035327   1.657532
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.4254701   1.2643967   1.607063
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.3973000   1.0204476   1.913324
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.1681553   0.8365691   1.631170
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0878998   1.0309925   1.147948
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1138197   1.0527720   1.178407
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.4300744   1.2579880   1.625701
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2909194   1.1237291   1.482985
0-6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  High              0.6785493   0.3104086   1.483300
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               High              0.9860071   0.4949042   1.964441
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.8866667   0.4101435   1.916836
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              0.6884058   0.2459086   1.927149
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.3052272   0.8373543   2.034525
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.4137031   0.9225143   2.166423
0-6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High              1.6033581   0.8071383   3.185027
0-6 months    ki1000108-IRC              INDIA                          Medium               High              2.3790028   1.2471113   4.538211
0-6 months    ki1000109-EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN                       Low                  High              1.0823171   0.5747687   2.038055
0-6 months    ki1000109-EE               PAKISTAN                       Medium               High              0.8333333   0.3795241   1.829777
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.8916448   1.4391408   2.486428
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.5824722   1.1843111   2.114494
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.2613451   0.6877355   2.313377
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              0.7817784   0.3914628   1.561266
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.5551786   0.7064636   3.423503
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.9759320   0.9467303   4.123991
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.6790123   0.6878462   4.098420
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9596774   0.3147689   2.925895
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              2.5928070   1.5999023   4.201912
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.4737364   0.7595555   2.859434
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0944471   0.9772201   1.225737
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0605732   0.9526522   1.180720
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              1.6965960   1.0165257   2.831643
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0469300   0.5856803   1.871435
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              4.1076891   2.2889575   7.371526
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              2.3796515   1.3223581   4.282306
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.4868452   1.0995079   2.010635
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.5197022   1.1382348   2.029014
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0970081   1.0391141   1.158128
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1389541   1.0779042   1.203462
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.3567503   1.1515410   1.598529
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1998025   1.0086922   1.427121


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0168153   -0.0847900   0.0511593
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0112086   -0.1049217   0.0825044
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0098952   -0.0778345   0.0580441
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0221532   -0.0933706   0.0490642
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0204340   -0.0497411   0.0906092
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0385421   -0.2488804   0.3259646
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0537014   -0.0045568   0.1119596
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0652047    0.0049653   0.1254441
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.1343972   -0.1131243   0.3819187
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0894493    0.0329505   0.1459482
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1334634   -0.0226602   0.2895870
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0445500   -0.0091019   0.0982019
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0595953    0.0273857   0.0918048
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0452492    0.0154204   0.0750781
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0098475   -0.0097841   0.0294792
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0023714   -0.0519017   0.0566445
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0774764   -0.0040418   0.1589945
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0126268    0.0042687   0.0209849
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0152246    0.0094377   0.0210115
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0217525   -0.0723694   0.0288644
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0932753    0.0782640   0.1082866
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0816309    0.0603630   0.1028988
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0317792   -0.0030826   0.0666410
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0114608    0.0053034   0.0176182
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0389378    0.0243138   0.0535618
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0169610   -0.0764376   0.0425156
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0129065   -0.0632808   0.0374679
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0429055   -0.0070883   0.0928994
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0613675    0.0141531   0.1085818
0-6 months    ki1000109-EE               PAKISTAN                       High                 NA                 0.0228723   -0.2204591   0.2662038
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0571889    0.0401785   0.0741994
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0005460   -0.0386730   0.0397651
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0221807    0.0000599   0.0443015
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0275074   -0.0207563   0.0757711
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0063892    0.0021259   0.0106525
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0036156   -0.0002021   0.0074332
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0260450   -0.0058161   0.0579061
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0301991    0.0201759   0.0402224
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0163291    0.0072918   0.0253663
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0109401    0.0060994   0.0157807
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0152851    0.0060446   0.0245257


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0899621   -0.5227975   0.2198454
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0524660   -0.5958076   0.3058783
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1171797   -1.2929418   0.4556815
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.1045353   -0.4974866   0.1853027
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0878942   -0.2699320   0.3448965
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0781648   -0.7350273   0.5102209
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0845174   -0.0124207   0.1721738
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.2620973   -0.0238984   0.4682085
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.2235988   -0.3205244   0.5435156
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2704651    0.0803071   0.4213056
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2775508   -0.1325212   0.5391407
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1429691   -0.0471375   0.2985621
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.4391229    0.1608041   0.6251375
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3464538    0.0865003   0.5324326
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0991401   -0.1212652   0.2762207
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0126177   -0.3228425   0.2630084
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3186159   -0.1109928   0.5820996
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.3203529    0.0919109   0.4913272
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0904723    0.0555553   0.1240983
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0468972   -0.1619834   0.0567905
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.7061407    0.5810268   0.7938931
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2292262    0.1674189   0.2864452
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.1530666   -0.0309160   0.3042147
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0620825    0.0281928   0.0947904
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1913001    0.1169117   0.2594222
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.1347953   -0.7190798   0.2509014
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1397459   -0.8365787   0.2926953
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.1735081   -0.0538006   0.3517855
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.4058171    0.0140152   0.6419282
0-6 months    ki1000109-EE               PAKISTAN                       High                 NA                 0.0540881   -0.7380042   0.4851857
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3820920    0.2187696   0.5112706
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0058214   -0.5139519   0.3471451
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3577232   -0.0967760   0.6238799
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3186275   -0.5372684   0.6979912
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.4497201    0.1031547   0.6623632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0395880   -0.0030782   0.0804394
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2575825   -0.1308884   0.5126099
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.6380126    0.3736686   0.7907899
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2614360    0.1085473   0.3881035
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0741557    0.0408967   0.1062613
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1508154    0.0549763   0.2369350
