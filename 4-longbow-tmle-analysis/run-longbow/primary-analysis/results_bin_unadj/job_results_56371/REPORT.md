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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        meducyrs    swasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              0       63     175  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              1        1     175  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               0       58     175  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               1        2     175  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            0       48     175  swasted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            1        3     175  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         High              0       18      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         High              1        0      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         Low               0       17      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         Low               1        0      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium            0       27      62  swasted          
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium            1        0      62  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          High              0        8      38  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          High              1        0      38  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          Low               0       18      38  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          Low               1        0      38  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          Medium            0       12      38  swasted          
Birth       ki0047075b-MAL-ED          INDIA                          Medium            1        0      38  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          High              0        4      24  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          High              1        1      24  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          Low               0       12      24  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          Low               1        0      24  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            0        7      24  swasted          
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            1        0      24  swasted          
Birth       ki0047075b-MAL-ED          PERU                           High              0       65     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           High              1        0     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           Low               0       83     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           Low               1        0     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           Medium            0       80     228  swasted          
Birth       ki0047075b-MAL-ED          PERU                           Medium            1        0     228  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       35     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       59     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        0     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       26     120  swasted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        0     120  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        7      97  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0      97  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       32      97  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0      97  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       58      97  swasted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0      97  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High              0       49      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High              1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       15      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low               1        0      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       21      86  swasted          
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1        1      86  swasted          
Birth       ki1000108-IRC              INDIA                          High              0       89     343  swasted          
Birth       ki1000108-IRC              INDIA                          High              1       12     343  swasted          
Birth       ki1000108-IRC              INDIA                          Low               0      102     343  swasted          
Birth       ki1000108-IRC              INDIA                          Low               1       24     343  swasted          
Birth       ki1000108-IRC              INDIA                          Medium            0       98     343  swasted          
Birth       ki1000108-IRC              INDIA                          Medium            1       18     343  swasted          
Birth       ki1000109-EE               PAKISTAN                       High              0        5     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       High              1        0     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       Low               0      150     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       Low               1        6     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       Medium            0       16     177  swasted          
Birth       ki1000109-EE               PAKISTAN                       Medium            1        0     177  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              0      229    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              1        4    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               0      488    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               1       12    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            0      357    1103  swasted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            1       13    1103  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     High              0      151     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     High              1       12     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low               0      198     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low               1       12     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium            0      188     575  swasted          
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium            1       14     575  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     High              0      166     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     High              1        3     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low               0      162     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low               1        2     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium            0      191     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium            1        8     532  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              0      224     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              1       12     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      210     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       16     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      226     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       19     707  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          High              0       76     639  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          High              1        5     639  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          Low               0      430     639  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          Low               1       14     639  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium            0      106     639  swasted          
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium            1        8     639  swasted          
Birth       ki1119695-PROBIT           BELARUS                        High              0     2103   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        High              1      138   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        Low               0     4604   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        Low               1      340   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        Medium            0     6217   13830  swasted          
Birth       ki1119695-PROBIT           BELARUS                        Medium            1      428   13830  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              0     6547   12897  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              1      468   12897  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2549   12897  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      148   12897  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     3010   12897  swasted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      175   12897  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      High              0      145     748  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      High              1       12     748  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      Low               0      325     748  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      Low               1       19     748  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            0      220     748  swasted          
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            1       27     748  swasted          
Birth       ki1135781-COHORTS          INDIA                          High              0      632    4879  swasted          
Birth       ki1135781-COHORTS          INDIA                          High              1       24    4879  swasted          
Birth       ki1135781-COHORTS          INDIA                          Low               0     1513    4879  swasted          
Birth       ki1135781-COHORTS          INDIA                          Low               1       89    4879  swasted          
Birth       ki1135781-COHORTS          INDIA                          Medium            0     2494    4879  swasted          
Birth       ki1135781-COHORTS          INDIA                          Medium            1      127    4879  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    High              0     1076    2899  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    High              1       52    2899  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               0      810    2899  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               1       28    2899  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            0      892    2899  swasted          
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            1       41    2899  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              0     5525   17988  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              1      106   17988  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               0     6760   17988  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               1      137   17988  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     5354   17988  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      106   17988  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              0      795    2391  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              1       10    2391  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               0      814    2391  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               1       15    2391  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      751    2391  swasted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            1        6    2391  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              0       73     196  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              1        0     196  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               0       62     196  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               1        2     196  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            0       59     196  swasted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            1        0     196  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         High              0       71     208  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         High              1        0     208  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         Low               0       56     208  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         Low               1        0     208  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            0       81     208  swasted          
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            1        0     208  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          High              0       58     208  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          High              1        1     208  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          Low               0       70     208  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          Low               1        2     208  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       75     208  swasted          
6 months    ki0047075b-MAL-ED          INDIA                          Medium            1        2     208  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          High              0       53     221  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          High              1        0     221  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          Low               0       93     221  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          Low               1        0     221  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            0       75     221  swasted          
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            1        0     221  swasted          
6 months    ki0047075b-MAL-ED          PERU                           High              0       81     272  swasted          
6 months    ki0047075b-MAL-ED          PERU                           High              1        0     272  swasted          
6 months    ki0047075b-MAL-ED          PERU                           Low               0       94     272  swasted          
6 months    ki0047075b-MAL-ED          PERU                           Low               1        0     272  swasted          
6 months    ki0047075b-MAL-ED          PERU                           Medium            0       97     272  swasted          
6 months    ki0047075b-MAL-ED          PERU                           Medium            1        0     272  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       70     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      125     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        2     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       56     254  swasted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        1     254  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        9     203  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     203  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       62     203  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0     203  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0      132     203  swasted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     203  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High              0      152     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High              1        5     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low               0      101     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low               1        3     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0      103     368  swasted          
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1        4     368  swasted          
6 months    ki1000108-IRC              INDIA                          High              0      118     408  swasted          
6 months    ki1000108-IRC              INDIA                          High              1        6     408  swasted          
6 months    ki1000108-IRC              INDIA                          Low               0      138     408  swasted          
6 months    ki1000108-IRC              INDIA                          Low               1        7     408  swasted          
6 months    ki1000108-IRC              INDIA                          Medium            0      130     408  swasted          
6 months    ki1000108-IRC              INDIA                          Medium            1        9     408  swasted          
6 months    ki1000109-EE               PAKISTAN                       High              0       15     372  swasted          
6 months    ki1000109-EE               PAKISTAN                       High              1        0     372  swasted          
6 months    ki1000109-EE               PAKISTAN                       Low               0      311     372  swasted          
6 months    ki1000109-EE               PAKISTAN                       Low               1       13     372  swasted          
6 months    ki1000109-EE               PAKISTAN                       Medium            0       33     372  swasted          
6 months    ki1000109-EE               PAKISTAN                       Medium            1        0     372  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              0      285    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              1        4    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               0      565    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               1       31    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            0      441    1334  swasted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            1        8    1334  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              0       35     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              1        0     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               0      287     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               1       17     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       39     380  swasted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1        2     380  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     High              0      153     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     High              1        2     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low               0      191     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low               1        4     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium            0      187     537  swasted          
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium            1        0     537  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      208     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1        1     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      184     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1        3     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      206     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1        1     603  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              0      240     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              1        0     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      229     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        0     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      246     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        0     715  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      508    2020  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        4    2020  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       74    2020  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0    2020  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1426    2020  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        8    2020  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High              0      117     277  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High              1        0     277  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low               0       73     277  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low               1        0     277  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium            0       87     277  swasted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium            1        0     277  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          High              0       68     561  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          High              1        0     561  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      394     561  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1        5     561  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0       92     561  swasted          
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1        2     561  swasted          
6 months    ki1119695-PROBIT           BELARUS                        High              0     2656   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        High              1        1   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        Low               0     5632   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        Low               1       10   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        Medium            0     7454   15758  swasted          
6 months    ki1119695-PROBIT           BELARUS                        Medium            1        5   15758  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0     4569    8492  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1       35    8492  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1745    8492  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       21    8492  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     2099    8492  swasted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1       23    8492  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      High              0      182     953  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      High              1        3     953  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      Low               0      447     953  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      Low               1        2     953  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            0      318     953  swasted          
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            1        1     953  swasted          
6 months    ki1135781-COHORTS          INDIA                          High              0      730    5407  swasted          
6 months    ki1135781-COHORTS          INDIA                          High              1        7    5407  swasted          
6 months    ki1135781-COHORTS          INDIA                          Low               0     1705    5407  swasted          
6 months    ki1135781-COHORTS          INDIA                          Low               1       69    5407  swasted          
6 months    ki1135781-COHORTS          INDIA                          Medium            0     2811    5407  swasted          
6 months    ki1135781-COHORTS          INDIA                          Medium            1       85    5407  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    High              0     1006    2706  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    High              1        9    2706  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               0      811    2706  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               1       13    2706  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            0      854    2706  swasted          
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            1       13    2706  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         High              0      298     813  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         High              1        0     813  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         Low               0      261     813  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         Low               1        0     813  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         Medium            0      254     813  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         Medium            1        0     813  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     5837   16767  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1       72   16767  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0     5531   16767  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1       81   16767  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     5170   16767  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1       76   16767  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0     1714    4820  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1        3    4820  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1567    4820  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1       17    4820  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1506    4820  swasted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       13    4820  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       64     171  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1        0     171  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       59     171  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1        0     171  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       48     171  swasted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1        0     171  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         High              0       62     168  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         High              1        0     168  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         Low               0       41     168  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         Low               1        1     168  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            0       64     168  swasted          
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            1        0     168  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          High              0       55     199  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          High              1        0     199  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          Low               0       68     199  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          Low               1        1     199  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       74     199  swasted          
24 months   ki0047075b-MAL-ED          INDIA                          Medium            1        1     199  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          High              0       48     213  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          High              1        0     213  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       91     213  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          Low               1        0     213  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       74     213  swasted          
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        0     213  swasted          
24 months   ki0047075b-MAL-ED          PERU                           High              0       59     200  swasted          
24 months   ki0047075b-MAL-ED          PERU                           High              1        0     200  swasted          
24 months   ki0047075b-MAL-ED          PERU                           Low               0       73     200  swasted          
24 months   ki0047075b-MAL-ED          PERU                           Low               1        1     200  swasted          
24 months   ki0047075b-MAL-ED          PERU                           Medium            0       66     200  swasted          
24 months   ki0047075b-MAL-ED          PERU                           Medium            1        1     200  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       67     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      120     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        0     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       51     238  swasted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        0     238  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        7     175  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     175  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       54     175  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0     175  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0      114     175  swasted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     175  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              0      158     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              1        0     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               0      103     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               1        2     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0      108     372  swasted          
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1        1     372  swasted          
24 months   ki1000108-IRC              INDIA                          High              0      122     409  swasted          
24 months   ki1000108-IRC              INDIA                          High              1        2     409  swasted          
24 months   ki1000108-IRC              INDIA                          Low               0      145     409  swasted          
24 months   ki1000108-IRC              INDIA                          Low               1        1     409  swasted          
24 months   ki1000108-IRC              INDIA                          Medium            0      137     409  swasted          
24 months   ki1000108-IRC              INDIA                          Medium            1        2     409  swasted          
24 months   ki1000109-EE               PAKISTAN                       High              0        6     166  swasted          
24 months   ki1000109-EE               PAKISTAN                       High              1        0     166  swasted          
24 months   ki1000109-EE               PAKISTAN                       Low               0      141     166  swasted          
24 months   ki1000109-EE               PAKISTAN                       Low               1        2     166  swasted          
24 months   ki1000109-EE               PAKISTAN                       Medium            0       15     166  swasted          
24 months   ki1000109-EE               PAKISTAN                       Medium            1        2     166  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     High              0      128     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     High              1        2     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               0      149     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               1        3     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            0      141     428  swasted          
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            1        5     428  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      199     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1        2     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      170     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1        4     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      201     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1        3     579  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      190     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1        1     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      145     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        1     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      175     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        2     514  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        2       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        4       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        0       6  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       53     484  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          High              1        2     484  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      335     484  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1        9     484  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       81     484  swasted          
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1        4     484  swasted          
24 months   ki1119695-PROBIT           BELARUS                        High              0      654    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        High              1        0    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        Low               0     1380    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        Low               1        2    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        Medium            0     1934    3972  swasted          
24 months   ki1119695-PROBIT           BELARUS                        Medium            1        2    3972  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0      168     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1       16     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0      109     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1        9     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0      125     433  swasted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1        6     433  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      High              0      209    1068  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      High              1        0    1068  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      Low               0      509    1068  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      Low               1        3    1068  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0      346    1068  swasted          
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1        1    1068  swasted          
24 months   ki1135781-COHORTS          INDIA                          High              0      599    4166  swasted          
24 months   ki1135781-COHORTS          INDIA                          High              1        2    4166  swasted          
24 months   ki1135781-COHORTS          INDIA                          Low               0     1238    4166  swasted          
24 months   ki1135781-COHORTS          INDIA                          Low               1       26    4166  swasted          
24 months   ki1135781-COHORTS          INDIA                          Medium            0     2286    4166  swasted          
24 months   ki1135781-COHORTS          INDIA                          Medium            1       15    4166  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      903    2449  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    High              1        8    2449  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      741    2449  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1        7    2449  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      780    2449  swasted          
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1       10    2449  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         High              0      214     556  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         High              1        0     556  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         Low               0      172     556  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         Low               1        0     556  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      169     556  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         Medium            1        1     556  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     2809    8592  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      103    8592  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     2881    8592  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1      118    8592  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     2569    8592  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      112    8592  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0     1652    4724  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1       36    4724  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1477    4724  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1       51    4724  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1466    4724  swasted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       42    4724  swasted          


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/36018570-2af2-4dd2-aac6-4de1ca5db6c7/b841fa6e-c40a-4181-a17a-3c882df8b397/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/36018570-2af2-4dd2-aac6-4de1ca5db6c7/b841fa6e-c40a-4181-a17a-3c882df8b397/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/36018570-2af2-4dd2-aac6-4de1ca5db6c7/b841fa6e-c40a-4181-a17a-3c882df8b397/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/36018570-2af2-4dd2-aac6-4de1ca5db6c7/b841fa6e-c40a-4181-a17a-3c882df8b397/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA         High                 NA                0.1188119   0.0556165   0.1820073
Birth       ki1000108-IRC           INDIA         Low                  NA                0.1904762   0.1218117   0.2591406
Birth       ki1000108-IRC           INDIA         Medium               NA                0.1551724   0.0891875   0.2211573
Birth       ki1017093-NIH-Birth     BANGLADESH    High                 NA                0.0736196   0.0334938   0.1137454
Birth       ki1017093-NIH-Birth     BANGLADESH    Low                  NA                0.0571429   0.0257218   0.0885639
Birth       ki1017093-NIH-Birth     BANGLADESH    Medium               NA                0.0693069   0.0342526   0.1043613
Birth       ki1017093c-NIH-Crypto   BANGLADESH    High                 NA                0.0508475   0.0227994   0.0788955
Birth       ki1017093c-NIH-Crypto   BANGLADESH    Low                  NA                0.0707965   0.0373336   0.1042593
Birth       ki1017093c-NIH-Crypto   BANGLADESH    Medium               NA                0.0775510   0.0440362   0.1110659
Birth       ki1113344-GMS-Nepal     NEPAL         High                 NA                0.0617284   0.0092776   0.1141792
Birth       ki1113344-GMS-Nepal     NEPAL         Low                  NA                0.0315315   0.0152644   0.0477987
Birth       ki1113344-GMS-Nepal     NEPAL         Medium               NA                0.0701754   0.0232478   0.1171031
Birth       ki1119695-PROBIT        BELARUS       High                 NA                0.0615797   0.0292120   0.0939473
Birth       ki1119695-PROBIT        BELARUS       Low                  NA                0.0687702   0.0280863   0.1094542
Birth       ki1119695-PROBIT        BELARUS       Medium               NA                0.0644093   0.0336774   0.0951413
Birth       ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                0.0667142   0.0608748   0.0725536
Birth       ki1126311-ZVITAMBO      ZIMBABWE      Low                  NA                0.0548758   0.0462805   0.0634711
Birth       ki1126311-ZVITAMBO      ZIMBABWE      Medium               NA                0.0549451   0.0470309   0.0628592
Birth       ki1135781-COHORTS       GUATEMALA     High                 NA                0.0764331   0.0348455   0.1180207
Birth       ki1135781-COHORTS       GUATEMALA     Low                  NA                0.0552326   0.0310769   0.0793882
Birth       ki1135781-COHORTS       GUATEMALA     Medium               NA                0.1093117   0.0703726   0.1482509
Birth       ki1135781-COHORTS       INDIA         High                 NA                0.0365854   0.0222172   0.0509535
Birth       ki1135781-COHORTS       INDIA         Low                  NA                0.0555556   0.0443376   0.0667735
Birth       ki1135781-COHORTS       INDIA         Medium               NA                0.0484548   0.0402335   0.0566761
Birth       ki1135781-COHORTS       PHILIPPINES   High                 NA                0.0460993   0.0338597   0.0583389
Birth       ki1135781-COHORTS       PHILIPPINES   Low                  NA                0.0334129   0.0212432   0.0455825
Birth       ki1135781-COHORTS       PHILIPPINES   Medium               NA                0.0439443   0.0307897   0.0570988
Birth       kiGH5241-JiVitA-3       BANGLADESH    High                 NA                0.0188244   0.0150829   0.0225658
Birth       kiGH5241-JiVitA-3       BANGLADESH    Low                  NA                0.0198637   0.0156680   0.0240594
Birth       kiGH5241-JiVitA-3       BANGLADESH    Medium               NA                0.0194139   0.0152771   0.0235507
Birth       kiGH5241-JiVitA-4       BANGLADESH    High                 NA                0.0124224   0.0011008   0.0237440
Birth       kiGH5241-JiVitA-4       BANGLADESH    Low                  NA                0.0180941   0.0086591   0.0275291
Birth       kiGH5241-JiVitA-4       BANGLADESH    Medium               NA                0.0079260   0.0011127   0.0147393
6 months    ki1000108-IRC           INDIA         High                 NA                0.0483871   0.0105720   0.0862022
6 months    ki1000108-IRC           INDIA         Low                  NA                0.0482759   0.0133443   0.0832074
6 months    ki1000108-IRC           INDIA         Medium               NA                0.0647482   0.0237890   0.1057074
6 months    ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                0.0076021   0.0050930   0.0101112
6 months    ki1126311-ZVITAMBO      ZIMBABWE      Low                  NA                0.0118913   0.0068354   0.0169471
6 months    ki1126311-ZVITAMBO      ZIMBABWE      Medium               NA                0.0108388   0.0064330   0.0152446
6 months    ki1135781-COHORTS       INDIA         High                 NA                0.0094980   0.0024947   0.0165012
6 months    ki1135781-COHORTS       INDIA         Low                  NA                0.0388952   0.0298972   0.0478931
6 months    ki1135781-COHORTS       INDIA         Medium               NA                0.0293508   0.0232029   0.0354988
6 months    ki1135781-COHORTS       PHILIPPINES   High                 NA                0.0088670   0.0030987   0.0146353
6 months    ki1135781-COHORTS       PHILIPPINES   Low                  NA                0.0157767   0.0072669   0.0242865
6 months    ki1135781-COHORTS       PHILIPPINES   Medium               NA                0.0149942   0.0069033   0.0230852
6 months    kiGH5241-JiVitA-3       BANGLADESH    High                 NA                0.0121848   0.0089520   0.0154176
6 months    kiGH5241-JiVitA-3       BANGLADESH    Low                  NA                0.0144334   0.0109826   0.0178842
6 months    kiGH5241-JiVitA-3       BANGLADESH    Medium               NA                0.0144872   0.0107306   0.0182439
24 months   ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                0.0869565   0.0461962   0.1277169
24 months   ki1126311-ZVITAMBO      ZIMBABWE      Low                  NA                0.0762712   0.0283242   0.1242182
24 months   ki1126311-ZVITAMBO      ZIMBABWE      Medium               NA                0.0458015   0.0099610   0.0816420
24 months   ki1135781-COHORTS       PHILIPPINES   High                 NA                0.0087816   0.0027219   0.0148412
24 months   ki1135781-COHORTS       PHILIPPINES   Low                  NA                0.0093583   0.0024568   0.0162598
24 months   ki1135781-COHORTS       PHILIPPINES   Medium               NA                0.0126582   0.0048609   0.0204555
24 months   kiGH5241-JiVitA-3       BANGLADESH    High                 NA                0.0353709   0.0287150   0.0420268
24 months   kiGH5241-JiVitA-3       BANGLADESH    Low                  NA                0.0393464   0.0318359   0.0468570
24 months   kiGH5241-JiVitA-3       BANGLADESH    Medium               NA                0.0417755   0.0331654   0.0503855
24 months   kiGH5241-JiVitA-4       BANGLADESH    High                 NA                0.0213270   0.0118002   0.0308539
24 months   kiGH5241-JiVitA-4       BANGLADESH    Low                  NA                0.0333770   0.0237923   0.0429616
24 months   kiGH5241-JiVitA-4       BANGLADESH    Medium               NA                0.0278515   0.0198389   0.0358640


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


