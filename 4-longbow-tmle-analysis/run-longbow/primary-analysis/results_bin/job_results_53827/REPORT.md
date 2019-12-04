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
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       21      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        7      98
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High              0      125     684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       44     684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      197     684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1       95     684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0      160     684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       63     684
0-24 months   ki1119695-PROBIT           BELARUS                        High              0     2705   16314
0-24 months   ki1119695-PROBIT           BELARUS                        High              1        2   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low               0     6399   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low               1       19   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium            0     7184   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium            1        5   16314
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0      965   13564
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1       27   13564
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2131   13564
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      152   13564
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     9909   13564
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      380   13564
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     6064   25939
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      410   25939
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     9558   25939
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1     1058   25939
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     8028   25939
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      821   25939
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0     1104    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1      143    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1580    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      373    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1744    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      332    5276
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
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium            0       25      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium            1        3      98
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High              0      155     684
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High              1       14     684
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      279     684
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1       13     684
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0      214     684
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1        9     684
0-6 months    ki1119695-PROBIT           BELARUS                        High              0     2706   16310
0-6 months    ki1119695-PROBIT           BELARUS                        High              1        1   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low               0     6404   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low               1       14   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium            0     7182   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium            1        3   16310
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0      978   13471
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1        7   13471
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2229   13471
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       36   13471
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0    10101   13471
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      120   13471
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     6259   25841
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1      185   25841
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0    10126   25841
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1      450   25841
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     8439   25841
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      382   25841
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0     1152    4945
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1       23    4945
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1775    4945
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1       56    4945
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1889    4945
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       50    4945
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High              0      106     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       39     589
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0      696   10502
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1       21   10502
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1691   10502
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      122   10502
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     7700   10502
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      272   10502
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
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0     1113    5272
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1      132    5272
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1612    5272
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      340    5272
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1771    5272
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      304    5272


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
![](/tmp/68274e8c-fc44-4f2a-92a0-952e9596627f/c69de80f-fbb2-4e28-aa71-98c95c9a1be9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/68274e8c-fc44-4f2a-92a0-952e9596627f/c69de80f-fbb2-4e28-aa71-98c95c9a1be9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/68274e8c-fc44-4f2a-92a0-952e9596627f/c69de80f-fbb2-4e28-aa71-98c95c9a1be9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/68274e8c-fc44-4f2a-92a0-952e9596627f/c69de80f-fbb2-4e28-aa71-98c95c9a1be9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1818182   0.0674652   0.2961712
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2203390   0.1142176   0.3264604
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1818182   0.0674652   0.2961712
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1799365   0.1513686   0.2085043
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2612924   0.2042131   0.3183717
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2231838   0.1727193   0.2736484
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3094637   0.2219405   0.3969868
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3707408   0.2927998   0.4486818
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4081159   0.3317291   0.4845026
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0858225   0.0505711   0.1210738
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1884161   0.1381030   0.2387292
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1067871   0.0669084   0.1466658
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0559557   0.0293552   0.0825563
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1204742   0.0787750   0.1621734
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1034840   0.0620374   0.1449307
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0330041   0.0162329   0.0497753
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0533447   0.0409459   0.0657435
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0527139   0.0355534   0.0698744
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2719382   0.2050299   0.3388466
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3119170   0.2590164   0.3648177
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2927501   0.2340726   0.3514276
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0281457   0.0174394   0.0388521
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0684145   0.0568689   0.0799601
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0374611   0.0336328   0.0412895
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1362305   0.0896134   0.1828476
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1093960   0.0833471   0.1354450
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1133653   0.0825483   0.1441823
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0527083   0.0341742   0.0712425
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1197316   0.0901591   0.1493042
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0482968   0.0271528   0.0694409
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1222270   0.1025898   0.1418641
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2321271   0.2033970   0.2608572
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2053623   0.1807266   0.2299980
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0453193   0.0200262   0.0706125
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0588294   0.0317223   0.0859365
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0437471   0.0194323   0.0680619
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0806828   0.0723749   0.0889907
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0939840   0.0883095   0.0996585
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0893191   0.0827128   0.0959254
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1235902   0.1015460   0.1456343
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1843288   0.1657335   0.2029242
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1597446   0.1427563   0.1767329
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0352695   0.0173263   0.0532127
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.0822565   0.0523244   0.1121887
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0804173   0.0511684   0.1096661
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.0545455   0.0120567   0.0970342
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.0684932   0.0274717   0.1095146
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1000000   0.0534594   0.1465406
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0344828   0.0109867   0.0579788
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0546218   0.0257313   0.0835124
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0391304   0.0140529   0.0642079
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0828402   0.0412525   0.1244280
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.0445205   0.0208469   0.0681942
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0403587   0.0145102   0.0662073
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0071066   0.0018606   0.0123526
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0158940   0.0107433   0.0210448
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0117405   0.0096522   0.0138289
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0179533   0.0069224   0.0289843
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0262009   0.0115669   0.0408348
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0174129   0.0046218   0.0302041
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0170895   0.0088885   0.0252906
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0255407   0.0147806   0.0363008
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0226692   0.0131385   0.0321998
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0348648   0.0296284   0.0401013
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0406639   0.0369051   0.0444226
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0412666   0.0367473   0.0457859
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0216472   0.0096405   0.0336540
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0291011   0.0208598   0.0373425
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0259938   0.0173288   0.0346588
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1627907   0.0520425   0.2735389
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2407407   0.1262918   0.3551897
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2000000   0.0755861   0.3244139
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1690481   0.1333237   0.2047725
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2627096   0.2126882   0.3127309
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2116934   0.1662057   0.2571812
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3020524   0.2139781   0.3901267
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3599034   0.2806419   0.4391650
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4042317   0.3261805   0.4822830
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0792589   0.0445005   0.1140173
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1876571   0.1337697   0.2415444
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1046047   0.0622074   0.1470020
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0466831   0.0225809   0.0707853
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1198650   0.0782754   0.1614547
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1102757   0.0684690   0.1520824
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0371821   0.0179903   0.0563739
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0585360   0.0444154   0.0726566
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0622880   0.0422352   0.0823409
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2805241   0.2080314   0.3530168
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3544830   0.2967916   0.4121745
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3276441   0.2624179   0.3928703
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0313881   0.0169993   0.0457770
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0699515   0.0568081   0.0830949
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0343587   0.0302720   0.0384453
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1325191   0.0844245   0.1806136
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1105925   0.0832621   0.1379229
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1155838   0.0835989   0.1475688
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0456459   0.0278888   0.0634029
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1194838   0.0893456   0.1496221
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0441069   0.0234543   0.0647595
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1282887   0.1071799   0.1493975
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2399228   0.2099412   0.2699044
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2101172   0.1845946   0.2356397
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0479647   0.0212962   0.0746333
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0595839   0.0320047   0.0871630
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0447004   0.0198271   0.0695736
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0734220   0.0639465   0.0828974
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0977758   0.0902878   0.1052638
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0865567   0.0784448   0.0946686
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1145025   0.0927459   0.1362591
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1682781   0.1502882   0.1862679
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1462715   0.1300570   0.1624861


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1972789   0.1327292   0.2618286
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2311258   0.1911027   0.2711489
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0495174   0.0408052   0.0582296
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2953216   0.2611095   0.3295338
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0412120   0.0378667   0.0445574
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1126418   0.0949950   0.1302886
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0753283   0.0617252   0.0889313
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1847978   0.1705903   0.1990052
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0504305   0.0353790   0.0654820
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0882455   0.0842753   0.0922157
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1607278   0.1492347   0.1722209
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0706196   0.0480792   0.0931600
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.0769231   0.0512858   0.1025603
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0526316   0.0358852   0.0693779
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0121001   0.0102537   0.0139464
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0204658   0.0130911   0.0278404
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0212766   0.0159935   0.0265597
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393561   0.0368043   0.0419078
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0260870   0.0207411   0.0314328
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2043796   0.1366076   0.2721516
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2251082   0.1905625   0.2596539
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0557769   0.0457368   0.0658170
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3259762   0.2880893   0.3638632
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0395163   0.0357901   0.0432425
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1147687   0.0961264   0.1334109
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0697509   0.0564268   0.0830750
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1917860   0.1768046   0.2067673
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0511222   0.0358697   0.0663747
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0864979   0.0817318   0.0912639
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1471927   0.1364565   0.1579289


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.2118644   0.5488063   2.676017
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.0000000   0.4108786   2.433809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.4521372   1.2220103   1.725601
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2403480   0.9692515   1.587269
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.1980108   0.8424387   1.703661
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.3187844   0.9394962   1.851197
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.1954174   1.3457154   3.581632
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2442796   0.7150850   2.165102
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.1530267   1.1956514   3.876986
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.8493911   0.9930330   3.444244
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.6163077   0.9243755   2.826179
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.5971940   0.8733832   2.920858
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.1470143   0.8548750   1.538987
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0765317   0.7878932   1.470911
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              2.4307227   1.6032514   3.685269
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.3309704   0.8976728   1.973416
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8030215   0.5293194   1.218250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8321579   0.5376986   1.287872
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.2715888   1.4780194   3.491237
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              0.9163031   0.5227184   1.606240
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.8991481   1.5530804   2.322329
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.6801718   1.3783615   2.048067
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.2981085   0.6292686   2.677848
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              0.9653066   0.4387942   2.123585
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1648572   1.0382202   1.306941
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1070396   0.9822168   1.247725
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.4914523   1.2189969   1.824804
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2925349   1.0496629   1.591603
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.5374266   0.2586573   1.116641
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.4871877   0.2159127   1.099295
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              2.2365184   0.9987331   5.008360
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.6520608   0.7731430   3.530143
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.4593886   0.6361470   3.347992
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              0.9699005   0.3722365   2.527175
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.4945217   0.7891565   2.830357
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.3264936   0.7011659   2.509513
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1663292   0.9879201   1.376957
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1836175   0.9921325   1.412060
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.3443346   0.7152409   2.526751
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2007894   0.6292270   2.291534
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.4788360   0.6448725   3.391300
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.2285714   0.4887082   3.088526
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.5540522   1.2902311   1.871818
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2522675   0.9755386   1.607496
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.1915265   0.8264235   1.717927
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.3382835   0.9433002   1.898656
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.3676473   1.4013590   4.000227
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.3197850   0.7267807   2.396641
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.5676301   1.3790029   4.780791
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              2.3622181   1.2459022   4.478742
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.5743061   0.8905082   2.783175
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.6752154   0.9119183   3.077410
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2636457   0.9353404   1.707186
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1679715   0.8459965   1.612486
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              2.2285984   1.3578088   3.657843
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0946396   0.6816746   1.757783
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8345403   0.5379956   1.294541
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8722053   0.5524625   1.377002
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.6176249   1.6462673   4.162119
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              0.9662841   0.5256090   1.776425
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.8701786   1.5235208   2.295714
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.6378460   1.3380177   2.004861
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.2422433   0.6024258   2.561591
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              0.9319424   0.4242306   2.047275
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3316974   1.1503616   1.541618
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1788944   1.0090688   1.377301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.4696448   1.1829481   1.825825
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2774522   1.0196960   1.600363


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0154607   -0.0815707   0.1124922
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0511894    0.0197689   0.0826098
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0613497   -0.0148618   0.1375613
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0427490    0.0106890   0.0748090
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0377118    0.0133990   0.0620246
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0165134    0.0006294   0.0323973
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0233834   -0.0349655   0.0817323
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0130663    0.0025655   0.0235671
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0235887   -0.0658178   0.0186404
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0226199    0.0062312   0.0390086
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0625708    0.0449442   0.0801973
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0051112   -0.0162527   0.0264750
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0075627    0.0003785   0.0147468
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0371377    0.0176334   0.0566419
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0353501    0.0199100   0.0507902
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0223776   -0.0164533   0.0612085
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0083744   -0.0119125   0.0286613
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0302087   -0.0641987   0.0037814
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0049935   -0.0001935   0.0101805
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0025125   -0.0064544   0.0114793
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0041871   -0.0028552   0.0112293
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0044912   -0.0000055   0.0089880
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0044397   -0.0058811   0.0147606
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0415889   -0.0541133   0.1372910
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0560601    0.0283322   0.0837881
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0595436   -0.0173936   0.1364808
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0428910    0.0108971   0.0748848
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0396182    0.0163545   0.0628820
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0185948    0.0003850   0.0368045
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0454522   -0.0178594   0.1087637
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0081282   -0.0059316   0.0221879
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0177504   -0.0611133   0.0256125
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0241050    0.0080514   0.0401586
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0634973    0.0445487   0.0824458
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0031575   -0.0193137   0.0256286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0130759    0.0045368   0.0216151
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0326902    0.0132027   0.0521777


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0783699   -0.5709251    0.4592982
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2214783    0.1007267    0.3260158
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1654464   -0.0678169    0.3477536
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3324920    0.0417922    0.5349997
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.4026134    0.0970260    0.6047829
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3334858   -0.0710649    0.5852341
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0791795   -0.1411797    0.2569878
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3170505    0.0099628    0.5288864
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.2094132   -0.6485186    0.1127305
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.3002849    0.0542539    0.4823121
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3385906    0.2395539    0.4247292
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.1013505   -0.4383293    0.4385354
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0857003    0.0003338    0.1637769
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2310593    0.0994395    0.3434424
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.5005708    0.2906042    0.6483916
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2909091   -0.4282555    0.6479552
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1954023   -0.4407600    0.5506695
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.5739645   -1.3399725   -0.0587151
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.4126810   -0.2091214    0.7147155
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.1227636   -0.4419798    0.4663283
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1967918   -0.2080793    0.4659759
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1141183   -0.0083595    0.2217197
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1701890   -0.3437874    0.4875780
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.2034884   -0.4286845    0.5559336
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2490364    0.1245787    0.3558000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1646689   -0.0776014    0.3524711
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3511339    0.0455979    0.5588577
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.4590685    0.1452184    0.6576823
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3333779   -0.0796682    0.5884059
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1394340   -0.0784995    0.3133294
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.2056915   -0.2426675    0.4922810
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1546624   -0.6009610    0.1672219
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.3455870    0.0827866    0.5330897
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3310840    0.2280156    0.4203916
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0617630   -0.4983965    0.4125129
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1511706    0.0467579    0.2441465
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2220910    0.0775831    0.3439599
