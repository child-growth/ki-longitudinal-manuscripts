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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        meducyrs    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       36     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1       42     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       25     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1       45     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       25     214
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       41     214
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   0       57     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   1       22     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    0       45     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    1       18     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 0       67     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 1       23     232
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       27     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   1       36     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       29     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1       47     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       33     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1       48     220
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       40     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1       13     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       56     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1       40     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       53     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1       23     225
0-24 months   ki0047075b-MAL-ED          PERU                           High                   0       38     302
0-24 months   ki0047075b-MAL-ED          PERU                           High                   1       53     302
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       37     302
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    1       67     302
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       40     302
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1       67     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       47     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       48     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       62     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       88     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       29     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       40     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0        4     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        7     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       11     217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       53     217
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
0-24 months   ki1000109-EE               PAKISTAN                       Low                    0       31     376
0-24 months   ki1000109-EE               PAKISTAN                       Low                    1      297     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium                 0        7     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium                 1       26     376
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0      112     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1      102     700
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       43     695
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       42     695
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      158     695
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      328     695
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       50     695
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       74     695
0-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2455   16897
0-24 months   ki1119695-PROBIT           BELARUS                        High                   1      385   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     4879   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    1     1221   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     6733   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1     1224   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     4699   14054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1     2925   14054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1610   14054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1     1349   14054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     1880   14054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1     1591   14054
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     5324   27193
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1     3703   27193
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     4472   27193
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     5395   27193
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     3928   27193
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     4371   27193
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0      946    5419
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1      955    5419
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      630    5419
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1     1155    5419
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      688    5419
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1     1045    5419
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   0       58     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   1       20     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    0       42     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    1       28     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       41     214
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       25     214
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                   0       60     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                   1       19     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                    0       49     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                    1       14     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                 0       71     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                 1       19     232
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   0       44     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   1       19     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    0       52     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    1       24     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 0       52     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 1       29     220
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   0       46     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   1        7     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    0       76     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    1       20     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 0       63     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 1       13     225
0-6 months    ki0047075b-MAL-ED          PERU                           High                   0       50     302
0-6 months    ki0047075b-MAL-ED          PERU                           High                   1       41     302
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    0       60     302
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    1       44     302
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 0       64     302
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 1       43     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       59     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       36     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       99     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       51     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       40     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       29     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       10     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        1     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       38     217
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       26     217
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
0-6 months    ki1000109-EE               PAKISTAN                       High                   0        3     376
0-6 months    ki1000109-EE               PAKISTAN                       High                   1       12     376
0-6 months    ki1000109-EE               PAKISTAN                       Low                    0       79     376
0-6 months    ki1000109-EE               PAKISTAN                       Low                    1      249     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium                 0       13     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium                 1       20     376
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    0      162     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    1       52     700
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   0       66     695
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   1       19     695
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    0      317     695
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    1      169     695
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 0       90     695
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 1       34     695
0-6 months    ki1119695-PROBIT           BELARUS                        High                   0     2608   16893
0-6 months    ki1119695-PROBIT           BELARUS                        High                   1      232   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    0     5385   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    1      713   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 0     7219   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 1      736   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     5759   14037
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   1     1858   14037
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2147   14037
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      807   14037
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     2499   14037
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      967   14037
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   0     6011   27127
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   1     2984   27127
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     5327   27127
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     4520   27127
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     4585   27127
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     3700   27127
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   0     1271    5111
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   1      525    5111
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1002    5111
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      678    5111
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0     1062    5111
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1      573    5111
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       31     130
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1       22     130
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       21     130
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1       17     130
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       23     130
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       16     130
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   0       51     162
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                   1        3     162
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    0       39     162
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                    1        4     162
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 0       61     162
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                 1        4     162
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       25     140
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   1       17     140
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       27     140
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1       23     140
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       29     140
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1       19     140
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       39     182
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        6     182
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       55     182
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1       20     182
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       52     182
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1       10     182
6-24 months   ki0047075b-MAL-ED          PERU                           High                   0       29     149
6-24 months   ki0047075b-MAL-ED          PERU                           High                   1       12     149
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       28     149
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    1       23     149
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       33     149
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1       24     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       31     158
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       12     158
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       47     158
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       37     158
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       20     158
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       11     158
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0        2     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        6     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0        9     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       27     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       17     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1       60     121
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
6-24 months   ki1000109-EE               PAKISTAN                       High                   0        3      93
6-24 months   ki1000109-EE               PAKISTAN                       High                   1        0      93
6-24 months   ki1000109-EE               PAKISTAN                       Low                    0       29      93
6-24 months   ki1000109-EE               PAKISTAN                       Low                    1       48      93
6-24 months   ki1000109-EE               PAKISTAN                       Medium                 0        7      93
6-24 months   ki1000109-EE               PAKISTAN                       Medium                 1        6      93
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      126     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       37     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0       86     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1       50     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      107     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       50     456
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       33     394
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       23     394
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      105     394
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      159     394
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       34     394
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       40     394
6-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2397   14951
6-24 months   ki1119695-PROBIT           BELARUS                        High                   1      153   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     4768   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    1      508   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     6637   14951
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1      488   14951
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0     3634    8483
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1     1067    8483
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1193    8483
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      542    8483
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     1423    8483
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      624    8483
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     3432   10484
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1      719   10484
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     2365   10484
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      875   10484
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     2422   10484
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      671   10484
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0      943    3639
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1      430    3639
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      630    3639
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      477    3639
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      687    3639
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1      472    3639


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
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
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
![](/tmp/374f803a-4e96-4bc7-9466-413b66a8f16e/2e17e352-444b-4dcf-9883-37f29ed33620/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/374f803a-4e96-4bc7-9466-413b66a8f16e/2e17e352-444b-4dcf-9883-37f29ed33620/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/374f803a-4e96-4bc7-9466-413b66a8f16e/2e17e352-444b-4dcf-9883-37f29ed33620/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/374f803a-4e96-4bc7-9466-413b66a8f16e/2e17e352-444b-4dcf-9883-37f29ed33620/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.5384615   0.4275698   0.6493533
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.6428571   0.5303463   0.7553680
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.6212121   0.5039086   0.7385157
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                0.2784810   0.1794219   0.3775401
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.2857143   0.1739205   0.3975081
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                0.2555556   0.1652481   0.3458630
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.5714286   0.4489501   0.6939070
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6184211   0.5089587   0.7278834
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5925926   0.4853450   0.6998402
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2452830   0.1291908   0.3613753
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.4166667   0.3178267   0.5155066
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3026316   0.1991181   0.4061450
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.5824176   0.4809246   0.6839106
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.6442308   0.5520678   0.7363938
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.6261682   0.5343434   0.7179930
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.5052632   0.4045642   0.6059621
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.5866667   0.5077369   0.6655965
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.5797101   0.4630571   0.6963632
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.8924051   0.8440236   0.9407866
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.9528302   0.9124175   0.9932429
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.9449541   0.9020810   0.9878273
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.5725806   0.4854014   0.6597599
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.6530612   0.5760200   0.7301024
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.6906475   0.6137121   0.7675828
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.5510836   0.4766961   0.6254711
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.7729885   0.7210155   0.8249615
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.6692607   0.6396161   0.6989053
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.8292683   0.7139546   0.9445820
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.8373494   0.7976046   0.8770942
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.7555556   0.6298411   0.8812700
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.5754190   0.5029521   0.6478859
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.7173913   0.6591541   0.7756285
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.6818182   0.6202219   0.7434144
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3744681   0.3125444   0.4363918
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4766355   0.4096707   0.5436004
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.4581673   0.3964842   0.5198504
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3818898   0.3221010   0.4416786
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.5165289   0.4535262   0.5795317
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.5343511   0.4739108   0.5947915
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3140097   0.2774987   0.3505207
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3902439   0.2846404   0.4958474
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3565062   0.3336185   0.3793940
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.4915254   0.4011634   0.5818875
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.6447368   0.5369467   0.7525270
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.5568182   0.4528439   0.6607924
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4941176   0.3877545   0.6004808
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6748971   0.6332225   0.7165718
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5967742   0.5103711   0.6831772
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.1355634   0.1171526   0.1539741
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2001639   0.1758651   0.2244628
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.1538268   0.1350237   0.1726299
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.3836569   0.3727411   0.3945727
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4558973   0.4379514   0.4738432
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.4583693   0.4417927   0.4749460
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7719298   0.7231982   0.8206614
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7924528   0.7609226   0.8239830
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7214286   0.6785391   0.7643180
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1828499   0.1559441   0.2097558
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.5240286   0.5018942   0.5461631
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3428940   0.3261911   0.3595969
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5780051   0.5497375   0.6062728
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.8039867   0.7780901   0.8298833
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7077393   0.6792891   0.7361895
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.5805369   0.5244749   0.6365989
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.6781609   0.6214482   0.7348736
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6627451   0.6046824   0.7208078
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4102138   0.3983002   0.4221274
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5467721   0.5355792   0.5579649
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.5266900   0.5156745   0.5377054
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.5023672   0.4753433   0.5293911
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.6470588   0.6195503   0.6745673
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.6030006   0.5777365   0.6282646
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2564103   0.1592805   0.3535400
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4000000   0.2849672   0.5150328
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3787879   0.2614843   0.4960914
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                0.2405063   0.1460572   0.3349554
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.2222222   0.1193407   0.3251037
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                0.2111111   0.1266166   0.2956056
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.3015873   0.1880000   0.4151746
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3157895   0.2110466   0.4205323
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3580247   0.2533816   0.4626678
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1320755   0.0407211   0.2234299
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2083333   0.1269135   0.2897532
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1710526   0.0862056   0.2558997
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.4505495   0.3481534   0.5529455
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.4230769   0.3279682   0.5181856
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.4018692   0.3088191   0.4949193
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.3789474   0.2812388   0.4766559
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3400000   0.2640712   0.4159288
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.4202899   0.3036368   0.5369429
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.4904459   0.4121426   0.5687491
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.5096154   0.4134072   0.6058236
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.5420561   0.4475248   0.6365873
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.3387097   0.2553075   0.4221119
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.4285714   0.3484752   0.5086677
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.4964029   0.4131825   0.5796233
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2941176   0.2411400   0.3470953
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4964029   0.4659049   0.5269008
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4121094   0.3677555   0.4564632
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3500000   0.2020103   0.4979897
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3927492   0.3400750   0.4454235
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4000000   0.2566921   0.5433079
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.2960894   0.2291569   0.3630219
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3652174   0.3029418   0.4274930
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3772727   0.3131726   0.4413729
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2170213   0.1642800   0.2697626
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2429907   0.1854868   0.3004945
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2589641   0.2047315   0.3131968
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2322835   0.1803165   0.2842504
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3140496   0.2555339   0.3725653
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3587786   0.3006619   0.4168954
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1900161   0.1591539   0.2208783
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2073171   0.1195565   0.2950777
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1960784   0.1771062   0.2150507
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.3392857   0.2514341   0.4271373
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.2972973   0.1929612   0.4016334
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.3037975   0.2021924   0.4054025
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2235294   0.1348993   0.3121595
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3477366   0.3053646   0.3901087
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2741935   0.1956177   0.3527694
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0816901   0.0688010   0.0945793
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.1169236   0.0980848   0.1357624
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0925204   0.0798750   0.1051658
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2439281   0.2342835   0.2535727
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2731889   0.2571195   0.2892583
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2789960   0.2640640   0.2939279
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2678571   0.2098375   0.3258768
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.3735409   0.3317016   0.4153801
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2794118   0.2316944   0.3271291
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1022576   0.0806149   0.1239004
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2477737   0.2284057   0.2671417
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1723333   0.1588176   0.1858490
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1867008   0.1643975   0.2090040
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2934662   0.2637618   0.3231706
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2515275   0.2243854   0.2786696
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.2528736   0.1613670   0.3443801
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.4673913   0.3652472   0.5695354
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.3409091   0.2416858   0.4401324
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3317399   0.3209102   0.3425695
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4590231   0.4478798   0.4701663
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4465902   0.4352535   0.4579269
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2923163   0.2680959   0.3165366
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.4035714   0.3761201   0.4310227
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3504587   0.3241204   0.3767970
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.4150943   0.2819253   0.5482634
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4473684   0.2886660   0.6060709
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4102564   0.2552849   0.5652279
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.4047619   0.2557828   0.5537410
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.4600000   0.3213578   0.5986422
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3958333   0.2569920   0.5346746
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1333333   0.0337392   0.2329274
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2666667   0.1663094   0.3670240
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1612903   0.0694870   0.2530937
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.2926829   0.1529418   0.4324240
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4509804   0.3139560   0.5880048
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.4210526   0.2924468   0.5496585
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.2790698   0.1445780   0.4135615
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.4404762   0.3339742   0.5469782
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.3548387   0.1858742   0.5238033
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.7901235   0.7012009   0.8790460
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.9056604   0.8267531   0.9845676
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.8823529   0.7936881   0.9710178
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.3536585   0.2499567   0.4573603
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.3928571   0.2881941   0.4975202
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3857143   0.2714424   0.4999861
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3896714   0.2921804   0.4871623
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.6088328   0.5381122   0.6795534
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4699647   0.4127627   0.5271667
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.7407407   0.5751020   0.9063795
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.7708333   0.7112604   0.8304063
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.6666667   0.4776798   0.8556536
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4504505   0.3577581   0.5431428
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.6806723   0.5967857   0.7645588
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.5826087   0.4923499   0.6728675
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2269939   0.1626170   0.2913707
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3676471   0.2865228   0.4487713
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3184713   0.2455168   0.3914259
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2021277   0.1446660   0.2595893
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3101266   0.2379322   0.3823210
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2875000   0.2173013   0.3576987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1901235   0.1518953   0.2283517
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2727273   0.1549895   0.3904650
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2374670   0.2127250   0.2622090
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.2702703   0.1688116   0.3717290
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.5510204   0.4113758   0.6906650
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.4032258   0.2807900   0.5256616
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4107143   0.2816997   0.5397289
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6022727   0.5431591   0.6613863
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5405405   0.4268507   0.6542304
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0600000   0.0433987   0.0766013
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0962851   0.0798929   0.1126772
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0684912   0.0538970   0.0830855
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2269730   0.2149983   0.2389476
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.3123919   0.2905825   0.3342014
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.3048363   0.2848933   0.3247794
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.8421053   0.7902273   0.8939833
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7780549   0.7373591   0.8187506
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7027027   0.6506038   0.7548016
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1007407   0.0780322   0.1234493
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.4020393   0.3761016   0.4279770
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2233565   0.2068592   0.2398537
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5381008   0.5046365   0.5715651
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7721943   0.7385425   0.8058462
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6676602   0.6320103   0.7033101
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.5571956   0.4980149   0.6163763
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.6203704   0.5556064   0.6851344
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6289593   0.5652238   0.6926947
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1732113   0.1606276   0.1857950
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2700617   0.2534967   0.2866267
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2169415   0.2018037   0.2320792
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3131828   0.2828261   0.3435395
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.4308943   0.3963668   0.4654218
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.4072476   0.3757816   0.4387136


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5981308   0.5322895   0.6639722
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2715517   0.2141972   0.3289063
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5954545   0.5304515   0.6604576
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3377778   0.2758420   0.3997135
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6192053   0.5643489   0.6740617
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5605096   0.5055248   0.6154943
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9249330   0.8981563   0.9517096
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6914547   0.6510509   0.7318584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3466052   0.3275063   0.3657041
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5531915   0.4950624   0.6113206
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6388489   0.6031124   0.6745854
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1674854   0.1488048   0.1861659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4173189   0.4091660   0.4254718
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7658464   0.7431730   0.7885198
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3817498   0.3693017   0.3941980
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6375921   0.6045496   0.6706347
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4953113   0.4874769   0.5031456
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5822107   0.5661650   0.5982565
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3411215   0.2774543   0.4047887
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2241379   0.1703615   0.2779144
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3272727   0.2651285   0.3894169
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1777778   0.1277101   0.2278455
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4238411   0.3680149   0.4796672
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3694268   0.3159570   0.4228965
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4254902   0.3977202   0.4532601
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1948868   0.1789895   0.2107841
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3169811   0.2608532   0.3731091
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3194245   0.2847356   0.3541134
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0995087   0.0864641   0.1125533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2587447   0.2514996   0.2659899
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3218924   0.2939898   0.3497950
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1884493   0.1782621   0.1986366
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3558052   0.2982716   0.4133389
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4130202   0.4055695   0.4204710
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3474858   0.3322499   0.3627218
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4230769   0.3378215   0.5083323
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4214286   0.3393403   0.5035169
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1978022   0.1397705   0.2558339
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3797468   0.3038314   0.4556622
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8486486   0.7968646   0.9004327
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2266750   0.2061344   0.2472157
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3891892   0.3187405   0.4596379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5634518   0.5144179   0.6124857
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2632323   0.2538603   0.2726044
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7666291   0.7387777   0.7944805
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2595063   0.2466928   0.2723199
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5988701   0.5627418   0.6349983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2160435   0.2066720   0.2254150
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3789503   0.3603576   0.3975429


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.1938776   0.9111406   1.5643509
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.1536797   0.8724487   1.5255646
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High              1.0259740   0.6046183   1.7409707
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              0.9176768   0.5558179   1.5151196
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.0822368   0.8195944   1.4290442
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.0370370   0.7833643   1.3728553
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.6987179   1.0004559   2.8843277
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.2338057   0.6880772   2.2123627
0-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.1061321   0.8828568   1.3858739
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.0751190   0.8561387   1.3501094
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.1611111   0.9129417   1.4767417
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.1473430   0.8643570   1.5229772
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.0677104   0.9966880   1.1437938
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.0588848   0.9866120   1.1364517
0-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High              1.1405576   0.9407354   1.3828242
0-24 months   ki1000108-IRC              INDIA                          Medium               High              1.2062012   0.9988205   1.4566396
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.4026702   1.2030940   1.6353531
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2144450   1.0593825   1.3922040
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0097449   0.8717655   1.1695630
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              0.9111111   0.7334960   1.1317356
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.2467286   1.0732470   1.4482520
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1849073   1.0147831   1.3835522
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.2728335   1.0245532   1.5812796
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2235150   0.9885554   1.5143198
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.3525603   1.1090830   1.6494882
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.3992288   1.1534717   1.6973465
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2427767   0.9257202   1.6684242
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1353353   0.9941252   1.2966034
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              1.3117060   1.0231001   1.6817246
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              1.1328370   0.8716956   1.4722107
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3658632   1.0918201   1.7086903
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.2077573   0.9317837   1.5654681
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.4765340   1.3163626   1.6561945
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1347225   1.0250161   1.2561707
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1882943   1.1319582   1.2474341
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1947377   1.1410077   1.2509979
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0265866   0.9527692   1.1061232
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9345779   0.8569492   1.0192388
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.8658945   2.4590888   3.3399979
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.8752753   1.6060136   2.1896810
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.3909682   1.3118525   1.4748552
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.2244516   1.1493388   1.3044733
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.1681616   1.0280716   1.3273409
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.1416072   1.0020512   1.3005992
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3328953   1.2902561   1.3769437
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.2839401   1.2411384   1.3282179
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.2880197   1.2060397   1.3755723
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2003184   1.1223137   1.2837447
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.5600000   0.9695567   2.5100132
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.4772727   0.9056666   2.4096447
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  High              0.9239766   0.5035063   1.6955752
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               High              0.8777778   0.5010322   1.5378130
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.0470914   0.6339109   1.7295814
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              1.1871345   0.7369799   1.9122480
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              1.5773810   0.7127023   3.4911219
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              1.2951128   0.5529097   3.0336187
0-6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  High              0.9390244   0.6820983   1.2927269
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               High              0.8919535   0.6448195   1.2338042
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.8972222   0.6379093   1.2619470
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.1090982   0.7593509   1.6199346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.0390859   0.8114727   1.3305433
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.1052312   0.8725067   1.4000306
0-6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High              1.2653061   0.9288447   1.7236462
0-6 months    ki1000108-IRC              INDIA                          Medium               High              1.4655704   1.0880169   1.9741390
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.6877698   1.4025837   2.0309425
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.4011719   1.1697920   1.6783177
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.1221407   0.7201109   1.7486192
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.1428571   0.6566060   1.9892026
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.2334701   0.9292999   1.6371984
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.2741852   0.9603287   1.6906171
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.1196628   0.7975720   1.5718265
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.1932662   0.8657891   1.6446085
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.3520101   1.0104957   1.8089451
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.5445724   1.1717979   2.0359346
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0910500   0.6933194   1.7169433
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0319043   0.8541488   1.2466521
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              0.8762447   0.5665211   1.3552976
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              0.8954031   0.5865781   1.3668200
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.5556639   1.0274690   2.3553899
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.2266553   0.7520669   2.0007306
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.4313059   1.2034884   1.7022488
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.1325776   0.9724134   1.3191222
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1199568   1.0433273   1.2022147
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1437633   1.0701328   1.2224600
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              1.3945525   1.0927758   1.7796667
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0431373   0.7916787   1.3744658
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              2.4230337   1.9336268   3.0363111
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.6852857   1.3447689   2.1120268
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.5718533   1.3440394   1.8382816
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.3472226   1.1469010   1.5825330
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              1.8483202   1.2111120   2.8207857
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              1.3481405   0.8473289   2.1449555
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3836838   1.3318640   1.4375197
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.3462061   1.2945080   1.3999689
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.3805986   1.2412314   1.5356142
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1989026   1.0727431   1.3398990
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.0777512   0.6680310   1.7387630
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              0.9883450   0.6021089   1.6223409
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.1364706   0.7062434   1.8287821
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.9779412   0.5881710   1.6260050
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              2.0000000   0.8665299   4.6161130
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.2096774   0.4729589   3.0939677
6-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.5408497   0.8749455   2.7135608
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.4385965   0.8161791   2.5356688
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.5783730   0.9205471   2.7062833
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.2715054   0.6457836   2.5035103
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.1462264   0.9941655   1.3215456
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.1167279   0.9603354   1.2985893
6-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Low                  High              1.1108374   0.7474667   1.6508558
6-24 months   ki1000108-IRC              INDIA                          Medium               High              1.0906404   0.7188733   1.6546677
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.5624264   1.1528385   2.1175352
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2060539   0.8859069   1.6418948
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0406250   0.8213800   1.3183914
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              0.9000000   0.6272441   1.2913632
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.5110924   1.1888348   1.9207046
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.2933913   0.9996926   1.6733755
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.6196343   1.1307312   2.3199284
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.4029954   0.9743770   2.0201585
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.5343105   1.0625226   2.2155846
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.4223684   0.9778249   2.0690126
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.4344746   0.8909784   2.3095031
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2490148   0.9959013   1.5664585
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              2.0387755   1.2961719   3.2068322
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              1.4919355   0.9205798   2.4179017
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.4664032   1.0551818   2.0378842
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.3160987   0.9017999   1.9207319
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.6047511   1.2618556   2.0408246
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1415205   0.9241623   1.4100002
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.3763397   1.2610197   1.5022056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.3430512   1.2347884   1.4608063
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9239401   0.8522100   1.0017077
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8344595   0.7577768   0.9189019
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              3.9908315   3.1567189   5.0453452
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              2.2171414   1.7489412   2.8106811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.4350365   1.3300963   1.5482561
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.2407716   1.1431257   1.3467584
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.1133799   0.9593233   1.2921763
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.1287945   0.9746783   1.3072795
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.5591464   1.4275406   1.7028850
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.2524674   1.1365327   1.3802284
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.3758555   1.2165318   1.5560453
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.3003511   1.1480200   1.4728952


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0596693   -0.0278973    0.1472359
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0069293   -0.0870508    0.0731922
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0240260   -0.0790997    0.1271517
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0924948   -0.0122148    0.1972043
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0367877   -0.0474873    0.1210627
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0552464   -0.0285853    0.1390781
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0325279   -0.0002546    0.0653104
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0688828   -0.0029722    0.1407377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1403711    0.0753345    0.2054077
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0015171   -0.1110714    0.1080373
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0891279    0.0289102    0.1493456
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0612462    0.0101471    0.1123453
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0956828    0.0462350    0.1451306
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0325955    0.0009108    0.0642802
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0616661   -0.0069701    0.1303022
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1447313    0.0456203    0.2438422
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0319220    0.0202123    0.0436316
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0336620    0.0261556    0.0411685
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0060834   -0.0494360    0.0372691
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1988999    0.1727717    0.2250281
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1083912    0.0870244    0.1297580
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0570552    0.0130833    0.1010272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0850975    0.0761961    0.0939989
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0798436    0.0595721    0.1001150
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0847112    0.0034066    0.1660158
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0163684   -0.0921132    0.0593764
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0256854   -0.0711371    0.1225080
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0457023   -0.0374883    0.1288929
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0267084   -0.1120475    0.0586307
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0095206   -0.0909402    0.0718990
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0204237   -0.0388661    0.0797135
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0856806    0.0146677    0.1566934
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1313725    0.0918465    0.1708986
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0394231   -0.1016094    0.1804556
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0536721   -0.0039589    0.1113031
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0229787   -0.0207977    0.0667551
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0698274    0.0255485    0.1141062
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0048707   -0.0217639    0.0315053
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0223046   -0.0882169    0.0436078
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0958950    0.0114133    0.1803768
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0178185    0.0061678    0.0294693
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0148167    0.0081414    0.0214920
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0540353    0.0016343    0.1064362
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0861917    0.0650351    0.1073482
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0523444    0.0337864    0.0709024
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.1029317    0.0240221    0.1818412
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0812804    0.0727623    0.0897984
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0551696    0.0354231    0.0749160
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0079826   -0.0946939    0.1106590
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0166667   -0.1082989    0.1416322
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0644689   -0.0270826    0.1560203
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.1032902   -0.0191390    0.2257195
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1006771   -0.0176690    0.2190231
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0585252   -0.0020112    0.1190616
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0234601   -0.0609243    0.1078445
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1134037    0.0201789    0.2066285
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0164609   -0.1392877    0.1722095
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1234626    0.0473447    0.1995805
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0734447    0.0190759    0.1278136
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0607182    0.0125291    0.1089073
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0365516    0.0027567    0.0703464
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.1189189    0.0351228    0.2027151
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1527375    0.0330814    0.2723936
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0168510    0.0059223    0.0277798
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0362594    0.0277564    0.0447623
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0754762   -0.1235806   -0.0273717
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1587656    0.1358514    0.1816798
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1068780    0.0816980    0.1320579
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0416745   -0.0044387    0.0877877
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0428322    0.0331350    0.0525294
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0657674    0.0422140    0.0893209


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0997596   -0.0600297    0.2354622
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0255174   -0.3673779    0.2308740
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0403490   -0.1495734    0.1988940
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.2738332   -0.1112253    0.5254623
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0594112   -0.0872722    0.1863055
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0985646   -0.0646009    0.2367226
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0351679   -0.0012783    0.0702874
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.1073838   -0.0126362    0.2131787
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2030084    0.1031688    0.2917333
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0018328   -0.1433253    0.1221493
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1341183    0.0377683    0.2208206
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1405651    0.0146852    0.2503630
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2003524    0.0892457    0.2979047
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0940423   -0.0021369    0.1809907
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.1114733   -0.0224414    0.2278484
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2265501    0.0536606    0.3678539
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.1905956    0.1219593    0.2538666
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0806626    0.0624759    0.0984966
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0079434   -0.0661734    0.0471063
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.5210216    0.4484458    0.5840475
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1579135    0.1255670    0.1890634
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0894855    0.0174710    0.1562216
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1718061    0.1534036    0.1898085
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1371386    0.1010251    0.1718014
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2483316   -0.0307597    0.4518554
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0730282   -0.4700008    0.2167422
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0784832   -0.2703173    0.3315110
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.2570755   -0.3875966    0.6022354
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0630151   -0.2848105    0.1204920
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0257713   -0.2716411    0.1725599
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0399783   -0.0834630    0.1493557
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.2018910    0.0153899    0.3530658
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3087558    0.2020735    0.4011746
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1012346   -0.3448068    0.3993343
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1534535   -0.0283593    0.3031221
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0957447   -0.1061260    0.2607735
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2311316    0.0705318    0.3639819
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0249926   -0.1217070    0.1525066
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0703656   -0.2998723    0.1186191
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3002120   -0.0201814    0.5199841
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.1790651    0.0632816    0.2805371
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0572637    0.0311262    0.0826962
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1678674   -0.0117714    0.3156116
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.4573733    0.3351718    0.5571129
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2189727    0.1380468    0.2923008
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2892922    0.0304643    0.4790232
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1967952    0.1759004    0.2171601
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1587678    0.0999603    0.2137329
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0188679   -0.2564898    0.2338815
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0395480   -0.3079078    0.2946995
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.3259259   -0.3262663    0.6574022
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.2608516   -0.1228401    0.5134300
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.2651163   -0.1223401    0.5188142
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0689628   -0.0064293    0.1387073
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0622088   -0.1905435    0.2613019
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2254210    0.0182143    0.3888965
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0217391   -0.2072103    0.2072679
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.2151242    0.0687306    0.3385050
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2444584    0.0414337    0.4044824
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2310030    0.0257520    0.3930125
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1612509   -0.0014751    0.2975362
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.3055556    0.0542496    0.4900842
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2710746    0.0229984    0.4561604
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.2192689    0.0626778    0.3496996
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1377466    0.1049804    0.1693133
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0984520   -0.1636947   -0.0368672
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.6117985    0.5174540    0.6876974
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1657077    0.1249996    0.2045219
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0695885   -0.0109086    0.1436758
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1982574    0.1523980    0.2416356
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1735517    0.1081554    0.2341526
