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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        meducyrs    swasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              0       63     175
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              1        1     175
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               0       58     175
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               1        2     175
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            0       48     175
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            1        3     175
Birth       ki0047075b-MAL-ED          BRAZIL                         High              0       18      62
Birth       ki0047075b-MAL-ED          BRAZIL                         High              1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Low               0       17      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Low               1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium            0       27      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium            1        0      62
Birth       ki0047075b-MAL-ED          INDIA                          High              0        8      38
Birth       ki0047075b-MAL-ED          INDIA                          High              1        0      38
Birth       ki0047075b-MAL-ED          INDIA                          Low               0       18      38
Birth       ki0047075b-MAL-ED          INDIA                          Low               1        0      38
Birth       ki0047075b-MAL-ED          INDIA                          Medium            0       12      38
Birth       ki0047075b-MAL-ED          INDIA                          Medium            1        0      38
Birth       ki0047075b-MAL-ED          NEPAL                          High              0        4      24
Birth       ki0047075b-MAL-ED          NEPAL                          High              1        1      24
Birth       ki0047075b-MAL-ED          NEPAL                          Low               0       12      24
Birth       ki0047075b-MAL-ED          NEPAL                          Low               1        0      24
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            0        7      24
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            1        0      24
Birth       ki0047075b-MAL-ED          PERU                           High              0       65     228
Birth       ki0047075b-MAL-ED          PERU                           High              1        0     228
Birth       ki0047075b-MAL-ED          PERU                           Low               0       83     228
Birth       ki0047075b-MAL-ED          PERU                           Low               1        0     228
Birth       ki0047075b-MAL-ED          PERU                           Medium            0       80     228
Birth       ki0047075b-MAL-ED          PERU                           Medium            1        0     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       35     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       59     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        0     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       26     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        0     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        7      97
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0      97
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       32      97
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0      97
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       58      97
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0      97
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High              0       49      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High              1        0      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       15      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low               1        0      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       21      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1        1      86
Birth       ki1000108-IRC              INDIA                          High              0       89     343
Birth       ki1000108-IRC              INDIA                          High              1       12     343
Birth       ki1000108-IRC              INDIA                          Low               0      102     343
Birth       ki1000108-IRC              INDIA                          Low               1       24     343
Birth       ki1000108-IRC              INDIA                          Medium            0       98     343
Birth       ki1000108-IRC              INDIA                          Medium            1       18     343
Birth       ki1000109-EE               PAKISTAN                       High              0        5     177
Birth       ki1000109-EE               PAKISTAN                       High              1        0     177
Birth       ki1000109-EE               PAKISTAN                       Low               0      150     177
Birth       ki1000109-EE               PAKISTAN                       Low               1        6     177
Birth       ki1000109-EE               PAKISTAN                       Medium            0       16     177
Birth       ki1000109-EE               PAKISTAN                       Medium            1        0     177
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              0      229    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              1        4    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               0      488    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               1       12    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            0      357    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            1       13    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     High              0      151     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     High              1       12     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low               0      198     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low               1       12     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium            0      188     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium            1       14     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     High              0      166     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     High              1        3     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low               0      162     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low               1        2     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium            0      191     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium            1        8     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              0      224     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              1       12     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      210     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       16     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      226     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       19     707
Birth       ki1113344-GMS-Nepal        NEPAL                          High              0       76     639
Birth       ki1113344-GMS-Nepal        NEPAL                          High              1        5     639
Birth       ki1113344-GMS-Nepal        NEPAL                          Low               0      430     639
Birth       ki1113344-GMS-Nepal        NEPAL                          Low               1       14     639
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium            0      106     639
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium            1        8     639
Birth       ki1119695-PROBIT           BELARUS                        High              0     2103   13830
Birth       ki1119695-PROBIT           BELARUS                        High              1      138   13830
Birth       ki1119695-PROBIT           BELARUS                        Low               0     4604   13830
Birth       ki1119695-PROBIT           BELARUS                        Low               1      340   13830
Birth       ki1119695-PROBIT           BELARUS                        Medium            0     6217   13830
Birth       ki1119695-PROBIT           BELARUS                        Medium            1      428   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              0     6547   12897
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              1      468   12897
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2549   12897
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      148   12897
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     3010   12897
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      175   12897
Birth       ki1135781-COHORTS          GUATEMALA                      High              0      145     748
Birth       ki1135781-COHORTS          GUATEMALA                      High              1       12     748
Birth       ki1135781-COHORTS          GUATEMALA                      Low               0      325     748
Birth       ki1135781-COHORTS          GUATEMALA                      Low               1       19     748
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            0      220     748
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            1       27     748
Birth       ki1135781-COHORTS          INDIA                          High              0      632    4879
Birth       ki1135781-COHORTS          INDIA                          High              1       24    4879
Birth       ki1135781-COHORTS          INDIA                          Low               0     1513    4879
Birth       ki1135781-COHORTS          INDIA                          Low               1       89    4879
Birth       ki1135781-COHORTS          INDIA                          Medium            0     2494    4879
Birth       ki1135781-COHORTS          INDIA                          Medium            1      127    4879
Birth       ki1135781-COHORTS          PHILIPPINES                    High              0     1076    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    High              1       52    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               0      810    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               1       28    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            0      892    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            1       41    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              0     5525   17988
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              1      106   17988
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               0     6760   17988
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               1      137   17988
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     5354   17988
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      106   17988
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              0      795    2391
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              1       10    2391
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               0      814    2391
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               1       15    2391
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      751    2391
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            1        6    2391
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              0       73     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              1        0     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               0       62     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               1        2     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            0       59     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            1        0     196
6 months    ki0047075b-MAL-ED          BRAZIL                         High              0       71     208
6 months    ki0047075b-MAL-ED          BRAZIL                         High              1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low               0       56     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low               1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            0       81     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          High              0       58     208
6 months    ki0047075b-MAL-ED          INDIA                          High              1        1     208
6 months    ki0047075b-MAL-ED          INDIA                          Low               0       70     208
6 months    ki0047075b-MAL-ED          INDIA                          Low               1        2     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       75     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium            1        2     208
6 months    ki0047075b-MAL-ED          NEPAL                          High              0       53     221
6 months    ki0047075b-MAL-ED          NEPAL                          High              1        0     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low               0       93     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low               1        0     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            0       75     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            1        0     221
6 months    ki0047075b-MAL-ED          PERU                           High              0       81     272
6 months    ki0047075b-MAL-ED          PERU                           High              1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Low               0       94     272
6 months    ki0047075b-MAL-ED          PERU                           Low               1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Medium            0       97     272
6 months    ki0047075b-MAL-ED          PERU                           Medium            1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       70     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      125     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       56     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        1     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        9     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       62     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0      132     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     203
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High              0      152     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High              1        5     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low               0      101     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low               1        3     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0      103     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1        4     368
6 months    ki1000108-IRC              INDIA                          High              0      118     408
6 months    ki1000108-IRC              INDIA                          High              1        6     408
6 months    ki1000108-IRC              INDIA                          Low               0      138     408
6 months    ki1000108-IRC              INDIA                          Low               1        7     408
6 months    ki1000108-IRC              INDIA                          Medium            0      130     408
6 months    ki1000108-IRC              INDIA                          Medium            1        9     408
6 months    ki1000109-EE               PAKISTAN                       High              0       15     372
6 months    ki1000109-EE               PAKISTAN                       High              1        0     372
6 months    ki1000109-EE               PAKISTAN                       Low               0      311     372
6 months    ki1000109-EE               PAKISTAN                       Low               1       13     372
6 months    ki1000109-EE               PAKISTAN                       Medium            0       33     372
6 months    ki1000109-EE               PAKISTAN                       Medium            1        0     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              0      285    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              1        4    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               0      565    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               1       31    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            0      441    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            1        8    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              0       35     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               0      287     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               1       17     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       39     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1        2     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     High              0      153     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     High              1        2     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low               0      191     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low               1        4     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium            0      187     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium            1        0     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      208     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1        1     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      184     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1        3     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      206     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1        1     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              0      240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      229     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      246     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      508    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        4    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       74    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1426    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        8    2020
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High              0      117     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High              1        0     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low               0       73     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low               1        0     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium            0       87     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium            1        0     277
6 months    ki1113344-GMS-Nepal        NEPAL                          High              0       68     561
6 months    ki1113344-GMS-Nepal        NEPAL                          High              1        0     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      394     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1        5     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0       92     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1        2     561
6 months    ki1119695-PROBIT           BELARUS                        High              0     2656   15758
6 months    ki1119695-PROBIT           BELARUS                        High              1        1   15758
6 months    ki1119695-PROBIT           BELARUS                        Low               0     5632   15758
6 months    ki1119695-PROBIT           BELARUS                        Low               1       10   15758
6 months    ki1119695-PROBIT           BELARUS                        Medium            0     7454   15758
6 months    ki1119695-PROBIT           BELARUS                        Medium            1        5   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0     4569    8492
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1       35    8492
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1745    8492
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       21    8492
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     2099    8492
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1       23    8492
6 months    ki1135781-COHORTS          GUATEMALA                      High              0      182     953
6 months    ki1135781-COHORTS          GUATEMALA                      High              1        3     953
6 months    ki1135781-COHORTS          GUATEMALA                      Low               0      447     953
6 months    ki1135781-COHORTS          GUATEMALA                      Low               1        2     953
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            0      318     953
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            1        1     953
6 months    ki1135781-COHORTS          INDIA                          High              0      730    5407
6 months    ki1135781-COHORTS          INDIA                          High              1        7    5407
6 months    ki1135781-COHORTS          INDIA                          Low               0     1705    5407
6 months    ki1135781-COHORTS          INDIA                          Low               1       69    5407
6 months    ki1135781-COHORTS          INDIA                          Medium            0     2811    5407
6 months    ki1135781-COHORTS          INDIA                          Medium            1       85    5407
6 months    ki1135781-COHORTS          PHILIPPINES                    High              0     1006    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    High              1        9    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               0      811    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               1       13    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            0      854    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            1       13    2706
6 months    ki1148112-LCNI-5           MALAWI                         High              0      298     813
6 months    ki1148112-LCNI-5           MALAWI                         High              1        0     813
6 months    ki1148112-LCNI-5           MALAWI                         Low               0      261     813
6 months    ki1148112-LCNI-5           MALAWI                         Low               1        0     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium            0      254     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium            1        0     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     5837   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1       72   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0     5531   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1       81   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     5170   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1       76   16767
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0     1714    4820
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1        3    4820
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1567    4820
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1       17    4820
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1506    4820
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       13    4820
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       64     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1        0     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       59     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1        0     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       48     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1        0     171
24 months   ki0047075b-MAL-ED          BRAZIL                         High              0       62     168
24 months   ki0047075b-MAL-ED          BRAZIL                         High              1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low               0       41     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low               1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            0       64     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            1        0     168
24 months   ki0047075b-MAL-ED          INDIA                          High              0       55     199
24 months   ki0047075b-MAL-ED          INDIA                          High              1        0     199
24 months   ki0047075b-MAL-ED          INDIA                          Low               0       68     199
24 months   ki0047075b-MAL-ED          INDIA                          Low               1        1     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       74     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium            1        1     199
24 months   ki0047075b-MAL-ED          NEPAL                          High              0       48     213
24 months   ki0047075b-MAL-ED          NEPAL                          High              1        0     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       91     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low               1        0     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       74     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        0     213
24 months   ki0047075b-MAL-ED          PERU                           High              0       59     200
24 months   ki0047075b-MAL-ED          PERU                           High              1        0     200
24 months   ki0047075b-MAL-ED          PERU                           Low               0       73     200
24 months   ki0047075b-MAL-ED          PERU                           Low               1        1     200
24 months   ki0047075b-MAL-ED          PERU                           Medium            0       66     200
24 months   ki0047075b-MAL-ED          PERU                           Medium            1        1     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       67     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      120     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       51     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        7     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       54     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0      114     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     175
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              0      158     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               0      103     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0      108     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1        1     372
24 months   ki1000108-IRC              INDIA                          High              0      122     409
24 months   ki1000108-IRC              INDIA                          High              1        2     409
24 months   ki1000108-IRC              INDIA                          Low               0      145     409
24 months   ki1000108-IRC              INDIA                          Low               1        1     409
24 months   ki1000108-IRC              INDIA                          Medium            0      137     409
24 months   ki1000108-IRC              INDIA                          Medium            1        2     409
24 months   ki1000109-EE               PAKISTAN                       High              0        6     166
24 months   ki1000109-EE               PAKISTAN                       High              1        0     166
24 months   ki1000109-EE               PAKISTAN                       Low               0      141     166
24 months   ki1000109-EE               PAKISTAN                       Low               1        2     166
24 months   ki1000109-EE               PAKISTAN                       Medium            0       15     166
24 months   ki1000109-EE               PAKISTAN                       Medium            1        2     166
24 months   ki1017093-NIH-Birth        BANGLADESH                     High              0      128     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     High              1        2     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               0      149     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               1        3     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            0      141     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            1        5     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      199     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1        2     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      170     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1        4     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      201     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1        3     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      190     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      145     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      175     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        2     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       53     484
24 months   ki1113344-GMS-Nepal        NEPAL                          High              1        2     484
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      335     484
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1        9     484
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       81     484
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1        4     484
24 months   ki1119695-PROBIT           BELARUS                        High              0      654    3972
24 months   ki1119695-PROBIT           BELARUS                        High              1        0    3972
24 months   ki1119695-PROBIT           BELARUS                        Low               0     1380    3972
24 months   ki1119695-PROBIT           BELARUS                        Low               1        2    3972
24 months   ki1119695-PROBIT           BELARUS                        Medium            0     1934    3972
24 months   ki1119695-PROBIT           BELARUS                        Medium            1        2    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0      168     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1       16     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0      109     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1        9     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0      125     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1        6     433
24 months   ki1135781-COHORTS          GUATEMALA                      High              0      209    1068
24 months   ki1135781-COHORTS          GUATEMALA                      High              1        0    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Low               0      509    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Low               1        3    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0      346    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1        1    1068
24 months   ki1135781-COHORTS          INDIA                          High              0      599    4166
24 months   ki1135781-COHORTS          INDIA                          High              1        2    4166
24 months   ki1135781-COHORTS          INDIA                          Low               0     1238    4166
24 months   ki1135781-COHORTS          INDIA                          Low               1       26    4166
24 months   ki1135781-COHORTS          INDIA                          Medium            0     2286    4166
24 months   ki1135781-COHORTS          INDIA                          Medium            1       15    4166
24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      903    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    High              1        8    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      741    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1        7    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      780    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1       10    2449
24 months   ki1148112-LCNI-5           MALAWI                         High              0      214     556
24 months   ki1148112-LCNI-5           MALAWI                         High              1        0     556
24 months   ki1148112-LCNI-5           MALAWI                         Low               0      172     556
24 months   ki1148112-LCNI-5           MALAWI                         Low               1        0     556
24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      169     556
24 months   ki1148112-LCNI-5           MALAWI                         Medium            1        1     556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     2809    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      103    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     2881    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1      118    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     2569    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      112    8592
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0     1652    4724
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1       36    4724
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1477    4724
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1       51    4724
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1466    4724
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       42    4724


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/333eb48c-0232-4ccf-bad9-a961a44ec70f/121fae60-6ce7-4f4a-aba7-d767ed7b1f7b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/333eb48c-0232-4ccf-bad9-a961a44ec70f/121fae60-6ce7-4f4a-aba7-d767ed7b1f7b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/333eb48c-0232-4ccf-bad9-a961a44ec70f/121fae60-6ce7-4f4a-aba7-d767ed7b1f7b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/333eb48c-0232-4ccf-bad9-a961a44ec70f/121fae60-6ce7-4f4a-aba7-d767ed7b1f7b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA         High                 NA                0.1399688   0.0820490   0.1978886
Birth       ki1000108-IRC           INDIA         Low                  NA                0.2060597   0.1363269   0.2757924
Birth       ki1000108-IRC           INDIA         Medium               NA                0.1345425   0.0757205   0.1933644
Birth       ki1017093-NIH-Birth     BANGLADESH    High                 NA                0.0749548   0.0344473   0.1154622
Birth       ki1017093-NIH-Birth     BANGLADESH    Low                  NA                0.0574021   0.0259976   0.0888065
Birth       ki1017093-NIH-Birth     BANGLADESH    Medium               NA                0.0689289   0.0338818   0.1039760
Birth       ki1017093c-NIH-Crypto   BANGLADESH    High                 NA                0.0496553   0.0215837   0.0777269
Birth       ki1017093c-NIH-Crypto   BANGLADESH    Low                  NA                0.0729131   0.0387985   0.1070277
Birth       ki1017093c-NIH-Crypto   BANGLADESH    Medium               NA                0.0766063   0.0437036   0.1095091
Birth       ki1113344-GMS-Nepal     NEPAL         High                 NA                0.0617284   0.0092776   0.1141792
Birth       ki1113344-GMS-Nepal     NEPAL         Low                  NA                0.0315315   0.0152644   0.0477987
Birth       ki1113344-GMS-Nepal     NEPAL         Medium               NA                0.0701754   0.0232478   0.1171031
Birth       ki1119695-PROBIT        BELARUS       High                 NA                0.0655014   0.0332968   0.0977060
Birth       ki1119695-PROBIT        BELARUS       Low                  NA                0.0655164   0.0318042   0.0992286
Birth       ki1119695-PROBIT        BELARUS       Medium               NA                0.0656496   0.0325667   0.0987325
Birth       ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                0.0614152   0.0571642   0.0656662
Birth       ki1126311-ZVITAMBO      ZIMBABWE      Low                  NA                0.0602708   0.0557197   0.0648218
Birth       ki1126311-ZVITAMBO      ZIMBABWE      Medium               NA                0.0621666   0.0574413   0.0668920
Birth       ki1135781-COHORTS       GUATEMALA     High                 NA                0.0783505   0.0372718   0.1194292
Birth       ki1135781-COHORTS       GUATEMALA     Low                  NA                0.0568315   0.0327723   0.0808907
Birth       ki1135781-COHORTS       GUATEMALA     Medium               NA                0.1043405   0.0652473   0.1434337
Birth       ki1135781-COHORTS       INDIA         High                 NA                0.0323833   0.0187937   0.0459728
Birth       ki1135781-COHORTS       INDIA         Low                  NA                0.0557763   0.0445177   0.0670349
Birth       ki1135781-COHORTS       INDIA         Medium               NA                0.0489046   0.0405426   0.0572665
Birth       ki1135781-COHORTS       PHILIPPINES   High                 NA                0.0453878   0.0332701   0.0575055
Birth       ki1135781-COHORTS       PHILIPPINES   Low                  NA                0.0349204   0.0224379   0.0474030
Birth       ki1135781-COHORTS       PHILIPPINES   Medium               NA                0.0436981   0.0302937   0.0571025
Birth       kiGH5241-JiVitA-3       BANGLADESH    High                 NA                0.0204494   0.0175442   0.0233546
Birth       kiGH5241-JiVitA-3       BANGLADESH    Low                  NA                0.0193773   0.0167928   0.0219619
Birth       kiGH5241-JiVitA-3       BANGLADESH    Medium               NA                0.0189859   0.0161086   0.0218633
Birth       kiGH5241-JiVitA-4       BANGLADESH    High                 NA                0.0124224   0.0011008   0.0237440
Birth       kiGH5241-JiVitA-4       BANGLADESH    Low                  NA                0.0180941   0.0086591   0.0275291
Birth       kiGH5241-JiVitA-4       BANGLADESH    Medium               NA                0.0079260   0.0011127   0.0147393
6 months    ki1000108-IRC           INDIA         High                 NA                0.0483871   0.0105720   0.0862022
6 months    ki1000108-IRC           INDIA         Low                  NA                0.0482759   0.0133443   0.0832074
6 months    ki1000108-IRC           INDIA         Medium               NA                0.0647482   0.0237890   0.1057074
6 months    ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                0.0081901   0.0053654   0.0110149
6 months    ki1126311-ZVITAMBO      ZIMBABWE      Low                  NA                0.0118331   0.0063489   0.0173172
6 months    ki1126311-ZVITAMBO      ZIMBABWE      Medium               NA                0.0107206   0.0060830   0.0153582
6 months    ki1135781-COHORTS       INDIA         High                 NA                0.0094980   0.0024947   0.0165012
6 months    ki1135781-COHORTS       INDIA         Low                  NA                0.0388952   0.0298972   0.0478931
6 months    ki1135781-COHORTS       INDIA         Medium               NA                0.0293508   0.0232029   0.0354988
6 months    ki1135781-COHORTS       PHILIPPINES   High                 NA                0.0088670   0.0030987   0.0146353
6 months    ki1135781-COHORTS       PHILIPPINES   Low                  NA                0.0157767   0.0072669   0.0242865
6 months    ki1135781-COHORTS       PHILIPPINES   Medium               NA                0.0149942   0.0069033   0.0230852
6 months    kiGH5241-JiVitA-3       BANGLADESH    High                 NA                0.0124932   0.0090367   0.0159497
6 months    kiGH5241-JiVitA-3       BANGLADESH    Low                  NA                0.0125354   0.0095251   0.0155458
6 months    kiGH5241-JiVitA-3       BANGLADESH    Medium               NA                0.0146973   0.0109395   0.0184552
24 months   ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                0.0869565   0.0461962   0.1277169
24 months   ki1126311-ZVITAMBO      ZIMBABWE      Low                  NA                0.0762712   0.0283242   0.1242182
24 months   ki1126311-ZVITAMBO      ZIMBABWE      Medium               NA                0.0458015   0.0099610   0.0816420
24 months   ki1135781-COHORTS       PHILIPPINES   High                 NA                0.0087816   0.0027219   0.0148412
24 months   ki1135781-COHORTS       PHILIPPINES   Low                  NA                0.0093583   0.0024568   0.0162598
24 months   ki1135781-COHORTS       PHILIPPINES   Medium               NA                0.0126582   0.0048609   0.0204555
24 months   kiGH5241-JiVitA-3       BANGLADESH    High                 NA                0.0412188   0.0325163   0.0499213
24 months   kiGH5241-JiVitA-3       BANGLADESH    Low                  NA                0.0335150   0.0254100   0.0416199
24 months   kiGH5241-JiVitA-3       BANGLADESH    Medium               NA                0.0432967   0.0335289   0.0530644
24 months   kiGH5241-JiVitA-4       BANGLADESH    High                 NA                0.0215219   0.0120789   0.0309648
24 months   kiGH5241-JiVitA-4       BANGLADESH    Low                  NA                0.0318955   0.0224098   0.0413811
24 months   kiGH5241-JiVitA-4       BANGLADESH    Medium               NA                0.0285552   0.0203133   0.0367970


