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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        meducyrs    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             0       56     175
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             1        8     175
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              0       51     175
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              1        9     175
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           0       39     175
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           1       12     175
Birth       ki0047075b-MAL-ED          BRAZIL                         High             0       18      62
Birth       ki0047075b-MAL-ED          BRAZIL                         High             1        0      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Low              0       16      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Low              1        1      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium           0       26      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium           1        1      62
Birth       ki0047075b-MAL-ED          INDIA                          High             0        8      38
Birth       ki0047075b-MAL-ED          INDIA                          High             1        0      38
Birth       ki0047075b-MAL-ED          INDIA                          Low              0       15      38
Birth       ki0047075b-MAL-ED          INDIA                          Low              1        3      38
Birth       ki0047075b-MAL-ED          INDIA                          Medium           0       11      38
Birth       ki0047075b-MAL-ED          INDIA                          Medium           1        1      38
Birth       ki0047075b-MAL-ED          NEPAL                          High             0        4      24
Birth       ki0047075b-MAL-ED          NEPAL                          High             1        1      24
Birth       ki0047075b-MAL-ED          NEPAL                          Low              0       12      24
Birth       ki0047075b-MAL-ED          NEPAL                          Low              1        0      24
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           0        6      24
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           1        1      24
Birth       ki0047075b-MAL-ED          PERU                           High             0       63     228
Birth       ki0047075b-MAL-ED          PERU                           High             1        2     228
Birth       ki0047075b-MAL-ED          PERU                           Low              0       83     228
Birth       ki0047075b-MAL-ED          PERU                           Low              1        0     228
Birth       ki0047075b-MAL-ED          PERU                           Medium           0       77     228
Birth       ki0047075b-MAL-ED          PERU                           Medium           1        3     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       32     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        3     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0       53     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        6     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       23     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        3     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0        7      97
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        0      97
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       32      97
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        0      97
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0       57      97
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        1      97
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High             0       44      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High             1        5      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low              0       13      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low              1        2      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium           0       18      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium           1        4      86
Birth       ki1000108-IRC              INDIA                          High             0       77     343
Birth       ki1000108-IRC              INDIA                          High             1       24     343
Birth       ki1000108-IRC              INDIA                          Low              0       92     343
Birth       ki1000108-IRC              INDIA                          Low              1       34     343
Birth       ki1000108-IRC              INDIA                          Medium           0       82     343
Birth       ki1000108-IRC              INDIA                          Medium           1       34     343
Birth       ki1000109-EE               PAKISTAN                       High             0        5     177
Birth       ki1000109-EE               PAKISTAN                       High             1        0     177
Birth       ki1000109-EE               PAKISTAN                       Low              0      136     177
Birth       ki1000109-EE               PAKISTAN                       Low              1       20     177
Birth       ki1000109-EE               PAKISTAN                       Medium           0       14     177
Birth       ki1000109-EE               PAKISTAN                       Medium           1        2     177
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             0      206    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             1       27    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              0      444    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              1       56    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           0      335    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           1       35    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     High             0      121     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     High             1       42     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low              0      150     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low              1       60     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium           0      136     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium           1       66     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     High             0      138     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     High             1       31     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low              0      126     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low              1       38     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium           0      151     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium           1       48     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             0      174     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             1       62     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      178     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       48     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      183     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1       62     707
Birth       ki1113344-GMS-Nepal        NEPAL                          High             0       61     639
Birth       ki1113344-GMS-Nepal        NEPAL                          High             1       20     639
Birth       ki1113344-GMS-Nepal        NEPAL                          Low              0      361     639
Birth       ki1113344-GMS-Nepal        NEPAL                          Low              1       83     639
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium           0       85     639
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium           1       29     639
Birth       ki1119695-PROBIT           BELARUS                        High             0     1787   13830
Birth       ki1119695-PROBIT           BELARUS                        High             1      454   13830
Birth       ki1119695-PROBIT           BELARUS                        Low              0     3897   13830
Birth       ki1119695-PROBIT           BELARUS                        Low              1     1047   13830
Birth       ki1119695-PROBIT           BELARUS                        Medium           0     5259   13830
Birth       ki1119695-PROBIT           BELARUS                        Medium           1     1386   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             0     5847   12897
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             1     1168   12897
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     2307   12897
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              1      390   12897
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     2686   12897
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1      499   12897
Birth       ki1135781-COHORTS          GUATEMALA                      High             0      124     748
Birth       ki1135781-COHORTS          GUATEMALA                      High             1       33     748
Birth       ki1135781-COHORTS          GUATEMALA                      Low              0      258     748
Birth       ki1135781-COHORTS          GUATEMALA                      Low              1       86     748
Birth       ki1135781-COHORTS          GUATEMALA                      Medium           0      177     748
Birth       ki1135781-COHORTS          GUATEMALA                      Medium           1       70     748
Birth       ki1135781-COHORTS          INDIA                          High             0      558    4879
Birth       ki1135781-COHORTS          INDIA                          High             1       98    4879
Birth       ki1135781-COHORTS          INDIA                          Low              0     1297    4879
Birth       ki1135781-COHORTS          INDIA                          Low              1      305    4879
Birth       ki1135781-COHORTS          INDIA                          Medium           0     2170    4879
Birth       ki1135781-COHORTS          INDIA                          Medium           1      451    4879
Birth       ki1135781-COHORTS          PHILIPPINES                    High             0      929    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    High             1      199    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low              0      727    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low              1      111    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium           0      792    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium           1      141    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             0     5034   17988
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             1      597   17988
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              0     6097   17988
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              1      800   17988
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     4884   17988
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      576   17988
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             0      725    2391
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             1       80    2391
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              0      736    2391
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              1       93    2391
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           0      692    2391
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           1       65    2391
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             0       72     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             1        1     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              0       60     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              1        4     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           0       58     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           1        1     196
6 months    ki0047075b-MAL-ED          BRAZIL                         High             0       71     208
6 months    ki0047075b-MAL-ED          BRAZIL                         High             1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low              0       55     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low              1        1     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium           0       81     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium           1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          High             0       54     208
6 months    ki0047075b-MAL-ED          INDIA                          High             1        5     208
6 months    ki0047075b-MAL-ED          INDIA                          Low              0       65     208
6 months    ki0047075b-MAL-ED          INDIA                          Low              1        7     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium           0       71     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium           1        6     208
6 months    ki0047075b-MAL-ED          NEPAL                          High             0       53     221
6 months    ki0047075b-MAL-ED          NEPAL                          High             1        0     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low              0       92     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low              1        1     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium           0       73     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium           1        2     221
6 months    ki0047075b-MAL-ED          PERU                           High             0       81     272
6 months    ki0047075b-MAL-ED          PERU                           High             1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Low              0       94     272
6 months    ki0047075b-MAL-ED          PERU                           Low              1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Medium           0       97     272
6 months    ki0047075b-MAL-ED          PERU                           Medium           1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       70     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0      122     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        5     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       55     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        2     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0        9     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        0     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       62     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        0     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0      131     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        1     203
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High             0      136     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High             1       21     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low              0       95     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low              1        9     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium           0       91     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium           1       16     368
6 months    ki1000108-IRC              INDIA                          High             0      111     408
6 months    ki1000108-IRC              INDIA                          High             1       13     408
6 months    ki1000108-IRC              INDIA                          Low              0      126     408
6 months    ki1000108-IRC              INDIA                          Low              1       19     408
6 months    ki1000108-IRC              INDIA                          Medium           0      117     408
6 months    ki1000108-IRC              INDIA                          Medium           1       22     408
6 months    ki1000109-EE               PAKISTAN                       High             0       15     372
6 months    ki1000109-EE               PAKISTAN                       High             1        0     372
6 months    ki1000109-EE               PAKISTAN                       Low              0      280     372
6 months    ki1000109-EE               PAKISTAN                       Low              1       44     372
6 months    ki1000109-EE               PAKISTAN                       Medium           0       30     372
6 months    ki1000109-EE               PAKISTAN                       Medium           1        3     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          High             0      264    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          High             1       25    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low              0      501    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low              1       95    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium           0      403    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium           1       46    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             0       32     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low              0      248     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low              1       56     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium           0       31     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium           1       10     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     High             0      148     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     High             1        7     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low              0      180     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low              1       15     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium           0      174     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium           1       13     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             0      201     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             1        8     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              0      178     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              1        9     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           0      199     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           1        8     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High             0      237     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High             1        3     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      217     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       12     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0      491    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1       21    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       72    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        2    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0     1370    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1       64    2020
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High             0      117     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High             1        0     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low              0       73     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low              1        0     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium           0       84     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium           1        3     277
6 months    ki1113344-GMS-Nepal        NEPAL                          High             0       64     561
6 months    ki1113344-GMS-Nepal        NEPAL                          High             1        4     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              0      359     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              1       40     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           0       87     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           1        7     561
6 months    ki1119695-PROBIT           BELARUS                        High             0     2642   15758
6 months    ki1119695-PROBIT           BELARUS                        High             1       15   15758
6 months    ki1119695-PROBIT           BELARUS                        Low              0     5585   15758
6 months    ki1119695-PROBIT           BELARUS                        Low              1       57   15758
6 months    ki1119695-PROBIT           BELARUS                        Medium           0     7401   15758
6 months    ki1119695-PROBIT           BELARUS                        Medium           1       58   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             0     4492    8492
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             1      112    8492
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     1687    8492
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       79    8492
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     2048    8492
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1       74    8492
6 months    ki1135781-COHORTS          GUATEMALA                      High             0      179     953
6 months    ki1135781-COHORTS          GUATEMALA                      High             1        6     953
6 months    ki1135781-COHORTS          GUATEMALA                      Low              0      430     953
6 months    ki1135781-COHORTS          GUATEMALA                      Low              1       19     953
6 months    ki1135781-COHORTS          GUATEMALA                      Medium           0      313     953
6 months    ki1135781-COHORTS          GUATEMALA                      Medium           1        6     953
6 months    ki1135781-COHORTS          INDIA                          High             0      677    5407
6 months    ki1135781-COHORTS          INDIA                          High             1       60    5407
6 months    ki1135781-COHORTS          INDIA                          Low              0     1479    5407
6 months    ki1135781-COHORTS          INDIA                          Low              1      295    5407
6 months    ki1135781-COHORTS          INDIA                          Medium           0     2557    5407
6 months    ki1135781-COHORTS          INDIA                          Medium           1      339    5407
6 months    ki1135781-COHORTS          PHILIPPINES                    High             0      963    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    High             1       52    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Low              0      764    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Low              1       60    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium           0      818    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium           1       49    2706
6 months    ki1148112-LCNI-5           MALAWI                         High             0      295     813
6 months    ki1148112-LCNI-5           MALAWI                         High             1        3     813
6 months    ki1148112-LCNI-5           MALAWI                         Low              0      254     813
6 months    ki1148112-LCNI-5           MALAWI                         Low              1        7     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium           0      250     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium           1        4     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             0     5463   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             1      446   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              0     5075   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              1      537   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     4810   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      436   16767
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             0     1656    4820
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             1       61    4820
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              0     1455    4820
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              1      129    4820
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           0     1434    4820
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           1       85    4820
24 months   ki0047075b-MAL-ED          BANGLADESH                     High             0       60     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     High             1        4     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low              0       52     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low              1        7     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium           0       45     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium           1        3     171
24 months   ki0047075b-MAL-ED          BRAZIL                         High             0       62     168
24 months   ki0047075b-MAL-ED          BRAZIL                         High             1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low              0       40     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low              1        2     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium           0       63     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium           1        1     168
24 months   ki0047075b-MAL-ED          INDIA                          High             0       51     199
24 months   ki0047075b-MAL-ED          INDIA                          High             1        4     199
24 months   ki0047075b-MAL-ED          INDIA                          Low              0       60     199
24 months   ki0047075b-MAL-ED          INDIA                          Low              1        9     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium           0       66     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium           1        9     199
24 months   ki0047075b-MAL-ED          NEPAL                          High             0       47     213
24 months   ki0047075b-MAL-ED          NEPAL                          High             1        1     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low              0       89     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low              1        2     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium           0       73     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium           1        1     213
24 months   ki0047075b-MAL-ED          PERU                           High             0       59     200
24 months   ki0047075b-MAL-ED          PERU                           High             1        0     200
24 months   ki0047075b-MAL-ED          PERU                           Low              0       72     200
24 months   ki0047075b-MAL-ED          PERU                           Low              1        2     200
24 months   ki0047075b-MAL-ED          PERU                           Medium           0       65     200
24 months   ki0047075b-MAL-ED          PERU                           Medium           1        2     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       67     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0      119     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       51     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0        7     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        0     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       51     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        3     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0      114     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0     175
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High             0      152     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High             1        6     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low              0       95     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low              1       10     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium           0      102     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium           1        7     372
24 months   ki1000108-IRC              INDIA                          High             0      116     409
24 months   ki1000108-IRC              INDIA                          High             1        8     409
24 months   ki1000108-IRC              INDIA                          Low              0      136     409
24 months   ki1000108-IRC              INDIA                          Low              1       10     409
24 months   ki1000108-IRC              INDIA                          Medium           0      126     409
24 months   ki1000108-IRC              INDIA                          Medium           1       13     409
24 months   ki1000109-EE               PAKISTAN                       High             0        5     166
24 months   ki1000109-EE               PAKISTAN                       High             1        1     166
24 months   ki1000109-EE               PAKISTAN                       Low              0      119     166
24 months   ki1000109-EE               PAKISTAN                       Low              1       24     166
24 months   ki1000109-EE               PAKISTAN                       Medium           0       13     166
24 months   ki1000109-EE               PAKISTAN                       Medium           1        4     166
24 months   ki1017093-NIH-Birth        BANGLADESH                     High             0      116     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     High             1       14     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low              0      131     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low              1       21     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium           0      128     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium           1       18     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             0      183     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             1       18     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              0      151     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              1       23     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           0      183     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           1       21     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High             0      174     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High             1       17     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      132     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       14     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      163     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1       14     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High             0       45     484
24 months   ki1113344-GMS-Nepal        NEPAL                          High             1       10     484
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              0      285     484
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              1       59     484
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           0       64     484
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           1       21     484
24 months   ki1119695-PROBIT           BELARUS                        High             0      643    3972
24 months   ki1119695-PROBIT           BELARUS                        High             1       11    3972
24 months   ki1119695-PROBIT           BELARUS                        Low              0     1368    3972
24 months   ki1119695-PROBIT           BELARUS                        Low              1       14    3972
24 months   ki1119695-PROBIT           BELARUS                        Medium           0     1917    3972
24 months   ki1119695-PROBIT           BELARUS                        Medium           1       19    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             0      153     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             1       31     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              0       92     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       26     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0      109     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1       22     433
24 months   ki1135781-COHORTS          GUATEMALA                      High             0      200    1068
24 months   ki1135781-COHORTS          GUATEMALA                      High             1        9    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Low              0      485    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Low              1       27    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Medium           0      334    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Medium           1       13    1068
24 months   ki1135781-COHORTS          INDIA                          High             0      584    4166
24 months   ki1135781-COHORTS          INDIA                          High             1       17    4166
24 months   ki1135781-COHORTS          INDIA                          Low              0     1067    4166
24 months   ki1135781-COHORTS          INDIA                          Low              1      197    4166
24 months   ki1135781-COHORTS          INDIA                          Medium           0     2131    4166
24 months   ki1135781-COHORTS          INDIA                          Medium           1      170    4166
24 months   ki1135781-COHORTS          PHILIPPINES                    High             0      864    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    High             1       47    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Low              0      681    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Low              1       67    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium           0      737    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium           1       53    2449
24 months   ki1148112-LCNI-5           MALAWI                         High             0      213     556
24 months   ki1148112-LCNI-5           MALAWI                         High             1        1     556
24 months   ki1148112-LCNI-5           MALAWI                         Low              0      167     556
24 months   ki1148112-LCNI-5           MALAWI                         Low              1        5     556
24 months   ki1148112-LCNI-5           MALAWI                         Medium           0      166     556
24 months   ki1148112-LCNI-5           MALAWI                         Medium           1        4     556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             0     2305    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             1      607    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              0     2340    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              1      659    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     2073    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      608    8592
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             0     1389    4724
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             1      299    4724
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              0     1189    4724
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              1      339    4724
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           0     1226    4724
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           1      282    4724


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/01d0a8d4-282f-447f-99fa-bf878070928d/d6e3853c-a598-46b7-b9a9-a126e3a700b7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/01d0a8d4-282f-447f-99fa-bf878070928d/d6e3853c-a598-46b7-b9a9-a126e3a700b7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/01d0a8d4-282f-447f-99fa-bf878070928d/d6e3853c-a598-46b7-b9a9-a126e3a700b7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/01d0a8d4-282f-447f-99fa-bf878070928d/d6e3853c-a598-46b7-b9a9-a126e3a700b7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    High                 NA                0.1250000   0.0437429   0.2062571
Birth       ki0047075b-MAL-ED          BANGLADESH    Low                  NA                0.1500000   0.0593909   0.2406091
Birth       ki0047075b-MAL-ED          BANGLADESH    Medium               NA                0.2352941   0.1185432   0.3520450
Birth       ki1000108-IRC              INDIA         High                 NA                0.2651429   0.1880654   0.3422204
Birth       ki1000108-IRC              INDIA         Low                  NA                0.2820705   0.2054595   0.3586815
Birth       ki1000108-IRC              INDIA         Medium               NA                0.2594801   0.1830869   0.3358733
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.1250690   0.0956386   0.1544994
Birth       ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1130449   0.0609318   0.1651580
Birth       ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0977769   0.0739203   0.1216335
Birth       ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.2605918   0.1937739   0.3274096
Birth       ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.2872263   0.2274305   0.3470222
Birth       ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.3225863   0.2571528   0.3880198
Birth       ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.1853295   0.1264683   0.2441906
Birth       ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.2298050   0.1648996   0.2947104
Birth       ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.2391251   0.1791511   0.2990992
Birth       ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.2629508   0.2095010   0.3164006
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.2276460   0.1750669   0.2802251
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.2429993   0.1900427   0.2959560
Birth       ki1113344-GMS-Nepal        NEPAL         High                 NA                0.2243813   0.1241299   0.3246327
Birth       ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1883119   0.1521183   0.2245054
Birth       ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.2389199   0.1564298   0.3214100
Birth       ki1119695-PROBIT           BELARUS       High                 NA                0.2074747   0.1422124   0.2727370
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                0.2087872   0.1435877   0.2739867
Birth       ki1119695-PROBIT           BELARUS       Medium               NA                0.2090332   0.1437512   0.2743153
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.1604422   0.1539929   0.1668916
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.1583484   0.1512476   0.1654492
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.1579786   0.1513667   0.1645905
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                0.2279887   0.1648793   0.2910980
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                0.2481622   0.2035117   0.2928127
Birth       ki1135781-COHORTS          GUATEMALA     Medium               NA                0.2728348   0.2162093   0.3294603
Birth       ki1135781-COHORTS          INDIA         High                 NA                0.1853948   0.1715688   0.1992208
Birth       ki1135781-COHORTS          INDIA         Low                  NA                0.1774609   0.1656275   0.1892943
Birth       ki1135781-COHORTS          INDIA         Medium               NA                0.1741863   0.1633276   0.1850451
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                0.1568330   0.1433289   0.1703371
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.1532725   0.1392970   0.1672481
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.1558683   0.1410835   0.1706530
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.1087477   0.1032253   0.1142701
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.1100611   0.1045372   0.1155849
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.1085252   0.1026324   0.1144181
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0958133   0.0792545   0.1123721
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0995326   0.0835633   0.1155019
Birth       kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.1007402   0.0825859   0.1188945
6 months    ki0047075b-MAL-ED          INDIA         High                 NA                0.0847458   0.0135099   0.1559816
6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                0.0972222   0.0286258   0.1658187
6 months    ki0047075b-MAL-ED          INDIA         Medium               NA                0.0779221   0.0179066   0.1379376
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.1337580   0.0804406   0.1870753
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0865385   0.0324291   0.1406478
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1495327   0.0818708   0.2171946
6 months    ki1000108-IRC              INDIA         High                 NA                0.1055904   0.0512596   0.1599212
6 months    ki1000108-IRC              INDIA         Low                  NA                0.1318084   0.0764840   0.1871328
6 months    ki1000108-IRC              INDIA         Medium               NA                0.1584987   0.0976367   0.2193608
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0813709   0.0604411   0.1023007
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1616222   0.1340346   0.1892098
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.1020136   0.0551314   0.1488959
6 months    ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0451613   0.0124396   0.0778829
6 months    ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.0769231   0.0394876   0.1143585
6 months    ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.0695187   0.0330318   0.1060056
6 months    ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.0382775   0.0122440   0.0643110
6 months    ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.0481283   0.0174256   0.0788311
6 months    ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.0386473   0.0123674   0.0649273
6 months    ki1119695-PROBIT           BELARUS       High                 NA                0.0056628   0.0027654   0.0085603
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                0.0101451   0.0068371   0.0134531
6 months    ki1119695-PROBIT           BELARUS       Medium               NA                0.0077737   0.0052467   0.0103008
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0246831   0.0200150   0.0293512
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0420374   0.0321976   0.0518771
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0344407   0.0262198   0.0426615
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                0.0324324   0.0068924   0.0579724
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0423163   0.0236861   0.0609465
6 months    ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0188088   0.0038933   0.0337243
6 months    ki1135781-COHORTS          INDIA         High                 NA                0.0906349   0.0683991   0.1128707
6 months    ki1135781-COHORTS          INDIA         Low                  NA                0.1505098   0.1337028   0.1673168
6 months    ki1135781-COHORTS          INDIA         Medium               NA                0.1193162   0.1071944   0.1314379
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0518800   0.0381029   0.0656570
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0695732   0.0522365   0.0869100
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0562798   0.0406915   0.0718682
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0808637   0.0714037   0.0903236
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0875973   0.0789558   0.0962388
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0827938   0.0740615   0.0915261
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0358330   0.0234337   0.0482324
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0831198   0.0646107   0.1016289
6 months    kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0553875   0.0417964   0.0689786
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0379747   0.0081316   0.0678178
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0952381   0.0390156   0.1514606
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181371   0.1103033
24 months   ki1000108-IRC              INDIA         High                 NA                0.0645161   0.0212228   0.1078095
24 months   ki1000108-IRC              INDIA         Low                  NA                0.0684932   0.0274709   0.1095154
24 months   ki1000108-IRC              INDIA         Medium               NA                0.0935252   0.0450617   0.1419886
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.1161890   0.0568771   0.1755009
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.1107028   0.0636346   0.1577710
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.1215559   0.0657638   0.1773480
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.0893663   0.0497289   0.1290037
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.1283442   0.0774568   0.1792317
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.1018316   0.0597637   0.1438995
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0886586   0.0479885   0.1293288
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0931222   0.0451159   0.1411284
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0777671   0.0377806   0.1177535
24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1787148   0.0773176   0.2801121
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1710401   0.1311388   0.2109415
24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.2378941   0.1424224   0.3333658
24 months   ki1119695-PROBIT           BELARUS       High                 NA                0.0167898   0.0052977   0.0282818
24 months   ki1119695-PROBIT           BELARUS       Low                  NA                0.0102681   0.0053121   0.0152241
24 months   ki1119695-PROBIT           BELARUS       Medium               NA                0.0098231   0.0004841   0.0191620
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.1688909   0.1145425   0.2232392
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.2135547   0.1382645   0.2888448
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.1647967   0.0995768   0.2300166
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.0430622   0.0155283   0.0705961
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0527344   0.0333657   0.0721030
24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0374640   0.0174745   0.0574535
24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0282857   0.0150325   0.0415390
24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.1603771   0.1400267   0.1807275
24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.0735944   0.0628879   0.0843008
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0541393   0.0392072   0.0690713
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0835736   0.0636405   0.1035067
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0684706   0.0500546   0.0868867
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.2312018   0.2100659   0.2523376
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.2097858   0.1926230   0.2269487
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.2344873   0.2113786   0.2575960
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.1829349   0.1600381   0.2058318
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.2184242   0.1947515   0.2420969
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.1896032   0.1658404   0.2133659


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1657143   0.1104670   0.2209616
Birth       ki1000108-IRC              INDIA         NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1069810   0.0760961   0.1378659
Birth       ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2921739   0.2549711   0.3293768
Birth       ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.2432815   0.2116319   0.2749310
Birth       ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.2065728   0.1751584   0.2379871
Birth       ki1119695-PROBIT           BELARUS       NA                   NA                0.2087491   0.1435025   0.2739957
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1594945   0.1531752   0.1658137
Birth       ki1135781-COHORTS          GUATEMALA     NA                   NA                0.2526738   0.2215120   0.2838356
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.1750359   0.1643722   0.1856996
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1096842   0.1045577   0.1148108
Birth       kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0995399   0.0841638   0.1149160
6 months    ki0047075b-MAL-ED          INDIA         NA                   NA                0.0865385   0.0482372   0.1248397
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1250000   0.0911644   0.1588356
6 months    ki1000108-IRC              INDIA         NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0414594   0.0255348   0.0573839
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0082498   0.0066007   0.0098989
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0312058   0.0275075   0.0349041
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0325289   0.0212599   0.0437978
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.1283521   0.1194359   0.1372684
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0594974   0.0505830   0.0684118
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0846305   0.0798233   0.0894378
6 months    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0570539   0.0482012   0.0659066
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0618280   0.0373207   0.0863352
24 months   ki1000108-IRC              INDIA         NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1859504   0.1512529   0.2206479
24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0110775   0.0050478   0.0171072
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1824480   0.1460286   0.2188675
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0458801   0.0333262   0.0584341
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0921747   0.0833896   0.1009599
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.2181099   0.2082292   0.2279905
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.1947502   0.1814990   0.2080014


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH    Low                  High              1.2000000   0.4940740   2.9145433
Birth       ki0047075b-MAL-ED          BANGLADESH    Medium               High              1.8823529   0.8308823   4.2644459
Birth       ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA         Low                  High              1.0638434   0.7268800   1.5570148
Birth       ki1000108-IRC              INDIA         Medium               High              0.9786425   0.6611145   1.4486766
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA         Low                  High              0.9038604   0.6207765   1.3160348
Birth       ki1000304b-SAS-CompFeed    INDIA         Medium               High              0.7817835   0.5583945   1.0945406
Birth       ki1017093-NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH    Low                  High              1.1022079   0.7940765   1.5299059
Birth       ki1017093-NIH-Birth        BANGLADESH    Medium               High              1.2378992   0.8930884   1.7158373
Birth       ki1017093b-PROVIDE         BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH    Low                  High              1.2399808   0.8109420   1.8960079
Birth       ki1017093b-PROVIDE         BANGLADESH    Medium               High              1.2902704   0.8606852   1.9342703
Birth       ki1017093c-NIH-Crypto      BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Low                  High              0.8657362   0.6401627   1.1707948
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Medium               High              0.9241248   0.6904460   1.2368912
Birth       ki1113344-GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL         Low                  High              0.8392493   0.5159111   1.3652338
Birth       ki1113344-GMS-Nepal        NEPAL         Medium               High              1.0647941   0.6058039   1.8715405
Birth       ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS       Low                  High              1.0063258   0.9812475   1.0320450
Birth       ki1119695-PROBIT           BELARUS       Medium               High              1.0075116   0.9852418   1.0302848
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              0.9869497   0.9625892   1.0119268
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              0.9846445   0.9666751   1.0029480
Birth       ki1135781-COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA     Low                  High              1.0884848   0.7864116   1.5065892
Birth       ki1135781-COHORTS          GUATEMALA     Medium               High              1.1967034   0.8491492   1.6865107
Birth       ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         Low                  High              0.9572054   0.9028273   1.0148587
Birth       ki1135781-COHORTS          INDIA         Medium               High              0.9395429   0.8923567   0.9892242
Birth       ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  High              0.9772978   0.9358237   1.0206099
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               High              0.9938486   0.9427604   1.0477052
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  High              1.0120771   0.9798064   1.0454106
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               High              0.9979543   0.9603363   1.0370459
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low                  High              1.0388178   0.9186467   1.1747089
Birth       kiGH5241-JiVitA-4          BANGLADESH    Medium               High              1.0514218   0.9096987   1.2152242
6 months    ki0047075b-MAL-ED          INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA         Low                  High              1.1472222   0.3828517   3.4376725
6 months    ki0047075b-MAL-ED          INDIA         Medium               High              0.9194805   0.2940435   2.8752363
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  High              0.6469780   0.3082149   1.3580802
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               High              1.1179350   0.6116839   2.0431773
6 months    ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA         Low                  High              1.2482989   0.6423247   2.4259541
6 months    ki1000108-IRC              INDIA         Medium               High              1.5010712   0.7897946   2.8529125
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  High              1.9862406   1.5340725   2.5716852
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               High              1.2536867   0.6785915   2.3161659
6 months    ki1017093-NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH    Low                  High              1.7032967   0.7115903   4.0770928
6 months    ki1017093-NIH-Birth        BANGLADESH    Medium               High              1.5393430   0.6291925   3.7660601
6 months    ki1017093b-PROVIDE         BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH    Low                  High              1.2573529   0.4948615   3.1947051
6 months    ki1017093b-PROVIDE         BANGLADESH    Medium               High              1.0096618   0.3859169   2.6415457
6 months    ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS       Low                  High              1.7915200   0.9847111   3.2593759
6 months    ki1119695-PROBIT           BELARUS       Medium               High              1.3727602   0.7636644   2.4676684
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              1.7030826   1.2609691   2.3002073
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              1.3953125   1.0290792   1.8918825
6 months    ki1135781-COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     Low                  High              1.3047513   0.5293082   3.2162280
6 months    ki1135781-COHORTS          GUATEMALA     Medium               High              0.5799373   0.1896799   1.7731311
6 months    ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         Low                  High              1.6606164   1.2689560   2.1731617
6 months    ki1135781-COHORTS          INDIA         Medium               High              1.3164481   1.0102259   1.7154931
6 months    ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  High              1.3410424   0.9317297   1.9301680
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               High              1.0848091   0.7391439   1.5921266
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  High              1.0832716   0.9306772   1.2608856
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               High              1.0238688   0.8755148   1.1973611
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low                  High              2.3196411   1.5302613   3.5162197
6 months    kiGH5241-JiVitA-4          BANGLADESH    Medium               High              1.5457106   1.0205311   2.3411547
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  High              2.5079365   0.9385330   6.7016777
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               High              1.6911315   0.5834495   4.9017540
24 months   ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA         Low                  High              1.0616438   0.4318684   2.6097941
24 months   ki1000108-IRC              INDIA         Medium               High              1.4496403   0.6209420   3.3843046
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  High              0.9527818   0.4902932   1.8515315
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               High              1.0461912   0.5271294   2.0763706
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  High              1.4361589   0.7917981   2.6048971
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               High              1.1394853   0.6213447   2.0897041
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  High              1.0503454   0.5266872   2.0946504
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               High              0.8771519   0.4400784   1.7483145
24 months   ki1113344-GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  High              0.9570562   0.5192595   1.7639667
24 months   ki1113344-GMS-Nepal        NEPAL         Medium               High              1.3311378   0.6640303   2.6684444
24 months   ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS       Low                  High              0.6115717   0.3125983   1.1964877
24 months   ki1119695-PROBIT           BELARUS       Medium               High              0.5850626   0.2178056   1.5715768
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              1.2644536   0.7841950   2.0388333
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              0.9757585   0.5858763   1.6250951
24 months   ki1135781-COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     Low                  High              1.2246094   0.5858103   2.5599895
24 months   ki1135781-COHORTS          GUATEMALA     Medium               High              0.8699968   0.3783079   2.0007364
24 months   ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         Low                  High              5.6698900   3.4896992   9.2121557
24 months   ki1135781-COHORTS          INDIA         Medium               High              2.6018181   1.5928903   4.2497951
24 months   ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  High              1.5436777   1.0724202   2.2220217
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               High              1.2647135   0.8607389   1.8582875
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  High              0.9073712   0.8041518   1.0238395
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               High              1.0142107   0.8832954   1.1645294
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  High              1.1939994   1.0121841   1.4084736
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               High              1.0364514   0.8651002   1.2417423


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH    High                 NA                 0.0407143   -0.0287520    0.1101806
Birth       ki1000108-IRC              INDIA         High                 NA                 0.0030787   -0.0606507    0.0668080
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 NA                -0.0180880   -0.0443282    0.0081522
Birth       ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0315821   -0.0256686    0.0888329
Birth       ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.0345953   -0.0155990    0.0847897
Birth       ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                -0.0196693   -0.0621707    0.0228321
Birth       ki1113344-GMS-Nepal        NEPAL         High                 NA                -0.0178085   -0.1117126    0.0760955
Birth       ki1119695-PROBIT           BELARUS       High                 NA                 0.0012744   -0.0027639    0.0053126
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                -0.0009478   -0.0020983    0.0002027
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0246851   -0.0322313    0.0816016
Birth       ki1135781-COHORTS          INDIA         High                 NA                -0.0103589   -0.0187469   -0.0019709
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                -0.0012621   -0.0042454    0.0017212
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0009365   -0.0013913    0.0032644
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0037266   -0.0041858    0.0116390
6 months    ki0047075b-MAL-ED          INDIA         High                 NA                 0.0017927   -0.0587275    0.0623129
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                -0.0087580   -0.0482800    0.0307641
6 months    ki1000108-IRC              INDIA         High                 NA                 0.0267625   -0.0207626    0.0742877
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.0430669    0.0114824    0.0746514
6 months    ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0200156   -0.0098052    0.0498364
6 months    ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.0031819   -0.0183012    0.0246649
6 months    ki1119695-PROBIT           BELARUS       High                 NA                 0.0025869   -0.0001370    0.0053109
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0065227    0.0027930    0.0102524
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0000964   -0.0228389    0.0230318
6 months    ki1135781-COHORTS          INDIA         High                 NA                 0.0377172    0.0161887    0.0592457
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0076175   -0.0038265    0.0190614
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0037669   -0.0042458    0.0117795
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0212209    0.0104359    0.0320059
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0238533   -0.0032516    0.0509582
24 months   ki1000108-IRC              INDIA         High                 NA                 0.0112785   -0.0261027    0.0486597
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0076428   -0.0440819    0.0593674
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.0177149   -0.0157453    0.0511750
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                -0.0011100   -0.0332184    0.0309985
24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.0072356   -0.0883188    0.1027899
24 months   ki1119695-PROBIT           BELARUS       High                 NA                -0.0057122   -0.0145296    0.0031052
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0135572   -0.0286457    0.0557601
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0028179   -0.0220618    0.0276977
24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.0638890    0.0496655    0.0781125
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0140518    0.0011869    0.0269168
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                -0.0130919   -0.0318559    0.0056721
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0118153   -0.0071495    0.0307800


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH    High                 NA                 0.2456897   -0.3051245    0.5640385
Birth       ki1000108-IRC              INDIA         High                 NA                 0.0114781   -0.2569801    0.2226006
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 NA                -0.1690771   -0.4753887    0.0736400
Birth       ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.1080937   -0.1108540    0.2838871
Birth       ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.1573053   -0.1038842    0.3566949
Birth       ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                -0.0808500   -0.2706096    0.0805698
Birth       ki1113344-GMS-Nepal        NEPAL         High                 NA                -0.0862096   -0.6501526    0.2850048
Birth       ki1119695-PROBIT           BELARUS       High                 NA                 0.0061047   -0.0134731    0.0253044
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                -0.0059424   -0.0131800    0.0012435
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0976957   -0.1575918    0.2966837
Birth       ki1135781-COHORTS          INDIA         High                 NA                -0.0591817   -0.1081963   -0.0123349
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                -0.0081128   -0.0274914    0.0109004
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0085384   -0.0128968    0.0295199
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0374385   -0.0450119    0.1133836
6 months    ki0047075b-MAL-ED          INDIA         High                 NA                 0.0207156   -1.0000169    0.5205051
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                -0.0700637   -0.4373815    0.2033873
6 months    ki1000108-IRC              INDIA         High                 NA                 0.2022058   -0.2469699    0.4895822
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.3460916    0.1032165    0.5231890
6 months    ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.3070968   -0.3224587    0.6369528
6 months    ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.0767464   -0.6169746    0.4728444
6 months    ki1119695-PROBIT           BELARUS       High                 NA                 0.3135769   -0.1003271    0.5717849
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.2090227    0.0830986    0.3176528
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0029643   -1.0222350    0.5084250
6 months    ki1135781-COHORTS          INDIA         High                 NA                 0.2938574    0.1062349    0.4420934
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.1280301   -0.0859504    0.2998469
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0445095   -0.0551345    0.1347434
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.3719446    0.1562321    0.5325094
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.3858008   -0.2035002    0.6865471
24 months   ki1000108-IRC              INDIA         High                 NA                 0.1488033   -0.5154091    0.5218877
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0617188   -0.4638855    0.3986062
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.1654339   -0.2109267    0.4248202
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                -0.0126784   -0.4545817    0.2949743
24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.0389113   -0.6404642    0.4369329
24 months   ki1119695-PROBIT           BELARUS       High                 NA                -0.5156567   -1.5660755    0.1047749
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0743070   -0.1881319    0.2787775
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0614198   -0.6721728    0.4731808
24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.6931291    0.5151402    0.8057795
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.2060657   -0.0036458    0.3719581
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                -0.0600244   -0.1497122    0.0226670
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0606689   -0.0419347    0.1531687
