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

unadjusted

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
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/bd15269a-944a-4941-aecf-96996e269634/51e57edb-6bbb-477f-8ad0-eacd3a5e9d15/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bd15269a-944a-4941-aecf-96996e269634/51e57edb-6bbb-477f-8ad0-eacd3a5e9d15/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bd15269a-944a-4941-aecf-96996e269634/51e57edb-6bbb-477f-8ad0-eacd3a5e9d15/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bd15269a-944a-4941-aecf-96996e269634/51e57edb-6bbb-477f-8ad0-eacd3a5e9d15/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1818182   0.0674652   0.2961712
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2203390   0.1142176   0.3264604
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1818182   0.0674652   0.2961712
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1528497   0.1210513   0.1846481
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2892691   0.2289782   0.3495599
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2162162   0.1648638   0.2675687
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3090909   0.2226289   0.3955529
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3741497   0.2958306   0.4524687
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4099379   0.3338767   0.4859991
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0818966   0.0465869   0.1172062
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1890756   0.1392930   0.2388583
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1130435   0.0720921   0.1539949
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0574324   0.0309094   0.0839555
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1239669   0.0824199   0.1655140
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1090909   0.0678684   0.1503134
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0334076   0.0167826   0.0500325
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0535433   0.0411599   0.0659267
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0527108   0.0357109   0.0697107
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2603550   0.1941460   0.3265640
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3253425   0.2715667   0.3791182
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2825112   0.2233770   0.3416454
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0272177   0.0170916   0.0373438
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0665791   0.0563528   0.0768054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0369326   0.0332884   0.0405769
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1212121   0.0791072   0.1633171
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1093190   0.0834180   0.1352200
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1123596   0.0830055   0.1417136
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0511464   0.0330074   0.0692854
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1271186   0.0970572   0.1571801
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0490196   0.0280621   0.0699771
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1089494   0.0898996   0.1279992
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2506053   0.2210467   0.2801640
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2080868   0.1830968   0.2330768
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0478088   0.0213972   0.0742203
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0584192   0.0314558   0.0853827
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0442804   0.0197728   0.0687881
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0633302   0.0565773   0.0700832
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0996609   0.0938078   0.1055140
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0927788   0.0858731   0.0996846
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1146752   0.0920436   0.1373068
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1909882   0.1717172   0.2102592
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1599229   0.1424323   0.1774135
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0364583   0.0174427   0.0554740
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.0828125   0.0519489   0.1136761
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0817610   0.0489631   0.1145589
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
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0165370   0.0087398   0.0243341
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0266344   0.0156521   0.0376167
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0217177   0.0127401   0.0306952
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0287089   0.0242398   0.0331779
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0425492   0.0387096   0.0463888
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0433057   0.0385518   0.0480597
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0195745   0.0077515   0.0313975
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0305844   0.0223505   0.0388182
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0257865   0.0170366   0.0345364
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1627907   0.0520425   0.2735389
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2407407   0.1262918   0.3551897
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2000000   0.0755861   0.3244139
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1432432   0.1083345   0.1781520
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2972028   0.2486374   0.3457682
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2004505   0.1557374   0.2451635
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.2990654   0.2122053   0.3859255
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3642857   0.2844719   0.4440996
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4025974   0.3250443   0.4801505
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0747664   0.0394989   0.1100338
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1884058   0.1350928   0.2417188
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1036269   0.0605937   0.1466602
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0454545   0.0212972   0.0696119
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1179039   0.0761064   0.1597014
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1069767   0.0656337   0.1483198
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0373333   0.0181410   0.0565256
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0588235   0.0447283   0.0729188
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0622776   0.0422932   0.0822620
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2689655   0.1967301   0.3412010
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3675889   0.3081272   0.4270507
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3141361   0.2482524   0.3800199
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0292887   0.0169462   0.0416312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0672918   0.0557593   0.0788243
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0341194   0.0301342   0.0381046
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1238095   0.0792431   0.1683760
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1115460   0.0842389   0.1388531
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1141439   0.0830843   0.1452036
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0437158   0.0266067   0.0608250
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1220044   0.0920521   0.1519567
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0453401   0.0248675   0.0658126
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1138829   0.0933741   0.1343916
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2583548   0.2275905   0.2891190
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2127883   0.1868121   0.2387644
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0485830   0.0217544   0.0754116
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0588235   0.0316791   0.0859680
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0451128   0.0201551   0.0700705
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0558214   0.0484438   0.0631989
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1068620   0.0990425   0.1146814
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0869489   0.0791546   0.0947432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1060241   0.0841916   0.1278566
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1741803   0.1554539   0.1929068
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1465060   0.1300721   0.1629399


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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3259762   0.2880892   0.3638632
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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.8925060   1.5459964   2.316680
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.4145671   1.0386593   1.926522
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.2104842   0.8535432   1.716693
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.3262696   0.9480945   1.855291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.3087130   1.3930608   3.826219
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.3803204   0.7859819   2.424082
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.1584832   1.2199340   3.819100
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.8994652   1.0458867   3.449674
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.6027297   0.9258438   2.774488
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.5778112   0.8719959   2.854931
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2496108   0.9226851   1.692373
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0850999   0.7805973   1.508386
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              2.4461641   1.6356194   3.658381
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.3569328   0.9234152   1.993975
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9018817   0.5922973   1.373281
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9269663   0.6002064   1.431618
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.4853887   1.6228209   3.806432
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              0.9584179   0.5499362   1.670312
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              2.3001989   1.8628025   2.840298
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.9099394   1.5448872   2.361252
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.2219358   0.5948537   2.510075
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              0.9261993   0.4237293   2.024512
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.5736697   1.3989579   1.770201
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.4650006   1.2919314   1.661254
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.6654707   1.3337999   2.079617
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.3945727   1.1092829   1.753234
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.2714286   1.5903659   3.244152
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              2.2425876   1.2176999   4.130081
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
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.6105966   0.8609170   3.013091
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.3132802   0.7015107   2.458558
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.4820910   1.2453787   1.763796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.5084445   1.2482755   1.822839
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.5624629   0.8028880   3.040636
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.3173532   0.6593830   2.631884
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.4788360   0.6448725   3.391300
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.2285714   0.4887082   3.088526
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.0748120   1.6645614   2.586174
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.3993711   1.0402464   1.882477
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.2180804   0.8465939   1.752576
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.3461851   0.9500520   1.907489
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.5199275   1.4537734   4.367967
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.3860104   0.7393209   2.598364
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.5938864   1.3693145   4.913588
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              2.3534883   1.2199094   4.540425
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.5756303   0.8935739   2.778294
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.6681495   0.9100131   3.057893
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3666768   0.9988618   1.869934
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1679420   0.8306775   1.642140
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              2.2975337   1.4577743   3.621042
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1649344   0.7522912   1.803919
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9009484   0.5829673   1.392373
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9219317   0.5871229   1.447666
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.7908496   1.7582980   4.429762
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.0371536   0.5706031   1.885177
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              2.2686008   1.8280840   2.815270
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.8684836   1.5031526   2.322606
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.2107843   0.5895605   2.486596
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              0.9285714   0.4249517   2.029042
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.9143562   1.6491891   2.222159
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.5576277   1.3336832   1.819176
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.6428372   1.3013185   2.073984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.3818182   1.0852264   1.759468


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0154607   -0.0815707   0.1124922
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0782761    0.0442189   0.1123333
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0617225   -0.0137123   0.1371572
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0466749    0.0144867   0.0788630
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0362351    0.0120512   0.0604190
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0161098    0.0003574   0.0318622
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0349666   -0.0232393   0.0931725
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0139943    0.0040579   0.0239306
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0085703   -0.0462599   0.0291193
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0241819    0.0081752   0.0401886
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0758484    0.0583957   0.0933010
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0026217   -0.0195907   0.0248342
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0249153    0.0191146   0.0307159
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0460526    0.0257116   0.0663936
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0341613    0.0189755   0.0493470
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0223776   -0.0164533   0.0612085
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0083744   -0.0119125   0.0286613
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0302087   -0.0641987   0.0037814
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0049935   -0.0001935   0.0101805
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0025125   -0.0064544   0.0114793
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0047396   -0.0019767   0.0114559
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0106472    0.0067435   0.0145508
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0065125   -0.0036382   0.0166631
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0415889   -0.0541133   0.1372910
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0818650    0.0509938   0.1127361
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0625306   -0.0132011   0.1382623
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0473835    0.0149990   0.0797679
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0408468    0.0175697   0.0641240
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0184436    0.0002345   0.0366526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0570107   -0.0068976   0.1209190
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0102276   -0.0018315   0.0222867
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0090408   -0.0489349   0.0308533
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0260350    0.0104950   0.0415751
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0779031    0.0591199   0.0966864
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0025392   -0.0200232   0.0251016
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0306765    0.0240329   0.0373202
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0411686    0.0214286   0.0609086


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0783699   -0.5709251    0.4592982
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3386730    0.2088344    0.4472038
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1664516   -0.0639281    0.3469456
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3630268    0.0682562    0.5645425
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3868481    0.0850065    0.5891170
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3253369   -0.0733980    0.5759538
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1184018   -0.1023048    0.2949179
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3395681    0.0507181    0.5405260
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0760846   -0.4683284    0.2113767
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.3210200    0.0812492    0.4982167
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.4104398    0.3126277    0.4943333
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0519872   -0.5082706    0.4041332
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2823402    0.2133085    0.3453145
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2865254    0.1478323    0.4026457
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.4837362    0.2640471    0.6378460
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2909091   -0.4282555    0.6479552
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1954023   -0.4407600    0.5506695
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.5739645   -1.3399725   -0.0587151
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.4126810   -0.2091214    0.7147155
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.1227636   -0.4419798    0.4663283
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2227626   -0.1595822    0.4790382
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2705348    0.1643035    0.3632624
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2496454   -0.2723716    0.5574940
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.2034884   -0.4286845    0.5559336
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3636694    0.2273165    0.4759606
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1729294   -0.0653146    0.3578932
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3879128    0.0726492    0.5959989
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.4733045    0.1565964    0.6710849
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3306667   -0.0819291    0.5859182
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1748922   -0.0461413    0.3492248
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.2588194   -0.1173754    0.5083580
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0787745   -0.4886801    0.2182644
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.3732575    0.1207049    0.5532715
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.4061982    0.3041445    0.4932848
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0496692   -0.5116912    0.4025707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.3546505    0.2746162    0.4258543
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2796920    0.1320558    0.4022154