agecat      studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC           INDIA         Low                  High              1.6031746   0.8431932   3.0481375
Birth       ki1000108-IRC           INDIA         Medium               High              1.3060345   0.6610092   2.5804874
Birth       ki1017093-NIH-Birth     BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth     BANGLADESH    Low                  High              0.7761905   0.3578708   1.6834892
Birth       ki1017093-NIH-Birth     BANGLADESH    Medium               High              0.9414191   0.4475658   1.9802003
Birth       ki1017093c-NIH-Crypto   BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH    Low                  High              1.3923304   0.6733838   2.8788692
Birth       ki1017093c-NIH-Crypto   BANGLADESH    Medium               High              1.5251701   0.7568142   3.0735995
Birth       ki1113344-GMS-Nepal     NEPAL         High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal     NEPAL         Low                  High              0.5108108   0.1890368   1.3803012
Birth       ki1113344-GMS-Nepal     NEPAL         Medium               High              1.1368421   0.3855700   3.3519466
Birth       ki1119695-PROBIT        BELARUS       High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT        BELARUS       Low                  High              1.1167687   0.8080783   1.5433805
Birth       ki1119695-PROBIT        BELARUS       Medium               High              1.0459515   0.7852662   1.3931766
Birth       ki1126311-ZVITAMBO      ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO      ZIMBABWE      Low                  High              0.8225505   0.6874447   0.9842092
Birth       ki1126311-ZVITAMBO      ZIMBABWE      Medium               High              0.8235888   0.6958436   0.9747859
Birth       ki1135781-COHORTS       GUATEMALA     High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS       GUATEMALA     Low                  High              0.7226260   0.3595339   1.4524034
Birth       ki1135781-COHORTS       GUATEMALA     Medium               High              1.4301619   0.7463557   2.7404668
Birth       ki1135781-COHORTS       INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS       INDIA         Low                  High              1.5185185   0.9764190   2.3615871
Birth       ki1135781-COHORTS       INDIA         Medium               High              1.3244309   0.8634401   2.0315447
Birth       ki1135781-COHORTS       PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS       PHILIPPINES   Low                  High              0.7248026   0.4618214   1.1375369
Birth       ki1135781-COHORTS       PHILIPPINES   Medium               High              0.9532525   0.6389039   1.4222646
Birth       kiGH5241-JiVitA-3       BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH    Low                  High              1.0552127   0.7894611   1.4104226
Birth       kiGH5241-JiVitA-3       BANGLADESH    Medium               High              1.0313187   0.7714862   1.3786614
Birth       kiGH5241-JiVitA-4       BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4       BANGLADESH    Low                  High              1.4565742   0.5084765   4.1724806
Birth       kiGH5241-JiVitA-4       BANGLADESH    Medium               High              0.6380449   0.1818054   2.2392150
6 months    ki1000108-IRC           INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC           INDIA         Low                  High              0.9977011   0.3439183   2.8943142
6 months    ki1000108-IRC           INDIA         Medium               High              1.3381295   0.4895938   3.6572985
6 months    ki1126311-ZVITAMBO      ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO      ZIMBABWE      Low                  High              1.5642129   0.9131440   2.6794919
6 months    ki1126311-ZVITAMBO      ZIMBABWE      Medium               High              1.4257708   0.8445987   2.4068501
6 months    ki1135781-COHORTS       INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       INDIA         Low                  High              4.0951039   1.8908265   8.8690715
6 months    ki1135781-COHORTS       INDIA         Medium               High              3.0902230   1.4358105   6.6509322
6 months    ki1135781-COHORTS       PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS       PHILIPPINES   Low                  High              1.7792611   0.7642414   4.1423691
6 months    ki1135781-COHORTS       PHILIPPINES   Medium               High              1.6910163   0.7262384   3.9374617
6 months    kiGH5241-JiVitA-3       BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH    Low                  High              1.1845376   0.8291256   1.6923001
6 months    kiGH5241-JiVitA-3       BANGLADESH    Medium               High              1.1889588   0.8289283   1.7053621
24 months   ki1126311-ZVITAMBO      ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO      ZIMBABWE      Low                  High              0.8771186   0.4004071   1.9213875
24 months   ki1126311-ZVITAMBO      ZIMBABWE      Medium               High              0.5267176   0.2115570   1.3113791
24 months   ki1135781-COHORTS       PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS       PHILIPPINES   Low                  High              1.0656751   0.3881533   2.9258120
24 months   ki1135781-COHORTS       PHILIPPINES   Medium               High              1.4414557   0.5715907   3.6351088
24 months   kiGH5241-JiVitA-3       BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH    Low                  High              1.1123967   0.8498132   1.4561158
24 months   kiGH5241-JiVitA-3       BANGLADESH    Medium               High              1.1810692   0.8950960   1.5584077
24 months   kiGH5241-JiVitA-4       BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4       BANGLADESH    Low                  High              1.5650087   0.9178047   2.6685985
24 months   kiGH5241-JiVitA-4       BANGLADESH    Medium               High              1.3059240   0.7611871   2.2404970


