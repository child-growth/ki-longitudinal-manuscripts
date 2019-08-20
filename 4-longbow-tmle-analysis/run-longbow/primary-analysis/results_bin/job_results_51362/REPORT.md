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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        meducyrs    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0       59     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1       19     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       46     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       24     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       44     213
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       21     213
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  0       76     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  1        3     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   0       55     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   1        8     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                0       82     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                1        8     232
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       39     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       24     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       33     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       43     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       44     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       37     220
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0       40     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1       13     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0       69     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       27     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       51     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       25     225
0-24 months   ki0047075b-MAL-ED          PERU                           High                  0       87     301
0-24 months   ki0047075b-MAL-ED          PERU                           High                  1        3     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       93     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   1       11     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       95     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                1       12     301
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       80     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1       15     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0      116     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       32     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       55     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1       14     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        9     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        2     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       54     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1       10     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0      126     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       15     216
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       89     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       37     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       38     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       71     373
0-24 months   ki1000108-IRC              INDIA                          High                  0       41     410
0-24 months   ki1000108-IRC              INDIA                          High                  1       83     410
0-24 months   ki1000108-IRC              INDIA                          Low                   0       50     410
0-24 months   ki1000108-IRC              INDIA                          Low                   1       97     410
0-24 months   ki1000108-IRC              INDIA                          Medium                0       50     410
0-24 months   ki1000108-IRC              INDIA                          Medium                1       89     410
0-24 months   ki1000109-EE               PAKISTAN                       High                  0        9     377
0-24 months   ki1000109-EE               PAKISTAN                       High                  1        6     377
0-24 months   ki1000109-EE               PAKISTAN                       Low                   0      162     377
0-24 months   ki1000109-EE               PAKISTAN                       Low                   1      167     377
0-24 months   ki1000109-EE               PAKISTAN                       Medium                0       21     377
0-24 months   ki1000109-EE               PAKISTAN                       Medium                1       12     377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0      209    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1      113    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      360    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1      322    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      316    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1      193    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       27     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1       14     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      172     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1      160     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       22     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1       23     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  0      106     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  1       72     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   0      106     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   1      122     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                0      114     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                1      104     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0      166     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       69     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0      131     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       83     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0      157     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       94     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      167     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       87     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      163     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       79     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      177     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       85     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      474    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1      147    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       63    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       19    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0     1284    2386
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      399    2386
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  0      105     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  1       13     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   0       65     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   1       11     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                0       82     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        6     282
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       40     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       35     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      160     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      261     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       45     599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       58     599
0-24 months   ki1119695-PROBIT           BELARUS                        High                  0     2156   16898
0-24 months   ki1119695-PROBIT           BELARUS                        High                  1      685   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   0     4521   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   1     1579   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                0     5885   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                1     2072   16898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0     5840   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1711   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     2226   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      700   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     2587   13919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      855   13919
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0      218    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       62    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      465    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1      162    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0      300    1322
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1      115    1322
0-24 months   ki1135781-COHORTS          INDIA                          High                  0      596    5844
0-24 months   ki1135781-COHORTS          INDIA                          High                  1      197    5844
0-24 months   ki1135781-COHORTS          INDIA                          Low                   0     1175    5844
0-24 months   ki1135781-COHORTS          INDIA                          Low                   1      776    5844
0-24 months   ki1135781-COHORTS          INDIA                          Medium                0     2127    5844
0-24 months   ki1135781-COHORTS          INDIA                          Medium                1      973    5844
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      727    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      441    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      496    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      405    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      593    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      383    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  0      287     814
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  1       11     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0      235     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1       26     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0      227     814
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       28     814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     6817   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     2167   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     7051   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     2685   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     6108   26926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     2098   26926
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0       51    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       26    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1467    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      683    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       58    2307
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       22    2307
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  0       64     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  1       14     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   0       54     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   1       16     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                0       48     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                1       17     213
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  0       76     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  1        3     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   0       58     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   1        5     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                0       84     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                1        6     232
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  0       47     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  1       16     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   0       46     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   1       30     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                0       58     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                1       23     220
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  0       42     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  1       11     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   0       83     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   1       13     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                0       60     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                1       16     225
0-6 months    ki0047075b-MAL-ED          PERU                           High                  0       88     301
0-6 months    ki0047075b-MAL-ED          PERU                           High                  1        2     301
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   0      100     301
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   1        4     301
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                0      102     301
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                1        5     301
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       85     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1       10     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0      134     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       14     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       61     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        8     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0       11     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        0     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       61     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        3     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0      134     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        7     216
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       78     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       79     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       50     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       54     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       49     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       58     368
0-6 months    ki1000108-IRC              INDIA                          High                  0       52     410
0-6 months    ki1000108-IRC              INDIA                          High                  1       72     410
0-6 months    ki1000108-IRC              INDIA                          Low                   0       69     410
0-6 months    ki1000108-IRC              INDIA                          Low                   1       78     410
0-6 months    ki1000108-IRC              INDIA                          Medium                0       66     410
0-6 months    ki1000108-IRC              INDIA                          Medium                1       73     410
0-6 months    ki1000109-EE               PAKISTAN                       High                  0       13     377
0-6 months    ki1000109-EE               PAKISTAN                       High                  1        2     377
0-6 months    ki1000109-EE               PAKISTAN                       Low                   0      235     377
0-6 months    ki1000109-EE               PAKISTAN                       Low                   1       94     377
0-6 months    ki1000109-EE               PAKISTAN                       Medium                0       26     377
0-6 months    ki1000109-EE               PAKISTAN                       Medium                1        7     377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  0      260    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  1       62    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   0      505    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   1      174    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                0      409    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                1       95    1505
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       38     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        3     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      264     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1       68     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       38     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        7     418
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                  0      120     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                  1       57     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                   0      141     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                   1       87     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                0      139     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium                1       78     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  0      184     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  1       51     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   0      157     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   1       57     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                0      178     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                1       73     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      184     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       70     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      183     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       59     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      195     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       67     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      530    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       91    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       74    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1        8    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0     1449    2386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      234    2386
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                  0      107     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                  1        5     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                   0       73     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                   1        1     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                0       76     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        3     265
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0       57     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1       18     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0      294     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1      127     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0       71     599
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       32     599
0-6 months    ki1119695-PROBIT           BELARUS                        High                  0     2163   16895
0-6 months    ki1119695-PROBIT           BELARUS                        High                  1      678   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   0     4570   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   1     1528   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                0     5942   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                1     2014   16895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  0     6128   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1374   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     2400   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      507   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     2797   13827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      621   13827
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  0      179    1051
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  1       36    1051
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   0      405    1051
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   1      100    1051
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                0      256    1051
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                1       75    1051
0-6 months    ki1135781-COHORTS          INDIA                          High                  0      582    5626
0-6 months    ki1135781-COHORTS          INDIA                          High                  1      168    5626
0-6 months    ki1135781-COHORTS          INDIA                          Low                   0     1385    5626
0-6 months    ki1135781-COHORTS          INDIA                          Low                   1      508    5626
0-6 months    ki1135781-COHORTS          INDIA                          Medium                0     2246    5626
0-6 months    ki1135781-COHORTS          INDIA                          Medium                1      737    5626
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  0      857    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  1      311    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   0      700    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   1      200    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                0      770    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                1      206    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  0       87     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   0       90     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   1        2     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                0       86     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                1        2     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0     7456   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1489   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     7837   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1865   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     6805   26829
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1377   26829
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0       64    2158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1        6    2158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1787    2158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      229    2158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       64    2158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1        8    2158
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0       63     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1        8     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       54     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       11     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       51     195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1        8     195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  0       71     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         High                  1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   0       52     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low                   1        3     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                0       77     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                1        3     206
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       48     207
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       10     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       50     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       22     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       54     207
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       23     207
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0       47     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1        5     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0       77     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       16     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       62     220
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       13     220
6-24 months   ki0047075b-MAL-ED          PERU                           High                  0       80     269
6-24 months   ki0047075b-MAL-ED          PERU                           High                  1        1     269
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       84     269
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   1        9     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       88     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        7     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       67     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        7     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0      108     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       21     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       48     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        8     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        7     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        2     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       54     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        8     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0      120     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       11     202
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  0      129     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       29     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       70     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       36     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       75     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       34     373
6-24 months   ki1000108-IRC              INDIA                          High                  0       86     410
6-24 months   ki1000108-IRC              INDIA                          High                  1       38     410
6-24 months   ki1000108-IRC              INDIA                          Low                   0      103     410
6-24 months   ki1000108-IRC              INDIA                          Low                   1       44     410
6-24 months   ki1000108-IRC              INDIA                          Medium                0       94     410
6-24 months   ki1000108-IRC              INDIA                          Medium                1       45     410
6-24 months   ki1000109-EE               PAKISTAN                       High                  0       11     372
6-24 months   ki1000109-EE               PAKISTAN                       High                  1        4     372
6-24 months   ki1000109-EE               PAKISTAN                       Low                   0      213     372
6-24 months   ki1000109-EE               PAKISTAN                       Low                   1      111     372
6-24 months   ki1000109-EE               PAKISTAN                       Medium                0       25     372
6-24 months   ki1000109-EE               PAKISTAN                       Medium                1        8     372
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0      233    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       69    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      398    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1      216    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      333    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1      140    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       27     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1       13     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      209     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1      111     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       23     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1       19     402
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  0      126     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  1       31     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   0      116     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   1       80     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                0      140     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                1       48     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0      181     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       30     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0      145     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       40     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0      190     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       29     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      222     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       24     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      199     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       35     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      213     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       37     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      438    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       76    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       58    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       14    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0     1192    2011
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      233    2011
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  0      101     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                  1       10     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   0       61     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                   1       10     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                0       81     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium                1        3     266
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       45     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       26     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      201     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      213     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       63     587
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       39     587
6-24 months   ki1119695-PROBIT           BELARUS                        High                  0     2760   16598
6-24 months   ki1119695-PROBIT           BELARUS                        High                  1       15   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   0     5904   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   1       68   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                0     7767   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                1       84   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0     5303   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      448   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     2014   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      248   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     2358   10679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      308   10679
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0      213    1198
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       29    1198
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      495    1198
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1       74    1198
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0      337    1198
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1       50    1198
6-24 months   ki1135781-COHORTS          INDIA                          High                  0      713    5479
6-24 months   ki1135781-COHORTS          INDIA                          High                  1       37    5479
6-24 months   ki1135781-COHORTS          INDIA                          Low                   0     1447    5479
6-24 months   ki1135781-COHORTS          INDIA                          Low                   1      349    5479
6-24 months   ki1135781-COHORTS          INDIA                          Medium                0     2625    5479
6-24 months   ki1135781-COHORTS          INDIA                          Medium                1      308    5479
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      852    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      202    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      551    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      296    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      657    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      251    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  0      282     803
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  1       11     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0      235     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1       24     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0      224     803
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       27     803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     5215   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1      879   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     4739   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1057   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     4494   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1      896   17280
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0       55    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       22    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1599    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      545    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       65    2301
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       15    2301


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/450ca2d1-cd19-43bb-b420-ad4d55c0a753/b43d14b8-aea5-4b59-9196-a19eb94be60f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/450ca2d1-cd19-43bb-b420-ad4d55c0a753/b43d14b8-aea5-4b59-9196-a19eb94be60f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/450ca2d1-cd19-43bb-b420-ad4d55c0a753/b43d14b8-aea5-4b59-9196-a19eb94be60f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/450ca2d1-cd19-43bb-b420-ad4d55c0a753/b43d14b8-aea5-4b59-9196-a19eb94be60f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2456886   0.1484927   0.3428846
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3409854   0.2302465   0.4517243
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3186901   0.2018470   0.4355333
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3884034   0.2675125   0.5092942
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5734511   0.4607783   0.6861240
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4556709   0.3454353   0.5659066
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2492364   0.1299699   0.3685029
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2724466   0.1811978   0.3636954
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3277910   0.2224216   0.4331605
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1501398   0.0767456   0.2235341
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2308046   0.1606151   0.3009940
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1964554   0.0979774   0.2949334
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.5569162   0.4779420   0.6358905
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6531983   0.5626284   0.7437682
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6627813   0.5735434   0.7520191
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.6736979   0.5911018   0.7562941
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.6639211   0.5907496   0.7370925
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.6302721   0.5501351   0.7104092
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                0.4000000   0.1517525   0.6482475
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.5075988   0.4535051   0.5616925
0-24 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.3636364   0.1992922   0.5279805
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3593043   0.2977896   0.4208191
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4646556   0.3881804   0.5411307
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3911605   0.3334439   0.4488770
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3492141   0.1996146   0.4988135
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4824828   0.4286182   0.5363475
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.5169674   0.3678481   0.6660866
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4209750   0.3464492   0.4955008
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.5208187   0.4561131   0.5855244
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.4687894   0.4005489   0.5370299
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2949954   0.2461847   0.3438061
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4117418   0.3555751   0.4679084
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3553629   0.3036796   0.4070463
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3318482   0.2793793   0.3843172
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3525318   0.3014040   0.4036595
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3133847   0.2624190   0.3643504
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2372456   0.2035797   0.2709115
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2314334   0.1422388   0.3206279
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2366426   0.2163173   0.2569678
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.1101695   0.0535765   0.1667625
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.1447368   0.0654954   0.2239782
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.0681818   0.0154251   0.1209386
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4730926   0.3428827   0.6033026
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6093969   0.5613015   0.6574924
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5859386   0.4737134   0.6981639
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2425538   0.1827869   0.3023208
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2558632   0.2009316   0.3107947
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2589264   0.1998585   0.3179944
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2218360   0.2134039   0.2302680
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2503365   0.2368062   0.2638668
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2475097   0.2353827   0.2596366
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2659501   0.2177664   0.3141339
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2509330   0.2196874   0.2821786
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2731599   0.2337874   0.3125324
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2763873   0.2472750   0.3054996
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3698592   0.3481587   0.3915598
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3190284   0.3035582   0.3344986
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.3702243   0.3446153   0.3958333
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4561717   0.4249443   0.4873990
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.3996662   0.3704224   0.4289100
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0361566   0.0150577   0.0572555
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.1002903   0.0638815   0.1366990
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1104267   0.0717598   0.1490937
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2477822   0.2376953   0.2578690
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2663769   0.2566232   0.2761307
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2565645   0.2458541   0.2672748
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3115053   0.2013718   0.4216387
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3174017   0.2934015   0.3414019
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2642655   0.1599496   0.3685814
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1766630   0.0903906   0.2629354
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2234691   0.1238934   0.3230449
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2450249   0.1347489   0.3553009
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.2656037   0.1576514   0.3735561
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3742563   0.2663142   0.4821984
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2900372   0.1919813   0.3880931
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1872154   0.0763167   0.2981142
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.1314785   0.0619564   0.2010006
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.2077876   0.1147622   0.3008130
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1052632   0.0434517   0.1670747
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.0945946   0.0473699   0.1418193
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1159420   0.0402794   0.1916047
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.5025603   0.4233207   0.5817999
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.5053812   0.4092073   0.6015552
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.5478790   0.4508640   0.6448940
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.5989880   0.5143168   0.6836592
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.5258593   0.4490741   0.6026446
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.5186981   0.4367631   0.6006331
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1949523   0.1593627   0.2305420
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2526746   0.1969812   0.3083680
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1935445   0.1458374   0.2412517
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.3292921   0.2597841   0.3988000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3752642   0.3143371   0.4361913
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3538001   0.2902302   0.4173700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2286471   0.1877642   0.2695299
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2862020   0.2400131   0.3323910
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2644162   0.2204470   0.3083855
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2646391   0.2171619   0.3121163
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2694895   0.2247135   0.3142654
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2455976   0.2007739   0.2904213
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1465378   0.1187176   0.1743580
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0975610   0.0333249   0.1617971
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1390374   0.1225043   0.1555706
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2269561   0.1289978   0.3249144
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2976746   0.2530231   0.3423261
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2858282   0.1905267   0.3811297
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.2409657   0.1814725   0.3004590
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.2488103   0.1928607   0.3047599
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.2514762   0.1918929   0.3110594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1763032   0.1692288   0.1833777
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1886833   0.1783068   0.1990597
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1831590   0.1741369   0.1921810
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1880258   0.1369429   0.2391087
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1925323   0.1579597   0.2271048
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2223488   0.1760819   0.2686156
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.2486365   0.2234226   0.2738504
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2492428   0.2313850   0.2671006
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.2516644   0.2375945   0.2657343
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2508854   0.2297081   0.2720628
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2351377   0.2116494   0.2586260
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2137911   0.1931056   0.2344766
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1666319   0.1588973   0.1743666
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1840848   0.1758912   0.1922784
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1721117   0.1637408   0.1804827
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0857143   0.0134603   0.1579683
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1135913   0.0966039   0.1305787
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1111111   0.0495438   0.1726785
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1126761   0.0389379   0.1864142
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.1692308   0.0778431   0.2606185
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1355932   0.0480109   0.2231756
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1807046   0.0802948   0.2811145
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3127278   0.2058171   0.4196386
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2963111   0.1932511   0.3993710
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.0961538   0.0158445   0.1764632
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.1720430   0.0951621   0.2489239
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1733333   0.0874690   0.2591977
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.0945946   0.0277868   0.1614024
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.1627907   0.0989607   0.2266207
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1428571   0.0510299   0.2346844
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1858744   0.1249394   0.2468095
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.3336715   0.2431239   0.4242191
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.3134205   0.2248017   0.4020394
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.3064269   0.2248564   0.3879975
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.2996417   0.2252068   0.3740767
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3274693   0.2485337   0.4064050
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2494180   0.1646511   0.3341849
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3459913   0.2927968   0.3991858
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2948693   0.2342447   0.3554939
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3291852   0.1788274   0.4795429
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3465148   0.2942660   0.3987637
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4513375   0.2978600   0.6048150
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1968629   0.1346850   0.2590409
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.4045055   0.3340430   0.4749680
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2500364   0.1854237   0.3146491
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1554498   0.1091831   0.2017165
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2134475   0.1535228   0.2733721
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1287789   0.0845196   0.1730383
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1015793   0.0638641   0.1392944
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1465639   0.1005179   0.1926099
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1441756   0.1000272   0.1883240
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1486463   0.1178551   0.1794374
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2011453   0.1081670   0.2941235
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1634488   0.1442320   0.1826655
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3376766   0.2205811   0.4547722
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5058287   0.4564455   0.5552119
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4122917   0.3043593   0.5202242
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0053307   0.0027834   0.0078779
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0114488   0.0076529   0.0152447
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0106996   0.0071317   0.0142674
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0772385   0.0701146   0.0843624
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1085173   0.0946215   0.1224131
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1169656   0.1038743   0.1300569
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1106782   0.0717078   0.1496487
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1248121   0.0975322   0.1520921
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1308494   0.0961538   0.1655450
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0607079   0.0409490   0.0804668
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1927680   0.1732545   0.2122815
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1043030   0.0927836   0.1158224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2025886   0.1781531   0.2270240
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3385093   0.3063481   0.3706706
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2726564   0.2427750   0.3025378
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0359955   0.0148754   0.0571156
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0956643   0.0595429   0.1317858
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1070877   0.0687049   0.1454704
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1559820   0.1448382   0.1671258
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1754043   0.1642853   0.1865233
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1653992   0.1541883   0.1766102
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3024248   0.1868497   0.4179999
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2542965   0.2324359   0.2761571
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1901731   0.0937270   0.2866191


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3004695   0.2387555   0.3621835
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4727273   0.4066048   0.5388497
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2888889   0.2295338   0.3482440
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1955128   0.1514355   0.2395901
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6139410   0.5644682   0.6634139
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4907162   0.4401862   0.5412462
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4150694   0.3581204   0.4720184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2367980   0.2197367   0.2538593
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1063830   0.0703329   0.1424331
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5909850   0.5515796   0.6303903
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2565984   0.1993515   0.3138454
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2346433   0.2276029   0.2416837
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2564297   0.2328823   0.2799770
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3329911   0.3209071   0.3450751
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0798526   0.0612199   0.0984853
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2581148   0.2516506   0.2645791
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3168617   0.2936158   0.3401077
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2206573   0.1648355   0.2764790
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3136364   0.2521871   0.3750856
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1777778   0.1277101   0.2278455
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1025641   0.0688457   0.1362825
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5190217   0.4679041   0.5701394
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2199336   0.1753445   0.2645227
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1395641   0.1256566   0.1534717
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2954925   0.2589234   0.3320615
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2497780   0.1917926   0.3077635
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1809503   0.1745333   0.1873674
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2007612   0.1765324   0.2249900
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2511554   0.2398221   0.2624886
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1763390   0.1707116   0.1819665
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1126043   0.0962730   0.1289355
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1384615   0.0898601   0.1870630
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2657005   0.2053824   0.3260185
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1545455   0.1066715   0.2024194
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1389961   0.0967835   0.1812087
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315069   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1606166   0.1445647   0.1766685
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4735945   0.4331684   0.5140207
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0100615   0.0072668   0.0128561
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0940163   0.0884807   0.0995519
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1277129   0.1088047   0.1466210
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1266654   0.1178579   0.1354730
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0772105   0.0587369   0.0956840
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1638889   0.1577625   0.1700152
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2529335   0.2320005   0.2738666


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.3878762   0.8323284   2.3142314
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.2971302   0.7553349   2.2275509
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.4764319   1.0225766   2.1317239
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.1731899   0.7895945   1.7431411
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.0931252   0.6109168   1.9559501
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.3151810   0.7412956   2.3333485
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.5372639   0.8640901   2.7348771
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.3084831   0.6487367   2.6391726
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.1728842   0.9617065   1.4304337
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.1900915   0.9786921   1.4471536
0-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High              0.9854878   0.8388659   1.1577371
0-24 months   ki1000108-IRC              INDIA                          Medium               High              0.9355412   0.7854962   1.1142477
0-24 months   ki1000109-EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Low                  High              1.2689970   0.6760590   2.3819715
0-24 months   ki1000109-EE               PAKISTAN                       Medium               High              0.9090909   0.4218738   1.9589894
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.2932089   1.0499833   1.5927771
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.0886606   0.9343653   1.2684353
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.3816248   0.8874161   2.1510621
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.4803739   0.8828142   2.4824102
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.2371726   0.9986354   1.5326875
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1135802   0.8864827   1.3988551
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.3957568   1.1495182   1.6947422
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2046390   0.9907545   1.4646971
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.0623283   0.8704410   1.2965167
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9443615   0.7636142   1.1678917
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.9755011   0.6469192   1.4709755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.9974581   0.8449546   1.1774864
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              1.3137652   0.6201163   2.7833150
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              0.6188811   0.2444853   1.5666127
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2881133   0.9672177   1.7154731
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.2385283   0.8855960   1.7321129
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.0548716   0.9878944   1.1263898
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0675009   0.9941826   1.1462262
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1284758   1.0643049   1.1965158
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1157328   1.0572168   1.1774877
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9435340   0.7674700   1.1599886
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0271094   0.8253200   1.2782359
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.3381917   1.1909057   1.5036934
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1542802   1.0333463   1.2893672
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.2321493   1.1223131   1.3527348
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.0795244   0.9809053   1.1880586
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              2.7737745   1.3953438   5.5139276
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              3.0541237   1.5467057   6.0306699
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0750448   1.0229480   1.1297947
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0354435   0.9834564   1.0901788
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0189288   0.7099932   1.4622899
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.8483500   0.5007266   1.4373070
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.2649459   0.6521747   2.4534655
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.3869620   0.7138647   2.6947173
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.4090776   0.8601593   2.3082929
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              1.0919922   0.6433794   1.8534119
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              0.7022845   0.3154526   1.5634791
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              1.1098851   0.5285278   2.3307098
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.8986487   0.4157763   1.9423172
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.1014493   0.4578279   2.6498833
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.0056131   0.7854875   1.2874269
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.0901757   0.8598759   1.3821565
0-6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High              0.8779129   0.7205927   1.0695795
0-6 months    ki1000108-IRC              INDIA                          Medium               High              0.8659574   0.7024952   1.0674552
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.2960840   1.1156823   1.5056560
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9927788   0.8354088   1.1797933
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.1396090   0.8780805   1.4790316
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.0744266   0.8197146   1.4082858
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.2517195   1.0300218   1.5211346
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.1564382   0.9509099   1.4063891
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.0183283   0.8184699   1.2669893
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9280474   0.7368532   1.1688514
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.6657733   0.3355278   1.3210652
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.9488159   0.7583912   1.1870544
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3115956   0.8296736   2.0734454
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.2593985   0.7307857   2.1703826
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.0325548   0.9653047   1.1044901
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0436180   0.9701991   1.1225928
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0702201   1.0148348   1.1286280
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0388860   0.9918520   1.0881503
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0239671   0.7434755   1.4102800
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.1825438   0.8433454   1.6581697
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.0024384   0.8930294   1.1252515
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.0121782   0.9101534   1.1256396
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.9372315   0.8343549   1.0527928
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.8521464   0.7632075   0.9514496
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1047393   1.0466289   1.1660760
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0328857   0.9779770   1.0908772
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.3252312   0.5628287   3.1203768
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2962960   0.4706941   3.5700110
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.5019231   0.6429304   3.5085805
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.2033898   0.4798121   3.0181545
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.7306020   0.9024868   3.3185894
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.6397534   0.8496246   3.1646815
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.7892473   0.6938814   4.6137653
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.8026666   0.6826280   4.7604357
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.7209302   0.7672583   3.8599785
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.5102040   0.5811603   3.9244183
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.7951447   1.1727780   2.7477874
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.6861948   1.0936717   2.5997316
6-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Low                  High              0.9778570   0.6791460   1.4079511
6-24 months   ki1000108-IRC              INDIA                          Medium               High              1.0686702   0.7458382   1.5312381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.3871946   0.9563803   2.0120750
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1822293   0.8125616   1.7200743
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0526441   0.6505774   1.7031943
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.3710747   0.7757606   2.4232296
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              2.0547571   1.4330209   2.9462422
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.2701038   0.8439447   1.9114567
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.3730960   0.9143632   2.0619734
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.8284276   0.5281037   1.2995408
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.4428522   0.8870050   2.3470247
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.4193407   0.8775175   2.2957125
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.3531810   0.8153888   2.2456759
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0995821   0.8664673   1.3954142
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.4979676   1.0443922   2.1485292
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.2209661   0.7902107   1.8865325
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              2.1477244   1.3402166   3.4417723
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              2.0071696   1.1937327   3.3749012
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.4049634   1.2001390   1.6447447
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.5143429   1.3101609   1.7503457
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.1277028   0.7443777   1.7084250
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.1822509   0.7611802   1.8362501
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              3.1753348   2.2584876   4.4643818
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.7181112   1.2184490   2.4226749
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.6709203   1.4341925   1.9467224
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.3458628   1.1443242   1.5828964
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              2.6576741   1.3229974   5.3388097
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              2.9750279   1.4954739   5.9183857
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1245163   1.0216443   1.2377467
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0603738   0.9612118   1.1697657
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.8408586   0.5660313   1.2491239
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.6288276   0.3330767   1.1871867


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0547809   -0.0255734    0.1351351
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0843239   -0.0192656    0.1879133
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0396525   -0.0657923    0.1450972
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0453730   -0.0188630    0.1096089
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0570248   -0.0024673    0.1165169
0-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0176003   -0.0856517    0.0504510
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.0907162   -0.1527507    0.3341830
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0557651   -0.0006686    0.1121987
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1220778   -0.0207428    0.2648984
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0565891   -0.0070835    0.1202617
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0564332    0.0199515    0.0929150
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0007137   -0.0402810    0.0388536
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0004476   -0.0294317    0.0285364
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0037865   -0.0464720    0.0388989
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1178923   -0.0067353    0.2425200
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0140446    0.0018156    0.0262735
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0128073    0.0076387    0.0179760
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0095205   -0.0515801    0.0325391
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0566038    0.0294140    0.0837936
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0333882    0.0137476    0.0530287
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0436960    0.0222016    0.0651904
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0103327    0.0024617    0.0182036
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0053565   -0.1035756    0.1142885
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0439943   -0.0279564    0.1159449
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0480326   -0.0447472    0.1408124
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0094376   -0.1054357    0.0865604
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0026991   -0.0539914    0.0485933
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0164615   -0.0438212    0.0767441
0-6 months    ki1000108-IRC              INDIA                          High                 NA                -0.0550856   -0.1248313    0.0146602
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0249812   -0.0027199    0.0526823
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0276211   -0.0310976    0.0863399
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0299243    0.0029494    0.0568993
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0060639   -0.0401210    0.0279932
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0069737   -0.0307331    0.0167856
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0685364   -0.0253562    0.1624290
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0088123   -0.0041446    0.0217693
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0046471    0.0013425    0.0079517
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0127354   -0.0336700    0.0591407
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0025189   -0.0202099    0.0252476
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0153401   -0.0295372   -0.0011431
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0097071    0.0042488    0.0151654
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0268900   -0.0449126    0.0986925
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0257855   -0.0361817    0.0877527
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0849958   -0.0055357    0.1755274
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0583916   -0.0170578    0.1338410
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0444015   -0.0163828    0.1051859
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0795411    0.0284937    0.1305885
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0033291   -0.0649556    0.0716139
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0565575   -0.0186116    0.1317267
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0265362   -0.1165478    0.1696203
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0970372    0.0407122    0.1533623
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0055258   -0.0329116    0.0439633
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0299276   -0.0029488    0.0628039
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0119704   -0.0149233    0.0388640
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1359179    0.0237834    0.2480524
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0047308    0.0019710    0.0074906
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0167778    0.0112321    0.0223234
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0170346   -0.0183206    0.0523899
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0659575    0.0460541    0.0858610
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0640544    0.0433281    0.0847807
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0412149    0.0199369    0.0624930
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0079069   -0.0016699    0.0174837
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0494913   -0.1642116    0.0652290


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1823176   -0.1333784    0.4100783
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1783774   -0.0734493    0.3711267
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1372585   -0.3173267    0.4349747
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.2320716   -0.1746705    0.4979750
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0928832   -0.0100574    0.1853325
0-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0268258   -0.1359616    0.0718249
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.1848649   -0.4985851    0.5566182
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1343512   -0.0053075    0.2546083
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2590280   -0.1161831    0.5081099
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1184953   -0.0257692    0.2424704
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1605823    0.0500797    0.2582304
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0021552   -0.1290550    0.1104817
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0018904   -0.1320808    0.1133280
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0355932   -0.5254587    0.2969634
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1994845   -0.0420981    0.3850626
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0547337    0.0029549    0.1038234
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0545821    0.0323529    0.0763006
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0371271   -0.2148735    0.1146136
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1699859    0.0843157    0.2476409
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0827233    0.0327947    0.1300744
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5472081    0.2309875    0.7333977
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0400312    0.0090509    0.0700431
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0169047   -0.3945611    0.3069674
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1993783   -0.2009484    0.4662592
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1531475   -0.2003522    0.4025427
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0530867   -0.7574059    0.3689610
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0263158   -0.6706242    0.3695027
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0317163   -0.0917490    0.1412190
0-6 months    ki1000108-IRC              INDIA                          High                 NA                -0.1012784   -0.2376658    0.0200795
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1135853   -0.0075799    0.2201800
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0773889   -0.1028720    0.2281868
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1157295    0.0048904    0.2142229
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0234512   -0.1638633    0.1000211
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0499678   -0.2347294    0.1071465
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2319395   -0.1600579    0.4914764
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0352806   -0.0187442    0.0864404
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0256815    0.0072686    0.0437530
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0634353   -0.1983255    0.2680174
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0100291   -0.0847252    0.0965062
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0651260   -0.1270875   -0.0065708
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0550480    0.0235786    0.0855031
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2388005   -0.7544489    0.6697398
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1862285   -0.4042934    0.5284290
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.3198934   -0.1159451    0.5855128
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.3778280   -0.3397954    0.7110768
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.3194444   -0.2779704    0.6375848
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.2996852    0.0827864    0.4652927
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0107476   -0.2361938    0.2083602
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1848433   -0.1023276    0.3972024
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0745983   -0.4293434    0.4008660
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.3301707    0.1122363    0.4946051
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0343270   -0.2360201    0.2455428
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2275742   -0.0631156    0.4387802
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0745275   -0.1088746    0.2275959
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2869921    0.0062729    0.4884106
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.4701884    0.1893384    0.6537392
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1784560    0.1182598    0.2345427
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1333823   -0.1919405    0.3699130
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.5207223    0.3409793    0.6514417
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2402253    0.1592436    0.3134068
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5338001    0.2077863    0.7256518
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0482455   -0.0119671    0.1048754
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1956692   -0.7488567    0.1825375
