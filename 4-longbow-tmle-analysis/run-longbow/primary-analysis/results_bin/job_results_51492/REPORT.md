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

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_feducyrs
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
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            0       90     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            1        0     232
0-24 months   ki0047075b-MAL-ED          INDIA                          High              0       54     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High              1        9     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low               0       61     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low               1       15     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       60     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium            1       21     220
0-24 months   ki0047075b-MAL-ED          NEPAL                          High              0       50     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High              1        3     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       85     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low               1       11     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       71     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        5     225
0-24 months   ki0047075b-MAL-ED          PERU                           High              0       89     301
0-24 months   ki0047075b-MAL-ED          PERU                           High              1        1     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low               0      100     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low               1        4     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium            0      100     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium            1        7     301
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       89     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        6     312
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
0-24 months   ki1000109-EE               PAKISTAN                       Low               0      198     376
0-24 months   ki1000109-EE               PAKISTAN                       Low               1      130     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium            0       23     376
0-24 months   ki1000109-EE               PAKISTAN                       Medium            1       10     376
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       63     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       12     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      269     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1      152     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       74     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       29     599
0-24 months   ki1119695-PROBIT           BELARUS                        High              0     2838   16897
0-24 months   ki1119695-PROBIT           BELARUS                        High              1        2   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low               0     6086   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Low               1       14   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium            0     7946   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Medium            1       11   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0     7305   13915
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1      245   13915
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2766   13915
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      157   13915
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     3262   13915
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      180   13915
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     8367   26893
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      609   26893
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     8706   26893
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1     1017   26893
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     7440   26893
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      754   26893
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0       63    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1       14    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1802    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      348    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       67    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       13    2307
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
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            0       90     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            1        0     232
0-6 months    ki0047075b-MAL-ED          INDIA                          High              0       60     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High              1        3     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low               0       73     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low               1        3     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       73     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium            1        8     220
0-6 months    ki0047075b-MAL-ED          NEPAL                          High              0       51     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          High              1        2     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low               0       95     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low               1        1     225
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
0-6 months    ki1000109-EE               PAKISTAN                       Low               0      279     376
0-6 months    ki1000109-EE               PAKISTAN                       Low               1       49     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium            0       29     376
0-6 months    ki1000109-EE               PAKISTAN                       Medium            1        4     376
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High              0       73     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High              1        2     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      401     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1       20     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0      101     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1        2     599
0-6 months    ki1119695-PROBIT           BELARUS                        High              0     2839   16893
0-6 months    ki1119695-PROBIT           BELARUS                        High              1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low               0     6088   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Low               1       10   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium            0     7947   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Medium            1        8   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0     7423   13820
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1       76   13820
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2865   13820
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       38   13820
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     3365   13820
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1       53   13820
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     8670   26786
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1      264   26786
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0     9216   26786
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1      470   26786
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     7847   26786
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      319   26786
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0       69    2155
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1        1    2155
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1957    2155
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1       56    2155
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       70    2155
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1        2    2155
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
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       70     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        4     259
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
6-24 months   ki1000109-EE               PAKISTAN                       High              0       12     370
6-24 months   ki1000109-EE               PAKISTAN                       High              1        3     370
6-24 months   ki1000109-EE               PAKISTAN                       Low               0      204     370
6-24 months   ki1000109-EE               PAKISTAN                       Low               1      118     370
6-24 months   ki1000109-EE               PAKISTAN                       Medium            0       23     370
6-24 months   ki1000109-EE               PAKISTAN                       Medium            1       10     370
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       59     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       12     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      265     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1      149     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       73     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       29     587
6-24 months   ki1119695-PROBIT           BELARUS                        High              0     2774   16598
6-24 months   ki1119695-PROBIT           BELARUS                        High              1        1   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low               0     5967   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low               1        5   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Medium            0     7848   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Medium            1        3   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0     5571   10678
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1      178   10678
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2138   10678
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      124   10678
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     2534   10678
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      133   10678
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
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0       63    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1       14    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1823    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      321    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       69    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       11    2301


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
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/cbc0a5f7-258e-41b2-8f78-000f53ccdb77/dc387d17-245f-4ff1-90e0-f40665a0c8a0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cbc0a5f7-258e-41b2-8f78-000f53ccdb77/dc387d17-245f-4ff1-90e0-f40665a0c8a0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cbc0a5f7-258e-41b2-8f78-000f53ccdb77/dc387d17-245f-4ff1-90e0-f40665a0c8a0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cbc0a5f7-258e-41b2-8f78-000f53ccdb77/dc387d17-245f-4ff1-90e0-f40665a0c8a0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1738910   0.1145639   0.2332182
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2617082   0.1758631   0.3475534
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2902116   0.2041921   0.3762310
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.1519855   0.0878932   0.2160778
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.1654884   0.1040792   0.2268977
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.2267478   0.1565085   0.2969871
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1228475   0.0725710   0.1731240
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2965500   0.2397427   0.3533573
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2144360   0.1756092   0.2532629
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1951220   0.0736728   0.3165711
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3885542   0.3360609   0.4410475
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4000000   0.2566929   0.5433071
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1366467   0.0868759   0.1864176
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.2726591   0.2140160   0.3313022
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2118653   0.1537425   0.2699882
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0976204   0.0603074   0.1349333
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1562224   0.1071979   0.2052470
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1321525   0.0895812   0.1747239
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0571506   0.0290594   0.0852419
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0926052   0.0554472   0.1297631
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1282463   0.0872622   0.1692304
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0402577   0.0247946   0.0557207
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0609756   0.0091734   0.1127779
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0528818   0.0421875   0.0635761
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2097554   0.1045899   0.3149208
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3519413   0.3056835   0.3981992
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2973513   0.1932181   0.4014846
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0333296   0.0292074   0.0374518
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0505645   0.0423286   0.0588004
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0509445   0.0431910   0.0586980
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0919178   0.0570600   0.1267756
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1122013   0.0867800   0.1376226
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1161977   0.0846209   0.1477745
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0177818   0.0090896   0.0264740
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1635069   0.1462572   0.1807566
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0649434   0.0561296   0.0737572
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1259997   0.1073323   0.1446670
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2384142   0.2104002   0.2664283
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.1997809   0.1744826   0.2250792
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0201342   0.0041770   0.0360915
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0689655   0.0382050   0.0997260
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0666667   0.0360317   0.0973017
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0810068   0.0742403   0.0877733
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0949177   0.0888506   0.1009847
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0870185   0.0802339   0.0938031
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1726024   0.0761434   0.2690615
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1618933   0.1442958   0.1794909
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1462666   0.0707976   0.2217355
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.0751305   0.0326212   0.1176398
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.0925796   0.0382592   0.1468999
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.0884014   0.0328333   0.1439695
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.0483871   0.0105721   0.0862021
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.0544218   0.0177057   0.0911378
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.0797101   0.0344663   0.1249540
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0279503   0.0159038   0.0399969
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1002950   0.0728735   0.1277165
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0575397   0.0289884   0.0860910
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.0702258   0.0313330   0.1091186
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.0810324   0.0448724   0.1171925
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.0579273   0.0259560   0.0898986
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0255319   0.0053506   0.0457133
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0467290   0.0184312   0.0750268
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0557769   0.0273659   0.0841879
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0102857   0.0080281   0.0125432
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0113886   0.0073234   0.0154538
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0140895   0.0101016   0.0180773
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0139245   0.0050986   0.0227505
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0400127   0.0311061   0.0489194
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0223641   0.0169582   0.0277699
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0232482   0.0145451   0.0319514
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0261472   0.0158761   0.0364184
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0195600   0.0107607   0.0283593
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0348407   0.0306076   0.0390739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0439241   0.0399262   0.0479221
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0364987   0.0322412   0.0407562
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1126761   0.0389369   0.1864152
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.0937500   0.0221538   0.1653462
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1016949   0.0243724   0.1790174
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1206897   0.0366485   0.2047308
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1805556   0.0914923   0.2696188
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2467532   0.1502250   0.3432815
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1193628   0.0684441   0.1702814
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2313193   0.1491607   0.3134778
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2373139   0.1570046   0.3176232
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.1312962   0.0714514   0.1911409
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.1274870   0.0726412   0.1823328
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.2036802   0.1355389   0.2718214
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1031002   0.0488215   0.1573789
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3023403   0.2568703   0.3478103
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1947069   0.1557311   0.2336828
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1750000   0.0571020   0.2928980
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3761755   0.3229498   0.4294013
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4285714   0.2787209   0.5784219
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1080100   0.0586251   0.1573950
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.2805638   0.2177719   0.3433557
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2008146   0.1408832   0.2607459
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0946476   0.0561287   0.1331666
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1638036   0.1093667   0.2182405
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1137519   0.0714811   0.1560227
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0513544   0.0242596   0.0784492
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0859552   0.0492581   0.1226523
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1169270   0.0764312   0.1574227
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0486381   0.0300371   0.0672391
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0694444   0.0107118   0.1281771
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0582865   0.0461150   0.0704580
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2190495   0.1164240   0.3216751
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3532308   0.3064013   0.4000604
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2881170   0.1844448   0.3917892
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0309561   0.0264012   0.0355109
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0485160   0.0392085   0.0578235
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0521285   0.0429876   0.0612694
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0999833   0.0631963   0.1367704
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1129453   0.0867556   0.1391350
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1126243   0.0803156   0.1449329
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0119006   0.0045538   0.0192473
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1615343   0.1436175   0.1794512
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0587462   0.0501200   0.0673725
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1283868   0.1082728   0.1485008
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2480343   0.2185129   0.2775557
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2061795   0.1791596   0.2331994
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0204778   0.0042510   0.0367047
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0694981   0.0385086   0.1004875
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0677291   0.0366233   0.0988348
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0770797   0.0686162   0.0855431
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0984512   0.0903332   0.1065691
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0850509   0.0768873   0.0932146
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1878343   0.0835595   0.2921091
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1497530   0.1330743   0.1664316
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1323665   0.0540058   0.2107273


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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3222037   0.2847485   0.3596589
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0418254   0.0384990   0.0451517
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1119516   0.0949484   0.1289548
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0934771   0.0860112   0.1009431
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0503686   0.0353351   0.0654020
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0884989   0.0846168   0.0923809
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1625488   0.1455786   0.1795190
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120839   0.0102622   0.0139056
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0266667   0.0224561   0.0308772
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393116   0.0368259   0.0417973
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3236797   0.2857977   0.3615618
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0407380   0.0369883   0.0444876
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1136174   0.0956322   0.1316026
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0876552   0.0801645   0.0951460
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0510585   0.0358245   0.0662926
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0868381   0.0821743   0.0915020
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1503694   0.1342222   0.1665166


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
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               1.5050130   0.9396418    2.410561
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               1.6689279   1.0663863    2.611924
0-24 months   ki1000108-IRC              INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High               1.0888434   0.6209443    1.909318
0-24 months   ki1000108-IRC              INDIA                          Medium               High               1.4919037   0.8848226    2.515506
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High               2.4139687   1.4904259    3.909785
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High               1.7455465   1.1452296    2.660543
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High               1.9913404   1.0532579    3.764924
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High               2.0500000   0.9996680    4.203896
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High               1.9953577   1.3076827    3.044663
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High               1.5504605   0.9818163    2.448450
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High               1.6003060   0.9773694    2.620278
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High               1.3537396   0.8223461    2.228515
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               1.6203696   0.8594272    3.055055
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               2.2440047   1.2479495    4.035065
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               1.5146339   0.5962002    3.847896
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               1.3135827   0.8510125    2.027584
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High               1.6778656   0.9994723    2.816719
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               1.4176101   0.7694361    2.611807
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               1.5171053   1.2408559    1.854855
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               1.5285066   1.2606749    1.853239
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               1.2206699   0.7844699    1.899417
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               1.2641482   0.7933935    2.014222
0-24 months   ki1135781-COHORTS          INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High               9.1951822   5.5766957   15.161554
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High               3.6522402   2.1991949    6.065337
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High               1.8921814   1.5694691    2.281249
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High               1.5855669   1.3079096    1.922168
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High               3.4252873   1.3795460    8.504677
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High               3.3111111   1.3246625    8.276415
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               1.1717244   1.0611657    1.293802
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               1.0742121   0.9676212    1.192545
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.9379550   0.5304869    1.658400
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.8474189   0.3943697    1.820928
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               1.2322501   0.5454564    2.783798
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               1.1766381   0.5045930    2.743750
0-6 months    ki1000108-IRC              INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High               1.1247165   0.4005555    3.158082
0-6 months    ki1000108-IRC              INDIA                          Medium               High               1.6473430   0.6270556    4.327749
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High               3.5883317   2.1335409    6.035096
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High               2.0586420   1.0888549    3.892168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High               1.1538843   0.5664673    2.350443
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High               0.8248725   0.3770857    1.804404
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High               1.8302181   0.6761706    4.953925
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High               2.1845950   0.8530709    5.594441
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               1.1072283   0.7294835    1.680579
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               1.3698171   0.9601928    1.954190
0-6 months    ki1135781-COHORTS          INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High               2.8735378   1.4674877    5.626773
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High               1.6060886   0.8148704    3.165559
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High               1.1246972   0.6538697    1.934550
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.8413527   0.4685875    1.510656
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               1.2607117   1.0915165    1.456134
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               1.0475862   0.9003063    1.218959
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High               0.8320313   0.3043355    2.274713
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.9025424   0.3309679    2.461214
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High               1.4960317   0.6372868    3.511937
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High               2.0445269   0.9198597    4.544269
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               1.9379515   1.1126550    3.375400
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               1.9881735   1.1543877    3.424182
6-24 months   ki1000108-IRC              INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Low                  High               0.9709881   0.5182558    1.819213
6-24 months   ki1000108-IRC              INDIA                          Medium               High               1.5513028   0.8806599    2.732656
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High               2.9324897   1.6638624    5.168394
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High               1.8885216   1.1003429    3.241275
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High               2.1495746   1.0799012    4.278790
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High               2.4489796   1.1464135    5.231534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High               2.5975714   1.5612741    4.321712
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High               1.8592214   1.0756362    3.213637
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High               1.7306679   1.0244263    2.923794
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High               1.2018463   0.6939360    2.081510
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               1.6737647   0.8491641    3.299113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               2.2768636   1.2105349    4.282494
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               1.4277778   0.5643511    3.612201
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               1.1983708   0.7750939    1.852798
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High               1.6125614   0.9911918    2.623463
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               1.3153052   0.7286756    2.374208
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               1.5672531   1.2314713    1.994592
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               1.6839499   1.3402414    2.115803
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               1.1296413   0.7305428    1.746769
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               1.1264303   0.7066502    1.795578
6-24 months   ki1135781-COHORTS          INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              13.5736727   7.2491687   25.415961
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High               4.9364257   2.6171849    9.310882
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High               1.9319299   1.5899533    2.347461
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High               1.6059242   1.3120498    1.965621
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High               3.3938224   1.3671140    8.425069
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High               3.3074369   1.3235151    8.265216
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               1.2772656   1.1172770    1.460164
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               1.1034161   0.9623953    1.265101
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               0.7972610   0.4518715    1.406650
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               0.7046983   0.3121056    1.591127


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0101120   -0.0449377   0.0651616
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0616883   -0.0161498   0.1395264
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0566720    0.0075388   0.1058052
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0333803   -0.0219898   0.0887505
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1091419    0.0493946   0.1688893
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1756914    0.0573459   0.2940370
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0829046    0.0368451   0.1289641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0309511   -0.0017892   0.0636913
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0365169    0.0102146   0.0628192
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0096166   -0.0042025   0.0234357
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1124483    0.0098383   0.2150583
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0084958    0.0052620   0.0117295
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0200338   -0.0119573   0.0520249
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0756953    0.0652492   0.0861415
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0579084    0.0414006   0.0744161
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0302343    0.0130821   0.0473866
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0074921    0.0018623   0.0131218
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0100537   -0.1048454   0.0847381
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0091086   -0.0250964   0.0433136
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0127376   -0.0204773   0.0459525
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0425284    0.0188020   0.0662548
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0021215   -0.0307464   0.0349893
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0173252   -0.0016288   0.0362793
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0017983    0.0001058   0.0034908
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0127421    0.0039845   0.0214998
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0004048   -0.0064984   0.0073081
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0044708    0.0009205   0.0080212
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0095833   -0.0670104   0.0478438
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0677161   -0.0094614   0.1448937
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0683048    0.0238304   0.1127792
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0248014   -0.0270311   0.0766338
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1229617    0.0664403   0.1794832
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1865960    0.0710805   0.3021115
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1023221    0.0547984   0.1498458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0275022   -0.0060867   0.0610911
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0349470    0.0092914   0.0606025
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0075808   -0.0088659   0.0240275
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1046302    0.0047047   0.2045556
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0097819    0.0061111   0.0134527
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0136340   -0.0196544   0.0469225
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0757547    0.0660501   0.0854592
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0624964    0.0446330   0.0803598
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0305807    0.0131672   0.0479943
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0097585    0.0026059   0.0169111
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0374649   -0.1398857   0.0649559


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0897436   -0.5553666   0.4672852
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.3015873   -0.1952913   0.5919151
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.2457983    0.0035364   0.4291610
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.1800780   -0.1787680   0.4296825
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.4704608    0.1932033   0.6524382
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.4738002    0.0387627   0.7119481
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.3776091    0.1361009   0.5516022
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2407306   -0.0559022   0.4540308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3898566    0.0542963   0.6063513
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1928171   -0.1350978   0.4260017
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3489976   -0.0584836   0.5996119
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.2031249    0.1238417   0.2752337
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1789504   -0.1612235   0.4194723
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.8097738    0.6920722   0.8824854
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3148768    0.2221955   0.3965145
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.6002619    0.1702459   0.8074242
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0846571    0.0187533   0.1461346
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0618502   -0.8389219   0.3868549
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.1081282   -0.4036694   0.4333171
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.2083871   -0.5623325   0.5989004
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.6034220    0.3516107   0.7574388
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0293234   -0.5503116   0.3922428
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.4042553   -0.2061957   0.7057594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1488152   -0.0008717   0.2761155
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.4778294    0.0361417   0.7171139
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0171158   -0.3226556   0.2696048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1137281    0.0187258   0.1995327
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0929577   -0.8178096   0.3428593
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.3594164   -0.1972763   0.6572660
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.3639670    0.0891724   0.5558567
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.1588838   -0.2461301   0.4322612
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.5439294    0.2413323   0.7258347
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.5160345    0.0697324   0.7482202
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.4864786    0.2189419   0.6623757
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2251513   -0.0984476   0.4534191
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.4049411    0.0455116   0.6290210
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1348438   -0.2119889   0.3824240
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3232522   -0.0645767   0.5697937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.2401174    0.1475763   0.3226120
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1199995   -0.2267818   0.3687542
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.8642344    0.7499137   0.9262963
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3274064    0.2301688   0.4123619
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5989345    0.1676110   0.8067568
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1123755    0.0259505   0.1911323
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.2491524   -1.1540824   0.2756165