### Parameter: PAR


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC           INDIA         High                 NA                 0.0386225   -0.0173388    0.0945838
Birth       ki1017093-NIH-Birth     BANGLADESH    High                 NA                -0.0075327   -0.0408537    0.0257883
Birth       ki1017093c-NIH-Crypto   BANGLADESH    High                 NA                 0.0156306   -0.0088471    0.0401084
Birth       ki1113344-GMS-Nepal     NEPAL         High                 NA                -0.0194749   -0.0674050    0.0284552
Birth       ki1119695-PROBIT        BELARUS       High                 NA                 0.0039301   -0.0101769    0.0180371
Birth       ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                -0.0053821   -0.0091442   -0.0016200
Birth       ki1135781-COHORTS       GUATEMALA     High                 NA                 0.0011070   -0.0359245    0.0381384
Birth       ki1135781-COHORTS       INDIA         High                 NA                 0.0126050   -0.0010976    0.0263077
Birth       ki1135781-COHORTS       PHILIPPINES   High                 NA                -0.0043608   -0.0136476    0.0049261
Birth       kiGH5241-JiVitA-3       BANGLADESH    High                 NA                 0.0005775   -0.0027372    0.0038921
Birth       kiGH5241-JiVitA-4       BANGLADESH    High                 NA                 0.0005429   -0.0079350    0.0090208
6 months    ki1000108-IRC           INDIA         High                 NA                 0.0055345   -0.0267498    0.0378187
6 months    ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                 0.0017008   -0.0002068    0.0036084
6 months    ki1135781-COHORTS       INDIA         High                 NA                 0.0202783    0.0127813    0.0277752
6 months    ki1135781-COHORTS       PHILIPPINES   High                 NA                 0.0040672   -0.0010750    0.0092095
6 months    kiGH5241-JiVitA-3       BANGLADESH    High                 NA                 0.0014730   -0.0011635    0.0041095
24 months   ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                -0.0153630   -0.0443536    0.0136276
24 months   ki1135781-COHORTS       PHILIPPINES   High                 NA                 0.0014267   -0.0035989    0.0064523
24 months   kiGH5241-JiVitA-3       BANGLADESH    High                 NA                 0.0033861   -0.0023410    0.0091132
24 months   kiGH5241-JiVitA-4       BANGLADESH    High                 NA                 0.0059804   -0.0014672    0.0134280


