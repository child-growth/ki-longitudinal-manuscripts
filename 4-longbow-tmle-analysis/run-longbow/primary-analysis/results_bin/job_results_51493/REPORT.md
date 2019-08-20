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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        feducyrs    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ---------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       50     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1        4     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       33     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1        6     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       45     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1        9     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High              0       36     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High              1        8     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low               0       46     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low               1       13     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       36     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium            1        8     147
0-24 months   ki0047075b-MAL-ED          NEPAL                          High              0       39      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          High              1        3      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       26      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low               1        2      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       22      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        6      98
0-24 months   ki0047075b-MAL-ED          PERU                           High              0      116     250
0-24 months   ki0047075b-MAL-ED          PERU                           High              1        4     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low               0       68     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low               1        1     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium            0       58     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium            1        3     250
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       40     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        3     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       34     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        3     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       27     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        3     110
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0      120     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1       10     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       54     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        7     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       20     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     211
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High              0      327    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High              1       59    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low               0      457    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low               1      186    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium            0      377    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium            1      104    1510
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High              0       76     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High              1       34     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low               0       92     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low               1       55     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       95     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1       66     418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      213     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1       19     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      193     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1       45     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      204     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1       26     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      279     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1       17     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      212     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       30     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      196     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       24     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      434    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       15    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0     1202    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1       68    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      629    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       35    2383
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High              0      109     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       38     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      163     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1       94     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0      136     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       61     601
0-24 months   ki1119695-PROBIT           BELARUS                        High              0     2705   16314
0-24 months   ki1119695-PROBIT           BELARUS                        High              1        2   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low               0     6399   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low               1       19   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium            0     7184   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium            1        5   16314
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0      965   13558
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1       27   13558
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2131   13558
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      151   13558
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     9911   13558
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      373   13558
0-24 months   ki1135781-COHORTS          GUATEMALA                      High              0      203    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      High              1       28    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low               0      497    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low               1       61    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0      395    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1       50    1234
0-24 months   ki1135781-COHORTS          INDIA                          High              0      538    1447
0-24 months   ki1135781-COHORTS          INDIA                          High              1       29    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low               0      412    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low               1       60    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium            0      388    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium            1       20    1447
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      916    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High              1      112    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      619    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1      207    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      803    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1      211    2868
0-24 months   ki1148112-LCNI-5           MALAWI                         High              0      239     813
0-24 months   ki1148112-LCNI-5           MALAWI                         High              1       12     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low               0      274     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low               1       17     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      259     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium            1       12     813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     6067   25943
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      407   25943
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     9564   25943
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1     1056   25943
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     8031   25943
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      818   25943
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0      333    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1       54    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1871    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      366    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      377    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       77    3078
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High              0       52     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High              1        2     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               0       38     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               1        1     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            0       53     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            1        1     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High              0       42     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High              1        2     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low               0       56     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low               1        3     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       42     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium            1        2     147
0-6 months    ki0047075b-MAL-ED          NEPAL                          High              0       40      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          High              1        2      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low               0       28      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low               1        0      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium            0       26      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium            1        2      98
0-6 months    ki0047075b-MAL-ED          PERU                           High              0      120     250
0-6 months    ki0047075b-MAL-ED          PERU                           High              1        0     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low               0       69     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low               1        0     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium            0       61     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium            1        0     250
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       42     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        1     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       37     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        0     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       30     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        0     110
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0      128     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        2     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       60     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        1     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       20     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     211
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High              0      370    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High              1       14    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               0      587    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               1       53    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            0      438    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            1       39    1501
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              0      104     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              1        6     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               0      136     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               1       10     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0      144     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1       16     416
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      224     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1        8     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      225     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1       13     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      221     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1        9     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              0      291     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              1        5     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      234     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        8     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      216     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        4     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      447    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        2    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0     1255    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1       15    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      662    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        2    2383
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High              0      139     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High              1        8     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      247     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1       10     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0      191     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1        6     601
0-6 months    ki1119695-PROBIT           BELARUS                        High              0     2706   16310
0-6 months    ki1119695-PROBIT           BELARUS                        High              1        1   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low               0     6404   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low               1       14   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium            0     7182   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium            1        3   16310
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0      978   13465
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1        7   13465
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2228   13465
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       36   13465
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0    10096   13465
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      120   13465
0-6 months    ki1135781-COHORTS          GUATEMALA                      High              0      187     996
0-6 months    ki1135781-COHORTS          GUATEMALA                      High              1        3     996
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low               0      433     996
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low               1        9     996
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium            0      359     996
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium            1        5     996
0-6 months    ki1135781-COHORTS          INDIA                          High              0      547    1417
0-6 months    ki1135781-COHORTS          INDIA                          High              1       10    1417
0-6 months    ki1135781-COHORTS          INDIA                          Low               0      446    1417
0-6 months    ki1135781-COHORTS          INDIA                          Low               1       12    1417
0-6 months    ki1135781-COHORTS          INDIA                          Medium            0      395    1417
0-6 months    ki1135781-COHORTS          INDIA                          Medium            1        7    1417
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High              0     1011    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High              1       17    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low               0      804    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low               1       22    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            0      991    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            1       22    2867
0-6 months    ki1148112-LCNI-5           MALAWI                         High              0       73     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High              1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low               0      104     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low               1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium            0       90     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium            1        0     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     6262   25845
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1      182   25845
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0    10132   25845
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1      448   25845
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     8442   25845
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      379   25845
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0      356    2888
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1        2    2888
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     2040    2888
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1       64    2888
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      416    2888
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       10    2888
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       45     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1        3     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       31     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1        6     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       37     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1        9     131
6-24 months   ki0047075b-MAL-ED          INDIA                          High              0       36     137
6-24 months   ki0047075b-MAL-ED          INDIA                          High              1        7     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Low               0       41     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Low               1       13     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       32     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium            1        8     137
6-24 months   ki0047075b-MAL-ED          NEPAL                          High              0       38      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          High              1        1      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       25      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low               1        2      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       23      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        5      94
6-24 months   ki0047075b-MAL-ED          PERU                           High              0      102     223
6-24 months   ki0047075b-MAL-ED          PERU                           High              1        4     223
6-24 months   ki0047075b-MAL-ED          PERU                           Low               0       59     223
6-24 months   ki0047075b-MAL-ED          PERU                           Low               1        1     223
6-24 months   ki0047075b-MAL-ED          PERU                           Medium            0       54     223
6-24 months   ki0047075b-MAL-ED          PERU                           Medium            1        3     223
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       34      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        2      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       33      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        3      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       21      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        3      96
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0      119     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        9     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       49     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        6     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       19     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     202
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High              0      317    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High              1       53    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low               0      402    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low               1      170    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium            0      355    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium            1       89    1386
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High              0       75     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High              1       32     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low               0       89     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low               1       51     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       92     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1       62     401
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      198     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1       16     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      168     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1       39     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      173     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1       20     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      273     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1       13     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      202     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       27     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      192     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       23     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      361    2008
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       14    2008
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0     1008    2008
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1       63    2008
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      527    2008
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       35    2008
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High              0      108     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       37     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      160     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1       93     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0      131     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       60     589
6-24 months   ki1119695-PROBIT           BELARUS                        High              0     2635   16027
6-24 months   ki1119695-PROBIT           BELARUS                        High              1        1   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Low               0     6315   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Low               1        6   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Medium            0     7068   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Medium            1        2   16027
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0      686   10385
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1       21   10385
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1670   10385
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      121   10385
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     7622   10385
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      265   10385
6-24 months   ki1135781-COHORTS          GUATEMALA                      High              0      184    1124
6-24 months   ki1135781-COHORTS          GUATEMALA                      High              1       26    1124
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low               0      454    1124
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low               1       57    1124
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0      357    1124
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1       46    1124
6-24 months   ki1135781-COHORTS          INDIA                          High              0      525    1405
6-24 months   ki1135781-COHORTS          INDIA                          High              1       24    1405
6-24 months   ki1135781-COHORTS          INDIA                          Low               0      403    1405
6-24 months   ki1135781-COHORTS          INDIA                          Low               1       56    1405
6-24 months   ki1135781-COHORTS          INDIA                          Medium            0      379    1405
6-24 months   ki1135781-COHORTS          INDIA                          Medium            1       18    1405
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      817    2654
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High              1      105    2654
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      577    2654
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1      201    2654
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      751    2654
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1      203    2654
6-24 months   ki1148112-LCNI-5           MALAWI                         High              0      235     802
6-24 months   ki1148112-LCNI-5           MALAWI                         High              1       12     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Low               0      272     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Low               1       17     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      254     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium            1       12     802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     4144   16590
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      245   16590
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     5792   16590
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1      693   16590
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     5219   16590
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      497   16590
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0      333    3071
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1       54    3071
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1907    3071
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      324    3071
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      381    3071
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       72    3071


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/9e3afadc-593e-43c2-8598-6c22bcd37a4e/98f7035e-a62e-4d9d-840b-838c3061a10c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9e3afadc-593e-43c2-8598-6c22bcd37a4e/98f7035e-a62e-4d9d-840b-838c3061a10c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9e3afadc-593e-43c2-8598-6c22bcd37a4e/98f7035e-a62e-4d9d-840b-838c3061a10c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9e3afadc-593e-43c2-8598-6c22bcd37a4e/98f7035e-a62e-4d9d-840b-838c3061a10c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1818182   0.0674652   0.2961712
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2203390   0.1142176   0.3264604
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1818182   0.0674652   0.2961712
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1801765   0.1535653   0.2067877
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2693262   0.2124223   0.3262300
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2145458   0.1691191   0.2599725
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3061497   0.2186374   0.3936619
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3658323   0.2873195   0.4443452
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4096831   0.3333034   0.4860627
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0881257   0.0527313   0.1235202
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1882458   0.1379156   0.2385759
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1079956   0.0674656   0.1485256
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0585152   0.0320512   0.0849793
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1238013   0.0820544   0.1655482
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1103014   0.0688878   0.1517149
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0334078   0.0166125   0.0502032
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0533989   0.0409889   0.0658089
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0528142   0.0356987   0.0699298
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2727224   0.1994666   0.3459782
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3620016   0.3026702   0.4213330
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3066825   0.2401692   0.3731958
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0279082   0.0173283   0.0384881
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0685136   0.0567928   0.0802343
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0367794   0.0329836   0.0405753
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1319598   0.0858216   0.1780980
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1077766   0.0818821   0.1336711
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1130146   0.0828123   0.1432168
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0536918   0.0347576   0.0726261
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1207251   0.0907347   0.1507156
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0493048   0.0273654   0.0712443
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1230127   0.1033020   0.1427235
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2350543   0.2061629   0.2639457
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2058379   0.1808870   0.2307888
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0463719   0.0205130   0.0722307
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0588589   0.0317043   0.0860135
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0431775   0.0192114   0.0671437
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0829570   0.0746965   0.0912174
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0919953   0.0863775   0.0976131
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0885156   0.0821522   0.0948790
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1401220   0.0972545   0.1829895
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1627121   0.1445843   0.1808399
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1730957   0.1338646   0.2123268
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0352695   0.0173263   0.0532127
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.0822565   0.0523244   0.1121887
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0804173   0.0511684   0.1096661
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.0545455   0.0120567   0.0970342
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.0684932   0.0274717   0.1095146
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1000000   0.0534594   0.1465406
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0344828   0.0109867   0.0579788
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0546218   0.0257313   0.0835124
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0391304   0.0140529   0.0642079
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0544218   0.0177201   0.0911235
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.0389105   0.0152481   0.0625729
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0304569   0.0064407   0.0544730
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0071066   0.0018606   0.0123526
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0159011   0.0107481   0.0210540
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0117463   0.0096569   0.0138356
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0179533   0.0069224   0.0289843
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0262009   0.0115669   0.0408348
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0174129   0.0046218   0.0302041
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0168034   0.0088122   0.0247946
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0260276   0.0152200   0.0368352
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0227418   0.0133239   0.0321597
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0365117   0.0314130   0.0416104
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0396924   0.0361637   0.0432211
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0400626   0.0359937   0.0441314
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1627907   0.0520425   0.2735389
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2407407   0.1262918   0.3551897
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2000000   0.0755861   0.3244139
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1696898   0.1377733   0.2016063
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2730839   0.2245190   0.3216488
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2021590   0.1618324   0.2424857
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3129626   0.2238561   0.4020691
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3641709   0.2843413   0.4440006
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4045084   0.3263800   0.4826367
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0811358   0.0455391   0.1167324
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1820781   0.1283210   0.2358351
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0985621   0.0557980   0.1413261
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0463279   0.0221904   0.0704653
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1132011   0.0712252   0.1551770
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1057604   0.0639340   0.1475867
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0372092   0.0180521   0.0563662
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0586257   0.0445206   0.0727309
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0625185   0.0423578   0.0826791
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2626716   0.1904146   0.3349287
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3616092   0.3019726   0.4212459
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3162740   0.2486729   0.3838751
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0314233   0.0172651   0.0455815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0694671   0.0561955   0.0827387
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0337603   0.0296911   0.0378296
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1338283   0.0864484   0.1812083
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1086745   0.0813651   0.1359840
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1154776   0.0836071   0.1473482
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0450204   0.0273784   0.0626623
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1162890   0.0866526   0.1459253
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0440519   0.0239205   0.0641833
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1294921   0.1082269   0.1507572
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2420642   0.2119560   0.2721724
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2103784   0.1847527   0.2360041
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0484307   0.0214923   0.0753691
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0592837   0.0317552   0.0868123
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0447393   0.0198818   0.0695968
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0735147   0.0642285   0.0828010
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0970792   0.0895339   0.1046245
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0859780   0.0779951   0.0939609
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1345827   0.0924945   0.1766709
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1459274   0.1281051   0.1637496
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1616660   0.1225362   0.2007959


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1972789   0.1327292   0.2618286
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2311258   0.1911027   0.2711489
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0495174   0.0408052   0.0582296
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3211314   0.2837715   0.3584914
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0406402   0.0373164   0.0439640
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1126418   0.0949950   0.1302886
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0753283   0.0617252   0.0889313
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1847978   0.1705903   0.1990052
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0504305   0.0353790   0.0654820
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0879235   0.0839809   0.0918662
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1614685   0.1457688   0.1771681
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0706196   0.0480792   0.0931600
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.0769231   0.0512858   0.1025603
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0399334   0.0242662   0.0556006
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0121055   0.0102583   0.0139526
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0204658   0.0130911   0.0278404
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0212766   0.0159935   0.0265597
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0390404   0.0364968   0.0415841
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2043796   0.1366076   0.2721516
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2251082   0.1905625   0.2596539
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0557769   0.0457368   0.0658170
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3225806   0.2847967   0.3603646
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0391911   0.0354588   0.0429235
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1147687   0.0961264   0.1334109
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0697509   0.0564268   0.0830750
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1917860   0.1768046   0.2067673
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0511222   0.0358697   0.0663747
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0864979   0.0817318   0.0912639
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1465321   0.1312221   0.1618420


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.2118644   0.5488063   2.676017
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.0000000   0.4108786   2.433809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.4947906   1.2921031   1.729273
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1907533   0.9714587   1.459551
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.1949461   0.8357274   1.708567
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.3381791   0.9508736   1.883240
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.1361040   1.3187617   3.460019
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2254716   0.7080261   2.121081
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.1157107   1.2039345   3.718002
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.8850029   1.0468895   3.394089
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.5983935   0.9186291   2.781168
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.5808938   0.8692988   2.874990
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3273628   0.9693425   1.817616
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1245226   0.7967243   1.587188
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              2.4549608   1.6196201   3.721140
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.3178715   0.8896995   1.952103
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8167383   0.5344765   1.248065
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8564319   0.5514683   1.330041
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.2484818   1.4604773   3.461656
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              0.9182929   0.5206074   1.619766
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.9108126   1.5640476   2.334459
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.6733057   1.3720295   2.040737
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.2692797   0.6156596   2.616821
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              0.9311145   0.4236686   2.046350
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1089521   0.9908535   1.241127
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0670064   0.9510904   1.197050
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1612168   0.8433659   1.598861
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2353214   0.8343286   1.829038
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.3322295   1.6689802   3.259053
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              2.2800803   1.2712411   4.089520
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.2557078   0.4700637   3.354443
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.8333333   0.7398793   4.542783
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.5840336   0.6685761   3.752995
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.1347826   0.4453148   2.891733
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.7149805   0.2883483   1.772846
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.5596447   0.1982871   1.579539
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              2.2375063   0.9991746   5.010570
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.6528694   0.7735215   3.531870
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.4593886   0.6361470   3.347992
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              0.9699005   0.3722365   2.527175
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.5489519   0.8238819   2.912131
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.3534071   0.7206722   2.541670
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0871159   0.9320557   1.267972
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0972529   0.9367198   1.285298
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.4788360   0.6448725   3.391300
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.2285714   0.4887082   3.088526
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.6093124   1.3687264   1.892187
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1913447   0.9711720   1.461432
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.1636244   0.8118227   1.667879
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.2925134   0.9158300   1.824128
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.2441160   1.3232266   3.805891
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2147799   0.6568605   2.246581
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.4434785   1.2908059   4.625472
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              2.2828682   1.1874885   4.388663
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.5755726   0.8926062   2.781102
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.6801901   0.9152688   3.084382
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3766588   0.9990723   1.896949
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.2040660   0.8503518   1.704912
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              2.2106880   1.3550863   3.606517
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0743732   0.6738865   1.712867
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8120443   0.5259669   1.253721
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8628789   0.5507847   1.351817
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.5830303   1.6183369   4.122779
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              0.9784884   0.5357565   1.787080
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.8693363   1.5239534   2.292995
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.6246434   1.3273127   1.988579
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.2240938   0.5928375   2.527515
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              0.9237793   0.4207128   2.028386
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3205408   1.1416173   1.527507
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1695343   1.0042626   1.362005
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0842949   0.7790832   1.509076
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2012393   0.8005831   1.802406


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0154607   -0.0815707   0.1124922
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0509493    0.0250941   0.0768046
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0646637   -0.0116150   0.1409425
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0404457    0.0082860   0.0726054
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0351523    0.0109746   0.0593301
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0161096    0.0002058   0.0320134
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0484090   -0.0168526   0.1136706
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0127320    0.0023559   0.0231081
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0193180   -0.0609595   0.0223235
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0216364    0.0049405   0.0383324
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0617850    0.0440780   0.0794921
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0040586   -0.0177582   0.0258754
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0049666   -0.0021641   0.0120972
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0213465   -0.0186340   0.0613269
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0353501    0.0199100   0.0507902
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0223776   -0.0164533   0.0612085
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0083744   -0.0119125   0.0286613
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0144883   -0.0450422   0.0160655
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0049989   -0.0001883   0.0101860
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0025125   -0.0064544   0.0114793
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0044732   -0.0024001   0.0113465
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0025287   -0.0017996   0.0068571
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0415889   -0.0541133   0.1372910
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0554184    0.0311569   0.0796799
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0486334   -0.0292275   0.1264943
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0410141    0.0085378   0.0734904
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0399735    0.0167175   0.0632295
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0185677    0.0003868   0.0367486
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0599090   -0.0044529   0.1242709
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0077678   -0.0060596   0.0215953
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0190596   -0.0617377   0.0236184
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0247305    0.0087410   0.0407201
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0622939    0.0432222   0.0813657
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0026915   -0.0199823   0.0253653
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0129832    0.0046168   0.0213495
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0119494   -0.0273291   0.0512279


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0783699   -0.5709251   0.4592982
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2204397    0.1286840   0.3025329
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1743835   -0.0594761   0.3566230
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3145775    0.0239735   0.5186565
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3752882    0.0751679   0.5780155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3253315   -0.0786547   0.5780136
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1507452   -0.0784989   0.3312615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3132859    0.0058248   0.5256608
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1714992   -0.6054101   0.1451341
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2872285    0.0354602   0.4732792
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3343386    0.2348335   0.4209037
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0804794   -0.4710122   0.4252134
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0564873   -0.0283342   0.1343123
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1322020   -0.1546852   0.3478107
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.5005708    0.2906042   0.6483916
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2909091   -0.4282555   0.6479552
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1954023   -0.4407600   0.5506695
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.3628118   -1.3685912   0.2158816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.4129426   -0.2085827   0.7148425
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.1227636   -0.4419798   0.4663283
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2102419   -0.1829896   0.4727613
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0647724   -0.0531955   0.1695269
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.2034884   -0.4286845   0.5559336
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2461857    0.1431050   0.3368663
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1344965   -0.1098548   0.3250502
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3357686    0.0237599   0.5480585
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.4631852    0.1484739   0.6615839
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3328928   -0.0791471   0.5876076
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1857179   -0.0398937   0.3623817
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1982041   -0.2444575   0.4834081
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1660700   -0.6036399   0.1521043
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.3545551    0.0928939   0.5407382
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3248096    0.2209553   0.4148192
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0526479   -0.5126669   0.4066930
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1500980    0.0480127   0.2412362
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0815478   -0.2298491   0.3140992
