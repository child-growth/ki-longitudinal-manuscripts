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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/52f51843-ffff-477f-8b90-4abe0845e71f/8ac3f9d9-fba9-4ccb-ac8f-63a29c926f86/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/52f51843-ffff-477f-8b90-4abe0845e71f/8ac3f9d9-fba9-4ccb-ac8f-63a29c926f86/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/52f51843-ffff-477f-8b90-4abe0845e71f/8ac3f9d9-fba9-4ccb-ac8f-63a29c926f86/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/52f51843-ffff-477f-8b90-4abe0845e71f/8ac3f9d9-fba9-4ccb-ac8f-63a29c926f86/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.5968804   0.4954284   0.6983323
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.5793855   0.4740343   0.6847366
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.6109151   0.4908210   0.7310092
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                0.2763189   0.1761419   0.3764960
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.2783819   0.1641369   0.3926268
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               NA                0.2518332   0.1601613   0.3435050
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6021339   0.4807904   0.7234774
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6149003   0.5117632   0.7180374
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5879955   0.4820906   0.6939004
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2047924   0.0827034   0.3268815
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.3945783   0.2965444   0.4926121
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.2927991   0.1904161   0.3951820
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.5868309   0.4883480   0.6853138
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.6401209   0.5477749   0.7324668
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.6209373   0.5316597   0.7102149
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.5275077   0.4300281   0.6249873
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.5775103   0.4988570   0.6561637
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.5651043   0.4496562   0.6805525
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.8924051   0.8440236   0.9407866
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.9528302   0.9124175   0.9932429
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.9449541   0.9020810   0.9878273
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.5692261   0.4855754   0.6528768
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.6421486   0.5650695   0.7192278
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.6983341   0.6273037   0.7693644
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.6231346   0.5600612   0.6862081
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.7314592   0.6699360   0.7929823
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.6866944   0.6549070   0.7184819
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.8292683   0.7139546   0.9445820
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.8373494   0.7976046   0.8770942
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.7555556   0.6298411   0.8812700
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.6320436   0.5625055   0.7015816
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.6966058   0.6401323   0.7530792
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.6753719   0.6172909   0.7334529
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.4257731   0.3669829   0.4845633
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4573640   0.3954421   0.5192858
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.4339353   0.3725252   0.4953454
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.4409027   0.3866507   0.4951546
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.4770825   0.4169693   0.5371957
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.5132756   0.4600244   0.5665268
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3371782   0.3006732   0.3736832
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3596988   0.2565783   0.4628193
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3497864   0.3270379   0.3725349
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.5018495   0.4119423   0.5917566
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.6479382   0.5442778   0.7515986
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.5344005   0.4313128   0.6374881
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5716831   0.4765396   0.6668266
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6639025   0.6228557   0.7049493
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6024844   0.5193665   0.6856022
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.1500029   0.1279990   0.1720068
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.1866031   0.1628175   0.2103886
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.1575528   0.1389175   0.1761881
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.3940328   0.3831166   0.4049490
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4401202   0.4226891   0.4575514
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.4501536   0.4342536   0.4660537
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7870943   0.7381975   0.8359910
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7772527   0.7439592   0.8105461
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7436083   0.7032550   0.7839617
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2357397   0.2100999   0.2613795
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.4771009   0.4553174   0.4988844
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3528478   0.3365522   0.3691434
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.6108302   0.5840198   0.6376405
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7756758   0.7486220   0.8027296
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7080802   0.6796697   0.7364907
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.6094964   0.5546239   0.6643689
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.6483316   0.5922844   0.7043787
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6616118   0.6025986   0.7206251
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4763154   0.4654219   0.4872089
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5189484   0.5082957   0.5296011
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.5031512   0.4925230   0.5137794
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.5237918   0.4983719   0.5492118
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.6298632   0.6035650   0.6561614
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.5995103   0.5750134   0.6240071
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2783178   0.1820021   0.3746335
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3952545   0.2812643   0.5092446
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3703148   0.2513633   0.4892664
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                0.2479145   0.1518691   0.3439598
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.2158540   0.1093021   0.3224059
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               NA                0.2058320   0.1200005   0.2916634
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.3114164   0.1964251   0.4264077
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3167933   0.2107106   0.4228761
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3589112   0.2534257   0.4643966
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1320755   0.0407211   0.2234299
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2083333   0.1269135   0.2897532
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1710526   0.0862056   0.2558997
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.4386523   0.3376374   0.5396672
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.4161750   0.3293228   0.5030271
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.4099056   0.3227735   0.4970376
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.3855715   0.2887176   0.4824254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3345019   0.2612477   0.4077561
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.4167985   0.3012082   0.5323889
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.5027454   0.4252923   0.5801985
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.4892398   0.3917755   0.5867040
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.5420282   0.4417700   0.6422864
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.3346635   0.2592858   0.4100413
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.4222441   0.3469325   0.4975557
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.5039799   0.4265796   0.5813803
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3609358   0.2830373   0.4388343
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4493251   0.4165843   0.4820658
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4336965   0.3887303   0.4786628
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3905465   0.2305379   0.5505551
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3911401   0.3387977   0.4434824
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.3691382   0.2302182   0.5080581
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.3254843   0.2642233   0.3867453
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3250746   0.2733204   0.3768288
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3764337   0.3178849   0.4349826
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2420249   0.1950883   0.2889614
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2361500   0.1863633   0.2859367
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2374725   0.1876086   0.2873364
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2842767   0.2384028   0.3301505
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2955624   0.2450815   0.3460434
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3230409   0.2754061   0.3706757
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2018692   0.1708849   0.2328536
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1932163   0.1050354   0.2813972
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1931055   0.1741825   0.2120284
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.3423188   0.2547490   0.4298885
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.2782793   0.1764993   0.3800593
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.3133959   0.2079160   0.4188757
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2782925   0.2111088   0.3454763
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3415760   0.3018934   0.3812585
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2646785   0.2018451   0.3275119
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0925158   0.0784707   0.1065608
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.1022407   0.0846653   0.1198162
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0974674   0.0842140   0.1107208
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2542945   0.2447235   0.2638656
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2596002   0.2456381   0.2735623
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2709973   0.2578331   0.2841615
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3150537   0.2566812   0.3734262
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.3545619   0.3152808   0.3938430
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.3199876   0.2739134   0.3660618
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1617655   0.1422430   0.1812880
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2092566   0.1938054   0.2247078
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1805497   0.1682069   0.1928925
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2202476   0.1989837   0.2415114
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2470057   0.2212902   0.2727211
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2489469   0.2244190   0.2734748
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.2549192   0.1625075   0.3473310
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.4590827   0.3566788   0.5614867
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.3419550   0.2409834   0.4429266
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3980737   0.3883390   0.4078085
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4327362   0.4224916   0.4429809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4203915   0.4102955   0.4304875
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3139198   0.2932482   0.3345915
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3810130   0.3579574   0.4040685
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3487155   0.3257313   0.3716997
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.4122905   0.2798423   0.5447386
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4300125   0.2685816   0.5914435
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3980348   0.2397347   0.5563348
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3855616   0.2297879   0.5413352
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.4363493   0.2973643   0.5753343
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3837498   0.2402574   0.5272422
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1333333   0.0337392   0.2329274
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2666667   0.1663094   0.3670240
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1612903   0.0694870   0.2530937
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.3006531   0.1579688   0.4433374
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4602787   0.3193584   0.6011990
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.4274905   0.2978118   0.5571693
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.2773585   0.1423934   0.4123236
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.4405264   0.3335968   0.5474560
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.3543079   0.1827046   0.5259112
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.7901235   0.7012009   0.8790460
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.9056604   0.8267531   0.9845676
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.8823529   0.7936881   0.9710178
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.3521815   0.2457590   0.4586041
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.3861364   0.2805209   0.4917519
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3876745   0.2718479   0.5035011
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.4120972   0.3315407   0.4926538
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.5793423   0.5041994   0.6544853
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4816877   0.4299642   0.5334112
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.7407407   0.5751020   0.9063795
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.7708333   0.7112604   0.8304063
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.6666667   0.4776798   0.8556536
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4864650   0.3964195   0.5765106
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.6897354   0.6085324   0.7709385
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.5489320   0.4589247   0.6389392
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2493168   0.1845573   0.3140762
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3397450   0.2612266   0.4182635
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3116616   0.2395950   0.3837282
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2149570   0.1564842   0.2734298
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2936540   0.2224720   0.3648360
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2863128   0.2163970   0.3562285
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1868812   0.1490254   0.2247370
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2687816   0.1537139   0.3838492
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2368108   0.2120455   0.2615762
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.2694047   0.1659237   0.3728857
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.5656124   0.4305617   0.7006630
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.4050860   0.2822721   0.5279000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4734328   0.3442600   0.6026055
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6033461   0.5440585   0.6626336
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5480894   0.4190576   0.6771213
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0637877   0.0466570   0.0809183
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0936923   0.0768374   0.1105472
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0673570   0.0530802   0.0816338
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2298207   0.2173751   0.2422663
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.3095919   0.2862865   0.3328973
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.3035302   0.2824921   0.3245683
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.8399806   0.7874996   0.8924615
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7648562   0.7233997   0.8063127
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7155355   0.6646862   0.7663848
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1104182   0.0855488   0.1352877
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3756563   0.3493002   0.4020125
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2266099   0.2096937   0.2435262
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5587155   0.5261302   0.5913008
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7530715   0.7196400   0.7865030
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6669123   0.6311009   0.7027237
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.5769803   0.5185247   0.6354360
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.5891476   0.5260246   0.6522706
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6286560   0.5640531   0.6932590
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1945640   0.1805002   0.2086277
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2519060   0.2344403   0.2693717
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2110557   0.1944149   0.2276965
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3214041   0.2913461   0.3514621
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.4222806   0.3879395   0.4566217
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.4039256   0.3722772   0.4355740


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              0.9706895   0.7679054   1.2270236
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.0235134   0.7950776   1.3175819
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                  High              1.0074657   0.5813365   1.7459544
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium               High              0.9113859   0.5448627   1.5244654
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.0212019   0.7916396   1.3173335
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.9765195   0.7478461   1.2751157
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.9267228   1.0067570   3.6873454
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.4297358   0.7167798   2.8518443
0-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.0908098   0.8770953   1.3565985
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.0581197   0.8523108   1.3136256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.0947903   0.8734260   1.3722580
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.0712722   0.8164729   1.4055877
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.0677104   0.9966880   1.1437938
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.0588848   0.9866120   1.1364517
0-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High              1.1281082   0.9372057   1.3578963
0-24 months   ki1000108-IRC              INDIA                          Medium               High              1.2268132   1.0321187   1.4582340
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.1738381   1.0308805   1.3366203
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1020001   0.9960448   1.2192265
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0097449   0.8717655   1.1695630
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              0.9111111   0.7334960   1.1317356
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.1021483   0.9647097   1.2591673
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.0685528   0.9334535   1.2232050
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.0741965   0.8941352   1.2905187
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.0191703   0.8422493   1.2332549
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.0820585   0.9154064   1.2790500
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.1641471   1.0028752   1.3513531
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0667913   0.7857231   1.4484031
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0373932   0.9152994   1.1757734
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              1.2911007   1.0169431   1.6391685
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              1.0648621   0.8195845   1.3835441
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.1613122   0.9764403   1.3811864
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0538783   0.8527279   1.3024781
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.2439965   1.1002050   1.4065808
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0503317   0.9407228   1.1727119
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1169635   1.0664367   1.1698842
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1424269   1.0945410   1.1924077
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9874963   0.9166021   1.0638738
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9447513   0.8710606   1.0246761
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.0238462   1.8038851   2.2706289
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.4967684   1.3360281   1.6768477
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.2698715   1.2019122   1.3416734
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.1592096   1.0937432   1.2285946
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.0637169   0.9406902   1.2028333
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.0855058   0.9572222   1.2309814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0895059   1.0628733   1.1168058
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0563404   1.0299982   1.0833562
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.2025067   1.1326901   1.2766268
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1445583   1.0779145   1.2153225
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.4201553   0.9101260   2.2160020
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.3305469   0.8294971   2.1342510
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                  High              0.8706794   0.4641758   1.6331800
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium               High              0.8302540   0.4701671   1.4661205
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.0172662   0.6180511   1.6743446
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              1.1525122   0.7195646   1.8459556
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              1.5773810   0.7127023   3.4911219
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              1.2951128   0.5529097   3.0336187
0-6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  High              0.9487582   0.7020235   1.2822108
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               High              0.9344657   0.6893888   1.2666672
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.8675483   0.6270974   1.2001964
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.0809888   0.7472750   1.5637307
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              0.9731362   0.7582261   1.2489601
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.0781365   0.8484933   1.3699322
0-6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High              1.2616974   0.9599425   1.6583081
0-6 months    ki1000108-IRC              INDIA                          Medium               High              1.5059302   1.1613257   1.9527903
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.2448890   0.9860529   1.5716689
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2015890   0.9912432   1.4565711
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0015198   0.6511189   1.5404895
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              0.9451837   0.5426546   1.6462996
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              0.9987412   0.7974734   1.2508053
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1565342   0.9199179   1.4540117
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.9757263   0.7514606   1.2669218
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.9811906   0.7532678   1.2780779
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.0397000   0.8401869   1.2865899
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.1363610   0.9365150   1.3788526
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.9571359   0.5915202   1.5487367
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.9565869   0.7982288   1.1463610
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              0.8129244   0.5206295   1.2693211
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              0.9155089   0.6012435   1.3940383
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2273989   0.9606953   1.5681434
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9510802   0.6932346   1.3048304
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.1051171   0.9356372   1.3052963
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0535222   0.9159575   1.2117474
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0208643   0.9607162   1.0847782
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0656827   1.0071081   1.1276641
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              1.1254014   0.9158580   1.3828870
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0156605   0.8123985   1.2697787
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.2935798   1.1364416   1.4724460
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.1161199   0.9858597   1.2635911
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.1214909   0.9816984   1.2811898
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.1303048   0.9942361   1.2849955
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              1.8008949   1.1761958   2.7573830
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              1.3414249   0.8398026   2.1426710
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0870755   1.0587484   1.1161604
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0560644   1.0281371   1.0847502
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.2137269   1.1207450   1.3144231
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1108424   1.0211952   1.2083595
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.0429844   0.6343209   1.7149310
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              0.9654231   0.5765012   1.6167213
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.1317241   0.6765321   1.8931837
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.9953010   0.5718034   1.7324555
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              2.0000000   0.8665299   4.6161130
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.2096774   0.4729589   3.0939677
6-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.5309295   0.8714685   2.6894203
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.4218731   0.8085879   2.5003132
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.5882925   0.9217070   2.7369577
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.2774366   0.6426810   2.5391204
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.1462264   0.9941655   1.3215456
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.1167279   0.9603354   1.2985893
6-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Low                  High              1.0964129   0.7292005   1.6485472
6-24 months   ki1000108-IRC              INDIA                          Medium               High              1.1007802   0.7195695   1.6839473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.4058388   1.0938626   1.8067925
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1688690   0.9108658   1.4999517
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0406250   0.8213800   1.3183914
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              0.9000000   0.6272441   1.2913632
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.4178520   1.1411525   1.7616439
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1284099   0.8853548   1.4381905
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.3627042   0.9674957   1.9193498
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2500625   0.8869959   1.7617402
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.3661055   0.9498360   1.9648069
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.3319534   0.9256437   1.9166121
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.4382483   0.8954266   2.3101369
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2671731   1.0086254   1.5919961
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              2.0994896   1.3373659   3.2959242
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              1.5036340   0.9242314   2.4462651
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2744071   0.9551981   1.7002897
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1576923   0.8081968   1.6583230
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.4688162   1.1682198   1.8467594
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0559571   0.8463583   1.3174626
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.3471020   1.2284250   1.4772443
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.3207263   1.2100366   1.4415414
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9105641   0.8386271   0.9886719
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8518477   0.7754943   0.9357188
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              3.4021224   2.6886248   4.3049654
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              2.0522872   1.6203513   2.5993640
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.3478621   1.2537106   1.4490843
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.1936527   1.1037802   1.2908429
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.0210878   0.8829374   1.1808541
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.0895623   0.9442969   1.2571747
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.2947206   1.1801128   1.4204587
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0847625   0.9804227   1.2002065
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.3138618   1.1638828   1.4831673
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2567530   1.1125938   1.4195909


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0012505   -0.0752065    0.0777075
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0047672   -0.0862754    0.0767410
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0066794   -0.1066105    0.0932518
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1329853    0.0218104    0.2441603
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0323744   -0.0484055    0.1131544
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0330019   -0.0473890    0.1133928
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0325279   -0.0002546    0.0653104
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0722373    0.0050026    0.1394720
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0683200    0.0168528    0.1197873
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0015171   -0.1110714    0.1080373
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0325033   -0.0245038    0.0895105
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0099412   -0.0370380    0.0569203
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0366699   -0.0051633    0.0785030
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0094270   -0.0221145    0.0409685
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0513420   -0.0161963    0.1188804
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0671658   -0.0208339    0.1551656
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0174825    0.0034729    0.0314920
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0232861    0.0157715    0.0308008
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0212479   -0.0650074    0.0225116
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1460101    0.1215682    0.1704521
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0755662    0.0555986    0.0955337
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0280958   -0.0144427    0.0706343
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0189959    0.0116729    0.0263189
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0584189    0.0398939    0.0769439
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0628037   -0.0173737    0.1429811
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0237765   -0.1010725    0.0535194
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0158563   -0.0820597    0.1137724
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0457023   -0.0374883    0.1288929
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0148112   -0.0962839    0.0666614
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0161448   -0.0953896    0.0631001
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0081241   -0.0507231    0.0669714
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0897267    0.0282807    0.1511727
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0645544    0.0045237    0.1245850
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0011234   -0.1529578    0.1507109
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0242772   -0.0254921    0.0740465
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0020249   -0.0379061    0.0338564
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0178342   -0.0165922    0.0522605
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0069824   -0.0336640    0.0196992
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0253376   -0.0910923    0.0404171
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0411319   -0.0192095    0.1014733
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0069929   -0.0041160    0.0181018
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0044502   -0.0019240    0.0108244
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0068387   -0.0449678    0.0586451
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0266838    0.0089388    0.0444288
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0187976    0.0025999    0.0349952
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.1008860    0.0211572    0.1806148
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0149465    0.0084838    0.0214092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0335660    0.0183082    0.0488238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0107864   -0.0941715    0.1157444
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0358670   -0.0953056    0.1670396
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0644689   -0.0270826    0.1560203
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0953201   -0.0295099    0.2201500
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1023884   -0.0165024    0.2212791
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0585252   -0.0020112    0.1190616
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0249371   -0.0616007    0.1114749
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0909778    0.0167144    0.1652411
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0164609   -0.1392877    0.1722095
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0874480    0.0140631    0.1608329
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0511218   -0.0026322    0.1048759
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0478888   -0.0007057    0.0964833
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0397938    0.0061914    0.0733962
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.1197845    0.0361303    0.2034387
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0900190   -0.0312008    0.2112389
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0130634    0.0008651    0.0252617
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0334117    0.0242316    0.0425917
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0733515   -0.1217039   -0.0249990
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1490881    0.1241140    0.1740622
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0862633    0.0619705    0.1105560
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0218897   -0.0231683    0.0669477
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0214795    0.0103740    0.0325851
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0575461    0.0341446    0.0809477


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0020906   -0.1342870    0.1220713
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.0175555   -0.3666527    0.2423685
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0112173   -0.1937184    0.1433823
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.3937066   -0.0453743    0.6483636
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0522838   -0.0877720    0.1743069
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0588783   -0.0961999    0.1920178
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0351679   -0.0012783    0.0702874
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.1126133    0.0005372    0.2121217
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0988062    0.0214267    0.1700671
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0018328   -0.1433253    0.1221493
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0489105   -0.0410644    0.1311093
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0228159   -0.0911343    0.1248658
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0767839   -0.0151532    0.1603947
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0271981   -0.0681721    0.1140532
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0928106   -0.0385218    0.2075346
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1051357   -0.0439594    0.2329376
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.1043821    0.0173085    0.1837403
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0557994    0.0376202    0.0736352
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0277443   -0.0865242    0.0278556
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.3824759    0.3158287    0.4426308
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1100912    0.0801924    0.1390180
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0440654   -0.0251726    0.1086273
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0383514    0.0234202    0.0530544
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1003398    0.0676099    0.1319208
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1841096   -0.0862203    0.3871619
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                 NA                -0.1060799   -0.5105360    0.1900804
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0484500   -0.3030756    0.3051459
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.2570755   -0.3875966    0.6022354
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0349453   -0.2459720    0.1403404
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0437023   -0.2817370    0.1501265
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0159026   -0.1062890    0.1245979
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.2114250    0.0520228    0.3440237
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1517176   -0.0080315    0.2861503
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0028849   -0.4794145    0.3201512
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0694108   -0.0842962    0.2013287
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0084369   -0.1696474    0.1305543
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0590318   -0.0618274    0.1661346
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0358280   -0.1822496    0.0924593
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0799342   -0.3087705    0.1088905
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1287688   -0.0814517    0.2981251
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0702745   -0.0452863    0.1730595
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0171992   -0.0077440    0.0415250
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0212452   -0.1536578    0.1696316
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.1415967    0.0426153    0.2303447
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0786360    0.0085502    0.1437675
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2835428    0.0217520    0.4752753
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0361883    0.0204166    0.0517060
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0965967    0.0517484    0.1393238
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0254952   -0.2568176    0.2443935
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0851082   -0.2866140    0.3494342
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.3259259   -0.3262663    0.6574022
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.2407236   -0.1502825    0.4988181
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.2696227   -0.1206773    0.5239923
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0689628   -0.0064293    0.1387073
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0661254   -0.1943216    0.2697764
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1808434    0.0209147    0.3146485
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0217391   -0.2072103    0.2072679
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1523715    0.0134989    0.2716947
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1701573   -0.0284118    0.3303860
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1821935   -0.0239264    0.3468208
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1755545    0.0137572    0.3108082
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.3077796    0.0539549    0.4935029
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1597635   -0.0853826    0.3495405
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.1699832   -0.0030380    0.3131588
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1269284    0.0915143    0.1609620
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0956805   -0.1611930   -0.0338642
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.5745066    0.4707474    0.6579240
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1337459    0.0947533    0.1710589
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0365517   -0.0417971    0.1090083
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0994222    0.0466245    0.1492960
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1518567    0.0872248    0.2119122