### Parameter: E(Y)


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.0660870   0.0457632   0.0864107
Birth       ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.0664781   0.0481022   0.0848539
Birth       ki1113344-GMS-Nepal     NEPAL         NA                   NA                0.0422535   0.0266438   0.0578632
Birth       ki1119695-PROBIT        BELARUS       NA                   NA                0.0655098   0.0324802   0.0985393
Birth       ki1126311-ZVITAMBO      ZIMBABWE      NA                   NA                0.0613321   0.0571909   0.0654732
Birth       ki1135781-COHORTS       GUATEMALA     NA                   NA                0.0775401   0.0583612   0.0967191
Birth       ki1135781-COHORTS       INDIA         NA                   NA                0.0491904   0.0431214   0.0552594
Birth       ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0194018   0.0169900   0.0218136
Birth       kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0129653   0.0075421   0.0183885
6 months    ki1000108-IRC           INDIA         NA                   NA                0.0539216   0.0319786   0.0758646
6 months    ki1126311-ZVITAMBO      ZIMBABWE      NA                   NA                0.0093029   0.0072609   0.0113448
6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.0297762   0.0252454   0.0343071
6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0136578   0.0115849   0.0157307
24 months   ki1126311-ZVITAMBO      ZIMBABWE      NA                   NA                0.0715935   0.0472820   0.0959051
24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.0102082   0.0062264   0.0141901
24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.0387570   0.0344303   0.0430837
24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.0273074   0.0220923   0.0325225


