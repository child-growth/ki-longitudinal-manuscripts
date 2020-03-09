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

agecat        studyid          country                        feducyrs    ever_stunted   n_cell       n
------------  ---------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      High                   0       55    1250
0-24 months   COHORTS          GUATEMALA                      High                   1      179    1250
0-24 months   COHORTS          GUATEMALA                      Low                    0      122    1250
0-24 months   COHORTS          GUATEMALA                      Low                    1      445    1250
0-24 months   COHORTS          GUATEMALA                      Medium                 0      114    1250
0-24 months   COHORTS          GUATEMALA                      Medium                 1      335    1250
0-24 months   COHORTS          INDIA                          High                   0      404    1447
0-24 months   COHORTS          INDIA                          High                   1      163    1447
0-24 months   COHORTS          INDIA                          Low                    0      240    1447
0-24 months   COHORTS          INDIA                          Low                    1      232    1447
0-24 months   COHORTS          INDIA                          Medium                 0      256    1447
0-24 months   COHORTS          INDIA                          Medium                 1      152    1447
0-24 months   COHORTS          PHILIPPINES                    High                   0      466    2880
0-24 months   COHORTS          PHILIPPINES                    High                   1      565    2880
0-24 months   COHORTS          PHILIPPINES                    Low                    0      160    2880
0-24 months   COHORTS          PHILIPPINES                    Low                    1      668    2880
0-24 months   COHORTS          PHILIPPINES                    Medium                 0      267    2880
0-24 months   COHORTS          PHILIPPINES                    Medium                 1      754    2880
0-24 months   GMS-Nepal        NEPAL                          High                   0       79     696
0-24 months   GMS-Nepal        NEPAL                          High                   1       94     696
0-24 months   GMS-Nepal        NEPAL                          Low                    0       92     696
0-24 months   GMS-Nepal        NEPAL                          Low                    1      204     696
0-24 months   GMS-Nepal        NEPAL                          Medium                 0       79     696
0-24 months   GMS-Nepal        NEPAL                          Medium                 1      148     696
0-24 months   JiVitA-3         BANGLADESH                     High                   0     3975   26233
0-24 months   JiVitA-3         BANGLADESH                     High                   1     2529   26233
0-24 months   JiVitA-3         BANGLADESH                     Low                    0     4982   26233
0-24 months   JiVitA-3         BANGLADESH                     Low                    1     5803   26233
0-24 months   JiVitA-3         BANGLADESH                     Medium                 0     4339   26233
0-24 months   JiVitA-3         BANGLADESH                     Medium                 1     4605   26233
0-24 months   JiVitA-4         BANGLADESH                     High                   0      634    5276
0-24 months   JiVitA-4         BANGLADESH                     High                   1      613    5276
0-24 months   JiVitA-4         BANGLADESH                     Low                    0      705    5276
0-24 months   JiVitA-4         BANGLADESH                     Low                    1     1248    5276
0-24 months   JiVitA-4         BANGLADESH                     Medium                 0      866    5276
0-24 months   JiVitA-4         BANGLADESH                     Medium                 1     1210    5276
0-24 months   LCNI-5           MALAWI                         High                   0       90     813
0-24 months   LCNI-5           MALAWI                         High                   1      161     813
0-24 months   LCNI-5           MALAWI                         Low                    0      107     813
0-24 months   LCNI-5           MALAWI                         Low                    1      184     813
0-24 months   LCNI-5           MALAWI                         Medium                 0       98     813
0-24 months   LCNI-5           MALAWI                         Medium                 1      173     813
0-24 months   MAL-ED           BANGLADESH                     High                   0       31     149
0-24 months   MAL-ED           BANGLADESH                     High                   1       23     149
0-24 months   MAL-ED           BANGLADESH                     Low                    0       15     149
0-24 months   MAL-ED           BANGLADESH                     Low                    1       25     149
0-24 months   MAL-ED           BANGLADESH                     Medium                 0       19     149
0-24 months   MAL-ED           BANGLADESH                     Medium                 1       36     149
0-24 months   MAL-ED           INDIA                          High                   0       17     147
0-24 months   MAL-ED           INDIA                          High                   1       27     147
0-24 months   MAL-ED           INDIA                          Low                    0       28     147
0-24 months   MAL-ED           INDIA                          Low                    1       31     147
0-24 months   MAL-ED           INDIA                          Medium                 0       18     147
0-24 months   MAL-ED           INDIA                          Medium                 1       26     147
0-24 months   MAL-ED           NEPAL                          High                   0       32      98
0-24 months   MAL-ED           NEPAL                          High                   1       10      98
0-24 months   MAL-ED           NEPAL                          Low                    0       16      98
0-24 months   MAL-ED           NEPAL                          Low                    1       12      98
0-24 months   MAL-ED           NEPAL                          Medium                 0       15      98
0-24 months   MAL-ED           NEPAL                          Medium                 1       13      98
0-24 months   MAL-ED           PERU                           High                   0       45     250
0-24 months   MAL-ED           PERU                           High                   1       75     250
0-24 months   MAL-ED           PERU                           Low                    0       28     250
0-24 months   MAL-ED           PERU                           Low                    1       41     250
0-24 months   MAL-ED           PERU                           Medium                 0       20     250
0-24 months   MAL-ED           PERU                           Medium                 1       41     250
0-24 months   MAL-ED           SOUTH AFRICA                   High                   0       14     110
0-24 months   MAL-ED           SOUTH AFRICA                   High                   1       29     110
0-24 months   MAL-ED           SOUTH AFRICA                   Low                    0       18     110
0-24 months   MAL-ED           SOUTH AFRICA                   Low                    1       19     110
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                 0       10     110
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                 1       20     110
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0       19     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1      111     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0       10     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1       51     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0        3     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1       18     212
0-24 months   NIH-Crypto       BANGLADESH                     High                   0      192     758
0-24 months   NIH-Crypto       BANGLADESH                     High                   1      104     758
0-24 months   NIH-Crypto       BANGLADESH                     Low                    0      112     758
0-24 months   NIH-Crypto       BANGLADESH                     Low                    1      130     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium                 0       92     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium                 1      128     758
0-24 months   PROBIT           BELARUS                        High                   0     2454   16314
0-24 months   PROBIT           BELARUS                        High                   1      253   16314
0-24 months   PROBIT           BELARUS                        Low                    0     5479   16314
0-24 months   PROBIT           BELARUS                        Low                    1      939   16314
0-24 months   PROBIT           BELARUS                        Medium                 0     6346   16314
0-24 months   PROBIT           BELARUS                        Medium                 1      843   16314
0-24 months   PROVIDE          BANGLADESH                     High                   0      150     700
0-24 months   PROVIDE          BANGLADESH                     High                   1       82     700
0-24 months   PROVIDE          BANGLADESH                     Low                    0      115     700
0-24 months   PROVIDE          BANGLADESH                     Low                    1      123     700
0-24 months   PROVIDE          BANGLADESH                     Medium                 0      130     700
0-24 months   PROVIDE          BANGLADESH                     Medium                 1      100     700
0-24 months   SAS-CompFeed     INDIA                          High                   0      159    1530
0-24 months   SAS-CompFeed     INDIA                          High                   1      230    1530
0-24 months   SAS-CompFeed     INDIA                          Low                    0      166    1530
0-24 months   SAS-CompFeed     INDIA                          Low                    1      488    1530
0-24 months   SAS-CompFeed     INDIA                          Medium                 0      148    1530
0-24 months   SAS-CompFeed     INDIA                          Medium                 1      339    1530
0-24 months   SAS-FoodSuppl    INDIA                          High                   0       22     418
0-24 months   SAS-FoodSuppl    INDIA                          High                   1       88     418
0-24 months   SAS-FoodSuppl    INDIA                          Low                    0       26     418
0-24 months   SAS-FoodSuppl    INDIA                          Low                    1      121     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium                 0       24     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium                 1      137     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      303    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1      146    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0      811    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1      459    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      443    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      221    2383
0-24 months   ZVITAMBO         ZIMBABWE                       High                   0      651   13694
0-24 months   ZVITAMBO         ZIMBABWE                       High                   1      349   13694
0-24 months   ZVITAMBO         ZIMBABWE                       Low                    0     1225   13694
0-24 months   ZVITAMBO         ZIMBABWE                       Low                    1     1087   13694
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                 0     6154   13694
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                 1     4228   13694
0-6 months    COHORTS          GUATEMALA                      High                   0      134    1020
0-6 months    COHORTS          GUATEMALA                      High                   1       60    1020
0-6 months    COHORTS          GUATEMALA                      Low                    0      304    1020
0-6 months    COHORTS          GUATEMALA                      Low                    1      152    1020
0-6 months    COHORTS          GUATEMALA                      Medium                 0      256    1020
0-6 months    COHORTS          GUATEMALA                      Medium                 1      114    1020
0-6 months    COHORTS          INDIA                          High                   0      485    1421
0-6 months    COHORTS          INDIA                          High                   1       74    1421
0-6 months    COHORTS          INDIA                          Low                    0      361    1421
0-6 months    COHORTS          INDIA                          Low                    1       97    1421
0-6 months    COHORTS          INDIA                          Medium                 0      342    1421
0-6 months    COHORTS          INDIA                          Medium                 1       62    1421
0-6 months    COHORTS          PHILIPPINES                    High                   0      863    2880
0-6 months    COHORTS          PHILIPPINES                    High                   1      168    2880
0-6 months    COHORTS          PHILIPPINES                    Low                    0      580    2880
0-6 months    COHORTS          PHILIPPINES                    Low                    1      248    2880
0-6 months    COHORTS          PHILIPPINES                    Medium                 0      751    2880
0-6 months    COHORTS          PHILIPPINES                    Medium                 1      270    2880
0-6 months    GMS-Nepal        NEPAL                          High                   0      125     696
0-6 months    GMS-Nepal        NEPAL                          High                   1       48     696
0-6 months    GMS-Nepal        NEPAL                          Low                    0      189     696
0-6 months    GMS-Nepal        NEPAL                          Low                    1      107     696
0-6 months    GMS-Nepal        NEPAL                          Medium                 0      160     696
0-6 months    GMS-Nepal        NEPAL                          Medium                 1       67     696
0-6 months    JiVitA-3         BANGLADESH                     High                   0     4445   26171
0-6 months    JiVitA-3         BANGLADESH                     High                   1     2033   26171
0-6 months    JiVitA-3         BANGLADESH                     Low                    0     5918   26171
0-6 months    JiVitA-3         BANGLADESH                     Low                    1     4846   26171
0-6 months    JiVitA-3         BANGLADESH                     Medium                 0     5048   26171
0-6 months    JiVitA-3         BANGLADESH                     Medium                 1     3881   26171
0-6 months    JiVitA-4         BANGLADESH                     High                   0      846    4980
0-6 months    JiVitA-4         BANGLADESH                     High                   1      335    4980
0-6 months    JiVitA-4         BANGLADESH                     Low                    0     1135    4980
0-6 months    JiVitA-4         BANGLADESH                     Low                    1      710    4980
0-6 months    JiVitA-4         BANGLADESH                     Medium                 0     1271    4980
0-6 months    JiVitA-4         BANGLADESH                     Medium                 1      683    4980
0-6 months    LCNI-5           MALAWI                         High                   0       54     267
0-6 months    LCNI-5           MALAWI                         High                   1       19     267
0-6 months    LCNI-5           MALAWI                         Low                    0       65     267
0-6 months    LCNI-5           MALAWI                         Low                    1       39     267
0-6 months    LCNI-5           MALAWI                         Medium                 0       53     267
0-6 months    LCNI-5           MALAWI                         Medium                 1       37     267
0-6 months    MAL-ED           BANGLADESH                     High                   0       39     149
0-6 months    MAL-ED           BANGLADESH                     High                   1       15     149
0-6 months    MAL-ED           BANGLADESH                     Low                    0       26     149
0-6 months    MAL-ED           BANGLADESH                     Low                    1       14     149
0-6 months    MAL-ED           BANGLADESH                     Medium                 0       32     149
0-6 months    MAL-ED           BANGLADESH                     Medium                 1       23     149
0-6 months    MAL-ED           INDIA                          High                   0       28     147
0-6 months    MAL-ED           INDIA                          High                   1       16     147
0-6 months    MAL-ED           INDIA                          Low                    0       41     147
0-6 months    MAL-ED           INDIA                          Low                    1       18     147
0-6 months    MAL-ED           INDIA                          Medium                 0       32     147
0-6 months    MAL-ED           INDIA                          Medium                 1       12     147
0-6 months    MAL-ED           NEPAL                          High                   0       36      98
0-6 months    MAL-ED           NEPAL                          High                   1        6      98
0-6 months    MAL-ED           NEPAL                          Low                    0       24      98
0-6 months    MAL-ED           NEPAL                          Low                    1        4      98
0-6 months    MAL-ED           NEPAL                          Medium                 0       21      98
0-6 months    MAL-ED           NEPAL                          Medium                 1        7      98
0-6 months    MAL-ED           PERU                           High                   0       65     250
0-6 months    MAL-ED           PERU                           High                   1       55     250
0-6 months    MAL-ED           PERU                           Low                    0       41     250
0-6 months    MAL-ED           PERU                           Low                    1       28     250
0-6 months    MAL-ED           PERU                           Medium                 0       37     250
0-6 months    MAL-ED           PERU                           Medium                 1       24     250
0-6 months    MAL-ED           SOUTH AFRICA                   High                   0       23     110
0-6 months    MAL-ED           SOUTH AFRICA                   High                   1       20     110
0-6 months    MAL-ED           SOUTH AFRICA                   Low                    0       28     110
0-6 months    MAL-ED           SOUTH AFRICA                   Low                    1        9     110
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                 0       16     110
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                 1       14     110
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0       80     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1       50     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0       36     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1       25     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0       10     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1       11     212
0-6 months    NIH-Crypto       BANGLADESH                     High                   0      226     758
0-6 months    NIH-Crypto       BANGLADESH                     High                   1       70     758
0-6 months    NIH-Crypto       BANGLADESH                     Low                    0      167     758
0-6 months    NIH-Crypto       BANGLADESH                     Low                    1       75     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium                 0      136     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium                 1       84     758
0-6 months    PROBIT           BELARUS                        High                   0     2567   16309
0-6 months    PROBIT           BELARUS                        High                   1      140   16309
0-6 months    PROBIT           BELARUS                        Low                    0     5908   16309
0-6 months    PROBIT           BELARUS                        Low                    1      510   16309
0-6 months    PROBIT           BELARUS                        Medium                 0     6756   16309
0-6 months    PROBIT           BELARUS                        Medium                 1      428   16309
0-6 months    PROVIDE          BANGLADESH                     High                   0      188     700
0-6 months    PROVIDE          BANGLADESH                     High                   1       44     700
0-6 months    PROVIDE          BANGLADESH                     Low                    0      166     700
0-6 months    PROVIDE          BANGLADESH                     Low                    1       72     700
0-6 months    PROVIDE          BANGLADESH                     Medium                 0      178     700
0-6 months    PROVIDE          BANGLADESH                     Medium                 1       52     700
0-6 months    SAS-CompFeed     INDIA                          High                   0      255    1527
0-6 months    SAS-CompFeed     INDIA                          High                   1      134    1527
0-6 months    SAS-CompFeed     INDIA                          Low                    0      338    1527
0-6 months    SAS-CompFeed     INDIA                          Low                    1      315    1527
0-6 months    SAS-CompFeed     INDIA                          Medium                 0      285    1527
0-6 months    SAS-CompFeed     INDIA                          Medium                 1      200    1527
0-6 months    SAS-FoodSuppl    INDIA                          High                   0       71     416
0-6 months    SAS-FoodSuppl    INDIA                          High                   1       39     416
0-6 months    SAS-FoodSuppl    INDIA                          Low                    0       88     416
0-6 months    SAS-FoodSuppl    INDIA                          Low                    1       58     416
0-6 months    SAS-FoodSuppl    INDIA                          Medium                 0       95     416
0-6 months    SAS-FoodSuppl    INDIA                          Medium                 1       65     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      378    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       71    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0     1002    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1      268    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      538    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      126    2383
0-6 months    ZVITAMBO         ZIMBABWE                       High                   0      778   13679
0-6 months    ZVITAMBO         ZIMBABWE                       High                   1      220   13679
0-6 months    ZVITAMBO         ZIMBABWE                       Low                    0     1647   13679
0-6 months    ZVITAMBO         ZIMBABWE                       Low                    1      662   13679
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                 0     7744   13679
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                 1     2628   13679
6-24 months   COHORTS          GUATEMALA                      High                   0       33     831
6-24 months   COHORTS          GUATEMALA                      High                   1      119     831
6-24 months   COHORTS          GUATEMALA                      Low                    0       84     831
6-24 months   COHORTS          GUATEMALA                      Low                    1      293     831
6-24 months   COHORTS          GUATEMALA                      Medium                 0       81     831
6-24 months   COHORTS          GUATEMALA                      Medium                 1      221     831
6-24 months   COHORTS          INDIA                          High                   0      388    1179
6-24 months   COHORTS          INDIA                          High                   1       89    1179
6-24 months   COHORTS          INDIA                          Low                    0      231    1179
6-24 months   COHORTS          INDIA                          Low                    1      135    1179
6-24 months   COHORTS          INDIA                          Medium                 0      246    1179
6-24 months   COHORTS          INDIA                          Medium                 1       90    1179
6-24 months   COHORTS          PHILIPPINES                    High                   0      368    2007
6-24 months   COHORTS          PHILIPPINES                    High                   1      397    2007
6-24 months   COHORTS          PHILIPPINES                    Low                    0      124    2007
6-24 months   COHORTS          PHILIPPINES                    Low                    1      420    2007
6-24 months   COHORTS          PHILIPPINES                    Medium                 0      214    2007
6-24 months   COHORTS          PHILIPPINES                    Medium                 1      484    2007
6-24 months   GMS-Nepal        NEPAL                          High                   0       58     396
6-24 months   GMS-Nepal        NEPAL                          High                   1       46     396
6-24 months   GMS-Nepal        NEPAL                          Low                    0       61     396
6-24 months   GMS-Nepal        NEPAL                          Low                    1       97     396
6-24 months   GMS-Nepal        NEPAL                          Medium                 0       53     396
6-24 months   GMS-Nepal        NEPAL                          Medium                 1       81     396
6-24 months   JiVitA-3         BANGLADESH                     High                   0     2577   10116
6-24 months   JiVitA-3         BANGLADESH                     High                   1      496   10116
6-24 months   JiVitA-3         BANGLADESH                     Low                    0     2748   10116
6-24 months   JiVitA-3         BANGLADESH                     Low                    1      957   10116
6-24 months   JiVitA-3         BANGLADESH                     Medium                 0     2614   10116
6-24 months   JiVitA-3         BANGLADESH                     Medium                 1      724   10116
6-24 months   JiVitA-4         BANGLADESH                     High                   0      632    3544
6-24 months   JiVitA-4         BANGLADESH                     High                   1      278    3544
6-24 months   JiVitA-4         BANGLADESH                     Low                    0      704    3544
6-24 months   JiVitA-4         BANGLADESH                     Low                    1      538    3544
6-24 months   JiVitA-4         BANGLADESH                     Medium                 0      865    3544
6-24 months   JiVitA-4         BANGLADESH                     Medium                 1      527    3544
6-24 months   LCNI-5           MALAWI                         High                   0       86     707
6-24 months   LCNI-5           MALAWI                         High                   1      142     707
6-24 months   LCNI-5           MALAWI                         Low                    0      105     707
6-24 months   LCNI-5           MALAWI                         Low                    1      145     707
6-24 months   LCNI-5           MALAWI                         Medium                 0       93     707
6-24 months   LCNI-5           MALAWI                         Medium                 1      136     707
6-24 months   MAL-ED           BANGLADESH                     High                   0       26      88
6-24 months   MAL-ED           BANGLADESH                     High                   1        8      88
6-24 months   MAL-ED           BANGLADESH                     Low                    0       13      88
6-24 months   MAL-ED           BANGLADESH                     Low                    1       11      88
6-24 months   MAL-ED           BANGLADESH                     Medium                 0       17      88
6-24 months   MAL-ED           BANGLADESH                     Medium                 1       13      88
6-24 months   MAL-ED           INDIA                          High                   0       16      93
6-24 months   MAL-ED           INDIA                          High                   1       11      93
6-24 months   MAL-ED           INDIA                          Low                    0       23      93
6-24 months   MAL-ED           INDIA                          Low                    1       13      93
6-24 months   MAL-ED           INDIA                          Medium                 0       16      93
6-24 months   MAL-ED           INDIA                          Medium                 1       14      93
6-24 months   MAL-ED           NEPAL                          High                   0       29      78
6-24 months   MAL-ED           NEPAL                          High                   1        4      78
6-24 months   MAL-ED           NEPAL                          Low                    0       16      78
6-24 months   MAL-ED           NEPAL                          Low                    1        8      78
6-24 months   MAL-ED           NEPAL                          Medium                 0       15      78
6-24 months   MAL-ED           NEPAL                          Medium                 1        6      78
6-24 months   MAL-ED           PERU                           High                   0       33     121
6-24 months   MAL-ED           PERU                           High                   1       20     121
6-24 months   MAL-ED           PERU                           Low                    0       20     121
6-24 months   MAL-ED           PERU                           Low                    1       13     121
6-24 months   MAL-ED           PERU                           Medium                 0       18     121
6-24 months   MAL-ED           PERU                           Medium                 1       17     121
6-24 months   MAL-ED           SOUTH AFRICA                   High                   0       10      58
6-24 months   MAL-ED           SOUTH AFRICA                   High                   1        9      58
6-24 months   MAL-ED           SOUTH AFRICA                   Low                    0       17      58
6-24 months   MAL-ED           SOUTH AFRICA                   Low                    1       10      58
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                 0        6      58
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                 1        6      58
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0       17     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1       61     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0        7     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1       26     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0        3     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1        7     121
6-24 months   NIH-Crypto       BANGLADESH                     High                   0      183     506
6-24 months   NIH-Crypto       BANGLADESH                     High                   1       34     506
6-24 months   NIH-Crypto       BANGLADESH                     Low                    0      101     506
6-24 months   NIH-Crypto       BANGLADESH                     Low                    1       55     506
6-24 months   NIH-Crypto       BANGLADESH                     Medium                 0       89     506
6-24 months   NIH-Crypto       BANGLADESH                     Medium                 1       44     506
6-24 months   PROBIT           BELARUS                        High                   0     2390   14975
6-24 months   PROBIT           BELARUS                        High                   1      113   14975
6-24 months   PROBIT           BELARUS                        Low                    0     5392   14975
6-24 months   PROBIT           BELARUS                        Low                    1      429   14975
6-24 months   PROBIT           BELARUS                        Medium                 0     6236   14975
6-24 months   PROBIT           BELARUS                        Medium                 1      415   14975
6-24 months   PROVIDE          BANGLADESH                     High                   0      135     456
6-24 months   PROVIDE          BANGLADESH                     High                   1       38     456
6-24 months   PROVIDE          BANGLADESH                     Low                    0       88     456
6-24 months   PROVIDE          BANGLADESH                     Low                    1       51     456
6-24 months   PROVIDE          BANGLADESH                     Medium                 0       96     456
6-24 months   PROVIDE          BANGLADESH                     Medium                 1       48     456
6-24 months   SAS-CompFeed     INDIA                          High                   0      149     812
6-24 months   SAS-CompFeed     INDIA                          High                   1       96     812
6-24 months   SAS-CompFeed     INDIA                          Low                    0      121     812
6-24 months   SAS-CompFeed     INDIA                          Low                    1      173     812
6-24 months   SAS-CompFeed     INDIA                          Medium                 0      134     812
6-24 months   SAS-CompFeed     INDIA                          Medium                 1      139     812
6-24 months   SAS-FoodSuppl    INDIA                          High                   0       19     243
6-24 months   SAS-FoodSuppl    INDIA                          High                   1       49     243
6-24 months   SAS-FoodSuppl    INDIA                          Low                    0       20     243
6-24 months   SAS-FoodSuppl    INDIA                          Low                    1       63     243
6-24 months   SAS-FoodSuppl    INDIA                          Medium                 0       20     243
6-24 months   SAS-FoodSuppl    INDIA                          Medium                 1       72     243
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      238    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       75    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0      640    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1      191    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      356    1595
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       95    1595
6-24 months   ZVITAMBO         ZIMBABWE                       High                   0      483    8280
6-24 months   ZVITAMBO         ZIMBABWE                       High                   1      129    8280
6-24 months   ZVITAMBO         ZIMBABWE                       Low                    0      948    8280
6-24 months   ZVITAMBO         ZIMBABWE                       Low                    1      425    8280
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                 0     4695    8280
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                 1     1600    8280


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




