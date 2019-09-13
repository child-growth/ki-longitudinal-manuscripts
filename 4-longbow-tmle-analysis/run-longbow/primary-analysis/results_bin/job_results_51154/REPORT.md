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
* delta_W_mage
* delta_feducyrs
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

agecat        studyid                    country                        meducyrs    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       37     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1       41     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       25     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1       45     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       25     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       41     214
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   0       59     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   1       20     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    0       47     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    1       16     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 0       72     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 1       18     232
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       29     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   1       34     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       29     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1       47     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       33     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1       48     220
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       40     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1       13     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       56     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1       40     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       54     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1       22     225
0-24 months   ki0047075b-MAL-ED          PERU                           High                   0       38     302
0-24 months   ki0047075b-MAL-ED          PERU                           High                   1       53     302
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       37     302
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    1       67     302
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       40     302
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1       67     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       50     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       45     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       64     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       86     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       29     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       40     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0        4     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        7     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       12     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       52     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       22     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1      120     217
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   0       17     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   1      141     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0        5     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1      101     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1      103     373
0-24 months   ki1000108-IRC              INDIA                          High                   0       53     410
0-24 months   ki1000108-IRC              INDIA                          High                   1       71     410
0-24 months   ki1000108-IRC              INDIA                          Low                    0       51     410
0-24 months   ki1000108-IRC              INDIA                          Low                    1       96     410
0-24 months   ki1000108-IRC              INDIA                          Medium                 0       43     410
0-24 months   ki1000108-IRC              INDIA                          Medium                 1       96     410
0-24 months   ki1000109-EE               PAKISTAN                       High                   0        3     376
0-24 months   ki1000109-EE               PAKISTAN                       High                   1       12     376
0-24 months   ki1000109-EE               PAKISTAN                       Low                    0       24     376
0-24 months   ki1000109-EE               PAKISTAN                       Low                    1      304     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium                 0        6     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium                 1       27     376
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      145    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1      178    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      158    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1      538    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      170    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      344    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0        7     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       34     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       54     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1      278     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       11     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       34     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   0       76     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   1      103     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    0       65     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    1      165     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 0       70     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 1      150     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      147     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       88     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0      113     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1      101     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      136     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1      115     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      157     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       97     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      117     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1      125     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      122     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1      140     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      426    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1      195    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       50    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       32    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1083    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      600    2386
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   0       60     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   1       58     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    0       27     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    1       49     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 0       39     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 1       49     282
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       38     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       37     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      120     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      301     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       37     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       66     599
0-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2455   16897
0-24 months   ki1119695-PROBIT           BELARUS                        High                   1      385   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     4879   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    1     1221   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     6733   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1     1224   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     4852   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1     2772   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1668   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1     1290   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     1957   14053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1     1514   14053
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0       65    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1      220    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0      132    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1      504    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0      117    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1      303    1341
0-24 months   ki1135781-COHORTS          INDIA                          High                   0      648    5852
0-24 months   ki1135781-COHORTS          INDIA                          High                   1      145    5852
0-24 months   ki1135781-COHORTS          INDIA                          Low                    0      931    5852
0-24 months   ki1135781-COHORTS          INDIA                          Low                    1     1025    5852
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 0     2039    5852
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 1     1064    5852
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0      495    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1      678    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      177    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1      726    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      287    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1      695    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   0      125     814
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   1      173     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0       84     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1      177     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0       86     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1      169     814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     5341   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1     3686   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     4488   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     5385   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     3941   27202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     4361   27202
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0       26    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1       51    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      902    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1     1248    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       32    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       48    2307
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   0       58     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   1       20     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    0       42     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    1       28     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       42     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       24     214
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                   0       61     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                   1       18     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                    0       51     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                    1       12     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                 0       75     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                 1       15     232
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   0       45     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   1       18     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    0       52     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    1       24     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 0       52     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 1       29     220
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   0       46     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   1        7     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    0       76     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    1       20     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 0       64     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 1       12     225
0-6 months    ki0047075b-MAL-ED          PERU                           High                   0       50     302
0-6 months    ki0047075b-MAL-ED          PERU                           High                   1       41     302
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    0       60     302
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    1       44     302
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 0       64     302
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 1       43     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       61     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       34     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0      100     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       50     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       40     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       29     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       10     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        1     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       39     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       25     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       82     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1       60     217
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                   0       80     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                   1       77     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0       51     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1       53     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0       49     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1       58     368
0-6 months    ki1000108-IRC              INDIA                          High                   0       82     410
0-6 months    ki1000108-IRC              INDIA                          High                   1       42     410
0-6 months    ki1000108-IRC              INDIA                          Low                    0       84     410
0-6 months    ki1000108-IRC              INDIA                          Low                    1       63     410
0-6 months    ki1000108-IRC              INDIA                          Medium                 0       70     410
0-6 months    ki1000108-IRC              INDIA                          Medium                 1       69     410
0-6 months    ki1000109-EE               PAKISTAN                       High                   0        5     376
0-6 months    ki1000109-EE               PAKISTAN                       High                   1       10     376
0-6 months    ki1000109-EE               PAKISTAN                       Low                    0       82     376
0-6 months    ki1000109-EE               PAKISTAN                       Low                    1      246     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium                 0       11     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium                 1       22     376
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   0      228    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   1       95    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    0      350    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    1      345    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      301    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      211    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       26     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       14     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0      201     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1      130     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       27     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       18     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                   0      126     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                   1       53     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                    0      146     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                    1       84     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                 0      137     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                 1       83     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   0      184     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   1       51     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    0      163     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    1       51     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      186     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       65     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      195     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       59     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      166     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       76     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      168     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       94     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      503    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1      118    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       65    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       17    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1353    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      330    2386
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                   0       74     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                   1       38     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                    0       52     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                    1       22     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                 0       55     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                 1       24     265
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   0       62     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   1       13     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    0      289     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    1      132     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 0       81     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 1       22     599
0-6 months    ki1119695-PROBIT           BELARUS                        High                   0     2608   16893
0-6 months    ki1119695-PROBIT           BELARUS                        High                   1      232   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    0     5385   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    1      713   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 0     7219   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 1      736   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     5760   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   1     1853   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2148   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      805   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     2502   14031
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      963   14031
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   0      164    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   1       60    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    0      322    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    1      192    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 0      245    1078
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 1       95    1078
0-6 months    ki1135781-COHORTS          INDIA                          High                   0      676    5662
0-6 months    ki1135781-COHORTS          INDIA                          High                   1       77    5662
0-6 months    ki1135781-COHORTS          INDIA                          Low                    0     1436    5662
0-6 months    ki1135781-COHORTS          INDIA                          Low                    1      473    5662
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 0     2483    5662
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 1      517    5662
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   0      954    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   1      219    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    0      638    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    1      265    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 0      735    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 1      247    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   0       65     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   1       22     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    0       49     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    1       43     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 0       58     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 1       30     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   0     6035   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   1     2960   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     5349   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     4504   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     4604   27136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     3684   27136
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   0       36    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   1       34    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1328    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      702    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       46    2173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       27    2173
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       32     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1       21     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       21     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1       17     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       23     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       17     131
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   0       53     167
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   1        2     167
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    0       41     167
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    1        4     167
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 0       64     167
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 1        3     167
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       27     141
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   1       16     141
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       27     141
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1       23     141
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       29     141
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1       19     141
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       39     183
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        6     183
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       55     183
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1       20     183
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       53     183
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1       10     183
6-24 months   ki0047075b-MAL-ED          PERU                           High                   0       29     149
6-24 months   ki0047075b-MAL-ED          PERU                           High                   1       12     149
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       28     149
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    1       23     149
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       33     149
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1       24     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       33     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       11     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       48     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       36     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       20     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       11     159
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0        2     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        6     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       10     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       27     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       17     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1       60     122
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   0       17     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                   1       64     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    0        5     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                    1       48     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 0        6     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                 1       45     185
6-24 months   ki1000108-IRC              INDIA                          High                   0       53     236
6-24 months   ki1000108-IRC              INDIA                          High                   1       29     236
6-24 months   ki1000108-IRC              INDIA                          Low                    0       51     236
6-24 months   ki1000108-IRC              INDIA                          Low                    1       33     236
6-24 months   ki1000108-IRC              INDIA                          Medium                 0       43     236
6-24 months   ki1000108-IRC              INDIA                          Medium                 1       27     236
6-24 months   ki1000109-EE               PAKISTAN                       High                   0        3      96
6-24 months   ki1000109-EE               PAKISTAN                       High                   1        2      96
6-24 months   ki1000109-EE               PAKISTAN                       Low                    0       22      96
6-24 months   ki1000109-EE               PAKISTAN                       Low                    1       58      96
6-24 months   ki1000109-EE               PAKISTAN                       Medium                 0        6      96
6-24 months   ki1000109-EE               PAKISTAN                       Medium                 1        5      96
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      130     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1       83     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      124     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1      193     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      150     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      133     813
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0        7     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       20     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       44     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1      148     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0        8     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       16     243
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   0       61     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                   1       50     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    0       38     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                    1       81     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 0       48     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                 1       67     345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      126     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       37     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0       87     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1       50     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      107     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       50     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      150     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       38     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      109     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       49     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      114     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       46     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      328    1597
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       77    1597
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       40    1597
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       15    1597
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      867    1597
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      270    1597
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   0       54     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                   1       20     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    0       22     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                    1       27     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 0       37     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                 1       25     185
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       34     423
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       24     423
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      116     423
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      169     423
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       36     423
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       44     423
6-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2397   14951
6-24 months   ki1119695-PROBIT           BELARUS                        High                   1      153   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     4768   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    1      508   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     6637   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1      488   14951
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     3442    7944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      919    7944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1159    7944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      485    7944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     1388    7944
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      551    7944
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0       30     887
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1      160     887
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0       89     887
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1      312     887
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0       88     887
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1      208     887
6-24 months   ki1135781-COHORTS          INDIA                          High                   0      607    4497
6-24 months   ki1135781-COHORTS          INDIA                          High                   1       68    4497
6-24 months   ki1135781-COHORTS          INDIA                          Low                    0      821    4497
6-24 months   ki1135781-COHORTS          INDIA                          Low                    1      552    4497
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 0     1902    4497
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 1      547    4497
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0      394    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1      459    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      136    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1      461    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      223    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1      448    2121
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   0      120     708
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   1      151     708
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0       82     708
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1      134     708
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0       82     708
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1      139     708
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     3439   10517
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1      726   10517
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     2371   10517
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      881   10517
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     2423   10517
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      677   10517
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0       26    1542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1       17    1542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      900    1542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      546    1542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0       32    1542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1       21    1542


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN

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
![](/tmp/6fe680ee-1dc4-4a6a-8f71-30d07ddd067e/d8b7418d-9602-4fa1-aa9f-68188998a493/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6fe680ee-1dc4-4a6a-8f71-30d07ddd067e/d8b7418d-9602-4fa1-aa9f-68188998a493/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6fe680ee-1dc4-4a6a-8f71-30d07ddd067e/d8b7418d-9602-4fa1-aa9f-68188998a493/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6fe680ee-1dc4-4a6a-8f71-30d07ddd067e/d8b7418d-9602-4fa1-aa9f-68188998a493/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.5868066   0.4859483   0.6876649
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.5889436   0.4897234   0.6881638
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.6090645   0.4948706   0.7232584
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                0.2596465   0.1618603   0.3574328
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.2517096   0.1417487   0.3616704
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                0.1959681   0.1139215   0.2780147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.5780569   0.4600743   0.6960396
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6448582   0.5380101   0.7517063
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5903936   0.4888819   0.6919052
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2371895   0.1205644   0.3538146
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.4085642   0.3076796   0.5094488
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3045872   0.1977640   0.4114105
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.5714257   0.4748797   0.6679717
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.6374657   0.5452637   0.7296678
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.6386179   0.5510201   0.7262156
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.4868476   0.3872737   0.5864215
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.5772996   0.4998838   0.6547154
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.5537270   0.4315055   0.6759486
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.8924051   0.8440236   0.9407866
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.9528302   0.9124175   0.9932429
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.9449541   0.9020810   0.9878273
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.5556916   0.4705685   0.6408146
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.6544757   0.5778015   0.7311498
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.6951022   0.6220307   0.7681736
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.5938445   0.5249601   0.6627289
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.7455023   0.6847584   0.8062461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.6791013   0.6495347   0.7086679
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.8292683   0.7139546   0.9445820
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.8373494   0.7976046   0.8770942
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.7555556   0.6298411   0.8812700
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.6104036   0.5383573   0.6824499
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.7016801   0.6443767   0.7589835
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.6827499   0.6209603   0.7445396
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.4058182   0.3489016   0.4627348
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4585201   0.3966998   0.5203405
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.4342389   0.3751835   0.4932944
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.4390369   0.3846291   0.4934448
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.4793534   0.4202441   0.5384626
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.5139878   0.4610571   0.5669186
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3369953   0.3003956   0.3735950
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3483147   0.2463265   0.4503029
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3504700   0.3277016   0.3732385
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.5061016   0.4147965   0.5974068
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.6450964   0.5370036   0.7531892
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.5562745   0.4502874   0.6622616
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5467596   0.4272371   0.6662822
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.7143171   0.6702000   0.7584342
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6272999   0.5185183   0.7360814
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.1475629   0.1256386   0.1694872
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.1861083   0.1624813   0.2097352
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.1580165   0.1395940   0.1764389
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.3730511   0.3622326   0.3838695
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4215192   0.4042796   0.4387588
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.4276370   0.4118462   0.4434277
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7910183   0.7425054   0.8395312
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7729406   0.7388617   0.8070195
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7457439   0.7049103   0.7865775
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2358747   0.2105924   0.2611570
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.4781197   0.4557500   0.5004893
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3532839   0.3369126   0.3696552
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.6141236   0.5873837   0.6408634
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7791127   0.7524689   0.8057564
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7055680   0.6774724   0.7336637
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.5955790   0.5403745   0.6507835
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.6541686   0.5974192   0.7109180
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6618144   0.6026698   0.7209589
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4793536   0.4685594   0.4901478
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5105182   0.5000354   0.5210009
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4984487   0.4875318   0.5093655
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.6524815   0.5472999   0.7576631
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.5814384   0.5563708   0.6065059
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.5994099   0.4778145   0.7210053
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.3274885   0.2391844   0.4157925
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3224423   0.2293161   0.4155685
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3544902   0.2483780   0.4606024
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                0.2376024   0.1439806   0.3312242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.1825111   0.0857079   0.2793144
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                0.1625331   0.0851106   0.2399556
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.2687194   0.1554331   0.3820058
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2913723   0.1843247   0.3984199
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3518980   0.2470786   0.4567174
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1320755   0.0407211   0.2234299
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2083333   0.1269135   0.2897532
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1578947   0.0757319   0.2400576
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.4346735   0.3411729   0.5281742
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.4353996   0.3480280   0.5227713
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.4147497   0.3293248   0.5001746
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.3560877   0.2634882   0.4486871
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3498451   0.2771430   0.4225472
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.3976477   0.2831557   0.5121397
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.4956673   0.4179541   0.5733806
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.5026281   0.4050702   0.6001860
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.5388482   0.4401612   0.6375353
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.3310334   0.2538581   0.4082088
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.4318526   0.3560914   0.5076137
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.5009596   0.4217463   0.5801729
0-6 months    ki1000109-EE               PAKISTAN                       High                 NA                0.6666667   0.4277896   0.9055438
0-6 months    ki1000109-EE               PAKISTAN                       Low                  NA                0.7500000   0.7030765   0.7969235
0-6 months    ki1000109-EE               PAKISTAN                       Medium               NA                0.6666667   0.5056158   0.8277176
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3578086   0.2864176   0.4291996
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4464966   0.4141948   0.4787985
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4319612   0.3914043   0.4725182
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.4038463   0.2438005   0.5638921
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3915032   0.3391848   0.4438216
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.3900073   0.2561369   0.5238777
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.3220347   0.2571466   0.3869228
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3428357   0.2844509   0.4012205
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3804971   0.3159172   0.4450770
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2531143   0.2063408   0.2998878
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2292545   0.1801442   0.2783648
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2344636   0.1852353   0.2836920
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2875467   0.2408949   0.3341985
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2908654   0.2415959   0.3401350
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3216524   0.2738595   0.3694452
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2018045   0.1707038   0.2329052
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2018864   0.1135346   0.2902383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1937504   0.1748357   0.2126651
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.3421660   0.2540572   0.4302749
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.2840162   0.1814827   0.3865496
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.3093914   0.2029417   0.4158411
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1950859   0.0951891   0.2949827
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3123157   0.2672982   0.3573332
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2092989   0.1179441   0.3006536
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0906540   0.0764949   0.1048131
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.1026454   0.0850535   0.1202373
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0980400   0.0845491   0.1115310
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2528184   0.2432524   0.2623843
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2591224   0.2452710   0.2729738
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2701353   0.2571252   0.2831453
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3126629   0.2556324   0.3696934
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.3535765   0.3137685   0.3933845
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.3270734   0.2786786   0.3754683
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1565014   0.1376160   0.1753868
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2095330   0.1939529   0.2251130
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1814275   0.1691068   0.1937482
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2166597   0.1954200   0.2378994
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2462972   0.2206457   0.2719487
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2497197   0.2251248   0.2743146
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.2751741   0.1823612   0.3679871
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.4365399   0.3363066   0.5367732
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.3438296   0.2455064   0.4421528
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3998090   0.3901660   0.4094520
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4219179   0.4119962   0.4318396
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4150304   0.4046683   0.4253925
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.4862595   0.3907494   0.5817695
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3471323   0.3235732   0.3706913
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3431001   0.2381475   0.4480527
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.3812872   0.2506794   0.5118950
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4342029   0.2743331   0.5940726
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4333025   0.2783377   0.5882674
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3781269   0.2318542   0.5243996
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.4729872   0.3303294   0.6156449
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4073561   0.2658964   0.5488159
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1333333   0.0337407   0.2329259
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2666667   0.1663109   0.3670224
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1587302   0.0682476   0.2492128
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.3020542   0.1553359   0.4487724
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4525115   0.3095316   0.5954913
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.4157426   0.2851148   0.5463704
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.2365043   0.1047175   0.3682911
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.4244698   0.3176018   0.5313377
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.3298656   0.1565502   0.5031810
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.7901235   0.7012009   0.8790460
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.9056604   0.8267531   0.9845676
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.8823529   0.7936881   0.9710178
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.3613099   0.2546954   0.4679245
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.3850723   0.2801876   0.4899569
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3846436   0.2680529   0.5012342
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3890504   0.3012053   0.4768954
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.5953749   0.5189388   0.6718111
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4819642   0.4210198   0.5429086
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.7407407   0.5751020   0.9063795
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.7708333   0.7112604   0.8304063
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.6666667   0.4776798   0.8556536
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4648376   0.3744880   0.5551873
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.6759090   0.5924508   0.7593672
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.5667232   0.4764912   0.6569553
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2444946   0.1790911   0.3098980
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3375883   0.2598243   0.4153524
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3129186   0.2400091   0.3858281
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2197001   0.1619740   0.2774262
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2906705   0.2187025   0.3626386
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2846112   0.2150413   0.3541811
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1883670   0.1502445   0.2264895
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2748071   0.1553814   0.3942329
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2375175   0.2127428   0.2622921
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.2642360   0.1602359   0.3682360
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.5309560   0.3913169   0.6705951
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.3830604   0.2612704   0.5048505
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4312742   0.2999923   0.5625561
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5949177   0.5371514   0.6526839
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5395222   0.4135408   0.6655036
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0639100   0.0469142   0.0809058
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0950455   0.0782966   0.1117944
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0665758   0.0521367   0.0810150
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2142516   0.2015198   0.2269835
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2922328   0.2685536   0.3159120
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2794642   0.2582679   0.3006605
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.8373511   0.7848542   0.8898479
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7656209   0.7242172   0.8070246
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7151622   0.6642533   0.7660712
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1092192   0.0848560   0.1335824
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3750433   0.3488289   0.4012578
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2278255   0.2107371   0.2449139
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5579063   0.5252138   0.5905988
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7548686   0.7214150   0.7883223
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6683463   0.6329163   0.7037762
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.5726400   0.5136981   0.6315819
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.5960609   0.5303760   0.6617457
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6233030   0.5573571   0.6892490
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1953574   0.1811353   0.2095795
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2530340   0.2357877   0.2702804
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2136311   0.1971576   0.2301047
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.4044182   0.2169584   0.5918780
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3777624   0.3482791   0.4072457
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3873133   0.2263438   0.5482828


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5934579   0.5274941   0.6594218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2327586   0.1782631   0.2872542
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5863636   0.5211379   0.6515894
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3333333   0.2716003   0.3950664
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6192053   0.5643489   0.6740617
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5445860   0.4894148   0.5997572
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9249330   0.8981563   0.9517096
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6914547   0.6510509   0.7318584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3466052   0.3275063   0.3657041
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5531915   0.4950624   0.6113206
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6744574   0.6369015   0.7120134
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1674854   0.1488048   0.1861659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3967836   0.3886946   0.4048726
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7658464   0.7431730   0.7885198
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3817498   0.3693017   0.3941980
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6375921   0.6045496   0.6706347
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4937872   0.4859431   0.5016313
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5838752   0.5596094   0.6081410
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3364486   0.2729952   0.3999020
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1939655   0.1429760   0.2449551
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3227273   0.2608080   0.3846465
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1733333   0.1237620   0.2229046
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4238411   0.3680149   0.4796672
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3598726   0.3067005   0.4130447
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.7393617   0.6949313   0.7837921
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4254902   0.3977202   0.4532601
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1948868   0.1789895   0.2107841
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3169811   0.2608532   0.3731091
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2787980   0.2428586   0.3147374
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0995087   0.0864641   0.1125533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2580714   0.2508309   0.2653119
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3218924   0.2939898   0.3497950
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1884493   0.1782621   0.1986366
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3558052   0.2982716   0.4133389
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4108196   0.4033665   0.4182726
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3511275   0.3280882   0.3741668
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4198473   0.3350088   0.5046859
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4113475   0.3298362   0.4928589
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1967213   0.1389688   0.2544739
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3647799   0.2897219   0.4398379
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8486486   0.7968646   0.9004327
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2266750   0.2061344   0.2472157
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3891892   0.3187405   0.4596379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5602837   0.5129269   0.6076405
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2460977   0.2366251   0.2555702
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7666291   0.7387777   0.7944805
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2595063   0.2466928   0.2723199
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5988701   0.5627418   0.6349983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2171722   0.2078051   0.2265392
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3787289   0.3502539   0.4072039


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.0036417   0.8032014   1.2541021
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.0379305   0.8144479   1.3227361
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High              0.9694315   0.5442927   1.7266399
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              0.7547496   0.4298307   1.3252820
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.1155618   0.8624657   1.4429305
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.0213415   0.7879478   1.3238676
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.7225224   0.9927866   2.9886416
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.2841515   0.7010964   2.3520946
0-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.1155706   0.8973971   1.3867860
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.1175868   0.9058505   1.3788150
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.1857912   0.9341137   1.5052781
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.1373724   0.8452887   1.5303837
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.0677104   0.9966880   1.1437938
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.0588848   0.9866120   1.1364517
0-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High              1.1777679   0.9743403   1.4236680
0-24 months   ki1000108-IRC              INDIA                          Medium               High              1.2508777   1.0437558   1.4991006
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.2553829   1.0970173   1.4366103
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1435675   1.0050567   1.3011670
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0097449   0.8717655   1.1695630
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              0.9111111   0.7334960   1.1317356
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.1495346   0.9980076   1.3240679
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1185221   0.9663516   1.2946547
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.1298659   0.9397078   1.3585041
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.0700332   0.8872988   1.2904007
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.0918292   0.9250352   1.2886981
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.1707166   1.0084368   1.3591109
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0335894   0.7567908   1.4116279
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0399850   0.9173236   1.1790483
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              1.2746380   0.9982646   1.6275265
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              1.0991360   0.8461895   1.4276943
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3064554   1.0408060   1.6399077
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1473046   0.8679642   1.5165463
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.2612131   1.1087646   1.4346223
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0708414   0.9584785   1.1963768
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1299236   1.0770621   1.1853794
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1463228   1.0961964   1.1987413
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9771463   0.9069582   1.0527660
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9427644   0.8695096   1.0221909
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.0270068   1.8085056   2.2719071
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.4977607   1.3388883   1.6754849
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.2686578   1.2015362   1.3395291
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.1489024   1.0845572   1.2170651
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.0983741   0.9689624   1.2450697
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.1112117   0.9779372   1.2626489
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0650137   1.0401145   1.0905090
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0398350   1.0141942   1.0661241
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.8911185   0.7563528   1.0498967
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9186619   0.7100189   1.1886157
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              0.9845915   0.6938968   1.3970672
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.0824509   0.7488794   1.5646044
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  High              0.7681368   0.3968686   1.4867242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               High              0.6840551   0.3686071   1.2694583
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.0842993   0.6195258   1.8977500
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              1.3095369   0.7814909   2.1943786
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              1.5773810   0.7127023   3.4911219
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              1.1954887   0.5030773   2.8409019
0-6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  High              1.0016704   0.7586390   1.3225573
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               High              0.9541637   0.7202519   1.2640416
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.9824692   0.7152948   1.3494375
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.1167129   0.7651434   1.6298223
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.0140432   0.7911485   1.2997353
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.0871167   0.8551520   1.3820031
0-6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High              1.3045588   0.9868429   1.7245639
0-6 months    ki1000108-IRC              INDIA                          Medium               High              1.5133203   1.1549511   1.9828877
0-6 months    ki1000109-EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       Low                  High              1.1250000   0.7819584   1.6185324
0-6 months    ki1000109-EE               PAKISTAN                       Medium               High              1.0000000   0.6491153   1.5405583
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.2478644   1.0065700   1.5470018
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2072411   1.0096122   1.4435552
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              0.9694361   0.6384480   1.4720171
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              0.9657320   0.5723807   1.6294019
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.0645924   0.8256719   1.3726481
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1815407   0.9153920   1.5250716
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.9057350   0.7010717   1.1701455
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.9263152   0.7153852   1.1994376
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.0115414   0.8185118   1.2500932
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.1186090   0.9199470   1.3601721
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0004061   0.6293014   1.5903547
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.9600896   0.8008307   1.1510199
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              0.8300536   0.5331007   1.2924181
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              0.9042142   0.5886816   1.3888718
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.6009136   0.9405799   2.7248345
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0728549   0.5477493   2.1013585
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.1322766   0.9526737   1.3457391
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0814749   0.9311306   1.2560945
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0249351   0.9647745   1.0888472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0684955   1.0100329   1.1303419
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              1.1308554   0.9209818   1.3885550
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0460897   0.8356116   1.3095841
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.3388568   1.1762218   1.5239792
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.1592709   1.0243823   1.3119213
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.1367927   0.9938736   1.3002636
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.1525892   1.0126975   1.3118053
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              1.5864134   1.0572976   2.3803209
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              1.2494984   0.8060876   1.9368195
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0552987   1.0285967   1.0826938
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0380717   1.0106705   1.0662157
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.7138828   0.5829949   0.8741563
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.7055906   0.4951402   1.0054892
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.1387816   0.6944411   1.8674348
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.1364203   0.6949820   1.8582512
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.2508688   0.7654408   2.0441461
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.0772999   0.6416702   1.8086784
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              2.0000000   0.8665409   4.6160547
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.1904762   0.4652132   3.0464171
6-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.4981136   0.8382295   2.6774817
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.3763842   0.7718565   2.4543858
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.7947657   0.9730988   3.3102334
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.3947554   0.6479156   3.0024631
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.1462264   0.9941655   1.3215456
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.1167279   0.9603354   1.2985893
6-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Low                  High              1.0657672   0.7129034   1.5932870
6-24 months   ki1000108-IRC              INDIA                          Medium               High              1.0645806   0.6974963   1.6248572
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.5303287   1.1422563   2.0502457
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2388221   0.9203588   1.6674803
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0406250   0.8213800   1.3183914
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              0.9000000   0.6272441   1.2913632
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.4540754   1.1572035   1.8271077
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.2191853   0.9516886   1.5618689
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.3807600   0.9751415   1.9550990
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2798593   0.9017307   1.8165509
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.3230334   0.9226629   1.8971364
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.2954534   0.9071459   1.8499774
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.4588923   0.9032526   2.3563362
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2609295   1.0041530   1.5833675
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              2.0094011   1.2540156   3.2198106
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              1.4496908   0.8726633   2.4082640
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3794417   1.0018310   1.8993817
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.2509958   0.8520306   1.8367773
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.4871773   1.1936058   1.8529537
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0417123   0.8376599   1.2954716
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.3639700   1.2341799   1.5074092
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.3043737   1.1850566   1.4357041
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9143368   0.8419984   0.9928899
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8540769   0.7772851   0.9384554
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              3.4338584   2.7196201   4.3356729
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              2.0859470   1.6500947   2.6369243
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.3530384   1.2583228   1.4548834
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.1979543   1.1080557   1.2951467
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.0408998   0.8968499   1.2080866
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.0884727   0.9399042   1.2605251
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.2952365   1.1809281   1.4206094
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0935399   0.9882755   1.2100164
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.9340886   0.5837865   1.4945901
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9577050   0.5134607   1.7863076


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0066513   -0.0679170    0.0812196
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0268879   -0.1053304    0.0515545
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0083067   -0.0884956    0.1051090
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0961438   -0.0095238    0.2018115
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0477796   -0.0309681    0.1265272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0577384   -0.0242796    0.1397564
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0325279   -0.0002546    0.0653104
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0857719    0.0169517    0.1545920
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0976101    0.0416763    0.1535439
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0015171   -0.1110714    0.1080373
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0541433   -0.0057925    0.1140790
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0284675   -0.0165633    0.0734983
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0385356   -0.0033953    0.0804666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0096099   -0.0220350    0.0412548
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0470898   -0.0215534    0.1157331
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1276978    0.0147202    0.2406754
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0199225    0.0053701    0.0344749
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0237325    0.0162488    0.0312162
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0251719   -0.0688027    0.0184589
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1458751    0.1217528    0.1699974
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0722728    0.0523705    0.0921751
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0420131   -0.0009380    0.0849643
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0144336    0.0073448    0.0215224
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0686063   -0.1715938    0.0343811
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0089601   -0.0557156    0.0736359
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0436369   -0.1176433    0.0303695
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0540078   -0.0433885    0.1514042
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0412579   -0.0416350    0.1241507
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0108325   -0.0847788    0.0631138
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0037850   -0.0720137    0.0795836
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0152022   -0.0436454    0.0740499
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0933568    0.0301296    0.1565841
0-6 months    ki1000109-EE               PAKISTAN                       High                 NA                 0.0726950   -0.1607219    0.3061120
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0676816    0.0168793    0.1184839
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0144232   -0.1662908    0.1374443
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0277268   -0.0265644    0.0820181
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0145429   -0.0498790    0.0207933
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0145641   -0.0203722    0.0495003
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0069176   -0.0336932    0.0198579
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0251849   -0.0915996    0.0412298
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0837121   -0.0130679    0.1804921
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0088547   -0.0026037    0.0203131
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0052530   -0.0011315    0.0116376
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0092295   -0.0416624    0.0601214
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0319479    0.0147668    0.0491290
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0223854    0.0061470    0.0386238
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0806311    0.0020795    0.1591828
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0110106    0.0046007    0.0174204
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1351320   -0.2284787   -0.0417853
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0385601   -0.0622162    0.1393364
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0332206   -0.0899332    0.1563744
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0633880   -0.0281325    0.1549085
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0939190   -0.0349292    0.2227672
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1282756    0.0110332    0.2455180
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0585252   -0.0020112    0.1190616
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0158087   -0.0708633    0.1024807
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1140247    0.0290016    0.1990477
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0164609   -0.1392877    0.1722095
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1090754    0.0349286    0.1832221
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0552866    0.0008753    0.1096979
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0431458   -0.0046904    0.0909819
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0383080    0.0045482    0.0720679
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.1249532    0.0400805    0.2098260
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1290095    0.0050378    0.2529811
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0129410    0.0013129    0.0245692
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0318461    0.0223156    0.0413766
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0707220   -0.1190960   -0.0223479
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1502871    0.1257834    0.1747908
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0870725    0.0626896    0.1114553
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0262300   -0.0195856    0.0720456
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0218148    0.0105435    0.0330861
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0256893   -0.2102642    0.1588856


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0112077   -0.1228200    0.1292369
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.1155185   -0.5085655    0.1751226
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0141664   -0.1656031    0.1662104
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.2884315   -0.1091836    0.5435114
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0771627   -0.0595035    0.1962002
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1060225   -0.0586679    0.2450931
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0351679   -0.0012783    0.0702874
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.1337128    0.0184101    0.2354714
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1411664    0.0559122    0.2187218
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0018328   -0.1433253    0.1221493
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0814740   -0.0136824    0.1676978
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0655502   -0.0440173    0.1636188
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0806906   -0.0115234    0.1644981
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0277259   -0.0679748    0.1148508
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0851240   -0.0484539    0.2016834
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1893341    0.0026855    0.3410512
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.1189505    0.0286775    0.2008337
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0598122    0.0407658    0.0784804
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0328681   -0.0914814    0.0225976
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.3821223    0.3164778    0.4414624
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1052931    0.0755181    0.1341091
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0658934   -0.0041958    0.1310907
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0292304    0.0147401    0.0435076
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1175017   -0.3088006    0.0458362
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0266315   -0.1856676    0.2009176
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.2249724   -0.6715119    0.1022754
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1673482   -0.1969814    0.4207855
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.2380261   -0.4211020    0.5914409
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0255579   -0.2157059    0.1348491
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0105175   -0.2242130    0.2002408
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0297575   -0.0925719    0.1383904
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.2199787    0.0549809    0.3561684
0-6 months    ki1000109-EE               PAKISTAN                       High                 NA                 0.0983213   -0.2800263    0.3648378
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1590674    0.0230445    0.2761516
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0370375   -0.5103475    0.2879475
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0792735   -0.0897575    0.2220864
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0609582   -0.2204096    0.0776602
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0482077   -0.0745899    0.1569728
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0354957   -0.1824616    0.0932041
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0794524   -0.3108022    0.1110654
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3002607   -0.1465114    0.5729349
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0889838   -0.0299093    0.1941519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0203550   -0.0046955    0.0447810
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0286726   -0.1429277    0.1745086
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.1695306    0.0738915    0.2552930
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0936451    0.0233613    0.1588709
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2266159   -0.0282650    0.4183183
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0268015    0.0110843    0.0422688
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.3848516   -0.6802477   -0.1413877
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0918432   -0.1834151    0.3030773
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0807604   -0.2732733    0.3363550
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.3222222   -0.3336541    0.6555458
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.2371852   -0.1693031    0.5023648
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.3516521   -0.0641843    0.6049979
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0689628   -0.0064293    0.1387073
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0419197   -0.2179592    0.2463476
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2266554    0.0411592    0.3762658
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0217391   -0.2072103    0.2072679
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1900556    0.0488019    0.3103330
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1844232   -0.0179763    0.3465806
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1641486   -0.0376481    0.3267008
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1689998    0.0063738    0.3050090
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.3210604    0.0622647    0.5084338
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2302574   -0.0263983    0.4227351
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.1683913    0.0034126    0.3060589
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1294041    0.0900014    0.1671008
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0922506   -0.1577747   -0.0304348
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.5791270    0.4776652    0.6608801
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1350005    0.0958440    0.1724613
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0437992   -0.0359576    0.1174157
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1004493    0.0471029    0.1508091
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0678302   -0.6852782    0.3233987
