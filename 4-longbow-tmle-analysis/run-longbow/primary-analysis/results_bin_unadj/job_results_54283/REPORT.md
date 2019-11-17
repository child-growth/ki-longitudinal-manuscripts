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

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        meducyrs    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ---------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       70     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1        8     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       61     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1        9     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       58     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1        7     213
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High              0       79     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High              1        0     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low               0       61     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low               1        2     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            0       89     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            1        1     232
0-24 months   ki0047075b-MAL-ED          INDIA                          High              0       54     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High              1        9     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low               0       61     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low               1       15     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       60     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium            1       21     220
0-24 months   ki0047075b-MAL-ED          NEPAL                          High              0       50     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High              1        3     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       84     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low               1       12     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       71     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        5     225
0-24 months   ki0047075b-MAL-ED          PERU                           High              0       89     301
0-24 months   ki0047075b-MAL-ED          PERU                           High              1        1     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low               0      100     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low               1        4     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium            0      100     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium            1        7     301
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       88     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        7     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      135     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1       13     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       66     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        3     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0       10     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        1     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       55     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        9     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0      132     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        9     216
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              0      132     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              1       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       77     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               1       29     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       78     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1       31     373
0-24 months   ki1000108-IRC              INDIA                          High              0      105     410
0-24 months   ki1000108-IRC              INDIA                          High              1       19     410
0-24 months   ki1000108-IRC              INDIA                          Low               0      122     410
0-24 months   ki1000108-IRC              INDIA                          Low               1       25     410
0-24 months   ki1000108-IRC              INDIA                          Medium            0      107     410
0-24 months   ki1000108-IRC              INDIA                          Medium            1       32     410
0-24 months   ki1000109-EE               PAKISTAN                       High              0       12     376
0-24 months   ki1000109-EE               PAKISTAN                       High              1        3     376
0-24 months   ki1000109-EE               PAKISTAN                       Low               0      175     376
0-24 months   ki1000109-EE               PAKISTAN                       Low               1      153     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium            0       22     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium            1       11     376
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High              0      287    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High              1       35    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low               0      473    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low               1      209    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium            0      402    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium            1      107    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High              0       33     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High              1        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low               0      203     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low               1      129     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       27     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1       18     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High              0      152     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High              1       26     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               0      163     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               1       65     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            0      172     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            1       46     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      213     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1       22     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      180     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1       34     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      217     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1       34     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      240     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1       14     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      219     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       23     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      228     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       34     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      596    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       25    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       77    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        5    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1594    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       89    2386
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High              0      109     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High              1        9     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low               0       67     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low               1        9     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium            0       84     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium            1        4     282
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       69     683
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       15     683
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      323     683
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1      157     683
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       89     683
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       30     683
0-24 months   ki1119695-PROBIT           BELARUS                        High              0     2838   16897
0-24 months   ki1119695-PROBIT           BELARUS                        High              1        2   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low               0     6086   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low               1       14   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium            0     7946   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium            1       11   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0     7303   13922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1      251   13922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2766   13922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      157   13922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     3262   13922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      183   13922
0-24 months   ki1135781-COHORTS          GUATEMALA                      High              0      253    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      High              1       27    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low               0      555    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low               1       72    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0      366    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1       49    1322
0-24 months   ki1135781-COHORTS          INDIA                          High              0      776    5841
0-24 months   ki1135781-COHORTS          INDIA                          High              1       16    5841
0-24 months   ki1135781-COHORTS          INDIA                          Low               0     1623    5841
0-24 months   ki1135781-COHORTS          INDIA                          Low               1      327    5841
0-24 months   ki1135781-COHORTS          INDIA                          Medium            0     2896    5841
0-24 months   ki1135781-COHORTS          INDIA                          Medium            1      203    5841
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High              0     1036    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High              1      132    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      670    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1      231    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      779    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1      197    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         High              0      292     814
0-24 months   ki1148112-LCNI-5           MALAWI                         High              1        6     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low               0      243     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low               1       18     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      238     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium            1       17     814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     8366   26889
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      610   26889
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     8702   26889
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1     1019   26889
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     7433   26889
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      759   26889
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0     1689    5419
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1      212    5419
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1422    5419
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      363    5419
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1432    5419
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      301    5419
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High              0       76     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High              1        2     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               0       66     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               1        4     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            0       64     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            1        1     213
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High              0       79     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High              1        0     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low               0       63     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low               1        0     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            0       89     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            1        1     232
0-6 months    ki0047075b-MAL-ED          INDIA                          High              0       60     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High              1        3     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low               0       73     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low               1        3     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       72     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium            1        9     220
0-6 months    ki0047075b-MAL-ED          NEPAL                          High              0       51     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          High              1        2     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low               0       94     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low               1        2     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium            0       73     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium            1        3     225
0-6 months    ki0047075b-MAL-ED          PERU                           High              0       90     301
0-6 months    ki0047075b-MAL-ED          PERU                           High              1        0     301
0-6 months    ki0047075b-MAL-ED          PERU                           Low               0      103     301
0-6 months    ki0047075b-MAL-ED          PERU                           Low               1        1     301
0-6 months    ki0047075b-MAL-ED          PERU                           Medium            0      106     301
0-6 months    ki0047075b-MAL-ED          PERU                           Medium            1        1     301
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       92     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        3     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      147     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        1     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       68     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        1     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0       11     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       63     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        1     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0      138     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        3     216
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High              0      146     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High              1       11     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       94     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low               1       10     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       97     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1       10     368
0-6 months    ki1000108-IRC              INDIA                          High              0      118     409
0-6 months    ki1000108-IRC              INDIA                          High              1        6     409
0-6 months    ki1000108-IRC              INDIA                          Low               0      139     409
0-6 months    ki1000108-IRC              INDIA                          Low               1        8     409
0-6 months    ki1000108-IRC              INDIA                          Medium            0      127     409
0-6 months    ki1000108-IRC              INDIA                          Medium            1       11     409
0-6 months    ki1000109-EE               PAKISTAN                       High              0       15     376
0-6 months    ki1000109-EE               PAKISTAN                       High              1        0     376
0-6 months    ki1000109-EE               PAKISTAN                       Low               0      276     376
0-6 months    ki1000109-EE               PAKISTAN                       Low               1       52     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium            0       28     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium            1        5     376
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High              0      313    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High              1        9    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               0      610    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               1       68    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            0      475    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            1       29    1504
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              0       39     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              1        1     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               0      300     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               1       31     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       45     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1        0     416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High              0      164     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High              1       13     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low               0      209     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low               1       19     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium            0      204     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium            1       13     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      229     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1        6     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      204     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1       10     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      237     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1       14     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              0      250     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              1        4     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      238     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        4     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      253     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        9     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      619    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        2    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       81    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        1    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1667    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       16    2386
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High              0      108     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High              1        4     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low               0       73     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low               1        1     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium            0       77     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium            1        2     265
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High              0       79     683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High              1        5     683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      453     683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1       27     683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0      115     683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1        4     683
0-6 months    ki1119695-PROBIT           BELARUS                        High              0     2839   16893
0-6 months    ki1119695-PROBIT           BELARUS                        High              1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low               0     6088   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low               1       10   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium            0     7947   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium            1        8   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0     7428   13826
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1       76   13826
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2865   13826
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       38   13826
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     3366   13826
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1       53   13826
0-6 months    ki1135781-COHORTS          GUATEMALA                      High              0      212    1050
0-6 months    ki1135781-COHORTS          GUATEMALA                      High              1        3    1050
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low               0      495    1050
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low               1        9    1050
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium            0      323    1050
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium            1        8    1050
0-6 months    ki1135781-COHORTS          INDIA                          High              0      740    5625
0-6 months    ki1135781-COHORTS          INDIA                          High              1       10    5625
0-6 months    ki1135781-COHORTS          INDIA                          Low               0     1818    5625
0-6 months    ki1135781-COHORTS          INDIA                          Low               1       75    5625
0-6 months    ki1135781-COHORTS          INDIA                          Medium            0     2917    5625
0-6 months    ki1135781-COHORTS          INDIA                          Medium            1       65    5625
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High              0     1141    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High              1       27    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low               0      874    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low               1       26    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            0      957    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            1       19    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         High              0       87     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High              1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low               0       92     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low               1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium            0       88     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium            1        0     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     8669   26782
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1      265   26782
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0     9212   26782
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1      472   26782
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     7840   26782
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      324   26782
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0     1744    5073
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1       38    5073
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1610    5073
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1       53    5073
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1585    5073
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       43    5073
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       63     194
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1        8     194
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       58     194
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1        6     194
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       53     194
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1        6     194
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High              0       71     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High              1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low               0       53     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low               1        2     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            0       80     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            1        0     206
6-24 months   ki0047075b-MAL-ED          INDIA                          High              0       51     207
6-24 months   ki0047075b-MAL-ED          INDIA                          High              1        7     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Low               0       59     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Low               1       13     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       58     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium            1       19     207
6-24 months   ki0047075b-MAL-ED          NEPAL                          High              0       51     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          High              1        1     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       83     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low               1       10     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       72     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        3     220
6-24 months   ki0047075b-MAL-ED          PERU                           High              0       80     269
6-24 months   ki0047075b-MAL-ED          PERU                           High              1        1     269
6-24 months   ki0047075b-MAL-ED          PERU                           Low               0       89     269
6-24 months   ki0047075b-MAL-ED          PERU                           Low               1        4     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium            0       89     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium            1        6     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       69     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        5     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      117     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1       12     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       53     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        3     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        8     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        1     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       54     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        8     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0      123     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        8     202
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              0      139     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              1       19     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       81     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               1       25     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       83     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1       26     373
6-24 months   ki1000108-IRC              INDIA                          High              0      108     410
6-24 months   ki1000108-IRC              INDIA                          High              1       16     410
6-24 months   ki1000108-IRC              INDIA                          Low               0      128     410
6-24 months   ki1000108-IRC              INDIA                          Low               1       19     410
6-24 months   ki1000108-IRC              INDIA                          Medium            0      110     410
6-24 months   ki1000108-IRC              INDIA                          Medium            1       29     410
6-24 months   ki1000109-EE               PAKISTAN                       High              0       12     369
6-24 months   ki1000109-EE               PAKISTAN                       High              1        3     369
6-24 months   ki1000109-EE               PAKISTAN                       Low               0      182     369
6-24 months   ki1000109-EE               PAKISTAN                       Low               1      139     369
6-24 months   ki1000109-EE               PAKISTAN                       Medium            0       22     369
6-24 months   ki1000109-EE               PAKISTAN                       Medium            1       11     369
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High              0      273    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High              1       29    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low               0      422    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low               1      192    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium            0      380    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium            1       93    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High              0       33     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High              1        7     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low               0      199     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low               1      120     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       24     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1       18     401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High              0      139     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High              1       18     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               0      139     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               1       58     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            0      150     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            1       38     542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      192     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1       19     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      154     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1       31     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      193     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1       25     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      234     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1       12     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      213     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       21     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      220     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       30     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      489    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       25    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       67    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        5    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1341    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       83    2010
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High              0      104     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High              1        7     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low               0       63     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low               1        8     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium            0       81     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium            1        3     266
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       58     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       13     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      264     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1      150     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       73     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       29     587
6-24 months   ki1119695-PROBIT           BELARUS                        High              0     2774   16598
6-24 months   ki1119695-PROBIT           BELARUS                        High              1        1   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low               0     5967   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low               1        5   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Medium            0     7848   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Medium            1        3   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0     5639   10798
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1      184   10798
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2154   10798
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      124   10798
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     2561   10798
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      136   10798
6-24 months   ki1135781-COHORTS          GUATEMALA                      High              0      216    1197
6-24 months   ki1135781-COHORTS          GUATEMALA                      High              1       26    1197
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low               0      502    1197
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low               1       67    1197
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0      343    1197
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1       43    1197
6-24 months   ki1135781-COHORTS          INDIA                          High              0      739    5476
6-24 months   ki1135781-COHORTS          INDIA                          High              1       10    5476
6-24 months   ki1135781-COHORTS          INDIA                          Low               0     1499    5476
6-24 months   ki1135781-COHORTS          INDIA                          Low               1      296    5476
6-24 months   ki1135781-COHORTS          INDIA                          Medium            0     2758    5476
6-24 months   ki1135781-COHORTS          INDIA                          Medium            1      174    5476
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      932    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High              1      122    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      622    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1      224    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      718    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1      190    2808
6-24 months   ki1148112-LCNI-5           MALAWI                         High              0      287     803
6-24 months   ki1148112-LCNI-5           MALAWI                         High              1        6     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Low               0      241     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Low               1       18     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      234     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium            1       17     803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     5708   17262
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      380   17262
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     5148   17262
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1      640   17262
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     4907   17262
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      479   17262
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0     1708    5415
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1      190    5415
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1451    5415
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      334    5415
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1455    5415
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      277    5415


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
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/488661d9-42f5-41eb-a260-2e87fd519391/7eff3f8b-0a31-4ce1-885b-0214e4ca1b91/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/488661d9-42f5-41eb-a260-2e87fd519391/7eff3f8b-0a31-4ce1-885b-0214e4ca1b91/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/488661d9-42f5-41eb-a260-2e87fd519391/7eff3f8b-0a31-4ce1-885b-0214e4ca1b91/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/488661d9-42f5-41eb-a260-2e87fd519391/7eff3f8b-0a31-4ce1-885b-0214e4ca1b91/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1025641   0.0350768   0.1700514
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.1285714   0.0499739   0.2071690
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1076923   0.0321547   0.1832299
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1428571   0.0562518   0.2294625
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1973684   0.1076818   0.2870550
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2592593   0.1636070   0.3549115
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1645570   0.1066649   0.2224490
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2735849   0.1886049   0.3585649
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2844037   0.1995991   0.3692083
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.1532258   0.0897487   0.2167029
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.1700680   0.1092612   0.2308748
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.2302158   0.1601473   0.3002844
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1086957   0.0690936   0.1482977
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3064516   0.2517115   0.3611917
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2102161   0.1764404   0.2439919
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1951220   0.0736728   0.3165711
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3885542   0.3360609   0.4410475
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4000000   0.2566929   0.5433071
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1460674   0.0941426   0.1979922
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.2850877   0.2264409   0.3437346
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2110092   0.1568023   0.2652161
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0936170   0.0563472   0.1308869
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1588785   0.1098652   0.2078918
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1354582   0.0930922   0.1778241
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0551181   0.0270344   0.0832018
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0950413   0.0580672   0.1320154
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1297710   0.0890527   0.1704893
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0402577   0.0247946   0.0557207
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0609756   0.0091734   0.1127779
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0528818   0.0421875   0.0635761
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1785714   0.0966085   0.2605344
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3270833   0.2850827   0.3690839
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2521008   0.1740277   0.3301739
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0332274   0.0291855   0.0372693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0537119   0.0455387   0.0618852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0531205   0.0456311   0.0606099
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0964286   0.0618412   0.1310159
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1148325   0.0898680   0.1397971
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1180723   0.0870139   0.1491307
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0202020   0.0104029   0.0300012
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1676923   0.1511092   0.1842754
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0655050   0.0567934   0.0742166
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1130137   0.0948534   0.1311740
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2563818   0.2278667   0.2848969
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2018443   0.1766590   0.2270295
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0201342   0.0041770   0.0360915
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0689655   0.0382050   0.0997260
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0666667   0.0360317   0.0973017
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0679590   0.0622084   0.0737096
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1048246   0.0984450   0.1112042
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0926514   0.0859493   0.0993534
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1115203   0.0939023   0.1291382
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2033613   0.1833744   0.2233483
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1736872   0.1547621   0.1926124
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.0700637   0.0300819   0.1100455
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.0961538   0.0394186   0.1528891
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.0934579   0.0382312   0.1486847
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.0483871   0.0105721   0.0862021
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.0544218   0.0177057   0.0911378
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.0797101   0.0344663   0.1249540
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0279503   0.0159038   0.0399969
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1002950   0.0728735   0.1277165
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0575397   0.0289884   0.0860910
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.0734463   0.0349844   0.1119083
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.0833333   0.0474291   0.1192375
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.0599078   0.0283073   0.0915084
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0255319   0.0053506   0.0457133
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0467290   0.0184312   0.0750268
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0557769   0.0273659   0.0841879
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0101279   0.0078624   0.0123934
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0130899   0.0089552   0.0172246
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0155016   0.0113606   0.0196427
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0133333   0.0051239   0.0215427
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0396197   0.0308317   0.0484076
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0217975   0.0165560   0.0270389
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0231164   0.0144970   0.0317359
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0288889   0.0179443   0.0398334
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0194672   0.0107980   0.0281364
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0296620   0.0259242   0.0333997
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0487402   0.0443038   0.0531766
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0396864   0.0352836   0.0440893
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0213244   0.0115567   0.0310921
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0318701   0.0233112   0.0404290
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0264128   0.0167853   0.0360402
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1126761   0.0389369   0.1864152
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.0937500   0.0221538   0.1653462
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1016949   0.0243724   0.1790174
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1206897   0.0366485   0.2047308
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1805556   0.0914923   0.2696188
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2467532   0.1502250   0.3432815
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1202532   0.0694688   0.1710375
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2358491   0.1549237   0.3167744
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2385321   0.1584165   0.3186477
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.1290323   0.0699554   0.1881092
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.1292517   0.0749537   0.1835497
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.2086331   0.1410012   0.2762650
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0960265   0.0523209   0.1397321
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3127036   0.2677831   0.3576241
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1966173   0.1604412   0.2327935
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1750000   0.0571020   0.2928980
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3761755   0.3229498   0.4294013
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4285714   0.2787209   0.5784219
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1146497   0.0647677   0.1645316
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.2944162   0.2307116   0.3581209
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2021277   0.1446698   0.2595856
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0900474   0.0513924   0.1287024
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1675676   0.1137052   0.2214300
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1146789   0.0723472   0.1570106
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0487805   0.0218440   0.0757170
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0897436   0.0530980   0.1263892
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1200000   0.0796905   0.1603095
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0486381   0.0300371   0.0672391
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0694444   0.0107118   0.1281771
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0582865   0.0461150   0.0704580
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1830986   0.0930625   0.2731347
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3623188   0.3159778   0.4086598
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2843137   0.1966987   0.3719287
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0315988   0.0271056   0.0360921
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0544337   0.0451168   0.0637506
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0504264   0.0421675   0.0586853
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1074380   0.0684061   0.1464700
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1177504   0.0912563   0.1442446
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1113990   0.0799989   0.1427990
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0133511   0.0051309   0.0215714
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1649025   0.1477338   0.1820712
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0593452   0.0507923   0.0678981
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1157495   0.0964320   0.1350671
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2647754   0.2350390   0.2945119
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2092511   0.1827883   0.2357139
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0204778   0.0042510   0.0367047
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0694981   0.0385086   0.1004875
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0677291   0.0366233   0.0988348
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0624179   0.0556390   0.0691968
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1105736   0.1024697   0.1186776
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0889343   0.0811368   0.0967318
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1001054   0.0841362   0.1160745
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1871148   0.1680183   0.2062114
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1599307   0.1415669   0.1782946


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1126761   0.0701126   0.1552395
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2045455   0.1511224   0.2579685
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0498743   0.0411379   0.0586107
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2957540   0.2615022   0.3300058
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0424508   0.0391016   0.0458000
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1119516   0.0949484   0.1289548
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0934771   0.0860112   0.1009431
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0503686   0.0353351   0.0654020
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0888096   0.0848964   0.0927227
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1616534   0.1503308   0.1729761
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120787   0.0102578   0.0138996
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0266667   0.0224561   0.0308772
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0396162   0.0371124   0.0421199
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0264144   0.0210697   0.0317590
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1030928   0.0601928   0.1459928
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1884058   0.1350070   0.2418045
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0562189   0.0461465   0.0662914
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3270869   0.2891020   0.3650717
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0411187   0.0373733   0.0448641
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1136174   0.0956322   0.1316026
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0876552   0.0801645   0.0951460
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0510585   0.0358245   0.0662926
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0868381   0.0821743   0.0915020
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1479224   0.1373344   0.1585105


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level      estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High               1.2535714   0.5106086    3.077585
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High               1.0500000   0.4013361    2.747074
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High               1.3815789   0.6476465    2.947226
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High               1.8148148   0.8925300    3.690131
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               1.6625544   1.0398198    2.658237
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               1.7282992   1.0897676    2.740968
0-24 months   ki1000108-IRC              INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High               1.1099177   0.6421441    1.918444
0-24 months   ki1000108-IRC              INDIA                          Medium               High               1.5024612   0.8985670    2.512211
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High               2.8193548   1.8607532    4.271798
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High               1.9339882   1.3429143    2.785219
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High               1.9913404   1.0532579    3.764924
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High               2.0500000   0.9996680    4.203896
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High               1.9517544   1.2943540    2.943047
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High               1.4446013   0.9316855    2.239890
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High               1.6971112   1.0256022    2.808288
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High               1.4469394   0.8721265    2.400608
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               1.7243211   0.9082607    3.273601
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               2.3544166   1.2942242    4.283089
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               1.5146339   0.5962002    3.847896
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               1.3135827   0.8510125    2.027584
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High               1.8316667   1.1372466    2.950110
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               1.4117647   0.8115105    2.456012
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               1.6164940   1.3303547    1.964177
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               1.5986932   1.3270708    1.925911
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               1.1908559   0.7828987    1.811394
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               1.2244533   0.7848164    1.910365
0-24 months   ki1135781-COHORTS          INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High               8.3007692   5.0597265   13.617884
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High               3.2424976   1.9608629    5.361818
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High               2.2685905   1.8658779    2.758221
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High               1.7860159   1.4572350    2.188976
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High               3.4252873   1.3795460    8.504677
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High               3.3111111   1.3246625    8.276415
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               1.5424683   1.3926636    1.708387
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               1.3633421   1.2299093    1.511251
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               1.8235373   1.5182536    2.190206
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               1.5574503   1.2804508    1.894373
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               1.3723776   0.6039247    3.118634
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               1.3338997   0.5866212    3.033113
0-6 months    ki1000108-IRC              INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High               1.1247165   0.4005555    3.158082
0-6 months    ki1000108-IRC              INDIA                          Medium               High               1.6473430   0.6270556    4.327749
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High               3.5883317   2.1335409    6.035096
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High               2.0586420   1.0888549    3.892168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High               1.1346154   0.5758887    2.235418
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High               0.8156682   0.3878894    1.715217
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High               1.8302181   0.6761706    4.953925
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High               2.1845950   0.8530709    5.594441
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               1.2924561   0.8776465    1.903321
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               1.5305799   1.0802828    2.168576
0-6 months    ki1135781-COHORTS          INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High               2.9714739   1.5443749    5.717302
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High               1.6348089   0.8441139    3.166161
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High               1.2497119   0.7344371    2.126499
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.8421372   0.4711279    1.505313
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               1.6431881   1.4083252    1.917219
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               1.3379568   1.1367310    1.574804
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               1.4945406   0.8731401    2.558182
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               1.2386202   0.6888254    2.227241
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High               0.8320313   0.3043355    2.274713
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.9025424   0.3309679    2.461214
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High               1.4960317   0.6372868    3.511937
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High               2.0445269   0.9198597    4.544269
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               1.9612711   1.1382131    3.379494
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               1.9835828   1.1564057    3.402440
6-24 months   ki1000108-IRC              INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Low                  High               1.0017007   0.5381205    1.864646
6-24 months   ki1000108-IRC              INDIA                          Medium               High               1.6169065   0.9226801    2.833470
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High               3.2564303   2.0403463    5.197323
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High               2.0475322   1.2998365    3.225320
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High               2.1495746   1.0799012    4.278790
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High               2.4489796   1.1464135    5.231534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High               2.5679639   1.5796405    4.174645
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High               1.7630024   1.0484410    2.964571
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High               1.8608819   1.0884656    3.181434
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High               1.2735394   0.7229912    2.243323
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               1.8397436   0.9257506    3.656121
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               2.4600000   1.2889360    4.695035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               1.4277778   0.5643511    3.612201
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               1.1983708   0.7750939    1.852798
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High               1.9788183   1.1905352    3.289043
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               1.5527903   0.8691289    2.774224
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               1.7226495   1.3789780    2.151972
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               1.5958311   1.2846660    1.982365
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               1.0959849   0.7148541    1.680319
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               1.0368673   0.6546744    1.642181
6-24 months   ki1135781-COHORTS          INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              12.3511843   6.6148159   23.062131
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High               4.4449474   2.3618046    8.365450
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High               2.2874860   1.8706619    2.797187
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High               1.8077923   1.4662562    2.228883
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High               3.3938224   1.3671140    8.425069
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High               3.3074369   1.3235151    8.265216
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               1.7715055   1.5601196    2.011533
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               1.4248207   1.2467019    1.628388
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               1.8691788   1.5497056    2.254512
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               1.5976237   1.3100203    1.948368


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0101120   -0.0449377   0.0651616
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0616883   -0.0161498   0.1395264
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0660060    0.0175899   0.1144221
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0321400   -0.0227268   0.0870069
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1232938    0.0741355   0.1724520
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1756914    0.0573459   0.2940370
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0734839    0.0264251   0.1205426
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0349544    0.0022109   0.0676979
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0385494    0.0122640   0.0648349
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0096166   -0.0042025   0.0234357
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1171826    0.0381973   0.1961679
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0092234    0.0060889   0.0123579
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0155230   -0.0157603   0.0468063
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0732751    0.0620625   0.0844878
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0708943    0.0545789   0.0872098
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0302343    0.0130821   0.0473866
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0208505    0.0161998   0.0255013
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0501332    0.0352847   0.0649817
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0141754   -0.0181052   0.0464561
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0127376   -0.0204773   0.0459525
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0425284    0.0188020   0.0662548
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0010991   -0.0335421   0.0313440
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0173252   -0.0016288   0.0362793
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0019508    0.0002546   0.0036469
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0133333    0.0051388   0.0215279
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0005366   -0.0062776   0.0073509
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0099542    0.0067752   0.0131332
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0050900   -0.0025678   0.0127478
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0095833   -0.0670104   0.0478438
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0677161   -0.0094614   0.1448937
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0674144    0.0230480   0.1117808
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0270653   -0.0240842   0.0782148
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1300354    0.0828685   0.1772023
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1865960    0.0710805   0.3021115
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0956824    0.0485012   0.1428636
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0321024   -0.0016498   0.0658547
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0375209    0.0119851   0.0630566
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0075808   -0.0088659   0.0240275
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1439883    0.0568774   0.2310992
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0095199    0.0059925   0.0130473
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0061794   -0.0289055   0.0412642
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0743041    0.0640474   0.0845607
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0751337    0.0576869   0.0925805
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0305807    0.0131672   0.0479943
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0244203    0.0189604   0.0298802
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0478171    0.0341660   0.0614681


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0897436   -0.5553666   0.4672852
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.3015873   -0.1952913   0.5919151
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.2862820    0.0473322   0.4652980
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.1733871   -0.1806609   0.4212657
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.5314629    0.3260023   0.6742912
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.4738002    0.0387627   0.7119481
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.3347002    0.0867805   0.5153150
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2718676   -0.0269672   0.4837451
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.4115559    0.0732192   0.6263772
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1928171   -0.1350978   0.4260017
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3962164    0.0633555   0.6107865
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.2172720    0.1418968   0.2860262
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1386583   -0.1905718   0.3768460
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.7838828    0.6516600   0.8659165
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3854880    0.2940337   0.4650949
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.6002619    0.1702459   0.8074242
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2347782    0.1806613   0.2853208
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.3101276    0.2117696   0.3962121
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.1682761   -0.3128183   0.4730691
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.2083871   -0.5623325   0.5989004
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.6034220    0.3516107   0.7574388
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                -0.0151915   -0.5789884   0.3472950
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.4042553   -0.2061957   0.7057594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1615043    0.0110962   0.2890359
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.5000000    0.0939020   0.7240917
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0226884   -0.3123014   0.2721656
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2512660    0.1674879   0.3266133
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1926981   -0.1653845   0.4407542
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0929577   -0.8178096   0.3428593
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.3594164   -0.1972763   0.6572660
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.3592224    0.0858727   0.5508329
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.1733871   -0.2263332   0.4428195
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.5752204    0.3439714   0.7249545
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.5160345    0.0697324   0.7482202
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.4549112    0.1907233   0.6328551
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2628120   -0.0658751   0.4901409
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.4347658    0.0731775   0.6552849
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1348438   -0.2119889   0.3824240
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.4402142    0.1027794   0.6507435
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.2315221    0.1435071   0.3104925
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0543875   -0.3106722   0.3177676
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.8476856    0.7200223   0.9171375
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3936107    0.2991124   0.4753681
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5989345    0.1676110   0.8067568
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2812159    0.2153450   0.3415571
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.3232577    0.2250470   0.4090220