### Parameter: RR


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC           INDIA         High                 High              1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC           INDIA         Low                  High              1.4721827   0.8859182   2.446413
Birth       ki1000108-IRC           INDIA         Medium               High              0.9612319   0.5407236   1.708760
Birth       ki1017093-NIH-Birth     BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth     BANGLADESH    Low                  High              0.7658225   0.3547032   1.653450
Birth       ki1017093-NIH-Birth     BANGLADESH    Medium               High              0.9196064   0.4376027   1.932520
Birth       ki1017093c-NIH-Crypto   BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH    Low                  High              1.4683846   0.7050158   3.058305
Birth       ki1017093c-NIH-Crypto   BANGLADESH    Medium               High              1.5427623   0.7588645   3.136417
Birth       ki1113344-GMS-Nepal     NEPAL         High                 High              1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal     NEPAL         Low                  High              0.5108108   0.1890368   1.380301
Birth       ki1113344-GMS-Nepal     NEPAL         Medium               High              1.1368421   0.3855700   3.351947
Birth       ki1119695-PROBIT        BELARUS       High                 High              1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT        BELARUS       Low                  High              1.0002288   0.9539574   1.048744
Birth       ki1119695-PROBIT        BELARUS       Medium               High              1.0022631   0.9605664   1.045770
Birth       ki1126311-ZVITAMBO      ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO      ZIMBABWE      Low                  High              0.9813654   0.9406251   1.023870
Birth       ki1126311-ZVITAMBO      ZIMBABWE      Medium               High              1.0122351   0.9670933   1.059484
Birth       ki1135781-COHORTS       GUATEMALA     High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       GUATEMALA     Low                  High              0.7253496   0.3718032   1.415082
Birth       ki1135781-COHORTS       GUATEMALA     Medium               High              1.3317144   0.7008174   2.530564
Birth       ki1135781-COHORTS       INDIA         High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       INDIA         Low                  High              1.7223800   1.0813135   2.743508
Birth       ki1135781-COHORTS       INDIA         Medium               High              1.5101799   0.9603371   2.374836
Birth       ki1135781-COHORTS       PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS       PHILIPPINES   Low                  High              0.7693792   0.4927706   1.201257
Birth       ki1135781-COHORTS       PHILIPPINES   Medium               High              0.9627713   0.6417471   1.444383
Birth       kiGH5241-JiVitA-3       BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    Low                  High              0.9475735   0.8422377   1.066083
Birth       kiGH5241-JiVitA-3       BANGLADESH    Medium               High              0.9284353   0.8079280   1.066917
Birth       kiGH5241-JiVitA-4       BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    Low                  High              1.4565742   0.5084765   4.172481
Birth       kiGH5241-JiVitA-4       BANGLADESH    Medium               High              0.6380449   0.1818054   2.239215
6 months    ki1000108-IRC           INDIA         High                 High              1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC           INDIA         Low                  High              0.9977011   0.3439183   2.894314
6 months    ki1000108-IRC           INDIA         Medium               High              1.3381295   0.4895938   3.657299
6 months    ki1126311-ZVITAMBO      ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO      ZIMBABWE      Low                  High              1.4447957   0.8108050   2.574521
6 months    ki1126311-ZVITAMBO      ZIMBABWE      Medium               High              1.3089601   0.7526956   2.276321
6 months    ki1135781-COHORTS       INDIA         High                 High              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       INDIA         Low                  High              4.0951039   1.8908265   8.869072
6 months    ki1135781-COHORTS       INDIA         Medium               High              3.0902230   1.4358105   6.650932
6 months    ki1135781-COHORTS       PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       PHILIPPINES   Low                  High              1.7792611   0.7642414   4.142369
6 months    ki1135781-COHORTS       PHILIPPINES   Medium               High              1.6910163   0.7262384   3.937462
6 months    kiGH5241-JiVitA-3       BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    Low                  High              1.0033811   0.6941474   1.450374
6 months    kiGH5241-JiVitA-3       BANGLADESH    Medium               High              1.1764245   0.8100409   1.708524
24 months   ki1126311-ZVITAMBO      ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO      ZIMBABWE      Low                  High              0.8771186   0.4004071   1.921388
24 months   ki1126311-ZVITAMBO      ZIMBABWE      Medium               High              0.5267176   0.2115570   1.311379
24 months   ki1135781-COHORTS       PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       PHILIPPINES   Low                  High              1.0656751   0.3881533   2.925812
24 months   ki1135781-COHORTS       PHILIPPINES   Medium               High              1.4414557   0.5715907   3.635109
24 months   kiGH5241-JiVitA-3       BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    Low                  High              0.8130992   0.5914353   1.117840
24 months   kiGH5241-JiVitA-3       BANGLADESH    Medium               High              1.0504104   0.7681027   1.436477
24 months   kiGH5241-JiVitA-4       BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    Low                  High              1.4820027   0.8702284   2.523857
24 months   kiGH5241-JiVitA-4       BANGLADESH    Medium               High              1.3267988   0.7783030   2.261838


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC           INDIA         High                 NA                 0.0174656   -0.0323006   0.0672318
Birth       ki1017093-NIH-Birth     BANGLADESH    High                 NA                -0.0088678   -0.0425660   0.0248303
Birth       ki1017093c-NIH-Crypto   BANGLADESH    High                 NA                 0.0168228   -0.0077393   0.0413848
Birth       ki1113344-GMS-Nepal     NEPAL         High                 NA                -0.0194749   -0.0674050   0.0284552
Birth       ki1119695-PROBIT        BELARUS       High                 NA                 0.0000084   -0.0020636   0.0020803
Birth       ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                -0.0000831   -0.0009865   0.0008203
Birth       ki1135781-COHORTS       GUATEMALA     High                 NA                -0.0008104   -0.0373286   0.0357078
Birth       ki1135781-COHORTS       INDIA         High                 NA                 0.0168071    0.0037377   0.0298766
Birth       ki1135781-COHORTS       PHILIPPINES   High                 NA                -0.0036493   -0.0128639   0.0055653
Birth       kiGH5241-JiVitA-3       BANGLADESH    High                 NA                -0.0010476   -0.0027649   0.0006698
Birth       kiGH5241-JiVitA-4       BANGLADESH    High                 NA                 0.0005429   -0.0079350   0.0090208
6 months    ki1000108-IRC           INDIA         High                 NA                 0.0055345   -0.0267498   0.0378187
6 months    ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                 0.0011127   -0.0011123   0.0033378
6 months    ki1135781-COHORTS       INDIA         High                 NA                 0.0202783    0.0127813   0.0277752
6 months    ki1135781-COHORTS       PHILIPPINES   High                 NA                 0.0040672   -0.0010750   0.0092095
6 months    kiGH5241-JiVitA-3       BANGLADESH    High                 NA                 0.0011646   -0.0017583   0.0040875
24 months   ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                -0.0153630   -0.0443536   0.0136276
24 months   ki1135781-COHORTS       PHILIPPINES   High                 NA                 0.0014267   -0.0035989   0.0064523
24 months   kiGH5241-JiVitA-3       BANGLADESH    High                 NA                -0.0024618   -0.0103151   0.0053915
24 months   kiGH5241-JiVitA-4       BANGLADESH    High                 NA                 0.0057855   -0.0015937   0.0131647


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC           INDIA         High                 NA                 0.1109389   -0.2641353   0.3747270
Birth       ki1017093-NIH-Birth     BANGLADESH    High                 NA                -0.1341841   -0.7762680   0.2757999
Birth       ki1017093c-NIH-Crypto   BANGLADESH    High                 NA                 0.2530574   -0.2163219   0.5413029
Birth       ki1113344-GMS-Nepal     NEPAL         High                 NA                -0.4609053   -2.1514607   0.3227761
Birth       ki1119695-PROBIT        BELARUS       High                 NA                 0.0001280   -0.0319772   0.0312343
Birth       ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                -0.0013554   -0.0161925   0.0132651
Birth       ki1135781-COHORTS       GUATEMALA     High                 NA                -0.0104514   -0.6104567   0.3660108
Birth       ki1135781-COHORTS       INDIA         High                 NA                 0.3416750    0.0185096   0.5584350
Birth       ki1135781-COHORTS       PHILIPPINES   High                 NA                -0.0874321   -0.3316122   0.1119722
Birth       kiGH5241-JiVitA-3       BANGLADESH    High                 NA                -0.0539940   -0.1468942   0.0313812
Birth       kiGH5241-JiVitA-4       BANGLADESH    High                 NA                 0.0418754   -0.9064856   0.5184843
6 months    ki1000108-IRC           INDIA         High                 NA                 0.1026393   -0.7462155   0.5388563
6 months    ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                 0.1196110   -0.1527664   0.3276307
6 months    ki1135781-COHORTS       INDIA         High                 NA                 0.6810218    0.3441589   0.8448601
6 months    ki1135781-COHORTS       PHILIPPINES   High                 NA                 0.3144546   -0.2005200   0.6085259
6 months    kiGH5241-JiVitA-3       BANGLADESH    High                 NA                 0.0852680   -0.1551382   0.2756411
24 months   ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                -0.2145863   -0.6877207   0.1259100
24 months   ki1135781-COHORTS       PHILIPPINES   High                 NA                 0.1397585   -0.5193606   0.5129429
24 months   kiGH5241-JiVitA-3       BANGLADESH    High                 NA                -0.0635192   -0.2874752   0.1214797
24 months   kiGH5241-JiVitA-4       BANGLADESH    High                 NA                 0.2118662   -0.1202260   0.4455092
