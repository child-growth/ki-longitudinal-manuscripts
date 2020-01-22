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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        meducyrs    wasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  -------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             0       56     175  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             1        8     175  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              0       51     175  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              1        9     175  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           0       39     175  wasted           
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           1       12     175  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         High             0       18      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         High             1        0      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         Low              0       16      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         Low              1        1      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium           0       26      62  wasted           
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium           1        1      62  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          High             0        8      38  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          High             1        0      38  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          Low              0       15      38  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          Low              1        3      38  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          Medium           0       11      38  wasted           
Birth       ki0047075b-MAL-ED          INDIA                          Medium           1        1      38  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          High             0        4      24  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          High             1        1      24  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          Low              0       12      24  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          Low              1        0      24  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           0        6      24  wasted           
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           1        1      24  wasted           
Birth       ki0047075b-MAL-ED          PERU                           High             0       63     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           High             1        2     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           Low              0       83     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           Low              1        0     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           Medium           0       77     228  wasted           
Birth       ki0047075b-MAL-ED          PERU                           Medium           1        3     228  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       32     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        3     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0       53     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        6     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       23     120  wasted           
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        3     120  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0        7      97  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        0      97  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       32      97  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        0      97  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0       57      97  wasted           
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        1      97  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High             0       44      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High             1        5      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low              0       13      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low              1        2      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium           0       18      86  wasted           
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium           1        4      86  wasted           
Birth       ki1000108-IRC              INDIA                          High             0       77     343  wasted           
Birth       ki1000108-IRC              INDIA                          High             1       24     343  wasted           
Birth       ki1000108-IRC              INDIA                          Low              0       92     343  wasted           
Birth       ki1000108-IRC              INDIA                          Low              1       34     343  wasted           
Birth       ki1000108-IRC              INDIA                          Medium           0       82     343  wasted           
Birth       ki1000108-IRC              INDIA                          Medium           1       34     343  wasted           
Birth       ki1000109-EE               PAKISTAN                       High             0        5     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       High             1        0     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       Low              0      136     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       Low              1       20     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       Medium           0       14     177  wasted           
Birth       ki1000109-EE               PAKISTAN                       Medium           1        2     177  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             0      206    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             1       27    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              0      444    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              1       56    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           0      335    1103  wasted           
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           1       35    1103  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     High             0      121     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     High             1       42     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low              0      150     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low              1       60     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium           0      136     575  wasted           
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium           1       66     575  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     High             0      138     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     High             1       31     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low              0      126     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low              1       38     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium           0      151     532  wasted           
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium           1       48     532  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             0      174     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             1       62     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      178     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       48     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      183     707  wasted           
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1       62     707  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          High             0       61     639  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          High             1       20     639  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          Low              0      361     639  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          Low              1       83     639  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium           0       85     639  wasted           
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium           1       29     639  wasted           
Birth       ki1119695-PROBIT           BELARUS                        High             0     1787   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        High             1      454   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        Low              0     3897   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        Low              1     1047   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        Medium           0     5259   13830  wasted           
Birth       ki1119695-PROBIT           BELARUS                        Medium           1     1386   13830  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             0     5847   12897  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             1     1168   12897  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     2307   12897  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              1      390   12897  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     2686   12897  wasted           
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1      499   12897  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      High             0      124     748  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      High             1       33     748  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      Low              0      258     748  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      Low              1       86     748  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      Medium           0      177     748  wasted           
Birth       ki1135781-COHORTS          GUATEMALA                      Medium           1       70     748  wasted           
Birth       ki1135781-COHORTS          INDIA                          High             0      558    4879  wasted           
Birth       ki1135781-COHORTS          INDIA                          High             1       98    4879  wasted           
Birth       ki1135781-COHORTS          INDIA                          Low              0     1297    4879  wasted           
Birth       ki1135781-COHORTS          INDIA                          Low              1      305    4879  wasted           
Birth       ki1135781-COHORTS          INDIA                          Medium           0     2170    4879  wasted           
Birth       ki1135781-COHORTS          INDIA                          Medium           1      451    4879  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    High             0      929    2899  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    High             1      199    2899  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    Low              0      727    2899  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    Low              1      111    2899  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium           0      792    2899  wasted           
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium           1      141    2899  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             0     5034   17988  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             1      597   17988  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              0     6097   17988  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              1      800   17988  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     4884   17988  wasted           
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      576   17988  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             0      725    2391  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             1       80    2391  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              0      736    2391  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              1       93    2391  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           0      692    2391  wasted           
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           1       65    2391  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             0       72     196  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             1        1     196  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              0       60     196  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              1        4     196  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           0       58     196  wasted           
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           1        1     196  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         High             0       71     208  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         High             1        0     208  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         Low              0       55     208  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         Low              1        1     208  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium           0       81     208  wasted           
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium           1        0     208  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          High             0       54     208  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          High             1        5     208  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          Low              0       65     208  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          Low              1        7     208  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          Medium           0       71     208  wasted           
6 months    ki0047075b-MAL-ED          INDIA                          Medium           1        6     208  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          High             0       53     221  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          High             1        0     221  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          Low              0       92     221  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          Low              1        1     221  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          Medium           0       73     221  wasted           
6 months    ki0047075b-MAL-ED          NEPAL                          Medium           1        2     221  wasted           
6 months    ki0047075b-MAL-ED          PERU                           High             0       81     272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           High             1        0     272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           Low              0       94     272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           Low              1        0     272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           Medium           0       97     272  wasted           
6 months    ki0047075b-MAL-ED          PERU                           Medium           1        0     272  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       70     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0      122     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        5     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       55     254  wasted           
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        2     254  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0        9     203  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        0     203  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       62     203  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        0     203  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0      131     203  wasted           
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        1     203  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High             0      136     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High             1       21     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low              0       95     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low              1        9     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium           0       91     368  wasted           
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium           1       16     368  wasted           
6 months    ki1000108-IRC              INDIA                          High             0      111     408  wasted           
6 months    ki1000108-IRC              INDIA                          High             1       13     408  wasted           
6 months    ki1000108-IRC              INDIA                          Low              0      126     408  wasted           
6 months    ki1000108-IRC              INDIA                          Low              1       19     408  wasted           
6 months    ki1000108-IRC              INDIA                          Medium           0      117     408  wasted           
6 months    ki1000108-IRC              INDIA                          Medium           1       22     408  wasted           
6 months    ki1000109-EE               PAKISTAN                       High             0       15     372  wasted           
6 months    ki1000109-EE               PAKISTAN                       High             1        0     372  wasted           
6 months    ki1000109-EE               PAKISTAN                       Low              0      280     372  wasted           
6 months    ki1000109-EE               PAKISTAN                       Low              1       44     372  wasted           
6 months    ki1000109-EE               PAKISTAN                       Medium           0       30     372  wasted           
6 months    ki1000109-EE               PAKISTAN                       Medium           1        3     372  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          High             0      264    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          High             1       25    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low              0      501    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low              1       95    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium           0      403    1334  wasted           
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium           1       46    1334  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             0       32     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             1        3     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low              0      248     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low              1       56     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium           0       31     380  wasted           
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium           1       10     380  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     High             0      148     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     High             1        7     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low              0      180     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low              1       15     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium           0      174     537  wasted           
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium           1       13     537  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             0      201     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             1        8     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              0      178     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              1        9     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           0      199     603  wasted           
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           1        8     603  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High             0      237     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High             1        3     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      217     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       12     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      240     715  wasted           
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1        6     715  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0      491    2020  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1       21    2020  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       72    2020  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        2    2020  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0     1370    2020  wasted           
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1       64    2020  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High             0      117     277  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High             1        0     277  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low              0       73     277  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low              1        0     277  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium           0       84     277  wasted           
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium           1        3     277  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          High             0       64     561  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          High             1        4     561  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              0      359     561  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              1       40     561  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           0       87     561  wasted           
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           1        7     561  wasted           
6 months    ki1119695-PROBIT           BELARUS                        High             0     2642   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        High             1       15   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        Low              0     5585   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        Low              1       57   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        Medium           0     7401   15758  wasted           
6 months    ki1119695-PROBIT           BELARUS                        Medium           1       58   15758  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             0     4492    8492  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             1      112    8492  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     1687    8492  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       79    8492  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     2048    8492  wasted           
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1       74    8492  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      High             0      179     953  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      High             1        6     953  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      Low              0      430     953  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      Low              1       19     953  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      Medium           0      313     953  wasted           
6 months    ki1135781-COHORTS          GUATEMALA                      Medium           1        6     953  wasted           
6 months    ki1135781-COHORTS          INDIA                          High             0      677    5407  wasted           
6 months    ki1135781-COHORTS          INDIA                          High             1       60    5407  wasted           
6 months    ki1135781-COHORTS          INDIA                          Low              0     1479    5407  wasted           
6 months    ki1135781-COHORTS          INDIA                          Low              1      295    5407  wasted           
6 months    ki1135781-COHORTS          INDIA                          Medium           0     2557    5407  wasted           
6 months    ki1135781-COHORTS          INDIA                          Medium           1      339    5407  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    High             0      963    2706  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    High             1       52    2706  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    Low              0      764    2706  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    Low              1       60    2706  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium           0      818    2706  wasted           
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium           1       49    2706  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         High             0      295     813  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         High             1        3     813  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         Low              0      254     813  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         Low              1        7     813  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         Medium           0      250     813  wasted           
6 months    ki1148112-LCNI-5           MALAWI                         Medium           1        4     813  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             0     5463   16767  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             1      446   16767  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              0     5075   16767  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              1      537   16767  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     4810   16767  wasted           
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      436   16767  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             0     1656    4820  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             1       61    4820  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              0     1455    4820  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              1      129    4820  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           0     1434    4820  wasted           
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           1       85    4820  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     High             0       60     171  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     High             1        4     171  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low              0       52     171  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low              1        7     171  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium           0       45     171  wasted           
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium           1        3     171  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         High             0       62     168  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         High             1        0     168  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         Low              0       40     168  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         Low              1        2     168  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium           0       63     168  wasted           
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium           1        1     168  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          High             0       51     199  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          High             1        4     199  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          Low              0       60     199  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          Low              1        9     199  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          Medium           0       66     199  wasted           
24 months   ki0047075b-MAL-ED          INDIA                          Medium           1        9     199  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          High             0       47     213  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          High             1        1     213  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          Low              0       89     213  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          Low              1        2     213  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          Medium           0       73     213  wasted           
24 months   ki0047075b-MAL-ED          NEPAL                          Medium           1        1     213  wasted           
24 months   ki0047075b-MAL-ED          PERU                           High             0       59     200  wasted           
24 months   ki0047075b-MAL-ED          PERU                           High             1        0     200  wasted           
24 months   ki0047075b-MAL-ED          PERU                           Low              0       72     200  wasted           
24 months   ki0047075b-MAL-ED          PERU                           Low              1        2     200  wasted           
24 months   ki0047075b-MAL-ED          PERU                           Medium           0       65     200  wasted           
24 months   ki0047075b-MAL-ED          PERU                           Medium           1        2     200  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       67     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0      119     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        1     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       51     238  wasted           
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0     238  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0        7     175  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        0     175  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       51     175  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        3     175  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0      114     175  wasted           
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0     175  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High             0      152     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High             1        6     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low              0       95     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low              1       10     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium           0      102     372  wasted           
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium           1        7     372  wasted           
24 months   ki1000108-IRC              INDIA                          High             0      116     409  wasted           
24 months   ki1000108-IRC              INDIA                          High             1        8     409  wasted           
24 months   ki1000108-IRC              INDIA                          Low              0      136     409  wasted           
24 months   ki1000108-IRC              INDIA                          Low              1       10     409  wasted           
24 months   ki1000108-IRC              INDIA                          Medium           0      126     409  wasted           
24 months   ki1000108-IRC              INDIA                          Medium           1       13     409  wasted           
24 months   ki1000109-EE               PAKISTAN                       High             0        5     166  wasted           
24 months   ki1000109-EE               PAKISTAN                       High             1        1     166  wasted           
24 months   ki1000109-EE               PAKISTAN                       Low              0      119     166  wasted           
24 months   ki1000109-EE               PAKISTAN                       Low              1       24     166  wasted           
24 months   ki1000109-EE               PAKISTAN                       Medium           0       13     166  wasted           
24 months   ki1000109-EE               PAKISTAN                       Medium           1        4     166  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     High             0      116     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     High             1       14     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low              0      131     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low              1       21     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium           0      128     428  wasted           
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium           1       18     428  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             0      183     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             1       18     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              0      151     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              1       23     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           0      183     579  wasted           
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           1       21     579  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High             0      174     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High             1       17     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      132     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       14     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      163     514  wasted           
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1       14     514  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0        2       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        0       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0        4       6  wasted           
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1        0       6  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          High             0       45     484  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          High             1       10     484  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              0      285     484  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              1       59     484  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           0       64     484  wasted           
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           1       21     484  wasted           
24 months   ki1119695-PROBIT           BELARUS                        High             0      643    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        High             1       11    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        Low              0     1368    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        Low              1       14    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        Medium           0     1917    3972  wasted           
24 months   ki1119695-PROBIT           BELARUS                        Medium           1       19    3972  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             0      153     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             1       31     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              0       92     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       26     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0      109     433  wasted           
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1       22     433  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      High             0      200    1068  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      High             1        9    1068  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      Low              0      485    1068  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      Low              1       27    1068  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      Medium           0      334    1068  wasted           
24 months   ki1135781-COHORTS          GUATEMALA                      Medium           1       13    1068  wasted           
24 months   ki1135781-COHORTS          INDIA                          High             0      584    4166  wasted           
24 months   ki1135781-COHORTS          INDIA                          High             1       17    4166  wasted           
24 months   ki1135781-COHORTS          INDIA                          Low              0     1067    4166  wasted           
24 months   ki1135781-COHORTS          INDIA                          Low              1      197    4166  wasted           
24 months   ki1135781-COHORTS          INDIA                          Medium           0     2131    4166  wasted           
24 months   ki1135781-COHORTS          INDIA                          Medium           1      170    4166  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    High             0      864    2449  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    High             1       47    2449  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    Low              0      681    2449  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    Low              1       67    2449  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium           0      737    2449  wasted           
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium           1       53    2449  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         High             0      213     556  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         High             1        1     556  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         Low              0      167     556  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         Low              1        5     556  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         Medium           0      166     556  wasted           
24 months   ki1148112-LCNI-5           MALAWI                         Medium           1        4     556  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             0     2305    8592  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             1      607    8592  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              0     2340    8592  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              1      659    8592  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     2073    8592  wasted           
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      608    8592  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             0     1389    4724  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             1      299    4724  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              0     1189    4724  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              1      339    4724  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           0     1226    4724  wasted           
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           1      282    4724  wasted           


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/d4b9fee8-a7f0-4a66-8893-c7835214d9b1/422211c5-c6e3-49f8-8c0a-006872b7bf08/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d4b9fee8-a7f0-4a66-8893-c7835214d9b1/422211c5-c6e3-49f8-8c0a-006872b7bf08/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d4b9fee8-a7f0-4a66-8893-c7835214d9b1/422211c5-c6e3-49f8-8c0a-006872b7bf08/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d4b9fee8-a7f0-4a66-8893-c7835214d9b1/422211c5-c6e3-49f8-8c0a-006872b7bf08/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    High                 NA                0.1250000   0.0437429   0.2062571
Birth       ki0047075b-MAL-ED          BANGLADESH    Low                  NA                0.1500000   0.0593909   0.2406091
Birth       ki0047075b-MAL-ED          BANGLADESH    Medium               NA                0.2352941   0.1185432   0.3520450
Birth       ki1000108-IRC              INDIA         High                 NA                0.2376238   0.1544951   0.3207525
Birth       ki1000108-IRC              INDIA         Low                  NA                0.2698413   0.1922238   0.3474588
Birth       ki1000108-IRC              INDIA         Medium               NA                0.2931034   0.2101487   0.3760582
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.1158798   0.0868080   0.1449517
Birth       ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1120000   0.0591325   0.1648675
Birth       ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0945946   0.0713435   0.1178457
Birth       ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.2576687   0.1904698   0.3248676
Birth       ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.2857143   0.2245612   0.3468674
Birth       ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.3267327   0.2619975   0.3914679
Birth       ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.1834320   0.1250274   0.2418365
Birth       ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.2317073   0.1670723   0.2963423
Birth       ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.2412060   0.1817103   0.3007018
Birth       ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.2627119   0.2065220   0.3189017
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.2123894   0.1590284   0.2657503
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.2530612   0.1985824   0.3075400
Birth       ki1113344-GMS-Nepal        NEPAL         High                 NA                0.2469136   0.1529325   0.3408947
Birth       ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1869369   0.1506453   0.2232286
Birth       ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.2543860   0.1743769   0.3343951
Birth       ki1119695-PROBIT           BELARUS       High                 NA                0.2025881   0.1336920   0.2714843
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                0.2117718   0.1376755   0.2858682
Birth       ki1119695-PROBIT           BELARUS       Medium               NA                0.2085779   0.1466020   0.2705537
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.1665004   0.1577825   0.1752182
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.1446051   0.1313312   0.1578790
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.1566719   0.1440477   0.1692961
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                0.2101911   0.1464151   0.2739670
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                0.2500000   0.2042111   0.2957889
Birth       ki1135781-COHORTS          GUATEMALA     Medium               NA                0.2834008   0.2271629   0.3396387
Birth       ki1135781-COHORTS          INDIA         High                 NA                0.1493902   0.1221088   0.1766717
Birth       ki1135781-COHORTS          INDIA         Low                  NA                0.1903870   0.1711597   0.2096143
Birth       ki1135781-COHORTS          INDIA         Medium               NA                0.1720717   0.1576203   0.1865231
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                0.1764184   0.1541703   0.1986666
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.1324582   0.1095028   0.1554137
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.1511254   0.1281389   0.1741119
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.1060202   0.0973054   0.1147350
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.1159925   0.1078755   0.1241094
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.1054945   0.0967928   0.1141962
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0993789   0.0699905   0.1287673
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.1121834   0.0894380   0.1349287
Birth       kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0858653   0.0592700   0.1124605
6 months    ki0047075b-MAL-ED          INDIA         High                 NA                0.0847458   0.0135099   0.1559816
6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                0.0972222   0.0286258   0.1658187
6 months    ki0047075b-MAL-ED          INDIA         Medium               NA                0.0779221   0.0179066   0.1379376
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.1337580   0.0804406   0.1870753
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0865385   0.0324291   0.1406478
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1495327   0.0818708   0.2171946
6 months    ki1000108-IRC              INDIA         High                 NA                0.1048387   0.0508527   0.1588248
6 months    ki1000108-IRC              INDIA         Low                  NA                0.1310345   0.0760436   0.1860254
6 months    ki1000108-IRC              INDIA         Medium               NA                0.1582734   0.0975210   0.2190257
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0865052   0.0668908   0.1061196
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1593960   0.1314037   0.1873882
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.1024499   0.0580384   0.1468614
6 months    ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0451613   0.0124396   0.0778829
6 months    ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.0769231   0.0394876   0.1143585
6 months    ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.0695187   0.0330318   0.1060056
6 months    ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.0382775   0.0122440   0.0643110
6 months    ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.0481283   0.0174256   0.0788311
6 months    ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.0386473   0.0123674   0.0649273
6 months    ki1119695-PROBIT           BELARUS       High                 NA                0.0056455   0.0027348   0.0085561
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                0.0101028   0.0068048   0.0134008
6 months    ki1119695-PROBIT           BELARUS       Medium               NA                0.0077758   0.0052650   0.0102867
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0243267   0.0198763   0.0287771
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0447339   0.0350920   0.0543757
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0348728   0.0270666   0.0426789
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                0.0324324   0.0068924   0.0579724
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0423163   0.0236861   0.0609465
6 months    ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0188088   0.0038933   0.0337243
6 months    ki1135781-COHORTS          INDIA         High                 NA                0.0814111   0.0616661   0.1011561
6 months    ki1135781-COHORTS          INDIA         Low                  NA                0.1662909   0.1489627   0.1836190
6 months    ki1135781-COHORTS          INDIA         Medium               NA                0.1170580   0.1053480   0.1287680
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0512315   0.0376658   0.0647973
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0728155   0.0550712   0.0905599
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0565167   0.0411432   0.0718903
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0754781   0.0677474   0.0832087
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0956878   0.0872629   0.1041127
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0831109   0.0751534   0.0910685
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0355271   0.0214012   0.0496529
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0814394   0.0636882   0.0991906
6 months    kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0559579   0.0423550   0.0695607
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0379747   0.0081316   0.0678178
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0952381   0.0390156   0.1514606
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181371   0.1103033
24 months   ki1000108-IRC              INDIA         High                 NA                0.0645161   0.0212228   0.1078095
24 months   ki1000108-IRC              INDIA         Low                  NA                0.0684932   0.0274709   0.1095154
24 months   ki1000108-IRC              INDIA         Medium               NA                0.0935252   0.0450617   0.1419886
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.1076923   0.0543424   0.1610423
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.1381579   0.0832372   0.1930786
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.1232877   0.0698967   0.1766787
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.0895522   0.0500437   0.1290608
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.1321839   0.0818162   0.1825516
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.1029412   0.0612049   0.1446774
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0890052   0.0485830   0.1294274
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0958904   0.0480833   0.1436975
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0790960   0.0392973   0.1188947
24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1818182   0.0797808   0.2838556
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1715116   0.1316360   0.2113873
24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.2470588   0.1552745   0.3388431
24 months   ki1119695-PROBIT           BELARUS       High                 NA                0.0168196   0.0052987   0.0283404
24 months   ki1119695-PROBIT           BELARUS       Low                  NA                0.0101302   0.0052237   0.0150368
24 months   ki1119695-PROBIT           BELARUS       Medium               NA                0.0098140   0.0004879   0.0191402
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.1684783   0.1143343   0.2226222
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.2203390   0.1454690   0.2952090
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.1679389   0.1038522   0.2320256
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.0430622   0.0155283   0.0705961
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0527344   0.0333657   0.0721030
24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0374640   0.0174745   0.0574535
24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0282862   0.0150300   0.0415424
24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.1558544   0.1358560   0.1758528
24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.0738809   0.0631918   0.0845700
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0515917   0.0372247   0.0659586
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0895722   0.0691033   0.1100411
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0670886   0.0496397   0.0845375
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.2084478   0.1923054   0.2245902
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.2197399   0.2040119   0.2354679
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.2267811   0.2090663   0.2444958
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.1771327   0.1538891   0.2003763
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.2218586   0.1991232   0.2445941
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.1870027   0.1637607   0.2102446


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
Birth       ki1000108-IRC              INDIA         Low                  High              1.1355820   0.7219803   1.7861242
Birth       ki1000108-IRC              INDIA         Medium               High              1.2334770   0.7865128   1.9344446
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA         Low                  High              0.9665185   0.6634127   1.4081100
Birth       ki1000304b-SAS-CompFeed    INDIA         Medium               High              0.8163164   0.5675297   1.1741631
Birth       ki1017093-NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH    Low                  High              1.1088435   0.7913120   1.5537918
Birth       ki1017093-NIH-Birth        BANGLADESH    Medium               High              1.2680339   0.9138832   1.7594262
Birth       ki1017093b-PROVIDE         BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH    Low                  High              1.2631786   0.8272244   1.9288844
Birth       ki1017093b-PROVIDE         BANGLADESH    Medium               High              1.3149619   0.8790122   1.9671227
Birth       ki1017093c-NIH-Crypto      BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Low                  High              0.8084499   0.5812416   1.1244742
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Medium               High              0.9632653   0.7111356   1.3047865
Birth       ki1113344-GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL         Low                  High              0.7570946   0.4938408   1.1606822
Birth       ki1113344-GMS-Nepal        NEPAL         Medium               High              1.0302632   0.6287995   1.6880456
Birth       ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS       Low                  High              1.0453319   0.8729808   1.2517101
Birth       ki1119695-PROBIT           BELARUS       Medium               High              1.0295661   0.8946167   1.1848721
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              0.8684973   0.7813999   0.9653030
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              0.9409704   0.8547566   1.0358800
Birth       ki1135781-COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA     Low                  High              1.1893939   0.8344607   1.6952961
Birth       ki1135781-COHORTS          GUATEMALA     Medium               High              1.3483008   0.9382836   1.9374900
Birth       ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         Low                  High              1.2744274   1.0343920   1.5701640
Birth       ki1135781-COHORTS          INDIA         Medium               High              1.1518271   0.9420891   1.4082592
Birth       ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  High              0.7508185   0.6059715   0.9302887
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               High              0.8566304   0.7030473   1.0437643
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  High              1.0940595   0.9847742   1.2154729
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               High              0.9950411   0.8879253   1.1150790
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low                  High              1.1288450   0.7911145   1.6107541
Birth       kiGH5241-JiVitA-4          BANGLADESH    Medium               High              0.8640192   0.5622518   1.3277488
6 months    ki0047075b-MAL-ED          INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA         Low                  High              1.1472222   0.3828517   3.4376725
6 months    ki0047075b-MAL-ED          INDIA         Medium               High              0.9194805   0.2940435   2.8752363
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  High              0.6469780   0.3082149   1.3580802
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               High              1.1179350   0.6116839   2.0431773
6 months    ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA         Low                  High              1.2498674   0.6432269   2.4286430
6 months    ki1000108-IRC              INDIA         Medium               High              1.5096846   0.7942446   2.8695788
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  High              1.8426174   1.4730499   2.3049042
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               High              1.1843207   0.6729856   2.0841687
6 months    ki1017093-NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH    Low                  High              1.7032967   0.7115903   4.0770928
6 months    ki1017093-NIH-Birth        BANGLADESH    Medium               High              1.5393430   0.6291925   3.7660601
6 months    ki1017093b-PROVIDE         BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH    Low                  High              1.2573529   0.4948615   3.1947051
6 months    ki1017093b-PROVIDE         BANGLADESH    Medium               High              1.0096618   0.3859169   2.6415457
6 months    ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS       Low                  High              1.7895421   0.9808784   3.2648910
6 months    ki1119695-PROBIT           BELARUS       Medium               High              1.3773602   0.7643130   2.4821260
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              1.8388812   1.3860361   2.4396797
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              1.4335196   1.0736224   1.9140606
6 months    ki1135781-COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     Low                  High              1.3047513   0.5293082   3.2162280
6 months    ki1135781-COHORTS          GUATEMALA     Medium               High              0.5799373   0.1896799   1.7731311
6 months    ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         Low                  High              2.0426062   1.5687109   2.6596614
6 months    ki1135781-COHORTS          INDIA         Medium               High              1.4378626   1.1060586   1.8692036
6 months    ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  High              1.4213032   0.9917477   2.0369119
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               High              1.1031630   0.7546995   1.6125207
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  High              1.2677562   1.1100658   1.4478474
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               High              1.1011268   0.9576115   1.2661505
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low                  High              2.2923187   1.4568828   3.6068274
6 months    kiGH5241-JiVitA-4          BANGLADESH    Medium               High              1.5750764   0.9932147   2.4978140
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  High              2.5079365   0.9385330   6.7016777
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               High              1.6911315   0.5834495   4.9017540
24 months   ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA         Low                  High              1.0616438   0.4318684   2.6097941
24 months   ki1000108-IRC              INDIA         Medium               High              1.4496403   0.6209420   3.3843046
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  High              1.2828947   0.6797381   2.4212543
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               High              1.1448141   0.5928874   2.2105366
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  High              1.4760536   0.8240046   2.6440804
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               High              1.1495098   0.6313808   2.0928300
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  High              1.0773570   0.5488709   2.1147015
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               High              0.8886673   0.4511977   1.7502963
24 months   ki1113344-GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  High              0.9433140   0.5138547   1.7316982
24 months   ki1113344-GMS-Nepal        NEPAL         Medium               High              1.3588235   0.6932177   2.6635232
24 months   ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS       Low                  High              0.6022892   0.3070391   1.1814529
24 months   ki1119695-PROBIT           BELARUS       Medium               High              0.5834899   0.2175615   1.5648927
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              1.3078185   0.8192751   2.0876860
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              0.9967988   0.6052534   1.6416396
24 months   ki1135781-COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     Low                  High              1.2246094   0.5858103   2.5599895
24 months   ki1135781-COHORTS          GUATEMALA     Medium               High              0.8699968   0.3783079   2.0007364
24 months   ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         Low                  High              5.5099125   3.3894036   8.9570731
24 months   ki1135781-COHORTS          INDIA         Medium               High              2.6119079   1.5993708   4.2654667
24 months   ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  High              1.7361759   1.2110047   2.4890959
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               High              1.3003770   0.8883510   1.9035049
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  High              1.0541724   0.9501427   1.1695921
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               High              1.0879513   0.9758574   1.2129210
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  High              1.2524996   1.0585087   1.4820429
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               High              1.0557207   0.8777288   1.2698069


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH    High                 NA                 0.0407143   -0.0287520    0.1101806
Birth       ki1000108-IRC              INDIA         High                 NA                 0.0305978   -0.0404330    0.1016286
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 NA                -0.0088989   -0.0345544    0.0167567
Birth       ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0345052   -0.0232836    0.0922940
Birth       ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.0364929   -0.0133570    0.0863428
Birth       ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                -0.0194304   -0.0647200    0.0258592
Birth       ki1113344-GMS-Nepal        NEPAL         High                 NA                -0.0403408   -0.1274046    0.0467229
Birth       ki1119695-PROBIT           BELARUS       High                 NA                 0.0061610   -0.0174170    0.0297390
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                -0.0070059   -0.0127727   -0.0012391
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0424827   -0.0152321    0.1001976
Birth       ki1135781-COHORTS          INDIA         High                 NA                 0.0256456   -0.0000029    0.0512942
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                -0.0208476   -0.0376976   -0.0039975
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0036640   -0.0034000    0.0107280
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0001611   -0.0225189    0.0228410
6 months    ki0047075b-MAL-ED          INDIA         High                 NA                 0.0017927   -0.0587275    0.0623129
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                -0.0087580   -0.0482800    0.0307641
6 months    ki1000108-IRC              INDIA         High                 NA                 0.0275142   -0.0196749    0.0747033
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.0379326    0.0074343    0.0684309
6 months    ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0200156   -0.0098052    0.0498364
6 months    ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.0031819   -0.0183012    0.0246649
6 months    ki1119695-PROBIT           BELARUS       High                 NA                 0.0026043   -0.0001361    0.0053447
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0068792    0.0034140    0.0103444
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0000964   -0.0228389    0.0230318
6 months    ki1135781-COHORTS          INDIA         High                 NA                 0.0469410    0.0278863    0.0659958
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0082659   -0.0029341    0.0194659
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0091524    0.0029050    0.0153999
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0215269    0.0098953    0.0331584
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0238533   -0.0032516    0.0509582
24 months   ki1000108-IRC              INDIA         High                 NA                 0.0112785   -0.0261027    0.0486597
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0161395   -0.0296130    0.0618920
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.0175289   -0.0158274    0.0508852
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                -0.0014566   -0.0333596    0.0304464
24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.0041322   -0.0920409    0.1003054
24 months   ki1119695-PROBIT           BELARUS       High                 NA                -0.0057420   -0.0145877    0.0031036
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0139698   -0.0280594    0.0559989
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0028179   -0.0220618    0.0276977
24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.0638886    0.0496687    0.0781084
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0165994    0.0042481    0.0289508
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0096621   -0.0034629    0.0227871
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0176175   -0.0011423    0.0363774


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH    High                 NA                 0.2456897   -0.3051245    0.5640385
Birth       ki1000108-IRC              INDIA         High                 NA                 0.1140766   -0.1942263    0.3427877
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 NA                -0.0831818   -0.3673012    0.1418988
Birth       ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.1180982   -0.1034312    0.2951524
Birth       ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.1659333   -0.0934401    0.3637812
Birth       ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                -0.0798680   -0.2829337    0.0910561
Birth       ki1113344-GMS-Nepal        NEPAL         High                 NA                -0.1952862   -0.7000593    0.1596122
Birth       ki1119695-PROBIT           BELARUS       High                 NA                 0.0295137   -0.0904701    0.1362958
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                -0.0439257   -0.0806896   -0.0084124
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                 0.1681326   -0.0941799    0.3675599
Birth       ki1135781-COHORTS          INDIA         High                 NA                 0.1465164   -0.0131418    0.2810145
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                -0.1340068   -0.2472762   -0.0310237
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0334049   -0.0332073    0.0957225
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0016180   -0.2543761    0.2053687
6 months    ki0047075b-MAL-ED          INDIA         High                 NA                 0.0207156   -1.0000169    0.5205051
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                -0.0700637   -0.4373815    0.2033873
6 months    ki1000108-IRC              INDIA         High                 NA                 0.2078853   -0.2379515    0.4931581
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.3048318    0.0708995    0.4798637
6 months    ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.3070968   -0.3224587    0.6369528
6 months    ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.0767464   -0.6169746    0.4728444
6 months    ki1119695-PROBIT           BELARUS       High                 NA                 0.3156826   -0.1016696    0.5749267
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.2204449    0.1045090    0.3213710
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0029643   -1.0222350    0.5084250
6 months    ki1135781-COHORTS          INDIA         High                 NA                 0.3657205    0.2006958    0.4966742
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.1389285   -0.0701982    0.3071899
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.1081458    0.0311709    0.1790050
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.3773071    0.1300543    0.5542867
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.3858008   -0.2035002    0.6865471
24 months   ki1000108-IRC              INDIA         High                 NA                 0.1488033   -0.5154091    0.5218877
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.1303338   -0.3283374    0.4306271
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.1636976   -0.2109775    0.4224487
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                -0.0166376   -0.4548708    0.2895919
24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                 0.0222222   -0.6594230    0.4238664
24 months   ki1119695-PROBIT           BELARUS       High                 NA                -0.5183486   -1.5722715    0.1037562
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0765685   -0.1846907    0.2802124
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0614198   -0.6721728    0.4731808
24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.6931243    0.5151209    0.8057811
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.2434253    0.0427656    0.4020219
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0442991   -0.0177708    0.1025836
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0904621   -0.0115449    0.1821824
