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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0        7     86
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1       20     86
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       10     86
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       22     86
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0        6     86
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       21     86
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  1        3     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   0        4     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   1        6     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                0        2     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                1        8     23
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       12    153
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       19    153
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       21    153
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       42    153
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       25    153
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       34    153
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0        2     88
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1       14     88
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0        5     88
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       28     88
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       10     88
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       29     88
0-24 months   ki0047075b-MAL-ED          PERU                           High                  0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           High                  1        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   0        2     34
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   1       14     34
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                0        4     34
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                1       11     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        5     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1       17     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0       12     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       29     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        0     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1       20     83
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        0     38
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        3     38
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        5     38
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1       10     38
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        2     38
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       18     38
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       40    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       82    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       38    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       63    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       42    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       61    326
0-24 months   ki1000108-IRC              INDIA                          High                  0       42    395
0-24 months   ki1000108-IRC              INDIA                          High                  1       85    395
0-24 months   ki1000108-IRC              INDIA                          Low                   0       57    395
0-24 months   ki1000108-IRC              INDIA                          Low                   1       81    395
0-24 months   ki1000108-IRC              INDIA                          Medium                0       63    395
0-24 months   ki1000108-IRC              INDIA                          Medium                1       67    395
0-24 months   ki1000109-EE               PAKISTAN                       High                  0        2    256
0-24 months   ki1000109-EE               PAKISTAN                       High                  1        4    256
0-24 months   ki1000109-EE               PAKISTAN                       Low                   0      137    256
0-24 months   ki1000109-EE               PAKISTAN                       Low                   1       97    256
0-24 months   ki1000109-EE               PAKISTAN                       Medium                0       10    256
0-24 months   ki1000109-EE               PAKISTAN                       Medium                1        6    256
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0       34    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       58    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0       50    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       55    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0       44    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       66    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0       33    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       68    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0       42    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       58    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0       42    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       68    311
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       28    558
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       25    558
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      194    558
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      222    558
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       45    558
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       44    558
0-24 months   ki1119695-PROBIT           BELARUS                        High                  0       90   4431
0-24 months   ki1119695-PROBIT           BELARUS                        High                  1      610   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   0      239   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   1     1372   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                0      286   4431
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                1     1834   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      761   3569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1091   3569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      404   3569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      372   3569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      463   3569
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      478   3569
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     1320   7565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1050   7565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     1732   7565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1190   7565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     1316   7565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1      957   7565
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0       28    901
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1        5    901
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      627    901
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      218    901
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       16    901
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1        7    901
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  0        1     50
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  1       14     50
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   0        5     50
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   1       12     50
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                0        1     50
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                1       17     50
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  1        3     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   1        4     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                1        6     14
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  0        6     73
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  1       10     73
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   0       10     73
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   1       23     73
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                0        5     73
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                1       19     73
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  0        1     40
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  1       10     40
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   0        2     40
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   1       11     40
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                0        5     40
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                1       11     40
0-6 months    ki0047075b-MAL-ED          PERU                           High                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           High                  1        2     11
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   1        4     11
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                1        5     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        2     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        8     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        6     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        9     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        8     33
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        0     11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        0     11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        0     11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        4     11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        1     11
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        6     11
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       26    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       59    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       20    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       35    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       20    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       43    203
0-6 months    ki1000108-IRC              INDIA                          High                  0       21    240
0-6 months    ki1000108-IRC              INDIA                          High                  1       59    240
0-6 months    ki1000108-IRC              INDIA                          Low                   0       31    240
0-6 months    ki1000108-IRC              INDIA                          Low                   1       51    240
0-6 months    ki1000108-IRC              INDIA                          Medium                0       35    240
0-6 months    ki1000108-IRC              INDIA                          Medium                1       43    240
0-6 months    ki1000109-EE               PAKISTAN                       High                  0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       High                  1        2    108
0-6 months    ki1000109-EE               PAKISTAN                       Low                   0       43    108
0-6 months    ki1000109-EE               PAKISTAN                       Low                   1       56    108
0-6 months    ki1000109-EE               PAKISTAN                       Medium                0        4    108
0-6 months    ki1000109-EE               PAKISTAN                       Medium                1        3    108
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  0        9    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  1       43    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   0       14    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   1       45    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                0       16    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                1       57    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  0        5    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       67    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0        8    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       51    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0        8    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       59    198
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0        9    179
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1        9    179
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0       49    179
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1       80    179
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0       17    179
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       15    179
0-6 months    ki1119695-PROBIT           BELARUS                        High                  0       81   4263
0-6 months    ki1119695-PROBIT           BELARUS                        High                  1      604   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   0      187   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   1     1355   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                0      220   4263
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                1     1816   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      318   2512
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1062   2512
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      160   2512
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      349   2512
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      167   2512
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      456   2512
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0      441   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1050   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0      675   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1190   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0      420   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1      957   4733
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0        3    243
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1        3    243
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      103    243
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      126    243
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0        3    243
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1        5    243
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
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       11     80
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       19     80
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       20     80
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       15     80
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0        1     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1        4     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0        3     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       17     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0        5     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       18     48
6-24 months   ki0047075b-MAL-ED          PERU                           High                  0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           High                  1        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   0        2     23
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   1       10     23
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                0        4     23
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        6     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        3     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        9     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        6     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       20     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1       12     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        0     27
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        3     27
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        5     27
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        6     27
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        1     27
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       12     27
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
6-24 months   ki1000109-EE               PAKISTAN                       High                  0        2    148
6-24 months   ki1000109-EE               PAKISTAN                       High                  1        2    148
6-24 months   ki1000109-EE               PAKISTAN                       Low                   0       94    148
6-24 months   ki1000109-EE               PAKISTAN                       Low                   1       41    148
6-24 months   ki1000109-EE               PAKISTAN                       Medium                0        6    148
6-24 months   ki1000109-EE               PAKISTAN                       Medium                1        3    148
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0       36    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       10    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0       28    123
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       19    379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       16    379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      145    379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      142    379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       28    379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       29    379
6-24 months   ki1119695-PROBIT           BELARUS                        High                  0        9    168
6-24 months   ki1119695-PROBIT           BELARUS                        High                  1        6    168
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   0       52    168
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   1       17    168
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                0       66    168
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                1       18    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      443   1057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1       29   1057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      244   1057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1       23   1057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      296   1057
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1       22   1057
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
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0       25    658
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1        2    658
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      524    658
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1       92    658
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       13    658
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1        2    658


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
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/b0158b25-a39d-42e5-b4be-3a2e1fd2551a/44dd01df-86fd-4da7-a846-51383ba53671/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b0158b25-a39d-42e5-b4be-3a2e1fd2551a/44dd01df-86fd-4da7-a846-51383ba53671/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b0158b25-a39d-42e5-b4be-3a2e1fd2551a/44dd01df-86fd-4da7-a846-51383ba53671/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b0158b25-a39d-42e5-b4be-3a2e1fd2551a/44dd01df-86fd-4da7-a846-51383ba53671/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.7407407   0.6174221   0.8640594
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.6875000   0.5204085   0.8545915
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.7777778   0.5988250   0.9567305
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.5979696   0.3897909   0.8061483
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6581006   0.5235552   0.7926459
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5829100   0.4605148   0.7053052
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6602803   0.5646845   0.7558761
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6202244   0.5269448   0.7135041
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6051834   0.5041488   0.7062179
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.6764070   0.5956778   0.7571361
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.5991375   0.5042638   0.6940111
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.4946306   0.4007913   0.5884699
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.4000194   0.3072780   0.4927609
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3554767   0.3071666   0.4037869
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3997893   0.3374861   0.4620926
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4945743   0.3816761   0.6074726
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.4935541   0.4197043   0.5674039
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.5755401   0.4782750   0.6728052
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.6344298   0.5449934   0.7238662
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.5557155   0.4624335   0.6489974
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.5966212   0.4995926   0.6936498
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.6457685   0.5429046   0.7486324
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.6115769   0.5174050   0.7057488
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.6542121   0.5725918   0.7358325
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.6235955   0.5481204   0.6990706
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6666667   0.4628279   0.8705055
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6254902   0.5809696   0.6700108
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4697803   0.3188017   0.6207588
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5365818   0.4851553   0.5880082
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4851716   0.3603271   0.6100161
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.8799497   0.8541327   0.9057668
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.8485842   0.8304877   0.8666808
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8655079   0.8506324   0.8803834
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.5748073   0.5533639   0.5962506
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4984887   0.4647928   0.5321846
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.5246173   0.4943079   0.5549267
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4939025   0.3841994   0.6036056
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4236625   0.3526982   0.4946268
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4261628   0.3383316   0.5139939
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2594616   0.2055830   0.3133402
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.2056680   0.1804493   0.2308867
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2609098   0.2355841   0.2862355
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.6457739   0.6031138   0.6884340
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.5684215   0.5269937   0.6098494
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6097346   0.5639933   0.6554760
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4353327   0.4138112   0.4568543
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4160597   0.3968103   0.4353092
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4307371   0.4090145   0.4524597
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1515152   0.0148040   0.2882263
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2579882   0.2283316   0.2876447
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3043478   0.0746304   0.5340653
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.6250000   0.3721939   0.8778061
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6969697   0.5387947   0.8551447
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.7916667   0.6194767   0.9638566
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6816324   0.5809444   0.7823204
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6224475   0.4872858   0.7576091
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6611309   0.5469499   0.7753118
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.7381354   0.6415767   0.8346941
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.6191292   0.5072219   0.7310365
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.5510125   0.4366810   0.6653440
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.5637522   0.4374477   0.6900567
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4793658   0.4066911   0.5520404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.5381720   0.4357474   0.6405965
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.7129505   0.5925840   0.8333171
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.6902552   0.5889118   0.7915986
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.7980641   0.7051609   0.8909674
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.8269231   0.7264728   0.9273734
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.7627119   0.6581252   0.8672985
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.7808219   0.6840825   0.8775613
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.9305556   0.8711487   0.9899624
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.8644068   0.7759319   0.9528817
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.8805970   0.8019601   0.9592340
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5000000   0.2657434   0.7342566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6201550   0.5361404   0.7041697
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4687500   0.2934010   0.6440990
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.8918873   0.8660977   0.9176769
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.8748425   0.8576626   0.8920224
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.8919849   0.8779321   0.9060378
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.7643892   0.7430208   0.7857576
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.6886585   0.6470963   0.7302208
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.7354999   0.7016968   0.7693031
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.8055556   0.6753507   0.9357605
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7400000   0.6534164   0.8265836
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7236842   0.6242822   0.8230862
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.3948677   0.3291427   0.4605928
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.3417386   0.3014971   0.3819801
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.3812619   0.3475512   0.4149726
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7588551   0.7117806   0.8059295
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.6975058   0.6351990   0.7598127
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7458380   0.6886684   0.8030077
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.6963280   0.6692517   0.7234043
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.6536506   0.6299997   0.6773015
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.6919998   0.6636375   0.7203622
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6000000   0.3314261   0.8685739
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6333333   0.4225524   0.8441142
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4285714   0.2479229   0.6092200
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6545541   0.4885852   0.8205231
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6443444   0.4961450   0.7925437
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.4994425   0.3225324   0.6763527
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.5179973   0.3405954   0.6953993
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.5126901   0.3547686   0.6706117
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.4463531   0.2876868   0.6050195
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2765421   0.1715920   0.3814921
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2522695   0.1936816   0.3108574
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3394993   0.2661004   0.4128983
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.2105263   0.0841686   0.3368840
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3366337   0.2406100   0.4326573
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3050847   0.1875637   0.4226058
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3750000   0.2362295   0.5137705
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2173913   0.0880742   0.3467084
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2432432   0.0907435   0.3957430
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5348837   0.4257515   0.6440159
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6875000   0.4523318   0.9226682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5555556   0.4941981   0.6169130
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4268657   0.2641445   0.5895868
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4979858   0.4347845   0.5611871
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5118365   0.3600065   0.6636664
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.4000000   0.1498474   0.6501526
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2463768   0.1460750   0.3466786
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2142857   0.1257468   0.3028247
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0617078   0.0403224   0.0830932
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0865594   0.0534020   0.1197168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0691647   0.0406140   0.0977155
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5153018   0.4511202   0.5794834
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4863827   0.4324975   0.5402678
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.5038373   0.4431389   0.5645358


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.7325581   0.6399608   0.8251555
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6209150   0.5357837   0.7060464
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6264045   0.5887191   0.6640899
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5215054   0.4764383   0.5665724
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5438498   0.5273663   0.5603333
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4403183   0.3884516   0.4921850
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2397357   0.2214428   0.2580286
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4226041   0.4114768   0.4337314
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2552719   0.2263808   0.2841631
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.7123288   0.6046595   0.8199981
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8939394   0.8505280   0.9373508
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5810056   0.5082784   0.6537327
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7432325   0.7261601   0.7603048
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7452830   0.6866274   0.8039386
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3595188   0.3344897   0.3845478
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6754701   0.6621313   0.6888089
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5375000   0.4127227   0.6622773
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5564516   0.5041613   0.6087419
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4934037   0.4386266   0.5481808
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2440476   0.1791134   0.3089818
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0700095   0.0547600   0.0852589
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              0.9281250   0.6910533   1.2465262
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.0500000   0.7907151   1.3943075
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.1005586   0.7356573   1.6464587
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.9748155   0.6576720   1.4448925
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              0.9393350   0.7622341   1.1575843
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              0.9165552   0.7353182   1.1424624
0-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High              0.8857648   0.7265227   1.0799101
0-24 months   ki1000108-IRC              INDIA                          Medium               High              0.7312618   0.5846082   0.9147047
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.8886486   0.6806628   1.1601873
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9994248   0.7574876   1.3186353
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              0.9979372   0.7599902   1.3103835
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1637079   0.8765466   1.5449448
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.8759290   0.7075861   1.0843226
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.9404053   0.7623957   1.1599779
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              0.9470528   0.7592088   1.1813733
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.0130753   0.8300888   1.2363996
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0690691   0.7694770   1.4853058
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0030383   0.8716480   1.1542341
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.1421973   0.8167222   1.5973788
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0327628   0.6842778   1.5587223
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              0.9643554   0.9301757   0.9997910
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              0.9835879   0.9508968   1.0174030
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.8672275   0.8054719   0.9337179
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9126838   0.8549406   0.9743270
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8577858   0.6591460   1.1162875
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8628480   0.6450890   1.1541147
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              0.7926721   0.6281468   1.0002903
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.0055815   0.8063691   1.2540090
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.8802176   0.7979198   0.9710036
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9441921   0.8545082   1.0432887
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              0.9557281   0.8948888   1.0207037
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9894434   0.9238984   1.0596384
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.7027219   0.6856957   4.2282045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              2.0086957   0.6194566   6.5135450
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.1151515   0.7013020   1.7732202
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              1.2666667   0.8002180   2.0050092
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              0.9131718   0.7030603   1.1860758
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              0.9699229   0.7716383   1.2191599
0-6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High              0.8387746   0.6710457   1.0484275
0-6 months    ki1000108-IRC              INDIA                          Medium               High              0.7464925   0.5837061   0.9546775
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.8503129   0.6482756   1.1153157
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9546251   0.7113782   1.2810472
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              0.9681671   0.7739174   1.2111724
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1193822   0.9103054   1.3764793
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.9223492   0.7679474   1.1077948
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.9442498   0.7938386   1.1231599
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              0.9289147   0.8233540   1.0480092
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9463132   0.8479326   1.0561083
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2403101   0.7615913   2.0199405
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9375000   0.5147516   1.7074376
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              0.9808890   0.9472898   1.0156800
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0001095   0.9677974   1.0335003
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.9009266   0.8441785   0.9614894
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9622061   0.9134896   1.0135206
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9186207   0.7524502   1.1214881
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8983666   0.7266646   1.1106396
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              0.8654508   0.7104124   1.0543245
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              0.9655433   0.8053640   1.1575808
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.9191555   0.8246569   1.0244829
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9828465   0.8909207   1.0842573
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              0.9387107   0.8904524   0.9895845
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9937843   0.9394648   1.0512446
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.0555556   0.6041548   1.8442253
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.7142857   0.3861885   1.3211271
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              0.9844019   0.6996901   1.3849663
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              0.7630271   0.4916500   1.1841968
6-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Low                  High              0.9897544   0.6224274   1.5738601
6-24 months   ki1000108-IRC              INDIA                          Medium               High              0.8616900   0.5241431   1.4166162
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.9122282   0.5848993   1.4227412
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2276589   0.7942803   1.8974992
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.5990099   0.8225830   3.1082974
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.4491525   0.7098893   2.9582685
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.5797101   0.2876253   1.1684085
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.6486486   0.3133491   1.3427357
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2853261   0.8630574   1.9141984
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0386473   0.8235760   1.3098831
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.1666102   0.7805937   1.7435182
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1990574   0.7395449   1.9440858
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              0.6159420   0.2920534   1.2990247
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              0.5357143   0.2531681   1.1335940
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.4027314   0.8371091   2.3505364
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1208434   0.6551134   1.9176681
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.9438792   0.7989337   1.1151212
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9777519   0.8218621   1.1632107


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0081826   -0.1272337    0.1108685
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0229455   -0.1577398    0.2036308
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0283785   -0.1027695    0.0460125
0-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0865335   -0.1578663   -0.0152008
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0191841   -0.1030038    0.0646357
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0256157   -0.0733929    0.1246243
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0513679   -0.1272593    0.0245235
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0219743   -0.1062895    0.0623409
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0028090   -0.0625216    0.0681396
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0517251   -0.0919480    0.1953982
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0187446   -0.0430113    0.0055221
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0309574   -0.0450666   -0.0168483
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0535842   -0.1507088    0.0435404
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0197259   -0.0699635    0.0305117
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0389059   -0.0735795   -0.0042324
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0127286   -0.0311796    0.0057224
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1037568   -0.0310620    0.2385756
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0873288   -0.1305883    0.3052459
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0067555   -0.0845168    0.0710057
0-6 months    ki1000108-IRC              INDIA                          High                 NA                -0.1006354   -0.1851290   -0.0161418
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0505557   -0.1646768    0.0635654
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0000540   -0.1038342    0.1039421
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0388796   -0.1271652    0.0494060
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0366162   -0.0900005    0.0167682
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0810056   -0.1406447    0.3026559
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.0063607   -0.0304772    0.0177558
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0211567   -0.0356734   -0.0066400
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0602725   -0.1812521    0.0607071
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0353490   -0.0967486    0.0260506
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0221529   -0.0580080    0.0137022
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0208579   -0.0447291    0.0030133
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0625000   -0.3091435    0.1841435
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0935785   -0.2375442    0.0503871
6-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0018683   -0.1575745    0.1538378
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0088702   -0.0878158    0.1055562
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0925040   -0.0259710    0.2109790
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0985772   -0.2149020    0.0177476
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0215679   -0.0739879    0.1171237
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0665380   -0.0892497    0.2223258
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1559524   -0.3917880    0.0798833
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0083017   -0.0085238    0.0251272
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0126337   -0.0680980    0.0428305


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0111699   -0.1880458    0.1393728
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0369543   -0.3036192    0.2885522
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0449096   -0.1693465    0.0662852
0-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.1466985   -0.2774783   -0.0293071
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0503736   -0.2949500    0.1480098
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0492429   -0.1617742    0.2219323
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0881003   -0.2277835    0.0356913
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0352269   -0.1794386    0.0913519
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0044843   -0.1054703    0.1035023
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0991842   -0.2233747    0.3366962
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0217655   -0.0503495    0.0060406
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0569228   -0.0832871   -0.0312000
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1216942   -0.3661743    0.0790357
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0822817   -0.3134280    0.1081858
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0641094   -0.1228405   -0.0084503
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0301195   -0.0747279    0.0126373
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.4064559   -0.4453381    0.7562545
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1225962   -0.2469266    0.3826120
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.0100100   -0.1320905    0.0989058
0-6 months    ki1000108-IRC              INDIA                          High                 NA                -0.1578594   -0.3020479   -0.0296384
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0985114   -0.3452164    0.1029492
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0000757   -0.1567799    0.1356622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0493369   -0.1680752    0.0573313
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0409605   -0.1030051    0.0175941
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1394231   -0.3416494    0.4479984
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.0071830   -0.0347903    0.0196879
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0284658   -0.0482566   -0.0090487
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0808720   -0.2567513    0.0703934
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0983230   -0.2834587    0.0601073
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0300704   -0.0799657    0.0175197
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0308791   -0.0668519    0.0038808
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1162791   -0.6878499    0.2617359
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                -0.1668139   -0.4579633    0.0661941
6-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0036199   -0.3555430    0.2569378
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0310785   -0.3744291    0.3169463
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.3052632   -0.2119312    0.6017437
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.3566176   -0.8742527    0.0180559
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0387597   -0.1493241    0.1960641
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1348552   -0.2457103    0.3991576
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.6390244   -1.9550955    0.0909258
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1185796   -0.1556733    0.3277495
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0251333   -0.1416955    0.0795284
