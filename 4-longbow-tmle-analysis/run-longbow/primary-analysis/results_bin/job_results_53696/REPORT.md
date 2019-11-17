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
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                0       81     232
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Medium                1        9     232
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       38     220
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       25     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       34     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       42     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       44     220
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       37     220
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0       39     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1       14     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0       66     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       30     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       50     225
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1       26     225
0-24 months   ki0047075b-MAL-ED          PERU                           High                  0       87     301
0-24 months   ki0047075b-MAL-ED          PERU                           High                  1        3     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       92     301
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   1       12     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       95     301
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                1       12     301
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       79     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1       16     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0      116     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       32     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       53     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1       16     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        7     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        4     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       54     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1       10     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0      124     216
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1       17     216
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       89     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       38     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       68     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       38     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       71     373
0-24 months   ki1000108-IRC              INDIA                          High                  0       41     410
0-24 months   ki1000108-IRC              INDIA                          High                  1       83     410
0-24 months   ki1000108-IRC              INDIA                          Low                   0       50     410
0-24 months   ki1000108-IRC              INDIA                          Low                   1       97     410
0-24 months   ki1000108-IRC              INDIA                          Medium                0       50     410
0-24 months   ki1000108-IRC              INDIA                          Medium                1       89     410
0-24 months   ki1000109-EE               PAKISTAN                       High                  0        7     377
0-24 months   ki1000109-EE               PAKISTAN                       High                  1        8     377
0-24 months   ki1000109-EE               PAKISTAN                       Low                   0      129     377
0-24 months   ki1000109-EE               PAKISTAN                       Low                   1      200     377
0-24 months   ki1000109-EE               PAKISTAN                       Medium                0       18     377
0-24 months   ki1000109-EE               PAKISTAN                       Medium                1       15     377
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
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      164     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       78     758
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       39     683
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       45     683
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      194     683
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      286     683
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       47     683
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       72     683
0-24 months   ki1119695-PROBIT           BELARUS                        High                  0     2156   16898
0-24 months   ki1119695-PROBIT           BELARUS                        High                  1      685   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   0     4521   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   1     1579   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                0     5885   16898
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                1     2072   16898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0     5828   13926
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1727   13926
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     2223   13926
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      703   13926
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     2580   13926
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      865   13926
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     6819   26922
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     2165   26922
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     7049   26922
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     2685   26922
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     6107   26922
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     2097   26922
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0     1387    5420
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1      514    5420
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1160    5420
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      626    5420
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0     1190    5420
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      543    5420
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  0       64     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  1       14     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   0       53     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   1       17     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                0       48     213
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                1       17     213
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  0       76     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         High                  1        3     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   0       58     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Low                   1        5     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                0       83     232
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Medium                1        7     232
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  0       45     220
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  1       18     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   0       47     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   1       29     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                0       58     220
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                1       23     220
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  0       41     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  1       12     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   0       80     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   1       16     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                0       59     225
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                1       17     225
0-6 months    ki0047075b-MAL-ED          PERU                           High                  0       88     301
0-6 months    ki0047075b-MAL-ED          PERU                           High                  1        2     301
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   0      100     301
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   1        4     301
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                0      102     301
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                1        5     301
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       85     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1       10     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0      133     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       15     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       59     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1       10     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0       11     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        0     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       61     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        3     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0      132     216
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        9     216
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  0       78     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                  1       79     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   0       51     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                   1       53     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                0       49     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium                1       58     368
0-6 months    ki1000108-IRC              INDIA                          High                  0       52     410
0-6 months    ki1000108-IRC              INDIA                          High                  1       72     410
0-6 months    ki1000108-IRC              INDIA                          Low                   0       69     410
0-6 months    ki1000108-IRC              INDIA                          Low                   1       78     410
0-6 months    ki1000108-IRC              INDIA                          Medium                0       66     410
0-6 months    ki1000108-IRC              INDIA                          Medium                1       73     410
0-6 months    ki1000109-EE               PAKISTAN                       High                  0       12     377
0-6 months    ki1000109-EE               PAKISTAN                       High                  1        3     377
0-6 months    ki1000109-EE               PAKISTAN                       Low                   0      216     377
0-6 months    ki1000109-EE               PAKISTAN                       Low                   1      113     377
0-6 months    ki1000109-EE               PAKISTAN                       Medium                0       25     377
0-6 months    ki1000109-EE               PAKISTAN                       Medium                1        8     377
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
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      184     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       58     758
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0       48     683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1       36     683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0      308     683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1      172     683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0       70     683
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       49     683
0-6 months    ki1119695-PROBIT           BELARUS                        High                  0     2163   16895
0-6 months    ki1119695-PROBIT           BELARUS                        High                  1      678   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   0     4570   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   1     1528   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                0     5942   16895
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                1     2014   16895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  0     6132   13833
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  1     1375   13833
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     2399   13833
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      508   13833
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     2798   13833
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      621   13833
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0     7459   26825
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1486   26825
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     7835   26825
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1865   26825
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     6804   26825
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1376   26825
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0     1591    5077
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1      191    5077
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1475    5077
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      191    5077
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0     1463    5077
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      166    5077
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
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       83     269
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   1       10     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       88     269
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        7     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       66     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        8     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0      108     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1       21     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       48     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        8     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        5     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        4     202
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
6-24 months   ki1000109-EE               PAKISTAN                       High                  0       10     371
6-24 months   ki1000109-EE               PAKISTAN                       High                  1        5     371
6-24 months   ki1000109-EE               PAKISTAN                       Low                   0      180     371
6-24 months   ki1000109-EE               PAKISTAN                       Low                   1      143     371
6-24 months   ki1000109-EE               PAKISTAN                       Medium                0       23     371
6-24 months   ki1000109-EE               PAKISTAN                       Medium                1       10     371
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
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  0      126     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                  1       31     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   0      117     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                   1       80     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                0      140     542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium                1       48     542
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
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0     5359   10800
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      466   10800
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     2026   10800
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      252   10800
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     2379   10800
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      318   10800
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
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0     1517    5416
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1      381    5416
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1273    5416
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      513    5416
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0     1285    5416
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      447    5416


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
![](/tmp/248e745d-438e-4758-9ef3-1a10837d290c/d27008c1-b26a-47eb-afac-3fd81884312c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/248e745d-438e-4758-9ef3-1a10837d290c/d27008c1-b26a-47eb-afac-3fd81884312c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/248e745d-438e-4758-9ef3-1a10837d290c/d27008c1-b26a-47eb-afac-3fd81884312c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/248e745d-438e-4758-9ef3-1a10837d290c/d27008c1-b26a-47eb-afac-3fd81884312c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2532566   0.1558177   0.3506955
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3484193   0.2352936   0.4615451
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3316192   0.2183021   0.4449362
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3848925   0.2635749   0.5062102
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5440893   0.4321957   0.6559830
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4461966   0.3363609   0.5560323
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2732837   0.1516292   0.3949382
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.3136049   0.2196024   0.4076074
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3480559   0.2387824   0.4573294
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1593293   0.0824233   0.2362353
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2104650   0.1435751   0.2773549
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.2262467   0.1255643   0.3269290
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.5574502   0.4795341   0.6353663
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.6448164   0.5531329   0.7364998
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.6566415   0.5668611   0.7464218
0-24 months   ki1000108-IRC              INDIA                          High                 NA                0.6853316   0.6038447   0.7668185
0-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.6592369   0.5873555   0.7311184
0-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.6286693   0.5505443   0.7067943
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                0.5333333   0.2805305   0.7861362
0-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.6079027   0.5550776   0.6607279
0-24 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.4545455   0.2844331   0.6246578
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3832368   0.3182062   0.4482674
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4593190   0.3865889   0.5320491
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3840898   0.3171385   0.4510411
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3222833   0.1735139   0.4710528
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4805575   0.4266840   0.5344310
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4880210   0.3378404   0.6382016
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4243338   0.3595864   0.4890812
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.5286156   0.4686172   0.5886141
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.4590612   0.3949197   0.5232026
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3092133   0.2506341   0.3677925
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3635043   0.2989981   0.4280104
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3765805   0.3144696   0.4386914
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3396310   0.2871917   0.3920703
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3447337   0.2941654   0.3953021
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3104481   0.2602297   0.3606665
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2380048   0.2043082   0.2717014
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2307900   0.1407641   0.3208158
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2365642   0.2162367   0.2568917
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.1101695   0.0535765   0.1667625
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.1447368   0.0654954   0.2239782
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.0681818   0.0154251   0.1209386
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5354413   0.4265256   0.6443570
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5896780   0.5466604   0.6326956
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6266475   0.5401931   0.7131019
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2460811   0.1871675   0.3049947
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2551655   0.2001173   0.3102136
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2586325   0.1998516   0.3174135
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2231548   0.2148363   0.2314732
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2504189   0.2369654   0.2638724
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2530868   0.2409398   0.2652338
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2535045   0.2085429   0.2984662
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2439830   0.2130325   0.2749334
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2783415   0.2404995   0.3161834
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2782686   0.2495500   0.3069871
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3725250   0.3514265   0.3936236
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3165482   0.3011519   0.3319444
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.3727498   0.3458807   0.3996189
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4639359   0.4315740   0.4962979
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.3976974   0.3674629   0.4279318
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0360362   0.0148564   0.0572159
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.1018322   0.0652284   0.1384361
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1106290   0.0718884   0.1493697
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2458099   0.2357374   0.2558825
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2678808   0.2576385   0.2781230
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2575926   0.2464658   0.2687194
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2719722   0.2484184   0.2955260
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3411933   0.3181006   0.3642861
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3197833   0.2968785   0.3426882
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1800041   0.0942409   0.2657674
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2390058   0.1361808   0.3418307
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2633581   0.1535121   0.3732041
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.2795681   0.1641514   0.3949847
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3821448   0.2712892   0.4930005
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2842398   0.1830133   0.3854663
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2262658   0.1114200   0.3411115
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.1672418   0.0920090   0.2424746
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.2193201   0.1240928   0.3145473
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.0940147   0.0307356   0.1572937
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.0996426   0.0508126   0.1484726
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1251862   0.0425556   0.2078168
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.4981751   0.4195640   0.5767861
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.5008953   0.4044713   0.5973194
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.5538493   0.4547479   0.6529507
0-6 months    ki1000108-IRC              INDIA                          High                 NA                0.6003120   0.5186042   0.6820197
0-6 months    ki1000108-IRC              INDIA                          Low                  NA                0.5279446   0.4531025   0.6027867
0-6 months    ki1000108-IRC              INDIA                          Medium               NA                0.5211887   0.4408935   0.6014839
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1990479   0.1669644   0.2311314
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2497153   0.1841166   0.3153141
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1921136   0.1460417   0.2381855
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.3103498   0.2415133   0.3791862
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3799841   0.3172229   0.4427453
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.3561438   0.2905667   0.4217209
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2460706   0.1918639   0.3002773
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2623960   0.2013396   0.3234525
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2956232   0.2354215   0.3558250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2792622   0.2262693   0.3322551
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2514434   0.1979117   0.3049751
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2441130   0.1924986   0.2957274
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1465378   0.1187176   0.1743580
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0975610   0.0333249   0.1617971
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1390374   0.1225043   0.1555706
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4069116   0.3099660   0.5038572
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3634138   0.3227690   0.4040586
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3894210   0.3094737   0.4693684
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.2411218   0.1823628   0.2998809
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.2477783   0.1913818   0.3041749
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.2515606   0.1918721   0.3112491
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1771695   0.1699855   0.1843536
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1864476   0.1763640   0.1965311
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1840566   0.1750069   0.1931064
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1909569   0.1384341   0.2434796
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1970578   0.1630773   0.2310383
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2180883   0.1718960   0.2642805
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.2451519   0.2193466   0.2709572
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2476476   0.2299615   0.2653338
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.2500221   0.2361767   0.2638675
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2534805   0.2314075   0.2755534
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2339113   0.2086425   0.2591801
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2144138   0.1925683   0.2362593
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1654906   0.1574712   0.1735100
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1871536   0.1784659   0.1958413
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1715115   0.1626677   0.1803553
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1045048   0.0897075   0.1193020
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1082075   0.0945287   0.1218864
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1106308   0.0976255   0.1236360
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1126761   0.0389379   0.1864142
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.1692308   0.0778431   0.2606185
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1355932   0.0480109   0.2231756
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1792026   0.0786587   0.2797465
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3096780   0.2017063   0.4176497
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2960600   0.1924078   0.3997121
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.0961538   0.0158445   0.1764632
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.1720430   0.0951621   0.2489239
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1733333   0.0874690   0.2591977
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1081081   0.0372226   0.1789936
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.1627907   0.0989607   0.2266207
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1428571   0.0510299   0.2346844
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.1929342   0.1307194   0.2551489
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.3291274   0.2386771   0.4195776
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.3079249   0.2165345   0.3993153
6-24 months   ki1000108-IRC              INDIA                          High                 NA                0.3083228   0.2267750   0.3898707
6-24 months   ki1000108-IRC              INDIA                          Low                  NA                0.3028299   0.2280426   0.3776172
6-24 months   ki1000108-IRC              INDIA                          Medium               NA                0.3255974   0.2473643   0.4038305
6-24 months   ki1000109-EE               PAKISTAN                       High                 NA                0.3333333   0.0944520   0.5722147
6-24 months   ki1000109-EE               PAKISTAN                       Low                  NA                0.4427245   0.3884826   0.4969663
6-24 months   ki1000109-EE               PAKISTAN                       Medium               NA                0.3030303   0.1460203   0.4600403
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2622473   0.1837616   0.3407330
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3299244   0.2882644   0.3715844
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2981119   0.2369556   0.3592683
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.2841582   0.1194211   0.4488952
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3466127   0.2942823   0.3989431
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4401231   0.2836937   0.5965526
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1965683   0.1334771   0.2596594
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.4048863   0.3358729   0.4738996
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2501231   0.1863201   0.3139260
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1454414   0.0980532   0.1928295
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2162429   0.1565085   0.2759773
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1318287   0.0868279   0.1768296
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1029307   0.0657769   0.1400845
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1479405   0.1019037   0.1939773
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1477037   0.1037924   0.1916151
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1482902   0.1174026   0.1791778
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1909170   0.0996699   0.2821640
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1634655   0.1442377   0.1826933
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4029029   0.2863532   0.5194525
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5062641   0.4574926   0.5550356
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4072872   0.2998800   0.5146944
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0052652   0.0027449   0.0077855
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0114892   0.0076258   0.0153525
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0106820   0.0071190   0.0142450
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0811831   0.0736918   0.0886745
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1088987   0.0950616   0.1227358
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1203590   0.1071837   0.1335342
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1024226   0.0664456   0.1383996
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1274129   0.0994320   0.1553939
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1300607   0.0957499   0.1643716
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0590096   0.0394298   0.0785894
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1928574   0.1730275   0.2126872
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1044038   0.0929851   0.1158225
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2078468   0.1822999   0.2333937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3549331   0.3212961   0.3885701
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2732402   0.2417640   0.3047163
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0367291   0.0152553   0.0582029
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0939292   0.0583708   0.1294877
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1075950   0.0691405   0.1460495
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1543385   0.1432258   0.1654512
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1749844   0.1639452   0.1860236
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1674302   0.1559389   0.1789214
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2043420   0.1826405   0.2260435
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2816036   0.2587123   0.3044949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2586078   0.2364629   0.2807528


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3004695   0.2387555   0.3621835
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4727273   0.4066048   0.5388497
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3111111   0.2504855   0.3717368
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2051282   0.1602507   0.2500058
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6112601   0.5617242   0.6607959
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.5915119   0.5418269   0.6411970
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4150694   0.3581204   0.4720184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2367980   0.2197367   0.2538593
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1063830   0.0703329   0.1424331
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5900439   0.5531320   0.6269559
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2565984   0.1993515   0.3138454
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2366078   0.2295489   0.2436667
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2564297   0.2328823   0.2799770
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3329911   0.3209071   0.3450751
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0798526   0.0612199   0.0984853
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2580418   0.2515722   0.2645113
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3105166   0.2961054   0.3249278
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2253521   0.1691098   0.2815944
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3181818   0.2564942   0.3798694
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2000000   0.1476178   0.2523822
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1121795   0.0771053   0.1472536
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5163043   0.4651769   0.5674318
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2199336   0.1753445   0.2645227
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2572559   0.2261171   0.2883948
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1395641   0.1256566   0.1534717
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3762811   0.3399226   0.4126397
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2497780   0.1917926   0.3077635
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1810164   0.1745999   0.1874330
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2007612   0.1765324   0.2249900
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2511554   0.2398221   0.2624886
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1762162   0.1705869   0.1818456
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1079378   0.0980978   0.1177778
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1384615   0.0898601   0.1870630
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2657005   0.2053824   0.3260185
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1545455   0.1066715   0.2024194
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1428571   0.1001583   0.1855560
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4258760   0.3754921   0.4762599
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315069   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1606166   0.1445647   0.1766685
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4735945   0.4331684   0.5140207
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0100615   0.0072668   0.0128561
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0959259   0.0903717   0.1014802
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1277129   0.1088047   0.1466210
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1266654   0.1178579   0.1354730
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0772105   0.0587369   0.0956840
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1638889   0.1577625   0.1700152
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2475997   0.2340658   0.2611337


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.3757562   0.8310028   2.2776158
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.3094196   0.7809553   2.1954902
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.4136137   0.9689888   2.0622567
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.1592759   0.7772166   1.7291454
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.1475435   0.6700354   1.9653528
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.2736066   0.7381481   2.1974910
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.3209436   0.7405867   2.3560943
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.4199943   0.7355865   2.7411921
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.1567246   0.9475104   1.4121341
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.1779375   0.9693234   1.4314486
0-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Low                  High              0.9619240   0.8222317   1.1253491
0-24 months   ki1000108-IRC              INDIA                          Medium               High              0.9173214   0.7742583   1.0868187
0-24 months   ki1000109-EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Low                  High              1.1398176   0.7039580   1.8455421
0-24 months   ki1000109-EE               PAKISTAN                       Medium               High              0.8522727   0.4658985   1.5590708
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.1985253   0.9790858   1.4671470
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.0022258   0.8289513   1.2117197
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.4911025   0.9272969   2.3977073
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.5142606   0.8689464   2.6388110
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.2457542   1.0406024   1.4913511
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.0818396   0.8881677   1.3177433
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.1755777   0.9088615   1.5205649
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2178666   0.9487010   1.5633999
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.0150244   0.8337804   1.2356665
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9140748   0.7424072   1.1254373
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.9696863   0.6402961   1.4685259
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.9939473   0.8422102   1.1730223
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              1.3137652   0.6201163   2.7833150
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              0.6188811   0.2444853   1.5666127
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.1012935   0.8901533   1.3625153
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1703384   0.9176923   1.4925395
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.0369161   0.9719069   1.1062736
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0510053   0.9791862   1.1280919
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1221759   1.0590907   1.1890187
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1341313   1.0759300   1.1954810
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9624404   0.7849712   1.1800324
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0979745   0.8903913   1.3539529
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.3387249   1.1948616   1.4999095
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1375636   1.0204966   1.2680600
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.2446309   1.1299152   1.3709933
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.0669284   0.9651957   1.1793838
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              2.8258355   1.4187762   5.6283339
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              3.0699455   1.5481008   6.0878243
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0897883   1.0337862   1.1488242
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0479340   0.9930484   1.1058532
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.2545155   1.1289374   1.3940623
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1757943   1.0509617   1.3154544
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.3277794   0.6974353   2.5278304
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.4630669   0.7756454   2.7597211
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.3669116   0.8238735   2.2678814
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              1.0167105   0.5883870   1.7568374
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                  High              0.7391387   0.3754016   1.4553109
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium               High              0.9693030   0.4973469   1.8891207
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.0598622   0.4588713   2.4479803
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.3315600   0.5187713   3.4177915
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.0054604   0.7839907   1.2894931
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.1117564   0.8759726   1.4110055
0-6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Low                  High              0.8794504   0.7286796   1.0614170
0-6 months    ki1000108-IRC              INDIA                          Medium               High              0.8681964   0.7104083   1.0610306
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.2545487   1.0165269   1.5483039
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9651625   0.8302344   1.1220190
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.2243737   0.9288029   1.6140034
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1475562   0.8611515   1.5292143
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.0663445   0.7749890   1.4672345
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2013756   0.8907071   1.6204018
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              0.9003845   0.6798895   1.1923883
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.8741353   0.6611393   1.1557512
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.6657733   0.3355278   1.3210652
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.9488159   0.7583912   1.1870544
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.8931026   0.6931241   1.1507783
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9570161   0.7043083   1.3003963
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.0276064   0.9638693   1.0955583
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0432926   0.9746848   1.1167296
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0523681   0.9987031   1.1089168
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0388728   0.9913157   1.0887114
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0319493   0.7502380   1.4194420
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.1420814   0.8103560   1.6096013
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.0101804   0.8972715   1.1372973
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.0198659   0.9141536   1.1378027
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.9227982   0.8134343   1.0468657
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.8458789   0.7522518   0.9511589
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1309016   1.0666377   1.1990373
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0363820   0.9748785   1.1017657
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0354316   0.8777005   1.2215085
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.0586193   0.8968606   1.2495531
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.5019231   0.6429304   3.5085805
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.2033898   0.4798121   3.0181545
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.7280880   0.8917781   3.3486900
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.6520959   0.8495906   3.2126308
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.7892473   0.6938814   4.6137653
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.8026666   0.6826280   4.7604357
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.5058139   0.7014183   3.2327009
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.3214286   0.5275576   3.3099202
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.7059050   1.1159018   2.6078567
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.5960103   1.0296571   2.4738807
6-24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Low                  High              0.9821846   0.6836795   1.4110217
6-24 months   ki1000108-IRC              INDIA                          Medium               High              1.0560276   0.7385423   1.5099939
6-24 months   ki1000109-EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       Low                  High              1.3281734   0.6419550   2.7479255
6-24 months   ki1000109-EE               PAKISTAN                       Medium               High              0.9090909   0.3754460   2.2012389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.2580658   0.9095313   1.7401595
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1367588   0.8034258   1.6083880
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.2197879   0.6698364   2.2212626
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.5488668   0.7843648   3.0585113
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              2.0597745   1.4326154   2.9614864
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.2724490   0.8446428   1.9169362
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.4868046   0.9696231   2.2798425
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.9064047   0.5653825   1.4531216
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.4372828   0.8926037   2.3143326
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.4349826   0.8995130   2.2892108
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2874550   0.7643494   2.1685635
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1023352   0.8678156   1.4002317
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2565412   0.9267300   1.7037280
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0108819   0.6835116   1.4950472
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              2.1820997   1.3596948   3.5019320
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              2.0287922   1.2017599   3.4249752
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.3413953   1.1469022   1.5688707
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.4825614   1.2852979   1.7101002
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.2439924   0.8211908   1.8844794
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.2698443   0.8185735   1.9698957
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              3.2682387   2.3093792   4.6252189
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.7692692   1.2476342   2.5089994
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.7076667   1.4629720   1.9932886
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.3146227   1.1115331   1.5548189
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              2.5573545   1.2747085   5.1306334
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              2.9294242   1.4757313   5.8151007
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1337702   1.0291163   1.2490668
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0848246   0.9829466   1.1972617
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.3780995   1.2096649   1.5699870
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2655637   1.1038514   1.4509666


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0472129   -0.0337080    0.1281337
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0878348   -0.0159700    0.1916395
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0378274   -0.0705064    0.1461613
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0457989   -0.0207528    0.1123507
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0538098   -0.0047353    0.1123550
0-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0292340   -0.0960349    0.0375668
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.0581786   -0.1893941    0.3057514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0318326   -0.0280240    0.0916891
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1490085    0.0068495    0.2911675
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0532303    0.0001997    0.1062608
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0422153   -0.0068251    0.0912557
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0098157   -0.0490652    0.0294339
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0012068   -0.0302122    0.0277987
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0037865   -0.0464720    0.0388989
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0546026   -0.0469885    0.1561937
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0105173   -0.0021419    0.0231765
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0134530    0.0084807    0.0184253
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0029251   -0.0358183    0.0416686
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0547225    0.0279482    0.0814969
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0308627    0.0097061    0.0520192
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0438164    0.0222655    0.0653673
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0122318    0.0042201    0.0202436
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0385444    0.0199978    0.0570911
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0453480   -0.0266973    0.1173933
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0386137   -0.0603825    0.1376100
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.0262658   -0.1254958    0.0729643
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0181648   -0.0356407    0.0719703
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0181293   -0.0415086    0.0777671
0-6 months    ki1000108-IRC              INDIA                          High                 NA                -0.0564095   -0.1230930    0.0102739
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0208856   -0.0077576    0.0495289
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0465634   -0.0126143    0.1057411
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0125008   -0.0335263    0.0585279
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0220063   -0.0642683    0.0202557
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0069737   -0.0307331    0.0167856
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0306305   -0.1192023    0.0579413
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0086562   -0.0034470    0.0207594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0038469    0.0003608    0.0073329
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0098043   -0.0377686    0.0573772
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0060035   -0.0174170    0.0294239
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0179351   -0.0335010   -0.0023692
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0107256    0.0049226    0.0165286
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0034330   -0.0068525    0.0137185
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0257855   -0.0361817    0.0877527
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0864978   -0.0045836    0.1775793
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0583916   -0.0170578    0.1338410
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0347490   -0.0283117    0.0978098
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0724814    0.0204034    0.1245593
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0014333   -0.0668369    0.0697034
6-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.0925427   -0.1419536    0.3270389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0437282   -0.0265478    0.1140042
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0715632   -0.0855215    0.2286479
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0967897    0.0399743    0.1536051
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0155343   -0.0239425    0.0550110
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0285762   -0.0038561    0.0610084
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0123264   -0.0146555    0.0393084
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0706917   -0.0401219    0.1815053
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0047963    0.0020375    0.0075550
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0147428    0.0088543    0.0206312
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0252903   -0.0074235    0.0580041
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0676559    0.0478999    0.0874118
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0587961    0.0368845    0.0807077
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0404814    0.0189815    0.0619813
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0095504   -0.0000493    0.0191501
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0432577    0.0255906    0.0609248


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1571304   -0.1590080    0.3870368
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1858043   -0.0671933    0.3788242
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1215882   -0.3053050    0.4088682
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.2232698   -0.1784564    0.4880508
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0880310   -0.0135099    0.1793988
0-24 months   ki1000108-IRC              INDIA                          High                 NA                -0.0445574   -0.1515203    0.0524698
0-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.0983558   -0.4344899    0.4332743
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0766922   -0.0751048    0.2070565
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.3161704   -0.0642508    0.5606083
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1114621   -0.0068514    0.2158727
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1201248   -0.0307869    0.2489423
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0297611   -0.1558446    0.0825688
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0050963   -0.1353624    0.1102238
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0355932   -0.5254587    0.2969634
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0925400   -0.0973381    0.2495624
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0409874   -0.0107409    0.0900683
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0568579    0.0356696    0.0775807
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0114072   -0.1518191    0.1515024
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1643364    0.0800790    0.2408764
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0764661    0.0225613    0.1273980
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5487165    0.2305253    0.7353301
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0474025    0.0158735    0.0779214
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1241300    0.0619854    0.1821574
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2012317   -0.1885581    0.4631892
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1213575   -0.2524672    0.3836065
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                 NA                -0.1313288   -0.7528610    0.2698196
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1619264   -0.4872231    0.5277323
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0351135   -0.0876587    0.1440275
0-6 months    ki1000108-IRC              INDIA                          High                 NA                -0.1037126   -0.2339288    0.0127619
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0949633   -0.0306635    0.2052775
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1304615   -0.0522121    0.2814212
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0483457   -0.1469478    0.2103861
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0855424   -0.2630435    0.0670136
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0499678   -0.2347294    0.1071465
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0814033   -0.3441851    0.1300059
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0346556   -0.0153993    0.0822430
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0212515    0.0018171    0.0403075
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0488357   -0.2200494    0.2584616
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0239033   -0.0739291    0.1128235
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0761430   -0.1442953   -0.0120497
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0608661    0.0273236    0.0932518
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0318053   -0.0686390    0.1228086
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1862285   -0.4042934    0.5284290
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.3255464   -0.1140234    0.5916714
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.3778280   -0.3397954    0.7110768
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.2432432   -0.3480406    0.5751754
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.2730864    0.0518082    0.4427253
6-24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0046271   -0.2420774    0.2023306
6-24 months   ki1000109-EE               PAKISTAN                       High                 NA                 0.2172996   -0.5818690    0.6127240
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1429141   -0.1191641    0.3436206
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2011778   -0.3906699    0.5411442
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.3299371    0.1084749    0.4963863
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0965007   -0.1844822    0.3108288
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2172979   -0.0675994    0.4261681
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0767443   -0.1073733    0.2302496
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1492662   -0.1198983    0.3537378
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.4766972    0.1976983    0.6586748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1536893    0.0907080    0.2123082
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1980244   -0.1017159    0.4162153
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.5341305    0.3553665    0.6633213
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2205050    0.1345991    0.2978833
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.5242993    0.1931747    0.7195290
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0582736   -0.0020818    0.1149939
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1747082    0.1000126    0.2432043
