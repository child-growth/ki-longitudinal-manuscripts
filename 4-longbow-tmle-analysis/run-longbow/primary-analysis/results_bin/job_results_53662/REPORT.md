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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        meducyrs    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ---------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0        7     87
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1       20     87
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       10     87
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       23     87
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0        6     87
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       21     87
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  0        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  1        3     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   0        4     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   1        6     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                0        2     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                1        9     24
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       13    154
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       20    154
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       20    154
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       42    154
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       25    154
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       34    154
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0        2     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1       15     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0        5     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       31     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       10     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       30     93
0-24 months   ki0047075b-MAL-ED          PERU                           High                  0        0     35
0-24 months   ki0047075b-MAL-ED          PERU                           High                  1        3     35
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   0        2     35
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   1       15     35
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                0        4     35
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                1       11     35
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        5     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1       19     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0       13     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       28     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        0     87
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1       22     87
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        1     43
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        4     43
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        5     43
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1       11     43
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        2     43
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       20     43
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       40    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       82    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       38    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       62    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       42    324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       60    324
0-24 months   ki1000108-IRC              INDIA                          High                  0       42    395
0-24 months   ki1000108-IRC              INDIA                          High                  1       85    395
0-24 months   ki1000108-IRC              INDIA                          Low                   0       57    395
0-24 months   ki1000108-IRC              INDIA                          Low                   1       81    395
0-24 months   ki1000108-IRC              INDIA                          Medium                0       63    395
0-24 months   ki1000108-IRC              INDIA                          Medium                1       67    395
0-24 months   ki1000109-EE               PAKISTAN                       High                  0        2    320
0-24 months   ki1000109-EE               PAKISTAN                       High                  1        7    320
0-24 months   ki1000109-EE               PAKISTAN                       Low                   0      146    320
0-24 months   ki1000109-EE               PAKISTAN                       Low                   1      144    320
0-24 months   ki1000109-EE               PAKISTAN                       Medium                0       10    320
0-24 months   ki1000109-EE               PAKISTAN                       Medium                1       11    320
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0       82    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       58    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      272    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1      145    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      150    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1      107    814
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       14    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        2    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      180    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1        9    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       27    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        2    234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  0       48    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  1       48    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   0       96    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   1       92    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                0       58    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                1       79    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0       34    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       58    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0       51    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       55    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0       44    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       66    308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0       33    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       68    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0       42    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       57    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0       42    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       68    310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       67    712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1      111    712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0        8    712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       16    712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      191    712
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      319    712
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  0       11     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  1        7     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   0        5     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   1        7     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                0        4     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        3     37
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       32    640
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       39    640
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      214    640
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      249    640
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       49    640
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       57    640
0-24 months   ki1119695-PROBIT           BELARUS                        High                  0       90   4431
0-24 months   ki1119695-PROBIT           BELARUS                        High                  1      610   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   0      239   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   1     1372   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                0      286   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                1     1834   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      776   3609
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1099   3609
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      402   3609
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      379   3609
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      471   3609
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      482   3609
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0       36    377
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       30    377
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      105    377
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1       76    377
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0       70    377
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1       60    377
0-24 months   ki1135781-COHORTS          INDIA                          High                  0      144   2119
0-24 months   ki1135781-COHORTS          INDIA                          High                  1       62   2119
0-24 months   ki1135781-COHORTS          INDIA                          Low                   0      696   2119
0-24 months   ki1135781-COHORTS          INDIA                          Low                   1      168   2119
0-24 months   ki1135781-COHORTS          INDIA                          Medium                0      771   2119
0-24 months   ki1135781-COHORTS          INDIA                          Medium                1      278   2119
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      202   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      380   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      255   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      323   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      207   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      322   1689
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  0       12     77
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  1        1     77
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0       28     77
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1        2     77
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0       24     77
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       10     77
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     1320   7561
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1047   7561
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     1731   7561
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1191   7561
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     1316   7561
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1      956   7561
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0      447   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1      178   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      582   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      196   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      501   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      158   2062
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  0        1     51
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  1       14     51
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   0        5     51
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   1       13     51
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                0        1     51
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                1       17     51
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  1        3     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   0        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   1        4     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                1        7     15
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  0        7     74
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  1       11     74
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   0       10     74
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   1       22     74
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                0        5     74
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                1       19     74
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  0        1     45
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  1       11     45
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   0        2     45
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   1       14     45
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                0        5     45
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                1       12     45
0-6 months    ki0047075b-MAL-ED          PERU                           High                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           High                  1        2     11
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   1        4     11
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                1        5     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        2     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        8     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        7     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        9     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        0     36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1       10     36
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        0     13
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        0     13
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        0     13
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        4     13
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        1     13
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        8     13
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       26    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       59    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       20    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       34    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       20    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       42    201
0-6 months    ki1000108-IRC              INDIA                          High                  0       21    240
0-6 months    ki1000108-IRC              INDIA                          High                  1       59    240
0-6 months    ki1000108-IRC              INDIA                          Low                   0       31    240
0-6 months    ki1000108-IRC              INDIA                          Low                   1       51    240
0-6 months    ki1000108-IRC              INDIA                          Medium                0       35    240
0-6 months    ki1000108-IRC              INDIA                          Medium                1       43    240
0-6 months    ki1000109-EE               PAKISTAN                       High                  0        0    127
0-6 months    ki1000109-EE               PAKISTAN                       High                  1        3    127
0-6 months    ki1000109-EE               PAKISTAN                       Low                   0       51    127
0-6 months    ki1000109-EE               PAKISTAN                       Low                   1       65    127
0-6 months    ki1000109-EE               PAKISTAN                       Medium                0        4    127
0-6 months    ki1000109-EE               PAKISTAN                       Medium                1        4    127
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  0       27    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  1       37    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   0       95    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   1       86    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                0       44    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                1       52    341
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  0        3     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       68     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0        7     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        0     78
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                  0       18    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                  1       40    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                   0       29    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                   1       58    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                0       17    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                1       61    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  0        9    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  1       43    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   0       14    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   1       45    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                0       17    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                1       57    185
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  0        5    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       67    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0        8    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       50    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0        8    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       59    197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       27    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       65    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0        3    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1        5    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0       71    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      169    340
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                  0        3      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                  1        2      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                   0        0      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                   1        1      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                0        2      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        1      9
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0       13    262
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1       23    262
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0       69    262
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1      107    262
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0       22    262
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       28    262
0-6 months    ki1119695-PROBIT           BELARUS                        High                  0       81   4263
0-6 months    ki1119695-PROBIT           BELARUS                        High                  1      604   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   0      187   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   1     1355   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                0      220   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                1     1816   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      314   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1067   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      155   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      355   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      166   2514
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      457   2514
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  0        7    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  1       29    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   0       26    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   1       74    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                0       21    212
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                1       55    212
0-6 months    ki1135781-COHORTS          INDIA                          High                  0      106   1413
0-6 months    ki1135781-COHORTS          INDIA                          High                  1       62   1413
0-6 months    ki1135781-COHORTS          INDIA                          Low                   0      340   1413
0-6 months    ki1135781-COHORTS          INDIA                          Low                   1      168   1413
0-6 months    ki1135781-COHORTS          INDIA                          Medium                0      459   1413
0-6 months    ki1135781-COHORTS          INDIA                          Medium                1      278   1413
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  0       79    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  1      245    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   0       65    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   1      144    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                0       54    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                1      165    752
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   0        2      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                0        2      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0      441   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1047   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0      674   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1191   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0      420   4729
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1      956   4729
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0       76    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1      115    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0       88    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      103    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       78    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       88    548
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0        6     36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1        6     36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0        5     36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       10     36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0        5     36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1        4     36
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   0        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   1        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                1        2      9
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  0        6     80
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  1        9     80
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       10     80
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       20     80
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       20     80
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       15     80
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0        1     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1        4     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0        3     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       17     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0        5     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       18     48
6-24 months   ki0047075b-MAL-ED          PERU                           High                  0        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           High                  1        1     24
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   0        2     24
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   1       11     24
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                0        4     24
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        6     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        3     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1       11     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        6     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       19     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1       12     51
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        1     30
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        4     30
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        5     30
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        7     30
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        1     30
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       12     30
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       14    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       23    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       18    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       28    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       22    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       18    123
6-24 months   ki1000108-IRC              INDIA                          High                  0       21    155
6-24 months   ki1000108-IRC              INDIA                          High                  1       26    155
6-24 months   ki1000108-IRC              INDIA                          Low                   0       26    155
6-24 months   ki1000108-IRC              INDIA                          Low                   1       30    155
6-24 months   ki1000108-IRC              INDIA                          Medium                0       28    155
6-24 months   ki1000108-IRC              INDIA                          Medium                1       24    155
6-24 months   ki1000109-EE               PAKISTAN                       High                  0        2    193
6-24 months   ki1000109-EE               PAKISTAN                       High                  1        4    193
6-24 months   ki1000109-EE               PAKISTAN                       Low                   0       95    193
6-24 months   ki1000109-EE               PAKISTAN                       Low                   1       79    193
6-24 months   ki1000109-EE               PAKISTAN                       Medium                0        6    193
6-24 months   ki1000109-EE               PAKISTAN                       Medium                1        7    193
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0       55    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       21    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      177    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1       59    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      106    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1       55    473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       11    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        2    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      112    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1        9    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       20    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        2    156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  0       30    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  1        8    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   0       67    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   1       34    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                0       41    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                1       18    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0       25    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       15    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0       37    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       10    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0       27    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1        9    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0       28    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1        1    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0       34    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1        7    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0       34    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1        9    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       40    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       46    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0        5    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       11    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      120    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      150    372
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  0        8     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  1        5     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   0        5     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   1        6     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                0        2     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        2     28
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       19    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       16    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      145    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      142    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       27    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       29    378
6-24 months   ki1119695-PROBIT           BELARUS                        High                  0        9    168
6-24 months   ki1119695-PROBIT           BELARUS                        High                  1        6    168
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   0       52    168
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   1       17    168
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                0       66    168
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                1       18    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      462   1095
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1       32   1095
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      247   1095
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1       24   1095
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      305   1095
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1       25   1095
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0       29    165
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1        1    165
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0       79    165
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1        2    165
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0       49    165
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1        5    165
6-24 months   ki1135781-COHORTS          INDIA                          High                  0       38    706
6-24 months   ki1135781-COHORTS          INDIA                          High                  1        0    706
6-24 months   ki1135781-COHORTS          INDIA                          Low                   0      356    706
6-24 months   ki1135781-COHORTS          INDIA                          Low                   1        0    706
6-24 months   ki1135781-COHORTS          INDIA                          Medium                0      312    706
6-24 months   ki1135781-COHORTS          INDIA                          Medium                1        0    706
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      123    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      135    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      190    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      179    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      153    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      157    937
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  0       12     73
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  1        1     73
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0       26     73
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1        2     73
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0       22     73
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       10     73
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0      879   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     1057   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0      896   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1        0   2832
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0      371   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       63   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      494   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1       93   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      423   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       70   1514


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/3b6d214c-15a7-45ae-b1e3-2a64fe1c0097/5ebe7524-60e8-4207-b0db-93c5ccb86229/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3b6d214c-15a7-45ae-b1e3-2a64fe1c0097/5ebe7524-60e8-4207-b0db-93c5ccb86229/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3b6d214c-15a7-45ae-b1e3-2a64fe1c0097/5ebe7524-60e8-4207-b0db-93c5ccb86229/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3b6d214c-15a7-45ae-b1e3-2a64fe1c0097/5ebe7524-60e8-4207-b0db-93c5ccb86229/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.7407407   0.6159882   0.8654933
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.6969697   0.5338973   0.8600421
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.7777778   0.5967442   0.9588114
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.5984365   0.3907820   0.8060910
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6814092   0.5461753   0.8166431
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5801373   0.4549495   0.7053250
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6595005   0.5642757   0.7547254
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6206728   0.5257799   0.7155657
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6027498   0.4990262   0.7064733
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.6698836   0.5902434   0.7495238
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.5984454   0.5028659   0.6940249
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.5097824   0.4175343   0.6020306
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3915023   0.3016167   0.4813879
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3572655   0.3085198   0.4060113
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4134430   0.3496240   0.4772620
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4839952   0.3717518   0.5962386
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.4948844   0.4234262   0.5663426
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.5772806   0.4842428   0.6703183
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.6334603   0.5382078   0.7287128
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.5201328   0.4249895   0.6152762
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.5934846   0.4926206   0.6943486
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.6636752   0.5662460   0.7611043
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.5837030   0.4854337   0.6819723
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.6459196   0.5627702   0.7290690
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.6235955   0.5481204   0.6990706
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6666667   0.4628279   0.8705055
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6254902   0.5809696   0.6700108
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5359417   0.4120283   0.6598551
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5404012   0.4914500   0.5893524
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5324269   0.4169737   0.6478800
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.8825747   0.8575817   0.9075677
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.8507372   0.8331084   0.8683660
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8658312   0.8511763   0.8804860
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.5620840   0.5409585   0.5832095
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.5071120   0.4748425   0.5393815
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.5231458   0.4929506   0.5533410
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4840082   0.3739966   0.5940199
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4269213   0.3541098   0.4997329
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4242611   0.3349878   0.5135345
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2789574   0.2259233   0.3319916
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.2138627   0.1880696   0.2396559
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2614201   0.2362247   0.2866154
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.6465137   0.6040029   0.6890245
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.5670032   0.5249431   0.6090633
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6104385   0.5653216   0.6555554
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4357405   0.4137421   0.4577389
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4133878   0.3943931   0.4323825
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4285005   0.4059697   0.4510312
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2601930   0.2263586   0.2940274
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2614613   0.2317265   0.2911961
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2492521   0.2163088   0.2821955
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.6111111   0.3713146   0.8509076
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6875000   0.5258767   0.8491233
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.7916667   0.6196294   0.9637040
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6940789   0.5931486   0.7950092
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6357203   0.5006351   0.7708055
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6786857   0.5608201   0.7965513
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.7363299   0.6397390   0.8329208
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.6186837   0.5068583   0.7305091
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.5499963   0.4362239   0.6637686
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.5679937   0.4448548   0.6911326
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4814522   0.4089132   0.5539911
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.5249370   0.4216095   0.6282644
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.6907973   0.5732988   0.8082959
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.6782217   0.5771792   0.7792641
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.7815790   0.6881774   0.8749805
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.8269231   0.7259269   0.9279193
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.7627119   0.6575568   0.8678669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.7702703   0.6742120   0.8663285
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.9305556   0.8711449   0.9899662
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.8620690   0.7721846   0.9519533
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.8805970   0.8019549   0.9592391
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.6304905   0.4641217   0.7968594
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6080745   0.5350696   0.6810793
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5579716   0.4172196   0.6987236
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.8931056   0.8682997   0.9179114
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.8755171   0.8583722   0.8926619
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.8930991   0.8791983   0.9069998
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.7662228   0.7452745   0.7871710
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7078989   0.6701449   0.7456529
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.7345183   0.7006238   0.7684129
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.8055556   0.6753507   0.9357605
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7400000   0.6534164   0.8265836
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7236842   0.6242822   0.8230862
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.3505564   0.2815764   0.4195364
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.3411578   0.2989466   0.3833690
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.3784859   0.3449693   0.4120024
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7611387   0.7141345   0.8081430
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.6934312   0.6300253   0.7568371
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7543372   0.6977456   0.8109288
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.7037690   0.6774229   0.7301151
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.6565468   0.6322046   0.6808890
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.6882341   0.6596961   0.7167721
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.5618379   0.4988494   0.6248263
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.5608139   0.4969493   0.6246784
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.5562875   0.4867329   0.6258420
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6000000   0.3314261   0.8685739
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6666667   0.4614494   0.8718839
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4285714   0.2479229   0.6092200
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6015383   0.4448984   0.7581782
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.5822710   0.4349635   0.7295785
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.4416985   0.2605478   0.6228492
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.5431037   0.3944925   0.6917149
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.5422417   0.4036990   0.6807845
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.4476908   0.3014111   0.5939704
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2770990   0.1739801   0.3802179
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2507690   0.1925228   0.3090151
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3452896   0.2714292   0.4191499
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.2105263   0.0841686   0.3368840
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3366337   0.2406100   0.4326573
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3050847   0.1875637   0.4226058
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3750000   0.2362295   0.5137705
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2127660   0.0922165   0.3333154
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2500000   0.0863142   0.4136858
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5348837   0.4257515   0.6440159
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6875000   0.4523318   0.9226682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5555556   0.4941981   0.6169130
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4844122   0.2994634   0.6693610
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4958528   0.4323142   0.5593913
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5283697   0.3887421   0.6679974
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.4000000   0.1498474   0.6501526
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2463768   0.1460750   0.3466786
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2142857   0.1257468   0.3028247
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0652979   0.0439128   0.0866829
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0875150   0.0537065   0.1213235
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0769722   0.0468568   0.1070875
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5185767   0.4549863   0.5821672
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4929158   0.4383478   0.5474838
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.4996916   0.4384713   0.5609119
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1462123   0.1124969   0.1799277
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1597142   0.1312430   0.1881854
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1435401   0.1114623   0.1756179


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7356322   0.6433278   0.8279366
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6233766   0.5382453   0.7085080
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6264045   0.5887191   0.6640899
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5390625   0.4966112   0.5815138
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5430867   0.5266769   0.5594965
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4403183   0.3884516   0.4921850
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2397357   0.2214428   0.2580286
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4224309   0.4113024   0.4335594
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2580019   0.2386523   0.2773515
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7027027   0.5947731   0.8106323
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6716418   0.6057305   0.7375531
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8934010   0.8497799   0.9370221
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6030534   0.5432663   0.6628406
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7474145   0.7304420   0.7643869
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7452830   0.6866274   0.8039386
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3595188   0.3344897   0.3845478
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6754071   0.6620619   0.6887522
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5500000   0.4255057   0.6744943
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5564516   0.5041613   0.6087419
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4947090   0.4399319   0.5494861
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2440476   0.1791134   0.3089818
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0739726   0.0585427   0.0894025
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1492734   0.1316631   0.1668838


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              0.9409091   0.7050517   1.2556667
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.0500000   0.7881118   1.3989132
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.1386492   0.7623673   1.7006526
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.9694217   0.6502964   1.4451540
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              0.9411256   0.7622565   1.1619677
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              0.9139489   0.7299981   1.1442531
0-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High              0.8933574   0.7321426   1.0900709
0-24 months   ki1000108-IRC              INDIA                          Medium               High              0.7610015   0.6133547   0.9441899
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.9125504   0.6990943   1.1911816
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.0560424   0.8011769   1.3919842
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.0224986   0.7788012   1.3424521
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1927402   0.8994032   1.5817481
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.8210977   0.6483272   1.0399092
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.9368931   0.7464921   1.1758579
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              0.8795010   0.7046491   1.0977408
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9732466   0.8019000   1.1812058
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0690691   0.7694770   1.4853058
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0030383   0.8716480   1.1542341
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.0083209   0.7870533   1.2917943
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9934418   0.7241936   1.3627939
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              0.9639266   0.9308406   0.9981886
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              0.9810288   0.9493207   1.0137959
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.9021997   0.8412432   0.9675732
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9307253   0.8719904   0.9934165
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8820539   0.6723076   1.1572369
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8765577   0.6513441   1.1796429
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              0.7666500   0.6176081   0.9516590
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              0.9371325   0.7643698   1.1489430
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.8770165   0.7944813   0.9681260
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9442004   0.8554565   1.0421505
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              0.9487018   0.8875823   1.0140300
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9833845   0.9157601   1.0560027
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0048743   0.8512536   1.1862181
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9579509   0.8007219   1.1460531
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.1250000   0.7120235   1.7775046
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              1.2954545   0.8272169   2.0287332
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              0.9159194   0.7076296   1.1855189
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              0.9778221   0.7792846   1.2269409
0-6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High              0.8402262   0.6716822   1.0510627
0-6 months    ki1000108-IRC              INDIA                          Medium               High              0.7469427   0.5845186   0.9545007
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.8476365   0.6511292   1.1034486
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9241951   0.6893876   1.2389786
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              0.9817954   0.7826880   1.2315537
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1314157   0.9194022   1.3923194
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.9223492   0.7671832   1.1088983
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.9314896   0.7822913   1.1091429
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              0.9264025   0.8197906   1.0468790
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9463132   0.8479266   1.0561159
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.9644467   0.7214246   1.2893342
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.8849801   0.6143881   1.2747477
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              0.9803064   0.9476010   1.0141406
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              0.9999927   0.9686898   1.0323072
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.9238813   0.8720388   0.9788058
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9586224   0.9105851   1.0091939
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9186207   0.7524502   1.1214881
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8983666   0.7266646   1.1106396
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              0.9731895   0.7753901   1.2214468
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.0796718   0.8757588   1.3310643
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.9110444   0.8159382   1.0172362
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9910640   0.8996082   1.0918174
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              0.9329010   0.8851849   0.9831893
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9779261   0.9249538   1.0339322
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.9981774   0.8616385   1.1563529
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9901209   0.8489056   1.1548274
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.1111111   0.6453128   1.9131311
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.7142857   0.3861885   1.3211271
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              0.9679700   0.6724924   1.3932736
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              0.7342816   0.4512022   1.1949620
6-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Low                  High              0.9984130   0.6893161   1.4461123
6-24 months   ki1000108-IRC              INDIA                          Medium               High              0.8243192   0.5403601   1.2574987
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.9049797   0.5837332   1.4030180
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2460873   0.8115144   1.9133775
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.5990099   0.8225830   3.1082974
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.4491525   0.7098893   2.9582685
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.5673759   0.2882551   1.1167727
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.6666667   0.3144313   1.4134865
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2853261   0.8630574   1.9141984
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0386473   0.8235760   1.3098831
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.0236174   0.6841089   1.5316165
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0907440   0.6860169   1.7342467
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              0.6159420   0.2920534   1.2990247
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              0.5357143   0.2531681   1.1335940
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.3402436   0.8079663   2.2231781
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1787853   0.7083395   1.9616793
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.9505166   0.8056792   1.1213915
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9635827   0.8100735   1.1461820
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0923446   0.8160913   1.4621118
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9817236   0.7120385   1.3535523


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0051086   -0.1250382    0.1148211
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0249402   -0.1529010    0.2027813
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0298709   -0.1042863    0.0445445
0-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0800101   -0.1504789   -0.0095414
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0106669   -0.0921451    0.0708113
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0361948   -0.0611718    0.1335614
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0522915   -0.1349219    0.0303388
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0410945   -0.1192385    0.0370494
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0028090   -0.0625216    0.0681396
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0031208   -0.1142472    0.1204889
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0213695   -0.0448006    0.0020615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0189973   -0.0326528   -0.0053417
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0436899   -0.1413933    0.0540134
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0392217   -0.0885103    0.0100669
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0396457   -0.0741768   -0.0051147
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0133096   -0.0322958    0.0056767
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0021911   -0.0292081    0.0248259
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0915916   -0.1113297    0.2945128
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0224371   -0.1003619    0.0554876
0-6 months    ki1000108-IRC              INDIA                          High                 NA                -0.0988299   -0.1831756   -0.0144842
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0547972   -0.1660511    0.0564566
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0222072   -0.0788076    0.1232219
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0431393   -0.1318940    0.0456154
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0371545   -0.0905895    0.0162804
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0274371   -0.1821732    0.1272991
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.0075789   -0.0307216    0.0155637
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0188083   -0.0326507   -0.0049659
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0602725   -0.1812521    0.0607071
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0089624   -0.0560037    0.0739284
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0244366   -0.0605019    0.0116287
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0283619   -0.0515777   -0.0051462
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0034437   -0.0504600    0.0435726
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0500000   -0.2964156    0.1964156
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0405627   -0.1763479    0.0952225
6-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0269746   -0.1511239    0.0971747
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0083132   -0.0868119    0.1034384
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0925040   -0.0259710    0.2109790
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0985772   -0.2149020    0.0177476
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0215679   -0.0739879    0.1171237
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0102968   -0.1662089    0.1868024
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1559524   -0.3917880    0.0798833
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0086747   -0.0082403    0.0255897
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0159086   -0.0708528    0.0390356
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0030611   -0.0255388    0.0316611


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0069444   -0.1842556    0.1438190
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0400082   -0.2932999    0.2874164
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0474420   -0.1724272    0.0642193
0-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.1356395   -0.2646899   -0.0197576
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0280092   -0.2657482    0.1650766
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0695800   -0.1383681    0.2395418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0899765   -0.2431749    0.0443431
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0660067   -0.1990101    0.0522429
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0044843   -0.1054703    0.1035023
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0057893   -0.2376051    0.2013164
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0248135   -0.0524035    0.0020531
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0349801   -0.0604781   -0.0100953
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0992235   -0.3456628    0.1020839
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.1636039   -0.3885317    0.0248879
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0653284   -0.1238167   -0.0098841
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0315071   -0.0774547    0.0124810
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0084925   -0.1188133    0.0909501
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1303419   -0.2160862    0.3780825
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0334064   -0.1563251    0.0764459
0-6 months    ki1000108-IRC              INDIA                          High                 NA                -0.1550273   -0.2988485   -0.0271314
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.1067763   -0.3466892    0.0903960
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0311459   -0.1214568    0.1629831
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0550398   -0.1751448    0.0527900
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0415878   -0.1037496    0.0170732
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0454969   -0.3363133    0.1820303
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.0085587   -0.0350375    0.0172427
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0251645   -0.0439126   -0.0067530
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0808720   -0.2567513    0.0703934
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0249288   -0.1735552    0.1898430
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0331703   -0.0833830    0.0147152
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0419924   -0.0769807   -0.0081407
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0061672   -0.0939879    0.0746036
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0909091   -0.6477166    0.2777383
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0723074   -0.3457036    0.1455451
6-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0522634   -0.3228896    0.1630003
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0291272   -0.3684361    0.3111888
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.3052632   -0.2119312    0.6017437
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.3566176   -0.8742527    0.0180559
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0387597   -0.1493241    0.1960641
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0208138   -0.4096636    0.3198338
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.6390244   -1.9550955    0.0909258
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1172697   -0.1413727    0.3173021
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0316484   -0.1470533    0.0721457
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0205070   -0.1911533    0.1945566
