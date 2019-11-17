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
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
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
* delta_impsan

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
![](/tmp/218d3137-d291-4f42-a883-eb0e9466224c/eff9ab64-9e1a-4e49-98d8-2699c895d0c9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/218d3137-d291-4f42-a883-eb0e9466224c/eff9ab64-9e1a-4e49-98d8-2699c895d0c9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/218d3137-d291-4f42-a883-eb0e9466224c/eff9ab64-9e1a-4e49-98d8-2699c895d0c9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/218d3137-d291-4f42-a883-eb0e9466224c/eff9ab64-9e1a-4e49-98d8-2699c895d0c9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1749463   0.1178114   0.2320811
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2616037   0.1771226   0.3460849
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2773504   0.1930752   0.3616255
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.1590487   0.0948762   0.2232212
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.1729061   0.1116626   0.2341495
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.2315562   0.1611694   0.3019430
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1327069   0.0861811   0.1792328
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2789709   0.2234436   0.3344982
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2197183   0.1787960   0.2606406
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1951220   0.0736728   0.3165711
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3885542   0.3360609   0.4410475
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4000000   0.2566929   0.5433071
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1572011   0.1033377   0.2110645
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.2711138   0.2135082   0.3287195
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2062674   0.1503140   0.2622207
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0995601   0.0626349   0.1364853
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1646344   0.1156441   0.2136248
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1355967   0.0931925   0.1780009
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0582534   0.0300932   0.0864136
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0918571   0.0548262   0.1288879
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1280412   0.0871623   0.1689201
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0402577   0.0247946   0.0557207
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0609756   0.0091734   0.1127779
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0528818   0.0421875   0.0635761
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1947130   0.1082878   0.2811383
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3170026   0.2751326   0.3588726
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2526187   0.1617056   0.3435318
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0347731   0.0305238   0.0390223
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0504962   0.0423029   0.0586895
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0518716   0.0442966   0.0594467
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0910844   0.0573765   0.1247922
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1105835   0.0854808   0.1356862
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1197468   0.0875122   0.1519814
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0173159   0.0089178   0.0257141
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1624716   0.1453983   0.1795450
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0648335   0.0560403   0.0736267
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1286986   0.1086031   0.1487941
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2452237   0.2159603   0.2744870
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.1985076   0.1723361   0.2246791
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0201342   0.0041770   0.0360915
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0689655   0.0382050   0.0997260
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0666667   0.0360317   0.0973017
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0813202   0.0741584   0.0884820
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0971736   0.0907028   0.1036444
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0882726   0.0812169   0.0953283
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1189391   0.1019233   0.1359550
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1912708   0.1718845   0.2106571
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1743521   0.1560087   0.1926955
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.0723571   0.0308437   0.1138706
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.0897551   0.0367882   0.1427220
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.0937721   0.0363346   0.1512095
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.0483871   0.0105721   0.0862021
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.0544218   0.0177057   0.0911378
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.0797101   0.0344663   0.1249540
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0279503   0.0159038   0.0399969
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1002950   0.0728735   0.1277165
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0575397   0.0289884   0.0860910
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.0714903   0.0327455   0.1102351
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.0816209   0.0454017   0.1178400
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.0571840   0.0253393   0.0890286
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0255319   0.0053506   0.0457133
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0467290   0.0184312   0.0750268
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0557769   0.0273659   0.0841879
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0101999   0.0079460   0.0124538
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0114861   0.0074350   0.0155373
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0143620   0.0102797   0.0184443
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0140796   0.0052799   0.0228793
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0403123   0.0313347   0.0492900
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0223791   0.0169618   0.0277964
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0233747   0.0146266   0.0321227
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0259031   0.0156805   0.0361256
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0195039   0.0107496   0.0282582
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0344883   0.0301593   0.0388173
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0448927   0.0404177   0.0493676
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0372811   0.0329203   0.0416418
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0243155   0.0156182   0.0330127
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0258900   0.0189102   0.0328698
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0280103   0.0192559   0.0367647
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1126761   0.0389369   0.1864152
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.0937500   0.0221538   0.1653462
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1016949   0.0243724   0.1790174
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1206897   0.0366485   0.2047308
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1805556   0.0914923   0.2696188
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2467532   0.1502250   0.3432815
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1225793   0.0713284   0.1738302
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.2263550   0.1439523   0.3087577
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2461839   0.1665643   0.3258035
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.1334905   0.0729394   0.1940415
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.1284630   0.0739421   0.1829839
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.2090222   0.1410180   0.2770265
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1071053   0.0533228   0.1608878
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3028665   0.2592175   0.3465156
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1971524   0.1602338   0.2340710
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1750000   0.0571020   0.2928980
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3761755   0.3229498   0.4294013
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4285714   0.2787209   0.5784219
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1083355   0.0590712   0.1575998
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.2791162   0.2156947   0.3425377
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2005298   0.1397262   0.2613335
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0884833   0.0500149   0.1269517
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1686394   0.1145734   0.2227054
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1161644   0.0733896   0.1589391
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0510719   0.0242406   0.0779031
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0885463   0.0517033   0.1253893
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1200195   0.0795038   0.1605353
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0486381   0.0300371   0.0672391
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0694444   0.0107118   0.1281771
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0582865   0.0461150   0.0704580
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2073000   0.1095765   0.3050235
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3546566   0.3080286   0.4012846
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2870824   0.1782792   0.3958856
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0330635   0.0283105   0.0378165
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0490064   0.0395696   0.0584432
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0512904   0.0424848   0.0600960
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0997320   0.0629522   0.1365118
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1143818   0.0879779   0.1407856
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1114566   0.0795944   0.1433189
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0117909   0.0045226   0.0190592
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1619563   0.1440942   0.1798184
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0589267   0.0502781   0.0675753
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1339899   0.1124808   0.1554990
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2560093   0.2251935   0.2868252
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2087892   0.1806377   0.2369408
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0204778   0.0042510   0.0367047
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0694981   0.0385086   0.1004875
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0677291   0.0366233   0.0988348
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0767576   0.0684699   0.0850453
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0995223   0.0913317   0.1077129
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0869539   0.0785704   0.0953374
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1049273   0.0891556   0.1206990
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1787506   0.1598963   0.1976049
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1605346   0.1423235   0.1787456


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
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               1.4953376   0.9493318    2.355377
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               1.5853460   1.0202706    2.463388
0-24 months   ki1000108-IRC              INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High               1.0871267   0.6353453    1.860161
0-24 months   ki1000108-IRC              INDIA                          Medium               High               1.4558826   0.8783264    2.413219
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High               2.1021576   1.3676083    3.231237
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High               1.6556652   1.1336417    2.418072
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High               1.9913404   1.0532579    3.764924
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High               2.0500000   0.9996680    4.203896
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High               1.7246308   1.1531347    2.579362
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High               1.3121243   0.8472681    2.032026
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High               1.6536185   1.0285938    2.658439
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High               1.3619583   0.8406231    2.206614
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               1.5768535   0.8405234    2.958237
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               2.1980046   1.2316026    3.922713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               1.5146339   0.5962002    3.847896
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               1.3135827   0.8510125    2.027584
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High               1.6280503   1.0246623    2.586752
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               1.2973898   0.7326502    2.297441
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               1.4521638   1.1892318    1.773228
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               1.4917193   1.2377112    1.797856
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               1.2140778   0.7862470    1.874710
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               1.3146800   0.8321025    2.077128
0-24 months   ki1135781-COHORTS          INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High               9.3827741   5.7123545   15.411587
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High               3.7441505   2.2627846    6.195315
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High               1.9054102   1.5682414    2.315070
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High               1.5424220   1.2601061    1.887988
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High               1.0000000   1.0000000    1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High               3.4252873   1.3795460    8.504677
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High               3.3111111   1.3246625    8.276415
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               1.1949500   1.0736718    1.329927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               1.0854941   0.9730471    1.210936
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               1.6081406   1.3619414    1.898845
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               1.4658938   1.2256349    1.753250
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               1.2404460   0.5449246    2.823705
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               1.2959614   0.5603234    2.997405
0-6 months    ki1000108-IRC              INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High               1.1247165   0.4005555    3.158082
0-6 months    ki1000108-IRC              INDIA                          Medium               High               1.6473430   0.6270556    4.327749
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High               3.5883317   2.1335409    6.035096
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High               2.0586420   1.0888549    3.892168
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High               1.1417054   0.5672804    2.297790
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High               0.7998841   0.3671042    1.742869
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High               1.8302181   0.6761706    4.953925
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High               2.1845950   0.8530709    5.594441
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               1.1261044   0.7445064    1.703291
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               1.4080531   0.9857622    2.011249
0-6 months    ki1135781-COHORTS          INDIA                          High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High               2.8631735   1.4743877    5.560113
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High               1.5894694   0.8131064    3.107112
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High               1.0000000   1.0000000    1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High               1.1081692   0.6433708    1.908758
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High               0.8344034   0.4649917    1.497294
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               1.3016780   1.1138351    1.521200
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               1.0809771   0.9221030    1.267224
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               1.0647543   0.6986762    1.622642
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               1.1519544   0.7343797    1.806966
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High               0.8320313   0.3043355    2.274713
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High               0.9025424   0.3309679    2.461214
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High               1.4960317   0.6372868    3.511937
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High               2.0445269   0.9198597    4.544269
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High               1.8466007   1.0620978    3.210565
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High               2.0083645   1.1852597    3.403075
6-24 months   ki1000108-IRC              INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1000108-IRC              INDIA                          Low                  High               0.9623388   0.5170006    1.791286
6-24 months   ki1000108-IRC              INDIA                          Medium               High               1.5658217   0.8960249    2.736305
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High               2.8277453   1.6890750    4.734037
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High               1.8407341   1.0922661    3.102085
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High               2.1495746   1.0799012    4.278790
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High               2.4489796   1.1464135    5.231534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High               2.5764054   1.5503776    4.281450
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High               1.8510075   1.0695105    3.203548
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High               1.9058893   1.1102298    3.271768
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High               1.3128394   0.7423041    2.321889
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High               1.7337593   0.8871889    3.388141
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High               2.3500131   1.2576199    4.391280
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High               1.4277778   0.5643511    3.612201
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High               1.1983708   0.7750939    1.852798
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High               1.7108377   1.0486279    2.791234
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High               1.3848644   0.7563757    2.535578
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High               1.4821893   1.1665466    1.883238
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High               1.5512680   1.2415086    1.938313
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High               1.1468911   0.7417493    1.773320
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High               1.1175613   0.7009409    1.781810
6-24 months   ki1135781-COHORTS          INDIA                          High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              13.7357026   7.3431351   25.693320
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High               4.9976456   2.6518865    9.418375
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High               1.9106616   1.5657635    2.331532
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High               1.5582462   1.2658696    1.918153
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High               1.0000000   1.0000000    1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High               3.3938224   1.3671140    8.425069
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High               3.3074369   1.3235151    8.265216
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High               1.2965789   1.1347604    1.481473
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High               1.1328372   0.9890214    1.297565
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High               1.0000000   1.0000000    1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High               1.7035662   1.4247446    2.036953
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High               1.5299599   1.2658436    1.849184


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0101120   -0.0449377   0.0651616
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0616883   -0.0161498   0.1395264
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0556167    0.0082539   0.1029795
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0263172   -0.0291912   0.0818256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0992825    0.0428166   0.1557483
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1756914    0.0573459   0.2940370
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0623502    0.0134940   0.1112064
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0290113   -0.0033087   0.0613313
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0354142    0.0090799   0.0617484
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0096166   -0.0042025   0.0234357
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1010410    0.0171505   0.1849315
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0076777    0.0043557   0.0109998
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0208672   -0.0099109   0.0516453
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0761612    0.0659313   0.0863911
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0552094    0.0373441   0.0730747
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0302343    0.0130821   0.0473866
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0074893    0.0013467   0.0136320
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0427143    0.0287416   0.0566871
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0118820   -0.0216028   0.0453668
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0127376   -0.0204773   0.0459525
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0425284    0.0188020   0.0662548
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0008570   -0.0318345   0.0335484
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0173252   -0.0016288   0.0362793
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0018788    0.0001905   0.0035670
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0125871    0.0038583   0.0213158
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0002784   -0.0066606   0.0072174
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0051279    0.0014695   0.0087862
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0020989   -0.0043347   0.0085325
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0095833   -0.0670104   0.0478438
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0677161   -0.0094614   0.1448937
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0650883    0.0205988   0.1095778
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0226071   -0.0297613   0.0749755
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1189566    0.0626139   0.1752993
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1865960    0.0710805   0.3021115
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1019966    0.0543534   0.1496398
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0336665   -0.0000158   0.0673488
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0352295    0.0097629   0.0606961
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0075808   -0.0088659   0.0240275
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1197869    0.0245951   0.2149787
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0080552    0.0042572   0.0118533
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0138854   -0.0194172   0.0471879
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0758643    0.0662122   0.0855165
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0568933    0.0377301   0.0760565
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0305807    0.0131672   0.0479943
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0100805    0.0031237   0.0170374
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0429951    0.0296524   0.0563379


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0897436   -0.5553666   0.4672852
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.3015873   -0.1952913   0.5919151
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.2412214    0.0106840   0.4180373
0-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.1419743   -0.2146197   0.3938777
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.4279612    0.1755112   0.6031136
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.4738002    0.0387627   0.7119481
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.2839893    0.0273998   0.4728858
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2256436   -0.0653679   0.4371636
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3780835    0.0431793   0.5957653
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1928171   -0.1350978   0.4260017
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3416387   -0.0093059   0.5705567
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1808621    0.1002871   0.2542211
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1863949   -0.1389248   0.4187911
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.8147574    0.7013070   0.8851168
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3002012    0.1985315   0.3889737
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.6002619    0.1702459   0.8074242
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0843303    0.0125226   0.1509163
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2642340    0.1725173   0.3457850
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.1410507   -0.3607778   0.4578146
0-6 months    ki1000108-IRC              INDIA                          High                 NA                 0.2083871   -0.5623325   0.5989004
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.6034220    0.3516107   0.7574388
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0118451   -0.5611534   0.3745329
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.4042553   -0.2061957   0.7057594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1555463    0.0061256   0.2825027
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.4720151    0.0339301   0.7114411
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0117714   -0.3297654   0.2655878
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1294387    0.0320687   0.2170136
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0794602   -0.2017825   0.2948861
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0929577   -0.8178096   0.3428593
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.3594164   -0.1972763   0.6572660
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.3468275    0.0725267   0.5400037
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.1448268   -0.2642234   0.4215253
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.5262125    0.2291224   0.7088064
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.5160345    0.0697324   0.7482202
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.4849312    0.2175859   0.6609265
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2756167   -0.0529869   0.5016735
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.4082149    0.0527142   0.6303021
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1348438   -0.2119889   0.3824240
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3662235    0.0008309   0.5979934
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1959014    0.1002309   0.2813994
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1222117   -0.2248635   0.3709403
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.8654855    0.7524496   0.9269072
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2980530    0.1926393   0.3897032
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5989345    0.1676110   0.8067568
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1160841    0.0321171   0.1927667
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2906600    0.1952113   0.3747884
