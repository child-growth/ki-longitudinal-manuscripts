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
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        meducyrs    ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                    0       65     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                    1       13     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                     0       55     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                     1       15     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                  0       55     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                  1       11     214
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                    0       71     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                    1        8     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                     0       60     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                     1        3     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                  0       83     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                  1        7     232
0-24 months   ki0047075b-MAL-ED          INDIA                          High                    0       51     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High                    1       12     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                     0       61     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                     1       15     220
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                     0      112     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                     1       38     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                  0       55     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                  1       14     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    0        6     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    1        5     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                     0       28     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                     1       36     217
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
0-24 months   ki1000109-EE               PAKISTAN                       High                    0        6     376
0-24 months   ki1000109-EE               PAKISTAN                       High                    1        9     376
0-24 months   ki1000109-EE               PAKISTAN                       Low                     0      108     376
0-24 months   ki1000109-EE               PAKISTAN                       Low                     1      220     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium                  0       17     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium                  1       16     376
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                  0      209     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                  1       42     700
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                    0       63     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                    1       12     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                     0      304     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                     1      117     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                  0       78     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                  1       25     599
0-24 months   ki1119695-PROBIT           BELARUS                        High                    0     2763   16897
0-24 months   ki1119695-PROBIT           BELARUS                        High                    1       77   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low                     0     5788   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low                     1      312   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                  0     7680   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                  1      277   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                    0     6551   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                    1     1073   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                     0     2389   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                     1      569   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  0     2848   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  1      623   14053
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                    0     7823   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                    1     1204   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                     0     7791   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                     1     2082   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                  0     6586   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                  1     1716   27202
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                    0       52    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                    1       25    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                     0     1717    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                     1      433    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                  0       64    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                  1       16    2307
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
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                  0       85     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                  1        5     232
0-6 months    ki0047075b-MAL-ED          INDIA                          High                    0       60     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High                    1        3     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                     0       73     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                     1        3     220
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
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                     0       56     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                     1        8     217
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
0-6 months    ki1000109-EE               PAKISTAN                       High                    0        8     376
0-6 months    ki1000109-EE               PAKISTAN                       High                    1        7     376
0-6 months    ki1000109-EE               PAKISTAN                       Low                     0      185     376
0-6 months    ki1000109-EE               PAKISTAN                       Low                     1      143     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium                  0       20     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium                  1       13     376
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                    0       71     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                    1        4     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                     0      386     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                     1       35     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                  0      100     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                  1        3     599
0-6 months    ki1119695-PROBIT           BELARUS                        High                    0     2818   16893
0-6 months    ki1119695-PROBIT           BELARUS                        High                    1       22   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low                     0     5970   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low                     1      128   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                  0     7865   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                  1       90   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                    0     6975   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                    1      638   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                     0     2652   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                     1      301   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  0     3127   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  1      338   14031
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                    0     8060   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                    1      935   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                     0     8195   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                     1     1658   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                  0     6898   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                  1     1390   27136
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                    0       60    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                    1       10    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                     0     1827    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                     1      203    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                  0       65    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                  1        8    2173


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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/8c0eeeb0-3186-43a2-9494-b5bff6b7597e/3cacb26e-47ea-4be2-9676-a4de3af6a262/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8c0eeeb0-3186-43a2-9494-b5bff6b7597e/3cacb26e-47ea-4be2-9676-a4de3af6a262/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8c0eeeb0-3186-43a2-9494-b5bff6b7597e/3cacb26e-47ea-4be2-9676-a4de3af6a262/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8c0eeeb0-3186-43a2-9494-b5bff6b7597e/3cacb26e-47ea-4be2-9676-a4de3af6a262/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1987531   0.1134620   0.2840443
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.1938915   0.1012406   0.2865423
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1478755   0.0611686   0.2345824
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1990357   0.1017753   0.2962962
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1999100   0.1089860   0.2908339
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2126527   0.1232638   0.3020415
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.0943396   0.0154705   0.1732088
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.0833333   0.0279225   0.1387442
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.0789474   0.0181871   0.1397076
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.2011303   0.1261306   0.2761300
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.2014705   0.1310922   0.2718488
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.2302897   0.1559336   0.3046458
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.2284498   0.1455127   0.3113868
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2501941   0.1812971   0.3190911
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.2205108   0.1268585   0.3141631
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.4545455   0.1596129   0.7494780
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.5625000   0.4406820   0.6843180
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4577465   0.3756129   0.5398800
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.5881959   0.5103700   0.6660218
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6494492   0.5576040   0.7412944
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6898115   0.6009416   0.7786814
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.1735848   0.1048170   0.2423526
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.2458947   0.1780938   0.3136957
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3056128   0.2327758   0.3784498
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                0.6000000   0.3517516   0.8482484
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.6707317   0.6198058   0.7216576
0-24 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.4848485   0.3141067   0.6555903
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2355464   0.1784060   0.2926868
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3847707   0.3457926   0.4237489
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3166458   0.2866743   0.3466172
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3403067   0.1857732   0.4948401
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4953526   0.4410365   0.5496688
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4956095   0.3275517   0.6636674
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.2537434   0.1879818   0.3195050
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3893196   0.3272512   0.4513879
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2875426   0.2253196   0.3497657
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0766553   0.0416948   0.1116157
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1669039   0.1151469   0.2186609
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1742408   0.1256751   0.2228066
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0875681   0.0554730   0.1196632
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1646158   0.1189796   0.2102521
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1408305   0.0979734   0.1836876
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0900925   0.0678673   0.1123178
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1283332   0.0555203   0.2011461
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1010417   0.0865959   0.1154874
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.1852640   0.1141505   0.2563776
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.2546028   0.1554247   0.3537809
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.1318362   0.0602407   0.2034317
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1709587   0.0732927   0.2686247
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2743601   0.2306000   0.3181201
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2349723   0.1431200   0.3268247
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0266839   0.0168087   0.0365591
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0472381   0.0370440   0.0574323
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0351279   0.0261896   0.0440661
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1453809   0.1375669   0.1531948
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1804057   0.1668491   0.1939623
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1736241   0.1613023   0.1859459
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4934238   0.4390382   0.5478095
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4654750   0.4266144   0.5043357
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4648925   0.4170735   0.5127115
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0375733   0.0244098   0.0507367
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.2114447   0.1922686   0.2306208
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1011810   0.0903182   0.1120439
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2744800   0.2489133   0.3000466
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4077340   0.3760204   0.4394477
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.3899461   0.3590073   0.4208849
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.1761920   0.1336688   0.2187152
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.2456656   0.1925896   0.2987415
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.2057465   0.1563792   0.2551139
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1724458   0.1648319   0.1800597
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1845798   0.1771866   0.1919731
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1915259   0.1832030   0.1998488
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3266219   0.2317661   0.4214778
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2015300   0.1824065   0.2206536
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2015338   0.1146217   0.2884459
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.1454490   0.0722696   0.2186284
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.0938019   0.0386321   0.1489717
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.1424368   0.0757859   0.2090878
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1052632   0.0434523   0.1670740
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.0933333   0.0467063   0.1399603
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.0724638   0.0111946   0.1337330
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.2043767   0.1419899   0.2667635
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2669621   0.1803007   0.3536234
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2917464   0.2026299   0.3808630
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.0867255   0.0366051   0.1368459
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.1407228   0.0837503   0.1976953
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.2182205   0.1489499   0.2874911
0-6 months    ki1000109-EE               PAKISTAN                       High                 NA                0.4666667   0.2138629   0.7194704
0-6 months    ki1000109-EE               PAKISTAN                       Low                  NA                0.4359756   0.3822391   0.4897121
0-6 months    ki1000109-EE               PAKISTAN                       Medium               NA                0.3939394   0.2270064   0.5608724
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0937066   0.0684436   0.1189696
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1751963   0.1497318   0.2006608
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1386888   0.1180674   0.1593101
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.0917127   0.0472873   0.1361380
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.1207872   0.0774721   0.1641022
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.0720784   0.0361323   0.1080246
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0419673   0.0179291   0.0660054
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0622771   0.0310066   0.0935475
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0782058   0.0451381   0.1112735
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0080544   0.0040368   0.0120720
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0201846   0.0138698   0.0264995
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0116217   0.0079588   0.0152846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0873044   0.0814275   0.0931814
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0969283   0.0871367   0.1067198
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0921229   0.0834546   0.1007912
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0756255   0.0411349   0.1101162
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1271373   0.0981907   0.1560839
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0778114   0.0496968   0.1059260
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0164798   0.0070544   0.0259052
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0712565   0.0595757   0.0829374
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0405857   0.0334959   0.0476756
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0454912   0.0349224   0.0560599
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0693365   0.0540198   0.0846532
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0714077   0.0565090   0.0863063
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1386721   0.1320427   0.1453014
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1474428   0.1408526   0.1540329
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1541197   0.1470634   0.1611760
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1428571   0.0144791   0.2712352
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1000000   0.0853357   0.1146643
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1095890   0.0376879   0.1814902


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1822430   0.1303993   0.2340867
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2000000   0.1470232   0.2529768
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0844444   0.0480318   0.1208571
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2119205   0.1657530   0.2580880
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2292994   0.1827279   0.2758709
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4884793   0.4218176   0.5551409
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6353887   0.5864772   0.6843003
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.6515957   0.6033717   0.6998198
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3307241   0.3024794   0.3589688
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4808612   0.4329065   0.5288160
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1342857   0.1090095   0.1595619
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0993294   0.0873254   0.1113334
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1879433   0.1422658   0.2336207
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2570952   0.2220675   0.2921228
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0394153   0.0310085   0.0478221
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1611755   0.1550961   0.1672550
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4638330   0.4371320   0.4905339
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1320916   0.1234158   0.1407674
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2076167   0.1797361   0.2354973
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1838835   0.1783043   0.1894627
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2054616   0.1868701   0.2240531
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1258278   0.0883606   0.1632951
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0923567   0.0602816   0.1244318
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2472826   0.2031431   0.2914222
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.4335106   0.3833540   0.4836673
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1496732   0.1307571   0.1685893
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0142071   0.0107237   0.0176904
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0910128   0.0862534   0.0957721
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1011132   0.0831080   0.1191183
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0473331   0.0418015   0.0528647
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0624591   0.0538810   0.0710373
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1467792   0.1417628   0.1517956
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1017027   0.0872868   0.1161186


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              0.9755393   0.5200772   1.8298765
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              0.7440161   0.3621003   1.5287474
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.0043923   0.5147984   1.9596093
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.0684145   0.5612114   2.0340100
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              0.8833333   0.3035369   2.5706190
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              0.8368421   0.2686218   2.6070284
0-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.0016914   0.6211887   1.6152668
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.1449773   0.7181399   1.8255121
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.0951822   0.6973701   1.7199246
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              0.9652486   0.5567724   1.6734035
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2375000   0.6244116   2.4525588
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0070423   0.5136638   1.9743151
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.1041376   0.9096080   1.3402695
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.1727581   0.9749470   1.4107039
0-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High              1.4165686   0.8780999   2.2852371
0-24 months   ki1000108-IRC              INDIA                          Medium               High              1.7605967   1.1156017   2.7785013
0-24 months   ki1000109-EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Low                  High              1.1178862   0.7340218   1.7024964
0-24 months   ki1000109-EE               PAKISTAN                       Medium               High              0.8080808   0.4693454   1.3912879
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.6335243   1.2499324   2.1348368
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.3443033   1.0655016   1.6960568
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.4556066   0.9123622   2.3223128
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.4563615   0.8264669   2.5663324
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.5343042   1.1357411   2.0727342
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1332025   0.8105769   1.5842394
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.1773316   1.2535689   3.7818206
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              2.2730447   1.3341645   3.8726348
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.8798611   1.1971063   2.9520166
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.6082401   1.0052756   2.5728627
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.4244596   0.7676182   2.6433523
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1215318   0.8437695   1.4907312
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              1.3742700   0.7949204   2.3758579
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              0.7116126   0.3659119   1.3839193
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.6048323   0.8864792   2.9052986
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.3744391   0.6879066   2.7461329
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.7702869   1.2264144   2.5553481
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.3164452   0.8988966   1.9279503
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.2409175   1.1355394   1.3560746
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1942705   1.0967245   1.3004926
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9433574   0.8250656   1.0786090
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9421768   0.8137114   1.0909237
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              5.6275267   3.9192162   8.0804567
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              2.6928982   1.8670489   3.8840441
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.4854783   1.3191860   1.6727328
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.4206724   1.2604772   1.6012270
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.3943059   1.0105204   1.9238492
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.1677403   0.8338297   1.6353667
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0703645   1.0194397   1.1238332
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1106443   1.0539887   1.1703453
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.6170132   0.4553670   0.8360406
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.6170247   0.3658720   1.0405809
0-6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  High              0.6449128   0.2968549   1.4010634
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               High              0.9792905   0.4928165   1.9459777
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.8866667   0.4101435   1.9168361
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              0.6884058   0.2459086   1.9271493
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.3062255   0.8380759   2.0358836
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.4274936   0.9298716   2.1914186
0-6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High              1.6226229   0.8022443   3.2819246
0-6 months    ki1000108-IRC              INDIA                          Medium               High              2.5162207   1.3031843   4.8583815
0-6 months    ki1000109-EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       Low                  High              0.9342334   0.5360133   1.6283030
0-6 months    ki1000109-EE               PAKISTAN                       Medium               High              0.8441558   0.4243530   1.6792602
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.8696265   1.4690286   2.3794657
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.4800326   1.1164116   1.9620869
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.3170177   0.7208862   2.4061157
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              0.7859161   0.3920717   1.5753853
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.4839440   0.6933056   3.1762182
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.8634959   0.9147461   3.7962633
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              2.5060463   1.5791472   3.9769998
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.4429023   0.7637679   2.7259162
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1102329   0.9917061   1.2429259
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0551913   0.9486618   1.1736834
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              1.6811425   1.0092823   2.8002472
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0289037   0.5761894   1.8373175
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              4.3238704   2.3848604   7.8393919
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              2.4627560   1.3542406   4.4786482
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.5241753   1.1269534   2.0614076
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.5697046   1.1729982   2.1005766
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0632479   1.0106621   1.1185698
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1113969   1.0558682   1.1698458
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.7000000   0.2808935   1.7444333
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.7671233   0.2524569   2.3310047


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0165101   -0.0847165    0.0516962
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0009643   -0.0818043    0.0837328
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0098952   -0.0778345    0.0580441
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0107902   -0.0488902    0.0704706
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0008496   -0.0684595    0.0701587
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0339338   -0.2534861    0.3213537
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0471928   -0.0113264    0.1057120
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0751957    0.0159032    0.1344883
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.0515957   -0.1913770    0.2945684
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0951777    0.0418378    0.1485176
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1405546   -0.0085021    0.2896113
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0578623    0.0000426    0.1156820
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0576305    0.0248018    0.0904591
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0430388    0.0135932    0.0724844
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0092369   -0.0103393    0.0288131
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0026792   -0.0516850    0.0570435
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0861364   -0.0090576    0.1813305
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0127314    0.0035179    0.0219449
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0157947    0.0102634    0.0213259
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0295909   -0.0775593    0.0183776
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0945183    0.0802713    0.1087653
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0816352    0.0604349    0.1028355
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0314247   -0.0041970    0.0670464
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0114378    0.0057757    0.0170998
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1211603   -0.2144420   -0.0278786
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0196212   -0.0796289    0.0403864
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0129065   -0.0632808    0.0374679
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0429059   -0.0071514    0.0929632
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0644940    0.0176582    0.1113299
0-6 months    ki1000109-EE               PAKISTAN                       High                 NA                -0.0331560   -0.2807974    0.2144853
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0559666    0.0396563    0.0722770
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0020870   -0.0363910    0.0405651
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0200380   -0.0020229    0.0420989
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0061527    0.0019494    0.0103560
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0037083   -0.0000341    0.0074508
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0254876   -0.0063923    0.0573676
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0308533    0.0209756    0.0407310
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0169680    0.0079165    0.0260194
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0081071    0.0034793    0.0127350
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0411544   -0.1662895    0.0839806


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0905939   -0.5386785    0.2270022
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0048213   -0.5083070    0.3433826
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1171797   -1.2929418    0.4556815
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0509163   -0.2770495    0.2946554
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0037052   -0.3494092    0.2644163
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0694683   -0.7513527    0.5055883
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0742739   -0.0230230    0.1623173
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.3022573    0.0183247    0.5040673
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.0791837   -0.3806881    0.3858840
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2877858    0.1083037    0.4311415
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2922976   -0.0967781    0.5433509
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1856908   -0.0221419    0.3512648
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.4291630    0.1406633    0.6208065
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3295292    0.0751274    0.5139535
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0929924   -0.1265484    0.2697492
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0142556   -0.3219600    0.2649612
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3350372   -0.1563853    0.6176227
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.3230065    0.0664644    0.5090490
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0979966    0.0631818    0.1315176
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0637964   -0.1725682    0.0348853
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.7155512    0.5990342    0.7982095
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2292381    0.1676405    0.2862773
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.1513592   -0.0372778    0.3056910
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0622011    0.0309996    0.0923978
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.5896978   -1.1203478   -0.1918513
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.1559369   -0.7442107    0.2339284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1397459   -0.8365787    0.2926953
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.1735096   -0.0538539    0.3518205
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.4264926    0.0352476    0.6590724
0-6 months    ki1000109-EE               PAKISTAN                       High                 NA                -0.0764826   -0.8301541    0.3668212
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3739256    0.2419148    0.4829485
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0222499   -0.4873571    0.3572523
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3231665   -0.1230283    0.5920818
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.4330725    0.0974387    0.6438947
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0407451   -0.0011942    0.0809276
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.2520704   -0.1359520    0.5075507
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.6518334    0.3909450    0.8009704
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2716651    0.1184231    0.3982695
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0552335    0.0232243    0.0861937
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.4046541   -2.3525270    0.4114728
