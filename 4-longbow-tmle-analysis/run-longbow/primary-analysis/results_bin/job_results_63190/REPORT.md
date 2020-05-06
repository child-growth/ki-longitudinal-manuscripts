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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
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

agecat        studyid          country                        feducyrs    ever_stunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  ---------  -------------  -------  ------  -----------------
0-24 months   COHORTS          GUATEMALA                      High                   0       55    1250  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      High                   1      179    1250  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      Low                    0      122    1250  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      Low                    1      445    1250  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      Medium                 0      114    1250  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      Medium                 1      335    1250  ever_stunted     
0-24 months   COHORTS          INDIA                          High                   0      404    1447  ever_stunted     
0-24 months   COHORTS          INDIA                          High                   1      163    1447  ever_stunted     
0-24 months   COHORTS          INDIA                          Low                    0      240    1447  ever_stunted     
0-24 months   COHORTS          INDIA                          Low                    1      232    1447  ever_stunted     
0-24 months   COHORTS          INDIA                          Medium                 0      256    1447  ever_stunted     
0-24 months   COHORTS          INDIA                          Medium                 1      152    1447  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    High                   0      466    2880  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    High                   1      565    2880  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    Low                    0      160    2880  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    Low                    1      668    2880  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    Medium                 0      267    2880  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    Medium                 1      754    2880  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          High                   0       79     696  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          High                   1       94     696  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          Low                    0       92     696  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          Low                    1      204     696  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          Medium                 0       79     696  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          Medium                 1      148     696  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     High                   0     3975   26233  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     High                   1     2529   26233  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Low                    0     4982   26233  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Low                    1     5803   26233  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Medium                 0     4339   26233  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Medium                 1     4605   26233  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     High                   0      634    5276  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     High                   1      613    5276  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     Low                    0      705    5276  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     Low                    1     1248    5276  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     Medium                 0      866    5276  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     Medium                 1     1210    5276  ever_stunted     
0-24 months   LCNI-5           MALAWI                         High                   0       90     813  ever_stunted     
0-24 months   LCNI-5           MALAWI                         High                   1      161     813  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Low                    0      107     813  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Low                    1      184     813  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Medium                 0       98     813  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Medium                 1      173     813  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     High                   0       31     149  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     High                   1       23     149  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Low                    0       15     149  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Low                    1       25     149  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Medium                 0       19     149  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Medium                 1       36     149  ever_stunted     
0-24 months   MAL-ED           INDIA                          High                   0       17     147  ever_stunted     
0-24 months   MAL-ED           INDIA                          High                   1       27     147  ever_stunted     
0-24 months   MAL-ED           INDIA                          Low                    0       28     147  ever_stunted     
0-24 months   MAL-ED           INDIA                          Low                    1       31     147  ever_stunted     
0-24 months   MAL-ED           INDIA                          Medium                 0       18     147  ever_stunted     
0-24 months   MAL-ED           INDIA                          Medium                 1       26     147  ever_stunted     
0-24 months   MAL-ED           NEPAL                          High                   0       32      98  ever_stunted     
0-24 months   MAL-ED           NEPAL                          High                   1       10      98  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Low                    0       16      98  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Low                    1       12      98  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Medium                 0       15      98  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Medium                 1       13      98  ever_stunted     
0-24 months   MAL-ED           PERU                           High                   0       45     250  ever_stunted     
0-24 months   MAL-ED           PERU                           High                   1       75     250  ever_stunted     
0-24 months   MAL-ED           PERU                           Low                    0       28     250  ever_stunted     
0-24 months   MAL-ED           PERU                           Low                    1       41     250  ever_stunted     
0-24 months   MAL-ED           PERU                           Medium                 0       20     250  ever_stunted     
0-24 months   MAL-ED           PERU                           Medium                 1       41     250  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   High                   0       14     110  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   High                   1       29     110  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Low                    0       18     110  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Low                    1       19     110  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                 0       10     110  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                 1       20     110  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0       19     212  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1      111     212  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0       10     212  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1       51     212  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0        3     212  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1       18     212  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     High                   0      192     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     High                   1      104     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     Low                    0      112     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     Low                    1      130     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     Medium                 0       92     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     Medium                 1      128     758  ever_stunted     
0-24 months   PROBIT           BELARUS                        High                   0     2454   16314  ever_stunted     
0-24 months   PROBIT           BELARUS                        High                   1      253   16314  ever_stunted     
0-24 months   PROBIT           BELARUS                        Low                    0     5479   16314  ever_stunted     
0-24 months   PROBIT           BELARUS                        Low                    1      939   16314  ever_stunted     
0-24 months   PROBIT           BELARUS                        Medium                 0     6346   16314  ever_stunted     
0-24 months   PROBIT           BELARUS                        Medium                 1      843   16314  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     High                   0      150     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     High                   1       82     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Low                    0      115     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Low                    1      123     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Medium                 0      130     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Medium                 1      100     700  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          High                   0      159    1530  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          High                   1      230    1530  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          Low                    0      166    1530  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          Low                    1      488    1530  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          Medium                 0      148    1530  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          Medium                 1      339    1530  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          High                   0       22     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          High                   1       88     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          Low                    0       26     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          Low                    1      121     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          Medium                 0       24     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          Medium                 1      137     418  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      303    2383  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1      146    2383  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0      811    2383  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1      459    2383  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      443    2383  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      221    2383  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       High                   0      651   13694  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       High                   1      349   13694  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       Low                    0     1225   13694  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       Low                    1     1087   13694  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                 0     6154   13694  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                 1     4228   13694  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      High                   0      134    1020  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      High                   1       60    1020  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      Low                    0      304    1020  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      Low                    1      152    1020  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      Medium                 0      256    1020  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      Medium                 1      114    1020  ever_stunted     
0-6 months    COHORTS          INDIA                          High                   0      485    1421  ever_stunted     
0-6 months    COHORTS          INDIA                          High                   1       74    1421  ever_stunted     
0-6 months    COHORTS          INDIA                          Low                    0      361    1421  ever_stunted     
0-6 months    COHORTS          INDIA                          Low                    1       97    1421  ever_stunted     
0-6 months    COHORTS          INDIA                          Medium                 0      342    1421  ever_stunted     
0-6 months    COHORTS          INDIA                          Medium                 1       62    1421  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    High                   0      863    2880  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    High                   1      168    2880  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    Low                    0      580    2880  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    Low                    1      248    2880  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    Medium                 0      751    2880  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    Medium                 1      270    2880  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          High                   0      125     696  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          High                   1       48     696  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          Low                    0      189     696  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          Low                    1      107     696  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          Medium                 0      160     696  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          Medium                 1       67     696  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     High                   0     4445   26171  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     High                   1     2033   26171  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Low                    0     5918   26171  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Low                    1     4846   26171  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Medium                 0     5048   26171  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Medium                 1     3881   26171  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     High                   0      846    4980  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     High                   1      335    4980  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     Low                    0     1135    4980  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     Low                    1      710    4980  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     Medium                 0     1271    4980  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     Medium                 1      683    4980  ever_stunted     
0-6 months    LCNI-5           MALAWI                         High                   0       54     267  ever_stunted     
0-6 months    LCNI-5           MALAWI                         High                   1       19     267  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Low                    0       65     267  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Low                    1       39     267  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Medium                 0       53     267  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Medium                 1       37     267  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     High                   0       39     149  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     High                   1       15     149  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Low                    0       26     149  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Low                    1       14     149  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Medium                 0       32     149  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Medium                 1       23     149  ever_stunted     
0-6 months    MAL-ED           INDIA                          High                   0       28     147  ever_stunted     
0-6 months    MAL-ED           INDIA                          High                   1       16     147  ever_stunted     
0-6 months    MAL-ED           INDIA                          Low                    0       41     147  ever_stunted     
0-6 months    MAL-ED           INDIA                          Low                    1       18     147  ever_stunted     
0-6 months    MAL-ED           INDIA                          Medium                 0       32     147  ever_stunted     
0-6 months    MAL-ED           INDIA                          Medium                 1       12     147  ever_stunted     
0-6 months    MAL-ED           NEPAL                          High                   0       36      98  ever_stunted     
0-6 months    MAL-ED           NEPAL                          High                   1        6      98  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Low                    0       24      98  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Low                    1        4      98  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Medium                 0       21      98  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Medium                 1        7      98  ever_stunted     
0-6 months    MAL-ED           PERU                           High                   0       65     250  ever_stunted     
0-6 months    MAL-ED           PERU                           High                   1       55     250  ever_stunted     
0-6 months    MAL-ED           PERU                           Low                    0       41     250  ever_stunted     
0-6 months    MAL-ED           PERU                           Low                    1       28     250  ever_stunted     
0-6 months    MAL-ED           PERU                           Medium                 0       37     250  ever_stunted     
0-6 months    MAL-ED           PERU                           Medium                 1       24     250  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   High                   0       23     110  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   High                   1       20     110  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Low                    0       28     110  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Low                    1        9     110  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                 0       16     110  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                 1       14     110  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0       80     212  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1       50     212  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0       36     212  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1       25     212  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0       10     212  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1       11     212  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     High                   0      226     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     High                   1       70     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     Low                    0      167     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     Low                    1       75     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     Medium                 0      136     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     Medium                 1       84     758  ever_stunted     
0-6 months    PROBIT           BELARUS                        High                   0     2567   16309  ever_stunted     
0-6 months    PROBIT           BELARUS                        High                   1      140   16309  ever_stunted     
0-6 months    PROBIT           BELARUS                        Low                    0     5908   16309  ever_stunted     
0-6 months    PROBIT           BELARUS                        Low                    1      510   16309  ever_stunted     
0-6 months    PROBIT           BELARUS                        Medium                 0     6756   16309  ever_stunted     
0-6 months    PROBIT           BELARUS                        Medium                 1      428   16309  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     High                   0      188     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     High                   1       44     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Low                    0      166     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Low                    1       72     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Medium                 0      178     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Medium                 1       52     700  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          High                   0      255    1527  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          High                   1      134    1527  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          Low                    0      338    1527  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          Low                    1      315    1527  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          Medium                 0      285    1527  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          Medium                 1      200    1527  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          High                   0       71     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          High                   1       39     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          Low                    0       88     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          Low                    1       58     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          Medium                 0       95     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          Medium                 1       65     416  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      378    2383  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       71    2383  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0     1002    2383  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1      268    2383  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      538    2383  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      126    2383  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       High                   0      778   13679  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       High                   1      220   13679  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       Low                    0     1647   13679  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       Low                    1      662   13679  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                 0     7744   13679  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                 1     2628   13679  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      High                   0       33     831  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      High                   1      119     831  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      Low                    0       84     831  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      Low                    1      293     831  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      Medium                 0       81     831  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      Medium                 1      221     831  ever_stunted     
6-24 months   COHORTS          INDIA                          High                   0      388    1179  ever_stunted     
6-24 months   COHORTS          INDIA                          High                   1       89    1179  ever_stunted     
6-24 months   COHORTS          INDIA                          Low                    0      231    1179  ever_stunted     
6-24 months   COHORTS          INDIA                          Low                    1      135    1179  ever_stunted     
6-24 months   COHORTS          INDIA                          Medium                 0      246    1179  ever_stunted     
6-24 months   COHORTS          INDIA                          Medium                 1       90    1179  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    High                   0      368    2007  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    High                   1      397    2007  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    Low                    0      124    2007  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    Low                    1      420    2007  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    Medium                 0      214    2007  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    Medium                 1      484    2007  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          High                   0       58     396  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          High                   1       46     396  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          Low                    0       61     396  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          Low                    1       97     396  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          Medium                 0       53     396  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          Medium                 1       81     396  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     High                   0     2577   10116  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     High                   1      496   10116  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Low                    0     2748   10116  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Low                    1      957   10116  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Medium                 0     2614   10116  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Medium                 1      724   10116  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     High                   0      632    3544  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     High                   1      278    3544  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     Low                    0      704    3544  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     Low                    1      538    3544  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     Medium                 0      865    3544  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     Medium                 1      527    3544  ever_stunted     
6-24 months   LCNI-5           MALAWI                         High                   0       86     707  ever_stunted     
6-24 months   LCNI-5           MALAWI                         High                   1      142     707  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Low                    0      105     707  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Low                    1      145     707  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Medium                 0       93     707  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Medium                 1      136     707  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     High                   0       26      88  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     High                   1        8      88  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Low                    0       13      88  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Low                    1       11      88  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Medium                 0       17      88  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Medium                 1       13      88  ever_stunted     
6-24 months   MAL-ED           INDIA                          High                   0       16      93  ever_stunted     
6-24 months   MAL-ED           INDIA                          High                   1       11      93  ever_stunted     
6-24 months   MAL-ED           INDIA                          Low                    0       23      93  ever_stunted     
6-24 months   MAL-ED           INDIA                          Low                    1       13      93  ever_stunted     
6-24 months   MAL-ED           INDIA                          Medium                 0       16      93  ever_stunted     
6-24 months   MAL-ED           INDIA                          Medium                 1       14      93  ever_stunted     
6-24 months   MAL-ED           NEPAL                          High                   0       29      78  ever_stunted     
6-24 months   MAL-ED           NEPAL                          High                   1        4      78  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Low                    0       16      78  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Low                    1        8      78  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Medium                 0       15      78  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Medium                 1        6      78  ever_stunted     
6-24 months   MAL-ED           PERU                           High                   0       33     121  ever_stunted     
6-24 months   MAL-ED           PERU                           High                   1       20     121  ever_stunted     
6-24 months   MAL-ED           PERU                           Low                    0       20     121  ever_stunted     
6-24 months   MAL-ED           PERU                           Low                    1       13     121  ever_stunted     
6-24 months   MAL-ED           PERU                           Medium                 0       18     121  ever_stunted     
6-24 months   MAL-ED           PERU                           Medium                 1       17     121  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   High                   0       10      58  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   High                   1        9      58  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Low                    0       17      58  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Low                    1       10      58  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                 0        6      58  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                 1        6      58  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0       17     121  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1       61     121  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0        7     121  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1       26     121  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0        3     121  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1        7     121  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     High                   0      183     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     High                   1       34     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     Low                    0      101     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     Low                    1       55     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     Medium                 0       89     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     Medium                 1       44     506  ever_stunted     
6-24 months   PROBIT           BELARUS                        High                   0     2390   14975  ever_stunted     
6-24 months   PROBIT           BELARUS                        High                   1      113   14975  ever_stunted     
6-24 months   PROBIT           BELARUS                        Low                    0     5392   14975  ever_stunted     
6-24 months   PROBIT           BELARUS                        Low                    1      429   14975  ever_stunted     
6-24 months   PROBIT           BELARUS                        Medium                 0     6236   14975  ever_stunted     
6-24 months   PROBIT           BELARUS                        Medium                 1      415   14975  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     High                   0      135     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     High                   1       38     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Low                    0       88     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Low                    1       51     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Medium                 0       96     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Medium                 1       48     456  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          High                   0      149     812  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          High                   1       96     812  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          Low                    0      121     812  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          Low                    1      173     812  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          Medium                 0      134     812  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          Medium                 1      139     812  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          High                   0       19     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          High                   1       49     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          Low                    0       20     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          Low                    1       63     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          Medium                 0       20     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          Medium                 1       72     243  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      238    1595  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       75    1595  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0      640    1595  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1      191    1595  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      356    1595  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       95    1595  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       High                   0      483    8280  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       High                   1      129    8280  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       Low                    0      948    8280  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       Low                    1      425    8280  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                 0     4695    8280  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                 1     1600    8280  ever_stunted     


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
