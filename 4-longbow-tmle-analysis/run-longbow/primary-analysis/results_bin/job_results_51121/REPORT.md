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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        feducyrs    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High               0       49     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     High               1        3     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                0       37     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                1        1     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium             0       52     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium             1        2     144
Birth       ki0047075b-MAL-ED          INDIA                          High               0       38     123
Birth       ki0047075b-MAL-ED          INDIA                          High               1        0     123
Birth       ki0047075b-MAL-ED          INDIA                          Low                0       48     123
Birth       ki0047075b-MAL-ED          INDIA                          Low                1        2     123
Birth       ki0047075b-MAL-ED          INDIA                          Medium             0       34     123
Birth       ki0047075b-MAL-ED          INDIA                          Medium             1        1     123
Birth       ki0047075b-MAL-ED          NEPAL                          High               0       27      67
Birth       ki0047075b-MAL-ED          NEPAL                          High               1        0      67
Birth       ki0047075b-MAL-ED          NEPAL                          Low                0       18      67
Birth       ki0047075b-MAL-ED          NEPAL                          Low                1        1      67
Birth       ki0047075b-MAL-ED          NEPAL                          Medium             0       18      67
Birth       ki0047075b-MAL-ED          NEPAL                          Medium             1        3      67
Birth       ki0047075b-MAL-ED          PERU                           High               0      113     236
Birth       ki0047075b-MAL-ED          PERU                           High               1        3     236
Birth       ki0047075b-MAL-ED          PERU                           Low                0       63     236
Birth       ki0047075b-MAL-ED          PERU                           Low                1        2     236
Birth       ki0047075b-MAL-ED          PERU                           Medium             0       54     236
Birth       ki0047075b-MAL-ED          PERU                           Medium             1        1     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       35      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0       30      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       26      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        0      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0       62     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        3     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       27     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1        2     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0        6     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        1     101
Birth       ki1000304b-SAS-CompFeed    INDIA                          High               0       34     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          High               1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                0       73     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                1        6     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium             0       69     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium             1        5     187
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High               0        8      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High               1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                0       12      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0        6      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1        1      27
Birth       ki1119695-PROBIT           BELARUS                        High               0     2058   13416
Birth       ki1119695-PROBIT           BELARUS                        High               1        0   13416
Birth       ki1119695-PROBIT           BELARUS                        Low                0     5315   13416
Birth       ki1119695-PROBIT           BELARUS                        Low                1        1   13416
Birth       ki1119695-PROBIT           BELARUS                        Medium             0     6038   13416
Birth       ki1119695-PROBIT           BELARUS                        Medium             1        4   13416
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High               0      946   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High               1       30   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                0     2183   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       93   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0     9903   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1      305   13460
Birth       ki1135781-COHORTS          GUATEMALA                      High               0      152     804
Birth       ki1135781-COHORTS          GUATEMALA                      High               1        3     804
Birth       ki1135781-COHORTS          GUATEMALA                      Low                0      348     804
Birth       ki1135781-COHORTS          GUATEMALA                      Low                1        7     804
Birth       ki1135781-COHORTS          GUATEMALA                      Medium             0      293     804
Birth       ki1135781-COHORTS          GUATEMALA                      Medium             1        1     804
Birth       ki1135781-COHORTS          INDIA                          High               0      516    1354
Birth       ki1135781-COHORTS          INDIA                          High               1       11    1354
Birth       ki1135781-COHORTS          INDIA                          Low                0      431    1354
Birth       ki1135781-COHORTS          INDIA                          Low                1        8    1354
Birth       ki1135781-COHORTS          INDIA                          Medium             0      379    1354
Birth       ki1135781-COHORTS          INDIA                          Medium             1        9    1354
Birth       ki1135781-COHORTS          PHILIPPINES                    High               0     1020    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    High               1        7    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                0      810    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                1       17    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium             0     1000    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium             1       19    2873
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               0     3568   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               1      276   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                0     7525   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                1      943   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     5837   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      714   18863
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               0       48     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               1        5     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                0      306     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                1       27     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             0       60     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             1        5     451
6 months    ki0047075b-MAL-ED          BANGLADESH                     High               0       49     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High               1        1     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                0       34     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                1        2     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium             0       45     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium             1        1     132
6 months    ki0047075b-MAL-ED          INDIA                          High               0       43     138
6 months    ki0047075b-MAL-ED          INDIA                          High               1        0     138
6 months    ki0047075b-MAL-ED          INDIA                          Low                0       52     138
6 months    ki0047075b-MAL-ED          INDIA                          Low                1        2     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium             0       40     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium             1        1     138
6 months    ki0047075b-MAL-ED          NEPAL                          High               0       40      95
6 months    ki0047075b-MAL-ED          NEPAL                          High               1        0      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low                0       27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low                1        0      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium             0       27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium             1        1      95
6 months    ki0047075b-MAL-ED          PERU                           High               0      104     224
6 months    ki0047075b-MAL-ED          PERU                           High               1        3     224
6 months    ki0047075b-MAL-ED          PERU                           Low                0       56     224
6 months    ki0047075b-MAL-ED          PERU                           Low                1        4     224
6 months    ki0047075b-MAL-ED          PERU                           Medium             0       55     224
6 months    ki0047075b-MAL-ED          PERU                           Medium             1        2     224
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       33      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        0      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0       35      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        0      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       24      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        0      92
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0      119     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        8     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       53     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1        2     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0       17     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        2     201
6 months    ki1000304b-SAS-CompFeed    INDIA                          High               0      326    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          High               1       22    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                0      481    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                1       69    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium             0      398    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium             1       37    1333
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High               0       93     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High               1        8     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                0      113     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                1       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium             0      120     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium             1       27     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     High               0      201     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     High               1        2     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                0      192     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                1        9     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium             0      176     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium             1        3     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High               0      272     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High               1        7     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                0      216     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                1        7     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0      204     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1        9     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0      366    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        5    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0     1074    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        9    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0      559    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        5    2018
6 months    ki1113344-GMS-Nepal        NEPAL                          High               0      134     562
6 months    ki1113344-GMS-Nepal        NEPAL                          High               1        2     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                0      227     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                1       16     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             0      181     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             1        2     562
6 months    ki1119695-PROBIT           BELARUS                        High               0     2490   15211
6 months    ki1119695-PROBIT           BELARUS                        High               1       23   15211
6 months    ki1119695-PROBIT           BELARUS                        Low                0     5849   15211
6 months    ki1119695-PROBIT           BELARUS                        Low                1      113   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium             0     6646   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium             1       90   15211
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High               0      542    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High               1       14    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                0     1338    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       66    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0     5853    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1      250    8063
6 months    ki1135781-COHORTS          GUATEMALA                      High               0      140     904
6 months    ki1135781-COHORTS          GUATEMALA                      High               1       25     904
6 months    ki1135781-COHORTS          GUATEMALA                      Low                0      352     904
6 months    ki1135781-COHORTS          GUATEMALA                      Low                1       54     904
6 months    ki1135781-COHORTS          GUATEMALA                      Medium             0      294     904
6 months    ki1135781-COHORTS          GUATEMALA                      Medium             1       39     904
6 months    ki1135781-COHORTS          INDIA                          High               0      533    1385
6 months    ki1135781-COHORTS          INDIA                          High               1       11    1385
6 months    ki1135781-COHORTS          INDIA                          Low                0      428    1385
6 months    ki1135781-COHORTS          INDIA                          Low                1       22    1385
6 months    ki1135781-COHORTS          INDIA                          Medium             0      380    1385
6 months    ki1135781-COHORTS          INDIA                          Medium             1       11    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    High               0      862    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    High               1       29    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                0      699    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                1       47    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium             0      879    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium             1       48    2564
6 months    ki1148112-LCNI-5           MALAWI                         High               0      226     812
6 months    ki1148112-LCNI-5           MALAWI                         High               1       25     812
6 months    ki1148112-LCNI-5           MALAWI                         Low                0      264     812
6 months    ki1148112-LCNI-5           MALAWI                         Low                1       26     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium             0      257     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium             1       14     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High               0     4131   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High               1      148   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                0     5855   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                1      449   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     5188   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      361   16132
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               0      333    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               1       13    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                0     1886    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                1      108    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             0      374    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             1       32    2746
24 months   ki0047075b-MAL-ED          BANGLADESH                     High               0       39     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     High               1        1     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                0       32     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                1        3     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium             0       36     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium             1        6     117
24 months   ki0047075b-MAL-ED          INDIA                          High               0       38     132
24 months   ki0047075b-MAL-ED          INDIA                          High               1        4     132
24 months   ki0047075b-MAL-ED          INDIA                          Low                0       42     132
24 months   ki0047075b-MAL-ED          INDIA                          Low                1        9     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium             0       36     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium             1        3     132
24 months   ki0047075b-MAL-ED          NEPAL                          High               0       38      91
24 months   ki0047075b-MAL-ED          NEPAL                          High               1        0      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low                0       27      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low                1        0      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium             0       25      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium             1        1      91
24 months   ki0047075b-MAL-ED          PERU                           High               0       73     164
24 months   ki0047075b-MAL-ED          PERU                           High               1        4     164
24 months   ki0047075b-MAL-ED          PERU                           Low                0       41     164
24 months   ki0047075b-MAL-ED          PERU                           Low                1        3     164
24 months   ki0047075b-MAL-ED          PERU                           Medium             0       40     164
24 months   ki0047075b-MAL-ED          PERU                           Medium             1        3     164
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       32      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        2      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0       30      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        4      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       20      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        3      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0       82     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1       32     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       30     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1       17     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0       11     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        5     177
24 months   ki1017093b-PROVIDE         BANGLADESH                     High               0      195     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     High               1        7     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                0      170     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                1       26     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium             0      163     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium             1       16     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High               0      196     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High               1       15     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                0      134     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                1       10     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0      149     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1       10     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High               0      109     498
24 months   ki1113344-GMS-Nepal        NEPAL                          High               1        7     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                0      194     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                1       27     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             0      141     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             1       20     498
24 months   ki1119695-PROBIT           BELARUS                        High               0      621    3913
24 months   ki1119695-PROBIT           BELARUS                        High               1        6    3913
24 months   ki1119695-PROBIT           BELARUS                        Low                0     1484    3913
24 months   ki1119695-PROBIT           BELARUS                        Low                1       32    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium             0     1745    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium             1       25    3913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High               0       18     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High               1        1     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                0       72     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       33     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0      223     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1       87     434
24 months   ki1135781-COHORTS          GUATEMALA                      High               0      101     995
24 months   ki1135781-COHORTS          GUATEMALA                      High               1       76     995
24 months   ki1135781-COHORTS          GUATEMALA                      Low                0      257     995
24 months   ki1135781-COHORTS          GUATEMALA                      Low                1      207     995
24 months   ki1135781-COHORTS          GUATEMALA                      Medium             0      212     995
24 months   ki1135781-COHORTS          GUATEMALA                      Medium             1      142     995
24 months   ki1135781-COHORTS          INDIA                          High               0      482    1380
24 months   ki1135781-COHORTS          INDIA                          High               1       57    1380
24 months   ki1135781-COHORTS          INDIA                          Low                0      325    1380
24 months   ki1135781-COHORTS          INDIA                          Low                1      125    1380
24 months   ki1135781-COHORTS          INDIA                          Medium             0      333    1380
24 months   ki1135781-COHORTS          INDIA                          Medium             1       58    1380
24 months   ki1135781-COHORTS          PHILIPPINES                    High               0      674    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    High               1      124    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                0      416    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                1      276    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium             0      566    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium             1      258    2314
24 months   ki1148112-LCNI-5           MALAWI                         High               0      156     571
24 months   ki1148112-LCNI-5           MALAWI                         High               1       17     571
24 months   ki1148112-LCNI-5           MALAWI                         Low                0      180     571
24 months   ki1148112-LCNI-5           MALAWI                         Low                1       23     571
24 months   ki1148112-LCNI-5           MALAWI                         Medium             0      170     571
24 months   ki1148112-LCNI-5           MALAWI                         Medium             1       25     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               0     1886    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               1      184    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                0     2735    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                1      644    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     2399    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      445    8293
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               0      309    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               1       24    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                0     1802    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                1      161    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             0      357    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             1       41    2694


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/73213ad0-79a4-4b43-b856-22638c981725/e446f985-5d81-4d8c-bfdb-f45371233068/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/73213ad0-79a4-4b43-b856-22638c981725/e446f985-5d81-4d8c-bfdb-f45371233068/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/73213ad0-79a4-4b43-b856-22638c981725/e446f985-5d81-4d8c-bfdb-f45371233068/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/73213ad0-79a4-4b43-b856-22638c981725/e446f985-5d81-4d8c-bfdb-f45371233068/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0324342    0.0279050   0.0369635
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0325077    0.0286137   0.0364018
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0314444    0.0284078   0.0344810
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.0208729    0.0086629   0.0330828
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.0182232    0.0057064   0.0307401
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.0231959    0.0082128   0.0381790
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0068160    0.0017831   0.0118489
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0205562    0.0108839   0.0302286
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0186457    0.0103388   0.0269526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1011432    0.0953166   0.1069699
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1028205    0.0976991   0.1079418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1038072    0.0985370   0.1090775
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0943396    0.0339904   0.1546888
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0810811    0.0483586   0.1138036
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0769231   -0.0043285   0.1581746
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0620385    0.0368775   0.0871995
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1238353    0.1015698   0.1461008
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0856959    0.0565446   0.1148472
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.0792079    0.0264698   0.1319460
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1439394    0.0839775   0.2039013
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1836735    0.1209952   0.2463517
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0250896    0.0067251   0.0434541
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0313901    0.0084883   0.0542920
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0422535    0.0152190   0.0692881
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0134771    0.0017411   0.0252131
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0083102    0.0029023   0.0137182
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0088652    0.0011273   0.0166032
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0092830    0.0051447   0.0134213
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0185437    0.0104194   0.0266681
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0135395    0.0082888   0.0187903
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0260026    0.0127741   0.0392311
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0461625    0.0350964   0.0572285
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0410905    0.0361090   0.0460720
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1614792    0.1006004   0.2223580
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1251161    0.0916111   0.1586211
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1219982    0.0858285   0.1581679
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0179313    0.0072128   0.0286498
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0424281    0.0241156   0.0607407
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0268059    0.0111388   0.0424729
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0338345    0.0218763   0.0457927
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0604449    0.0430518   0.0778381
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0529650    0.0386348   0.0672952
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.1006237    0.0630384   0.1382091
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0879763    0.0552313   0.1207213
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0520027    0.0253898   0.0786156
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0494498    0.0424634   0.0564362
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0651525    0.0587698   0.0715353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0593266    0.0527573   0.0658959
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0347648    0.0166893   0.0528403
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0566989    0.0469596   0.0664382
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0727088    0.0464393   0.0989784
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2807018    0.1979832   0.3634203
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3617021    0.2239442   0.4994601
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3125000    0.0847388   0.5402612
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0346535    0.0094091   0.0598978
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1326531    0.0851248   0.1801813
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0893855    0.0475544   0.1312165
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0747666    0.0403618   0.1091715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0657466    0.0238212   0.1076721
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0628934    0.0246425   0.1011443
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0603448    0.0169678   0.1037219
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1221719    0.0789525   0.1653914
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1242236    0.0732236   0.1752236
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0095694   -0.0042112   0.0233499
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0211082    0.0002353   0.0419810
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0141243    0.0011297   0.0271189
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4252172    0.3522210   0.4982134
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4308684    0.3862912   0.4754455
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4154912    0.3642507   0.4667318
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1113262    0.0851028   0.1375496
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.2496602    0.2107454   0.2885750
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1516544    0.1146651   0.1886436
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1807669    0.1553001   0.2062336
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3655979    0.3302590   0.4009369
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.3102711    0.2789980   0.3415442
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.1045401    0.0602058   0.1488744
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.1169419    0.0735049   0.1603788
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1349307    0.0880215   0.1818398
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1252743    0.1087308   0.1418178
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1702333    0.1568353   0.1836313
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1507548    0.1360924   0.1654173
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0718461    0.0406562   0.1030360
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0826479    0.0673712   0.0979247
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0996121    0.0619445   0.1372798


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0317979   0.0288336   0.0347622
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0206795   0.0130966   0.0282623
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0149669   0.0105263   0.0194076
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1024757   0.0976627   0.1072888
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0820399   0.0540196   0.1100602
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0960240   0.0777684   0.1142796
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0094153   0.0052007   0.0136299
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0148577   0.0096205   0.0200949
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0409277   0.0366029   0.0452524
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1305310   0.1085580   0.1525039
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0317690   0.0225290   0.0410089
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0483619   0.0400565   0.0566674
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0800493   0.0613726   0.0987259
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0593851   0.0553716   0.0633986
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0557174   0.0473621   0.0640727
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3050847   0.2370598   0.3731096
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1084337   0.0810981   0.1357694
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0161002   0.0033894   0.0288110
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4271357   0.3963844   0.4578870
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1739130   0.1539078   0.1939183
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2843561   0.2659721   0.3027401
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1138354   0.0877614   0.1399093
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1535030   0.1445839   0.1624220
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0838901   0.0710207   0.0967596


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0022655   0.8729566    1.1507285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9694814   0.8612873    1.0912668
Birth       ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              0.8730586   0.3541786    2.1521100
Birth       ki1135781-COHORTS          INDIA                          Medium               High              1.1112933   0.4649040    2.6564042
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              3.0158921   1.2564898    7.2389007
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              2.7355950   1.1548408    6.4800967
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0165829   0.9749653    1.0599770
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0263387   0.9829796    1.0716104
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.8594595   0.4024736    1.8353269
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.8153846   0.2520576    2.6376993
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.9961049   1.3752213    2.8973045
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.3813347   0.8388039    2.2747697
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.8172348   0.8285460    3.9857080
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              2.3188776   1.0973616    4.9001104
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.2511211   0.4451121    3.5166512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.6841046   0.6370276    4.4522534
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.6166205   0.2079183    1.8287029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.6578014   0.1917037    2.2571436
6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.9976054   1.1105160    3.5933090
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.4585290   0.8188739    2.5978443
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.7753012   1.0117687    3.1150345
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.5802446   0.9368127    2.6656053
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.7748126   0.4885318    1.2288545
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.7555041   0.4686795    1.2178607
6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              2.3661520   1.1308597    4.9508134
6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.4949227   0.6473951    3.4519786
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.7864875   1.1327212    2.8175842
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.5654133   1.0034864    2.4420050
6 months    ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              0.8743097   0.5159252    1.4816441
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              0.5168038   0.2741260    0.9743191
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3175485   1.1193616    1.5508250
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1997327   1.0123944    1.4217371
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.6309285   0.9387742    2.8334051
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              2.0914496   1.1049521    3.9586889
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2885638   0.7961042    2.0856524
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1132812   0.5072030    2.4435882
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              3.8279883   1.6998126    8.6206533
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              2.5794094   1.0851439    6.1313093
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              0.8793580   0.4018606    1.9242256
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.8411956   0.3962176    1.7859130
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              2.0245637   0.9086465    4.5109492
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              2.0585626   0.8996117    4.7105652
24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              2.2058047   0.3380238   14.3941793
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.4759887   0.2744753    7.9371184
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0132901   0.8312150    1.2352482
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9771271   0.7931100    1.2038397
24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.2426008   1.6967848    2.9639929
24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.3622523   0.9721001    1.9089919
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              2.0224831   1.7090639    2.3933792
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.7164158   1.4476150    2.0351288
24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.1186319   0.6362147    1.9668476
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.2907075   0.7444761    2.2377156
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3588842   1.1716575    1.5760291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.2033977   1.0284786    1.4080663
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1503468   0.7163383    1.8473084
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.3864655   0.7786498    2.4687434


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0006363   -0.0040688   0.0027962
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0001934   -0.0097082   0.0093214
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0081510    0.0029606   0.0133414
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0013325   -0.0019955   0.0046605
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0122997   -0.0710565   0.0464571
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0339855    0.0137790   0.0541921
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0628973    0.0125139   0.1132808
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0070782   -0.0084639   0.0226203
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0040618   -0.0143016   0.0061780
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0055747   -0.0003114   0.0114608
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0149251    0.0018902   0.0279599
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0309482   -0.0860687   0.0241722
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0138377    0.0037571   0.0239183
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0145274    0.0038000   0.0252549
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0205745   -0.0505881   0.0094392
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0099352    0.0037000   0.0161705
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0209526    0.0029892   0.0389160
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0243830   -0.0271520   0.0759180
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0502685    0.0236351   0.0769019
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0066733   -0.0325420   0.0191955
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0480889    0.0062290   0.0899488
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0065308   -0.0114833   0.0245449
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0019185   -0.0637854   0.0676224
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0625869    0.0392355   0.0859382
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1035892    0.0808100   0.1263685
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0092953   -0.0290101   0.0476007
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0282286    0.0132064   0.0432508
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0120440   -0.0181184   0.0422064


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0200111   -0.1339006   0.0824394
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0093521   -0.5922383   0.3601512
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.5445982    0.1054980   0.7681494
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0130031   -0.0200134   0.0449508
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1499235   -1.1642819   0.3890241
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3539275    0.1039877   0.5341473
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.4426109   -0.0267209   0.6974031
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2200405   -0.4347783   0.5760064
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4314087   -2.0243888   0.3225306
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.3752057   -0.0312952   0.6214780
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3646695   -0.0449924   0.6137342
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.2370950   -0.7387570   0.1198287
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.4355723    0.0521351   0.6638987
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3003897    0.0475392   0.4861158
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.2570227   -0.6885723   0.0642355
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1673020    0.0562930   0.2652530
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.3760514   -0.0335369   0.6233208
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0799220   -0.1052818   0.2340926
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.5919378    0.2013461   0.7915057
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0980016   -0.5521926   0.2232874
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.4434866   -0.0854430   0.7146721
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.4056353   -1.9090987   0.8785640
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0044915   -0.1618603   0.1470255
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.3598744    0.2167990   0.4768128
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3642941    0.2816735   0.4374118
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0816554   -0.3230603   0.3625712
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1838963    0.0806864   0.2755190
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1435690   -0.2998118   0.4357076