# Results Detail

## Results Plots
![](/tmp/36961b65-f226-4cc4-9955-84648b08de8b/ae590456-272a-4ef4-9951-5380bac9c564/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/36961b65-f226-4cc4-9955-84648b08de8b/ae590456-272a-4ef4-9951-5380bac9c564/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/36961b65-f226-4cc4-9955-84648b08de8b/ae590456-272a-4ef4-9951-5380bac9c564/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/36961b65-f226-4cc4-9955-84648b08de8b/ae590456-272a-4ef4-9951-5380bac9c564/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.7386393   0.6840705   0.7932081
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.7735407   0.7392523   0.8078290
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.7604391   0.7216560   0.7992222
0-24 months   COHORTS          INDIA                          High                 NA                0.3229201   0.2848295   0.3610107
0-24 months   COHORTS          INDIA                          Low                  NA                0.4343811   0.3911925   0.4775697
0-24 months   COHORTS          INDIA                          Medium               NA                0.3765251   0.3314255   0.4216246
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.6242640   0.5922058   0.6563221
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.7779112   0.7449471   0.8108752
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.7207067   0.6906319   0.7507815
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.5904406   0.5201582   0.6607230
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.6741284   0.6217130   0.7265438
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.6583396   0.5921931   0.7244862
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.5021092   0.4839573   0.5202611
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.5085768   0.4955858   0.5215679
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.4909789   0.4794632   0.5024945
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.5477207   0.4967399   0.5987015
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.6132725   0.5826188   0.6439263
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.5862272   0.5604945   0.6119600
0-24 months   LCNI-5           MALAWI                         High                 NA                0.6558670   0.5972232   0.7145108
0-24 months   LCNI-5           MALAWI                         Low                  NA                0.6223374   0.5671275   0.6775472
0-24 months   LCNI-5           MALAWI                         Medium               NA                0.6498599   0.5925679   0.7071519
0-24 months   MAL-ED           BANGLADESH                     High                 NA                0.4465826   0.3143010   0.5788641
0-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.5794943   0.4298213   0.7291674
0-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.6429180   0.5153601   0.7704759
0-24 months   MAL-ED           INDIA                          High                 NA                0.5954239   0.4455188   0.7453290
0-24 months   MAL-ED           INDIA                          Low                  NA                0.5371295   0.4102411   0.6640179
0-24 months   MAL-ED           INDIA                          Medium               NA                0.5969733   0.4472090   0.7467376
0-24 months   MAL-ED           NEPAL                          High                 NA                0.2590742   0.1184511   0.3996973
0-24 months   MAL-ED           NEPAL                          Low                  NA                0.4101823   0.2246292   0.5957354
0-24 months   MAL-ED           NEPAL                          Medium               NA                0.4290616   0.2339761   0.6241472
0-24 months   MAL-ED           PERU                           High                 NA                0.6299184   0.5424709   0.7173658
0-24 months   MAL-ED           PERU                           Low                  NA                0.5864828   0.4696985   0.7032672
0-24 months   MAL-ED           PERU                           Medium               NA                0.6616462   0.5413932   0.7818992
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.6627409   0.5214408   0.8040411
0-24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.4952129   0.3301102   0.6603157
0-24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.6316700   0.4603400   0.8029999
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.3875785   0.3363046   0.4388523
0-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.5477038   0.4849788   0.6104287
0-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.5404783   0.4725355   0.6084211
0-24 months   PROBIT           BELARUS                        High                 NA                0.1066630   0.0853596   0.1279664
0-24 months   PROBIT           BELARUS                        Low                  NA                0.1315703   0.1093859   0.1537547
0-24 months   PROBIT           BELARUS                        Medium               NA                0.1210939   0.1047634   0.1374244
0-24 months   PROVIDE          BANGLADESH                     High                 NA                0.4080006   0.3476011   0.4684002
0-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.4789337   0.4150775   0.5427899
0-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.4085225   0.3433795   0.4736655
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.6820562   0.6199086   0.7442037
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.7024195   0.6426254   0.7622135
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.6987790   0.6505115   0.7470465
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.8047375   0.7303768   0.8790981
0-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.8159511   0.7544881   0.8774140
0-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.8564154   0.8010857   0.9117451
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3176541   0.2646202   0.3706880
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3367409   0.3093733   0.3641085
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3383956   0.2925812   0.3842099
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.3943454   0.3632768   0.4254140
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.4529928   0.4274410   0.4785445
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.4136066   0.4038890   0.4233241
0-6 months    COHORTS          GUATEMALA                      High                 NA                0.3068450   0.2428229   0.3708672
0-6 months    COHORTS          GUATEMALA                      Low                  NA                0.3054999   0.2651708   0.3458291
0-6 months    COHORTS          GUATEMALA                      Medium               NA                0.3393478   0.2907751   0.3879205
0-6 months    COHORTS          INDIA                          High                 NA                0.1446399   0.1196541   0.1696258
0-6 months    COHORTS          INDIA                          Low                  NA                0.1858055   0.1528390   0.2187719
0-6 months    COHORTS          INDIA                          Medium               NA                0.1605884   0.1289183   0.1922585
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.2134651   0.1857222   0.2412080
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.2619678   0.2312933   0.2926422
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.2560238   0.2294304   0.2826173
0-6 months    GMS-Nepal        NEPAL                          High                 NA                0.3316687   0.2659638   0.3973736
0-6 months    GMS-Nepal        NEPAL                          Low                  NA                0.3334417   0.2830420   0.3838414
0-6 months    GMS-Nepal        NEPAL                          Medium               NA                0.3145165   0.2544421   0.3745908
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                0.4162730   0.4014652   0.4310808
0-6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.4133178   0.4017414   0.4248942
0-6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.4103909   0.3999799   0.4208020
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                0.3255101   0.2889244   0.3620959
0-6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.3555928   0.3258685   0.3853172
0-6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.3549236   0.3309741   0.3788731
0-6 months    LCNI-5           MALAWI                         High                 NA                0.2743723   0.1731209   0.3756236
0-6 months    LCNI-5           MALAWI                         Low                  NA                0.3697225   0.2764611   0.4629839
0-6 months    LCNI-5           MALAWI                         Medium               NA                0.4345748   0.3319129   0.5372367
0-6 months    MAL-ED           BANGLADESH                     High                 NA                0.2766067   0.1570156   0.3961979
0-6 months    MAL-ED           BANGLADESH                     Low                  NA                0.3197009   0.1636901   0.4757116
0-6 months    MAL-ED           BANGLADESH                     Medium               NA                0.4196272   0.2879613   0.5512930
0-6 months    MAL-ED           INDIA                          High                 NA                0.3594953   0.2162557   0.5027349
0-6 months    MAL-ED           INDIA                          Low                  NA                0.3219843   0.2069157   0.4370530
0-6 months    MAL-ED           INDIA                          Medium               NA                0.2994147   0.1650521   0.4337773
0-6 months    MAL-ED           PERU                           High                 NA                0.4553373   0.3661128   0.5445618
0-6 months    MAL-ED           PERU                           Low                  NA                0.4060569   0.2866778   0.5254360
0-6 months    MAL-ED           PERU                           Medium               NA                0.3982345   0.2707075   0.5257615
0-6 months    MAL-ED           SOUTH AFRICA                   High                 NA                0.4651163   0.3153523   0.6148803
0-6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                0.2432432   0.1043667   0.3821198
0-6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                0.4666667   0.2873283   0.6460051
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3828830   0.2981834   0.4675827
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.4116823   0.2847925   0.5385722
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5134843   0.2894492   0.7375194
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.2707918   0.2238218   0.3177618
0-6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.3116253   0.2603090   0.3629417
0-6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.3406760   0.2768833   0.4044687
0-6 months    PROBIT           BELARUS                        High                 NA                0.0589024   0.0398371   0.0779676
0-6 months    PROBIT           BELARUS                        Low                  NA                0.0708006   0.0548229   0.0867783
0-6 months    PROBIT           BELARUS                        Medium               NA                0.0612283   0.0498789   0.0725777
0-6 months    PROVIDE          BANGLADESH                     High                 NA                0.2067334   0.1602773   0.2531896
0-6 months    PROVIDE          BANGLADESH                     Low                  NA                0.2787030   0.2279640   0.3294420
0-6 months    PROVIDE          BANGLADESH                     Medium               NA                0.2169526   0.1702347   0.2636704
0-6 months    SAS-CompFeed     INDIA                          High                 NA                0.4304305   0.3789330   0.4819279
0-6 months    SAS-CompFeed     INDIA                          Low                  NA                0.4418545   0.4003335   0.4833755
0-6 months    SAS-CompFeed     INDIA                          Medium               NA                0.4085413   0.3596417   0.4574410
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                0.3508672   0.2591635   0.4425708
0-6 months    SAS-FoodSuppl    INDIA                          Low                  NA                0.3997187   0.3203429   0.4790945
0-6 months    SAS-FoodSuppl    INDIA                          Medium               NA                0.4161142   0.3396353   0.4925931
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1633145   0.1282793   0.1983496
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2076290   0.1858447   0.2294134
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1965670   0.1649815   0.2281525
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.2360845   0.2124153   0.2597536
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.2642760   0.2434179   0.2851340
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.2583571   0.2498107   0.2669035
6-24 months   COHORTS          GUATEMALA                      High                 NA                0.7747263   0.7100672   0.8393853
6-24 months   COHORTS          GUATEMALA                      Low                  NA                0.7706763   0.7289801   0.8123726
6-24 months   COHORTS          GUATEMALA                      Medium               NA                0.7451368   0.6965011   0.7937725
6-24 months   COHORTS          INDIA                          High                 NA                0.2079189   0.1697620   0.2460758
6-24 months   COHORTS          INDIA                          Low                  NA                0.3117437   0.2639981   0.3594894
6-24 months   COHORTS          INDIA                          Medium               NA                0.2731162   0.2230573   0.3231751
6-24 months   COHORTS          PHILIPPINES                    High                 NA                0.5782686   0.5383822   0.6181549
6-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.7518647   0.7108908   0.7928387
6-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.6803357   0.6426003   0.7180711
6-24 months   GMS-Nepal        NEPAL                          High                 NA                0.5072563   0.3981182   0.6163943
6-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.6232512   0.5499086   0.6965938
6-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.5967273   0.5005375   0.6929171
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.2249679   0.1970475   0.2528882
6-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.2438881   0.2245593   0.2632170
6-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.2180361   0.1991048   0.2369673
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.3431832   0.2915113   0.3948552
6-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.4193974   0.3760692   0.4627257
6-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.3804775   0.3484457   0.4125093
6-24 months   LCNI-5           MALAWI                         High                 NA                0.6310150   0.5670869   0.6949430
6-24 months   LCNI-5           MALAWI                         Low                  NA                0.5786546   0.5180995   0.6392098
6-24 months   LCNI-5           MALAWI                         Medium               NA                0.5982809   0.5348571   0.6617047
6-24 months   MAL-ED           BANGLADESH                     High                 NA                0.2352941   0.0918961   0.3786921
6-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.4583333   0.2578488   0.6588179
6-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.4333333   0.2549953   0.6116714
6-24 months   MAL-ED           INDIA                          High                 NA                0.4319736   0.2364889   0.6274584
6-24 months   MAL-ED           INDIA                          Low                  NA                0.3580999   0.1965810   0.5196187
6-24 months   MAL-ED           INDIA                          Medium               NA                0.4448812   0.2535882   0.6361743
6-24 months   MAL-ED           PERU                           High                 NA                0.3685714   0.2350113   0.5021315
6-24 months   MAL-ED           PERU                           Low                  NA                0.3894171   0.2156234   0.5632108
6-24 months   MAL-ED           PERU                           Medium               NA                0.4750057   0.3036472   0.6463642
6-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.4736842   0.2472117   0.7001567
6-24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.3703704   0.1866305   0.5541103
6-24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.5000000   0.2146328   0.7853672
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.1619248   0.1130587   0.2107909
6-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.3421870   0.2683411   0.4160329
6-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.3237422   0.2436724   0.4038120
6-24 months   PROBIT           BELARUS                        High                 NA                0.0472185   0.0326760   0.0617610
6-24 months   PROBIT           BELARUS                        Low                  NA                0.0658960   0.0500503   0.0817418
6-24 months   PROBIT           BELARUS                        Medium               NA                0.0641416   0.0527924   0.0754908
6-24 months   PROVIDE          BANGLADESH                     High                 NA                0.2442964   0.1835264   0.3050663
6-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.3546522   0.2750155   0.4342889
6-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.3069320   0.2304754   0.3833886
6-24 months   SAS-CompFeed     INDIA                          High                 NA                0.4342468   0.3489987   0.5194950
6-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.5418708   0.4495993   0.6341422
6-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.5087550   0.4398284   0.5776815
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.7208510   0.6137232   0.8279787
6-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.7525312   0.6595135   0.8455489
6-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.7811609   0.6952719   0.8670498
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2449563   0.1950181   0.2948945
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2194937   0.1915114   0.2474760
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2202496   0.1793587   0.2611404
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.2488362   0.2065539   0.2911186
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.3193453   0.2873240   0.3513666
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.2589704   0.2474057   0.2705352


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.7672000   0.7437624   0.7906376
0-24 months   COHORTS          INDIA                          NA                   NA                0.3780235   0.3530310   0.4030160
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6899306   0.6730355   0.7068256
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.6408046   0.6051362   0.6764730
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4931575   0.4852626   0.5010523
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.5820697   0.5655159   0.5986236
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.6371464   0.6040748   0.6702180
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.5637584   0.4838620   0.6436548
0-24 months   MAL-ED           INDIA                          NA                   NA                0.5714286   0.4911565   0.6517006
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.3571429   0.2617885   0.4524972
0-24 months   MAL-ED           PERU                           NA                   NA                0.6280000   0.5679657   0.6880343
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.6181818   0.5269763   0.7093874
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   PROBIT           BELARUS                        NA                   NA                0.1247395   0.1090645   0.1404144
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.6908497   0.6505448   0.7311545
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3466219   0.3275107   0.3657331
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.4136118   0.4053631   0.4218605
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.3196078   0.2909760   0.3482397
0-6 months    COHORTS          INDIA                          NA                   NA                0.1639690   0.1447117   0.1832264
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2381944   0.2226342   0.2537546
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.3189655   0.2843148   0.3536162
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.4111421   0.4035964   0.4186878
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.3469880   0.3313196   0.3626563
0-6 months    LCNI-5           MALAWI                         NA                   NA                0.3558052   0.2982716   0.4133389
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.3489933   0.2722008   0.4257857
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3129252   0.2377120   0.3881383
0-6 months    MAL-ED           PERU                           NA                   NA                0.4280000   0.3665434   0.4894566
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.3909091   0.2993052   0.4825130
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4056604   0.3394074   0.4719134
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0660985   0.0554258   0.0767711
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.4250164   0.3969651   0.4530677
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1951322   0.1792173   0.2110471
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.2565977   0.2492783   0.2639171
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.7617329   0.7327499   0.7907158
6-24 months   COHORTS          INDIA                          NA                   NA                0.2663274   0.2410848   0.2915700
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6482312   0.6273346   0.6691278
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5656566   0.5167753   0.6145378
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2152036   0.2057612   0.2246461
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.3789503   0.3597979   0.3981028
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.5983027   0.5621404   0.6344650
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.3636364   0.2625541   0.4647186
6-24 months   MAL-ED           INDIA                          NA                   NA                0.4086022   0.3081534   0.5090509
6-24 months   MAL-ED           PERU                           NA                   NA                0.4132231   0.3251210   0.5013252
6-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.4310345   0.3024734   0.5595956
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0639065   0.0521855   0.0756275
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.5024631   0.4586872   0.5462389
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2263323   0.2057897   0.2468748
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2601449   0.2506947   0.2695951


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      Low                  High              1.0472509   0.9621595   1.139868
0-24 months   COHORTS          GUATEMALA                      Medium               High              1.0295134   0.9428466   1.124147
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          Low                  High              1.3451660   1.1609444   1.558620
0-24 months   COHORTS          INDIA                          Medium               High              1.1660007   0.9949308   1.366485
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              1.2461254   1.1667748   1.330872
0-24 months   COHORTS          PHILIPPINES                    Medium               High              1.1544903   1.0820944   1.231730
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              1.1417379   0.9948593   1.310301
0-24 months   GMS-Nepal        NEPAL                          Medium               High              1.1149973   0.9582590   1.297373
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.0128809   0.9723770   1.055072
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              0.9778329   0.9404804   1.016669
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.1196811   1.0106966   1.240417
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.0703032   0.9682916   1.183062
0-24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         Low                  High              0.9488774   0.8376315   1.074898
0-24 months   LCNI-5           MALAWI                         Medium               High              0.9908410   0.8753421   1.121580
0-24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     Low                  High              1.2976197   0.8817809   1.909564
0-24 months   MAL-ED           BANGLADESH                     Medium               High              1.4396398   1.0109238   2.050167
0-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          Low                  High              0.9020959   0.6402145   1.271101
0-24 months   MAL-ED           INDIA                          Medium               High              1.0026022   0.7038820   1.428096
0-24 months   MAL-ED           NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           NEPAL                          Low                  High              1.5832619   0.7839075   3.197722
0-24 months   MAL-ED           NEPAL                          Medium               High              1.6561342   0.8165115   3.359145
0-24 months   MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           PERU                           Low                  High              0.9310458   0.7305095   1.186632
0-24 months   MAL-ED           PERU                           Medium               High              1.0503682   0.8356030   1.320332
0-24 months   MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   Low                  High              0.7472195   0.5030560   1.109890
0-24 months   MAL-ED           SOUTH AFRICA                   Medium               High              0.9531175   0.6723540   1.351123
0-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.4131429   1.1970276   1.668276
0-24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.3945003   1.1750273   1.654967
0-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        Low                  High              1.2335133   0.9936420   1.531291
0-24 months   PROBIT           BELARUS                        Medium               High              1.1352938   0.9369573   1.375614
0-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     Low                  High              1.1738552   0.9698941   1.420708
0-24 months   PROVIDE          BANGLADESH                     Medium               High              1.0012791   0.8121071   1.234517
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              1.0298558   0.9107461   1.164543
0-24 months   SAS-CompFeed     INDIA                          Medium               High              1.0245182   0.9133531   1.149214
0-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.0139345   0.9007075   1.141395
0-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.0642171   0.9515488   1.190226
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0600866   0.8817833   1.274444
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0652957   0.8601991   1.319293
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.1487208   1.0435424   1.264500
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.0488434   0.9672233   1.137351
0-6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      Low                  High              0.9956163   0.7861769   1.260851
0-6 months    COHORTS          GUATEMALA                      Medium               High              1.1059255   0.8669218   1.410821
0-6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          Low                  High              1.2846071   1.0321151   1.598868
0-6 months    COHORTS          INDIA                          Medium               High              1.1102631   0.8820731   1.397485
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              1.2272157   1.0378074   1.451193
0-6 months    COHORTS          PHILIPPINES                    Medium               High              1.1993708   1.0235825   1.405349
0-6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL                          Low                  High              1.0053457   0.7988782   1.265174
0-6 months    GMS-Nepal        NEPAL                          Medium               High              0.9482850   0.7326952   1.227310
0-6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     Low                  High              0.9929008   0.9535423   1.033884
0-6 months    JiVitA-3         BANGLADESH                     Medium               High              0.9858697   0.9497901   1.023320
0-6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4         BANGLADESH                     Low                  High              1.0924172   0.9521176   1.253391
0-6 months    JiVitA-4         BANGLADESH                     Medium               High              1.0903613   0.9627323   1.234910
0-6 months    LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-6 months    LCNI-5           MALAWI                         Low                  High              1.3475213   0.8613790   2.108031
0-6 months    LCNI-5           MALAWI                         Medium               High              1.5838874   1.0219221   2.454883
0-6 months    MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BANGLADESH                     Low                  High              1.1557957   0.6057251   2.205396
0-6 months    MAL-ED           BANGLADESH                     Medium               High              1.5170534   0.8889273   2.589020
0-6 months    MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           INDIA                          Low                  High              0.8956566   0.5307981   1.511311
0-6 months    MAL-ED           INDIA                          Medium               High              0.8328752   0.4590166   1.511233
0-6 months    MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           PERU                           Low                  High              0.8917716   0.6259272   1.270526
0-6 months    MAL-ED           PERU                           Medium               High              0.8745923   0.6007650   1.273229
0-6 months    MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           SOUTH AFRICA                   Low                  High              0.5229730   0.2715250   1.007276
0-6 months    MAL-ED           SOUTH AFRICA                   Medium               High              1.0033333   0.6077246   1.656470
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0752169   0.7352103   1.572464
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              1.3410996   0.8221871   2.187517
0-6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     Low                  High              1.1507931   0.9263647   1.429593
0-6 months    NIH-Crypto       BANGLADESH                     Medium               High              1.2580736   0.9939475   1.592387
0-6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        Low                  High              1.2019991   0.8360594   1.728109
0-6 months    PROBIT           BELARUS                        Medium               High              1.0394874   0.7653495   1.411818
0-6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     Low                  High              1.3481275   1.0346991   1.756499
0-6 months    PROVIDE          BANGLADESH                     Medium               High              1.0494316   0.7879844   1.397625
0-6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          Low                  High              1.0265410   0.8652078   1.217958
0-6 months    SAS-CompFeed     INDIA                          Medium               High              0.9491460   0.8617844   1.045364
0-6 months    SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl    INDIA                          Low                  High              1.1392308   0.8220760   1.578743
0-6 months    SAS-FoodSuppl    INDIA                          Medium               High              1.1859595   0.8640690   1.627763
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2713451   1.0043183   1.609369
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2036104   0.9229246   1.569660
0-6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  High              1.1194127   0.9877972   1.268565
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               High              1.0943417   0.9878874   1.212268
6-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA                      Low                  High              0.9947725   0.9013470   1.097881
6-24 months   COHORTS          GUATEMALA                      Medium               High              0.9618066   0.8658416   1.068408
6-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA                          Low                  High              1.4993527   1.1833063   1.899811
6-24 months   COHORTS          INDIA                          Medium               High              1.3135710   1.0173304   1.696075
6-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    Low                  High              1.3001999   1.1914035   1.418931
6-24 months   COHORTS          PHILIPPINES                    Medium               High              1.1765047   1.0783058   1.283646
6-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal        NEPAL                          Low                  High              1.2286712   0.9621430   1.569032
6-24 months   GMS-Nepal        NEPAL                          Medium               High              1.1763822   0.9000565   1.537542
6-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.0841022   0.9366984   1.254702
6-24 months   JiVitA-3         BANGLADESH                     Medium               High              0.9691877   0.8353831   1.124424
6-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.2220802   1.0193019   1.465199
6-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.1086716   0.9398262   1.307851
6-24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6-24 months   LCNI-5           MALAWI                         Low                  High              0.9170220   0.7935141   1.059754
6-24 months   LCNI-5           MALAWI                         Medium               High              0.9481247   0.8199388   1.096351
6-24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           BANGLADESH                     Low                  High              1.9479167   0.9199737   4.124443
6-24 months   MAL-ED           BANGLADESH                     Medium               High              1.8416667   0.8827489   3.842244
6-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           INDIA                          Low                  High              0.8289855   0.4365895   1.574058
6-24 months   MAL-ED           INDIA                          Medium               High              1.0298805   0.5502432   1.927609
6-24 months   MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           PERU                           Low                  High              1.0565581   0.5935585   1.880716
6-24 months   MAL-ED           PERU                           Medium               High              1.2887752   0.7728308   2.149166
6-24 months   MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           SOUTH AFRICA                   Low                  High              0.7818930   0.3925769   1.557291
6-24 months   MAL-ED           SOUTH AFRICA                   Medium               High              1.0555556   0.5013438   2.222422
6-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     Low                  High              2.1132465   1.4606030   3.057512
6-24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.9993370   1.3551648   2.949714
6-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS                        Low                  High              1.3955555   1.0004737   1.946653
6-24 months   PROBIT           BELARUS                        Medium               High              1.3584002   1.0337311   1.785040
6-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     Low                  High              1.4517293   1.0432096   2.020225
6-24 months   PROVIDE          BANGLADESH                     Medium               High              1.2563920   0.8882448   1.777124
6-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          Low                  High              1.2478404   0.9453870   1.647056
6-24 months   SAS-CompFeed     INDIA                          Medium               High              1.1715801   0.9051447   1.516443
6-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.0439483   0.8607112   1.266195
6-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.0836649   0.9007354   1.303745
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.8960523   0.7048845   1.139066
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.8991380   0.6828653   1.183907
6-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.2833555   1.0536547   1.563132
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.0407264   0.8731506   1.240463


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0285607   -0.0201835   0.0773049
0-24 months   COHORTS          INDIA                          High                 NA                 0.0551034    0.0246759   0.0855309
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0656666    0.0391703   0.0921629
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0503640   -0.0105519   0.1112799
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0089517   -0.0255543   0.0076509
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0343490   -0.0127777   0.0814758
0-24 months   LCNI-5           MALAWI                         High                 NA                -0.0187206   -0.0675861   0.0301448
0-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.1171758    0.0121271   0.2222246
0-24 months   MAL-ED           INDIA                          High                 NA                -0.0239953   -0.1492331   0.1012425
0-24 months   MAL-ED           NEPAL                          High                 NA                 0.0980687   -0.0182816   0.2144189
0-24 months   MAL-ED           PERU                           High                 NA                -0.0019184   -0.0646695   0.0608328
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0445591   -0.1581522   0.0690340
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0899941    0.0492524   0.1307358
0-24 months   PROBIT           BELARUS                        High                 NA                 0.0180764   -0.0008065   0.0369594
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0277137   -0.0222539   0.0776812
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0087935   -0.0488661   0.0664531
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0230137   -0.0393732   0.0854007
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0289678   -0.0214035   0.0793391
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0192664   -0.0108259   0.0493588
0-6 months    COHORTS          GUATEMALA                      High                 NA                 0.0127628   -0.0445875   0.0701131
0-6 months    COHORTS          INDIA                          High                 NA                 0.0193291    0.0009816   0.0376766
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0247293    0.0007267   0.0487319
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0127032   -0.0681766   0.0427702
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0051309   -0.0181418   0.0078800
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0214778   -0.0118097   0.0547654
0-6 months    LCNI-5           MALAWI                         High                 NA                 0.0814330   -0.0081301   0.1709961
0-6 months    MAL-ED           BANGLADESH                     High                 NA                 0.0723866   -0.0274055   0.1721787
0-6 months    MAL-ED           INDIA                          High                 NA                -0.0465701   -0.1635434   0.0704031
0-6 months    MAL-ED           PERU                           High                 NA                -0.0273373   -0.0915508   0.0368762
0-6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.0742072   -0.1894674   0.0410531
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0227773   -0.0311602   0.0767148
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0313190   -0.0051838   0.0678218
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0071961   -0.0105550   0.0249472
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.0332666   -0.0037097   0.0702429
0-6 months    SAS-CompFeed     INDIA                          High                 NA                -0.0054141   -0.0454963   0.0346682
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.0385559   -0.0406411   0.1177530
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0318177   -0.0004603   0.0640957
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0205132   -0.0022003   0.0432267
6-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0129934   -0.0714772   0.0454904
6-24 months   COHORTS          INDIA                          High                 NA                 0.0584085    0.0262348   0.0905822
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0699626    0.0367239   0.1032013
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0584003   -0.0388760   0.1556765
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0097642   -0.0364868   0.0169584
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0357671   -0.0125635   0.0840977
6-24 months   LCNI-5           MALAWI                         High                 NA                -0.0327123   -0.0856881   0.0202636
6-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.1283422    0.0063135   0.2503710
6-24 months   MAL-ED           INDIA                          High                 NA                -0.0233715   -0.1903117   0.1435687
6-24 months   MAL-ED           PERU                           High                 NA                 0.0446517   -0.0573396   0.1466430
6-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0426497   -0.2276203   0.1423208
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.1009211    0.0585783   0.1432639
6-24 months   PROBIT           BELARUS                        High                 NA                 0.0166880    0.0041373   0.0292388
6-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0561422    0.0056579   0.1066266
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0682162   -0.0156779   0.1521103
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0363507   -0.0529541   0.1256555
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0186241   -0.0637704   0.0265222
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0113087   -0.0299819   0.0525993


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0372272   -0.0284900   0.0987452
0-24 months   COHORTS          INDIA                          High                 NA                 0.1457672    0.0614213   0.2225333
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0951786    0.0557650   0.1329470
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0785950   -0.0216066   0.1689685
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0181519   -0.0523916   0.0149739
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0590119   -0.0256783   0.1367092
0-24 months   LCNI-5           MALAWI                         High                 NA                -0.0293820   -0.1090435   0.0445575
0-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.2078476   -0.0053361   0.3758253
0-24 months   MAL-ED           INDIA                          High                 NA                -0.0419918   -0.2858853   0.1556424
0-24 months   MAL-ED           NEPAL                          High                 NA                 0.2745923   -0.1347860   0.5362858
0-24 months   MAL-ED           PERU                           High                 NA                -0.0030547   -0.1081194   0.0920485
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0720809   -0.2736498   0.0975875
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.1884406    0.0988000   0.2691648
0-24 months   PROBIT           BELARUS                        High                 NA                 0.1449136   -0.0165090   0.2807021
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0636051   -0.0582044   0.1713932
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0127285   -0.0741772   0.0926032
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0278027   -0.0506697   0.1004142
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0835717   -0.0737380   0.2178346
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0465809   -0.0290117   0.1166204
0-6 months    COHORTS          GUATEMALA                      High                 NA                 0.0399327   -0.1574011   0.2036216
0-6 months    COHORTS          INDIA                          High                 NA                 0.1178826   -0.0005396   0.2222886
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.1038199   -0.0025946   0.1989396
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0398263   -0.2291446   0.1203324
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0124797   -0.0446344   0.0186853
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0618979   -0.0391121   0.1530890
0-6 months    LCNI-5           MALAWI                         High                 NA                 0.2288695   -0.0671882   0.4427954
0-6 months    MAL-ED           BANGLADESH                     High                 NA                 0.2074153   -0.1355002   0.4467721
0-6 months    MAL-ED           INDIA                          High                 NA                -0.1488219   -0.5896660   0.1697678
0-6 months    MAL-ED           PERU                           High                 NA                -0.0638722   -0.2252395   0.0762426
0-6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.1898323   -0.5266938   0.0727014
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0561488   -0.0868142   0.1803060
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.1036673   -0.0252214   0.2163524
0-6 months    PROBIT           BELARUS                        High                 NA                 0.1088696   -0.2012012   0.3389006
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.1386108   -0.0294165   0.2792116
0-6 months    SAS-CompFeed     INDIA                          High                 NA                -0.0127385   -0.1114746   0.0772265
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.0990078   -0.1294539   0.2812571
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1630573   -0.0194212   0.3128718
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0799431   -0.0129353   0.1643054
6-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0170577   -0.0968266   0.0569099
6-24 months   COHORTS          INDIA                          High                 NA                 0.2193109    0.0898067   0.3303891
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.1079285    0.0548946   0.1579864
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.1032433   -0.0866703   0.2599664
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0453720   -0.1773447   0.0718075
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0943847   -0.0425767   0.2133537
6-24 months   LCNI-5           MALAWI                         High                 NA                -0.0546751   -0.1471343   0.0303319
6-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.3529412   -0.0805799   0.6125367
6-24 months   MAL-ED           INDIA                          High                 NA                -0.0571986   -0.5561416   0.2817692
6-24 months   MAL-ED           PERU                           High                 NA                 0.1080572   -0.1771585   0.3241675
6-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.0989474   -0.6249220   0.2567734
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.3839554    0.2069390   0.5214605
6-24 months   PROBIT           BELARUS                        High                 NA                 0.2611319    0.0464126   0.4275029
6-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.1868676    0.0024804   0.3371716
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.1357636   -0.0456177   0.2856811
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0480066   -0.0778411   0.1591604
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0822864   -0.3013254   0.0998841
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0434707   -0.1291731   0.1897184