### Parameter: PAF


agecat      studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC           INDIA         High                 NA                 0.2453245   -0.2028254    0.5265023
Birth       ki1017093-NIH-Birth     BANGLADESH    High                 NA                -0.1139813   -0.7500217    0.2908921
Birth       ki1017093c-NIH-Crypto   BANGLADESH    High                 NA                 0.2351244   -0.2295204    0.5241765
Birth       ki1113344-GMS-Nepal     NEPAL         High                 NA                -0.4609053   -2.1514607    0.3227761
Birth       ki1119695-PROBIT        BELARUS       High                 NA                 0.0599927   -0.1747178    0.2478077
Birth       ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                -0.0877533   -0.1505957   -0.0283431
Birth       ki1135781-COHORTS       GUATEMALA     High                 NA                 0.0142763   -0.6001614    0.3927792
Birth       ki1135781-COHORTS       INDIA         High                 NA                 0.2562500   -0.0792375    0.4874492
Birth       ki1135781-COHORTS       PHILIPPINES   High                 NA                -0.1044780   -0.3501471    0.0964897
Birth       kiGH5241-JiVitA-3       BANGLADESH    High                 NA                 0.0297631   -0.1563154    0.1858971
Birth       kiGH5241-JiVitA-4       BANGLADESH    High                 NA                 0.0418754   -0.9064856    0.5184843
6 months    ki1000108-IRC           INDIA         High                 NA                 0.1026393   -0.7462155    0.5388563
6 months    ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                 0.1828240   -0.0452424    0.3611275
6 months    ki1135781-COHORTS       INDIA         High                 NA                 0.6810218    0.3441589    0.8448601
6 months    ki1135781-COHORTS       PHILIPPINES   High                 NA                 0.3144546   -0.2005200    0.6085259
6 months    kiGH5241-JiVitA-3       BANGLADESH    High                 NA                 0.1078490   -0.1070454    0.2810291
24 months   ki1126311-ZVITAMBO      ZIMBABWE      High                 NA                -0.2145863   -0.6877207    0.1259100
24 months   ki1135781-COHORTS       PHILIPPINES   High                 NA                 0.1397585   -0.5193606    0.5129429
24 months   kiGH5241-JiVitA-3       BANGLADESH    High                 NA                 0.0873676   -0.0717408    0.2228551
24 months   kiGH5241-JiVitA-4       BANGLADESH    High                 NA                 0.2190014   -0.1180489    0.4544436
