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

agecat      studyid          country                        feducyrs    swasted   n_cell       n
----------  ---------------  -----------------------------  ---------  --------  -------  ------
Birth       COHORTS          GUATEMALA                      High              0      125     718
Birth       COHORTS          GUATEMALA                      High              1       11     718
Birth       COHORTS          GUATEMALA                      Low               0      287     718
Birth       COHORTS          GUATEMALA                      Low               1       24     718
Birth       COHORTS          GUATEMALA                      Medium            0      252     718
Birth       COHORTS          GUATEMALA                      Medium            1       19     718
Birth       COHORTS          INDIA                          High              0      481    1291
Birth       COHORTS          INDIA                          High              1       26    1291
Birth       COHORTS          INDIA                          Low               0      407    1291
Birth       COHORTS          INDIA                          Low               1        7    1291
Birth       COHORTS          INDIA                          Medium            0      349    1291
Birth       COHORTS          INDIA                          Medium            1       21    1291
Birth       COHORTS          PHILIPPINES                    High              0      945    2728
Birth       COHORTS          PHILIPPINES                    High              1       49    2728
Birth       COHORTS          PHILIPPINES                    Low               0      753    2728
Birth       COHORTS          PHILIPPINES                    Low               1       20    2728
Birth       COHORTS          PHILIPPINES                    Medium            0      919    2728
Birth       COHORTS          PHILIPPINES                    Medium            1       42    2728
Birth       GMS-Nepal        NEPAL                          High              0      151     640
Birth       GMS-Nepal        NEPAL                          High              1       11     640
Birth       GMS-Nepal        NEPAL                          Low               0      259     640
Birth       GMS-Nepal        NEPAL                          Low               1        7     640
Birth       GMS-Nepal        NEPAL                          Medium            0      203     640
Birth       GMS-Nepal        NEPAL                          Medium            1        9     640
Birth       JiVitA-3         BANGLADESH                     High              0     3965   17367
Birth       JiVitA-3         BANGLADESH                     High              1       84   17367
Birth       JiVitA-3         BANGLADESH                     Low               0     7312   17367
Birth       JiVitA-3         BANGLADESH                     Low               1      140   17367
Birth       JiVitA-3         BANGLADESH                     Medium            0     5760   17367
Birth       JiVitA-3         BANGLADESH                     Medium            1      106   17367
Birth       JiVitA-4         BANGLADESH                     High              0      505    2323
Birth       JiVitA-4         BANGLADESH                     High              1        5    2323
Birth       JiVitA-4         BANGLADESH                     Low               0      899    2323
Birth       JiVitA-4         BANGLADESH                     Low               1       14    2323
Birth       JiVitA-4         BANGLADESH                     Medium            0      890    2323
Birth       JiVitA-4         BANGLADESH                     Medium            1       10    2323
Birth       MAL-ED           BANGLADESH                     High              0       42     119
Birth       MAL-ED           BANGLADESH                     High              1        2     119
Birth       MAL-ED           BANGLADESH                     Low               0       30     119
Birth       MAL-ED           BANGLADESH                     Low               1        3     119
Birth       MAL-ED           BANGLADESH                     Medium            0       41     119
Birth       MAL-ED           BANGLADESH                     Medium            1        1     119
Birth       MAL-ED           INDIA                          High              0        7      23
Birth       MAL-ED           INDIA                          High              1        0      23
Birth       MAL-ED           INDIA                          Low               0       13      23
Birth       MAL-ED           INDIA                          Low               1        0      23
Birth       MAL-ED           INDIA                          Medium            0        3      23
Birth       MAL-ED           INDIA                          Medium            1        0      23
Birth       MAL-ED           NEPAL                          High              0        3       9
Birth       MAL-ED           NEPAL                          High              1        0       9
Birth       MAL-ED           NEPAL                          Low               0        3       9
Birth       MAL-ED           NEPAL                          Low               1        0       9
Birth       MAL-ED           NEPAL                          Medium            0        3       9
Birth       MAL-ED           NEPAL                          Medium            1        0       9
Birth       MAL-ED           PERU                           High              0       84     190
Birth       MAL-ED           PERU                           High              1        0     190
Birth       MAL-ED           PERU                           Low               0       56     190
Birth       MAL-ED           PERU                           Low               1        0     190
Birth       MAL-ED           PERU                           Medium            0       50     190
Birth       MAL-ED           PERU                           Medium            1        0     190
Birth       MAL-ED           SOUTH AFRICA                   High              0       10      33
Birth       MAL-ED           SOUTH AFRICA                   High              1        0      33
Birth       MAL-ED           SOUTH AFRICA                   Low               0       14      33
Birth       MAL-ED           SOUTH AFRICA                   Low               1        0      33
Birth       MAL-ED           SOUTH AFRICA                   Medium            0        9      33
Birth       MAL-ED           SOUTH AFRICA                   Medium            1        0      33
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0       62      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       26      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0        8      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        0      96
Birth       NIH-Crypto       BANGLADESH                     High              0      262     707
Birth       NIH-Crypto       BANGLADESH                     High              1       15     707
Birth       NIH-Crypto       BANGLADESH                     Low               0      209     707
Birth       NIH-Crypto       BANGLADESH                     Low               1       20     707
Birth       NIH-Crypto       BANGLADESH                     Medium            0      189     707
Birth       NIH-Crypto       BANGLADESH                     Medium            1       12     707
Birth       PROBIT           BELARUS                        High              0     1921   13350
Birth       PROBIT           BELARUS                        High              1      126   13350
Birth       PROBIT           BELARUS                        Low               0     4952   13350
Birth       PROBIT           BELARUS                        Low               1      340   13350
Birth       PROBIT           BELARUS                        Medium            0     5599   13350
Birth       PROBIT           BELARUS                        Medium            1      412   13350
Birth       PROVIDE          BANGLADESH                     High              0      155     532
Birth       PROVIDE          BANGLADESH                     High              1        6     532
Birth       PROVIDE          BANGLADESH                     Low               0      183     532
Birth       PROVIDE          BANGLADESH                     Low               1        2     532
Birth       PROVIDE          BANGLADESH                     Medium            0      181     532
Birth       PROVIDE          BANGLADESH                     Medium            1        5     532
Birth       SAS-CompFeed     INDIA                          High              0      265    1101
Birth       SAS-CompFeed     INDIA                          High              1        5    1101
Birth       SAS-CompFeed     INDIA                          Low               0      461    1101
Birth       SAS-CompFeed     INDIA                          Low               1       15    1101
Birth       SAS-CompFeed     INDIA                          Medium            0      346    1101
Birth       SAS-CompFeed     INDIA                          Medium            1        9    1101
Birth       ZVITAMBO         ZIMBABWE                       High              0      868   12573
Birth       ZVITAMBO         ZIMBABWE                       High              1       46   12573
Birth       ZVITAMBO         ZIMBABWE                       Low               0     1974   12573
Birth       ZVITAMBO         ZIMBABWE                       Low               1      117   12573
Birth       ZVITAMBO         ZIMBABWE                       Medium            0     8967   12573
Birth       ZVITAMBO         ZIMBABWE                       Medium            1      601   12573
6 months    COHORTS          GUATEMALA                      High              0      163     905
6 months    COHORTS          GUATEMALA                      High              1        2     905
6 months    COHORTS          GUATEMALA                      Low               0      405     905
6 months    COHORTS          GUATEMALA                      Low               1        1     905
6 months    COHORTS          GUATEMALA                      Medium            0      332     905
6 months    COHORTS          GUATEMALA                      Medium            1        2     905
6 months    COHORTS          INDIA                          High              0      530    1385
6 months    COHORTS          INDIA                          High              1       14    1385
6 months    COHORTS          INDIA                          Low               0      435    1385
6 months    COHORTS          INDIA                          Low               1       15    1385
6 months    COHORTS          INDIA                          Medium            0      378    1385
6 months    COHORTS          INDIA                          Medium            1       13    1385
6 months    COHORTS          PHILIPPINES                    High              0      882    2562
6 months    COHORTS          PHILIPPINES                    High              1       10    2562
6 months    COHORTS          PHILIPPINES                    Low               0      737    2562
6 months    COHORTS          PHILIPPINES                    Low               1        7    2562
6 months    COHORTS          PHILIPPINES                    Medium            0      910    2562
6 months    COHORTS          PHILIPPINES                    Medium            1       16    2562
6 months    GMS-Nepal        NEPAL                          High              0      135     563
6 months    GMS-Nepal        NEPAL                          High              1        2     563
6 months    GMS-Nepal        NEPAL                          Low               0      239     563
6 months    GMS-Nepal        NEPAL                          Low               1        4     563
6 months    GMS-Nepal        NEPAL                          Medium            0      182     563
6 months    GMS-Nepal        NEPAL                          Medium            1        1     563
6 months    JiVitA-3         BANGLADESH                     High              0     4219   16105
6 months    JiVitA-3         BANGLADESH                     High              1       52   16105
6 months    JiVitA-3         BANGLADESH                     Low               0     6197   16105
6 months    JiVitA-3         BANGLADESH                     Low               1       94   16105
6 months    JiVitA-3         BANGLADESH                     Medium            0     5470   16105
6 months    JiVitA-3         BANGLADESH                     Medium            1       73   16105
6 months    JiVitA-4         BANGLADESH                     High              0     1095    4690
6 months    JiVitA-4         BANGLADESH                     High              1        3    4690
6 months    JiVitA-4         BANGLADESH                     Low               0     1711    4690
6 months    JiVitA-4         BANGLADESH                     Low               1       15    4690
6 months    JiVitA-4         BANGLADESH                     Medium            0     1855    4690
6 months    JiVitA-4         BANGLADESH                     Medium            1       11    4690
6 months    LCNI-5           MALAWI                         High              0      251     812
6 months    LCNI-5           MALAWI                         High              1        0     812
6 months    LCNI-5           MALAWI                         Low               0      290     812
6 months    LCNI-5           MALAWI                         Low               1        0     812
6 months    LCNI-5           MALAWI                         Medium            0      271     812
6 months    LCNI-5           MALAWI                         Medium            1        0     812
6 months    MAL-ED           BANGLADESH                     High              0       50     132
6 months    MAL-ED           BANGLADESH                     High              1        0     132
6 months    MAL-ED           BANGLADESH                     Low               0       36     132
6 months    MAL-ED           BANGLADESH                     Low               1        0     132
6 months    MAL-ED           BANGLADESH                     Medium            0       44     132
6 months    MAL-ED           BANGLADESH                     Medium            1        2     132
6 months    MAL-ED           INDIA                          High              0       42     138
6 months    MAL-ED           INDIA                          High              1        1     138
6 months    MAL-ED           INDIA                          Low               0       53     138
6 months    MAL-ED           INDIA                          Low               1        1     138
6 months    MAL-ED           INDIA                          Medium            0       38     138
6 months    MAL-ED           INDIA                          Medium            1        3     138
6 months    MAL-ED           NEPAL                          High              0       40      95
6 months    MAL-ED           NEPAL                          High              1        0      95
6 months    MAL-ED           NEPAL                          Low               0       27      95
6 months    MAL-ED           NEPAL                          Low               1        0      95
6 months    MAL-ED           NEPAL                          Medium            0       28      95
6 months    MAL-ED           NEPAL                          Medium            1        0      95
6 months    MAL-ED           PERU                           High              0      107     224
6 months    MAL-ED           PERU                           High              1        0     224
6 months    MAL-ED           PERU                           Low               0       60     224
6 months    MAL-ED           PERU                           Low               1        0     224
6 months    MAL-ED           PERU                           Medium            0       57     224
6 months    MAL-ED           PERU                           Medium            1        0     224
6 months    MAL-ED           SOUTH AFRICA                   High              0       33      92
6 months    MAL-ED           SOUTH AFRICA                   High              1        0      92
6 months    MAL-ED           SOUTH AFRICA                   Low               0       34      92
6 months    MAL-ED           SOUTH AFRICA                   Low               1        1      92
6 months    MAL-ED           SOUTH AFRICA                   Medium            0       24      92
6 months    MAL-ED           SOUTH AFRICA                   Medium            1        0      92
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0      127     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       55     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0       19     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        0     201
6 months    NIH-Crypto       BANGLADESH                     High              0      279     715
6 months    NIH-Crypto       BANGLADESH                     High              1        0     715
6 months    NIH-Crypto       BANGLADESH                     Low               0      223     715
6 months    NIH-Crypto       BANGLADESH                     Low               1        0     715
6 months    NIH-Crypto       BANGLADESH                     Medium            0      213     715
6 months    NIH-Crypto       BANGLADESH                     Medium            1        0     715
6 months    PROBIT           BELARUS                        High              0     2511   15207
6 months    PROBIT           BELARUS                        High              1        1   15207
6 months    PROBIT           BELARUS                        Low               0     5951   15207
6 months    PROBIT           BELARUS                        Low               1        6   15207
6 months    PROBIT           BELARUS                        Medium            0     6736   15207
6 months    PROBIT           BELARUS                        Medium            1        2   15207
6 months    PROVIDE          BANGLADESH                     High              0      206     603
6 months    PROVIDE          BANGLADESH                     High              1        3     603
6 months    PROVIDE          BANGLADESH                     Low               0      206     603
6 months    PROVIDE          BANGLADESH                     Low               1        2     603
6 months    PROVIDE          BANGLADESH                     Medium            0      186     603
6 months    PROVIDE          BANGLADESH                     Medium            1        0     603
6 months    SAS-CompFeed     INDIA                          High              0      344    1331
6 months    SAS-CompFeed     INDIA                          High              1        5    1331
6 months    SAS-CompFeed     INDIA                          Low               0      523    1331
6 months    SAS-CompFeed     INDIA                          Low               1       25    1331
6 months    SAS-CompFeed     INDIA                          Medium            0      421    1331
6 months    SAS-CompFeed     INDIA                          Medium            1       13    1331
6 months    SAS-FoodSuppl    INDIA                          High              0       96     380
6 months    SAS-FoodSuppl    INDIA                          High              1        5     380
6 months    SAS-FoodSuppl    INDIA                          Low               0      127     380
6 months    SAS-FoodSuppl    INDIA                          Low               1        5     380
6 months    SAS-FoodSuppl    INDIA                          Medium            0      138     380
6 months    SAS-FoodSuppl    INDIA                          Medium            1        9     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      367    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        4    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0     1079    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        3    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      559    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        5    2017
6 months    ZVITAMBO         ZIMBABWE                       High              0      563    8266
6 months    ZVITAMBO         ZIMBABWE                       High              1        6    8266
6 months    ZVITAMBO         ZIMBABWE                       Low               0     1409    8266
6 months    ZVITAMBO         ZIMBABWE                       Low               1       24    8266
6 months    ZVITAMBO         ZIMBABWE                       Medium            0     6218    8266
6 months    ZVITAMBO         ZIMBABWE                       Medium            1       46    8266
24 months   COHORTS          GUATEMALA                      High              0      178    1002
24 months   COHORTS          GUATEMALA                      High              1        0    1002
24 months   COHORTS          GUATEMALA                      Low               0      464    1002
24 months   COHORTS          GUATEMALA                      Low               1        1    1002
24 months   COHORTS          GUATEMALA                      Medium            0      356    1002
24 months   COHORTS          GUATEMALA                      Medium            1        3    1002
24 months   COHORTS          INDIA                          High              0      534    1370
24 months   COHORTS          INDIA                          High              1        2    1370
24 months   COHORTS          INDIA                          Low               0      442    1370
24 months   COHORTS          INDIA                          Low               1        6    1370
24 months   COHORTS          INDIA                          Medium            0      383    1370
24 months   COHORTS          INDIA                          Medium            1        3    1370
24 months   COHORTS          PHILIPPINES                    High              0      796    2319
24 months   COHORTS          PHILIPPINES                    High              1        2    2319
24 months   COHORTS          PHILIPPINES                    Low               0      686    2319
24 months   COHORTS          PHILIPPINES                    Low               1        7    2319
24 months   COHORTS          PHILIPPINES                    Medium            0      812    2319
24 months   COHORTS          PHILIPPINES                    Medium            1       16    2319
24 months   GMS-Nepal        NEPAL                          High              0      110     486
24 months   GMS-Nepal        NEPAL                          High              1        3     486
24 months   GMS-Nepal        NEPAL                          Low               0      212     486
24 months   GMS-Nepal        NEPAL                          Low               1        6     486
24 months   GMS-Nepal        NEPAL                          Medium            0      149     486
24 months   GMS-Nepal        NEPAL                          Medium            1        6     486
24 months   JiVitA-3         BANGLADESH                     High              0     1974    8264
24 months   JiVitA-3         BANGLADESH                     High              1       81    8264
24 months   JiVitA-3         BANGLADESH                     Low               0     3245    8264
24 months   JiVitA-3         BANGLADESH                     Low               1      126    8264
24 months   JiVitA-3         BANGLADESH                     Medium            0     2727    8264
24 months   JiVitA-3         BANGLADESH                     Medium            1      111    8264
24 months   JiVitA-4         BANGLADESH                     High              0     1064    4602
24 months   JiVitA-4         BANGLADESH                     High              1       28    4602
24 months   JiVitA-4         BANGLADESH                     Low               0     1654    4602
24 months   JiVitA-4         BANGLADESH                     Low               1       40    4602
24 months   JiVitA-4         BANGLADESH                     Medium            0     1758    4602
24 months   JiVitA-4         BANGLADESH                     Medium            1       58    4602
24 months   LCNI-5           MALAWI                         High              0      169     555
24 months   LCNI-5           MALAWI                         High              1        1     555
24 months   LCNI-5           MALAWI                         Low               0      194     555
24 months   LCNI-5           MALAWI                         Low               1        0     555
24 months   LCNI-5           MALAWI                         Medium            0      191     555
24 months   LCNI-5           MALAWI                         Medium            1        0     555
24 months   MAL-ED           BANGLADESH                     High              0       40     117
24 months   MAL-ED           BANGLADESH                     High              1        0     117
24 months   MAL-ED           BANGLADESH                     Low               0       35     117
24 months   MAL-ED           BANGLADESH                     Low               1        0     117
24 months   MAL-ED           BANGLADESH                     Medium            0       42     117
24 months   MAL-ED           BANGLADESH                     Medium            1        0     117
24 months   MAL-ED           INDIA                          High              0       42     132
24 months   MAL-ED           INDIA                          High              1        0     132
24 months   MAL-ED           INDIA                          Low               0       51     132
24 months   MAL-ED           INDIA                          Low               1        0     132
24 months   MAL-ED           INDIA                          Medium            0       39     132
24 months   MAL-ED           INDIA                          Medium            1        0     132
24 months   MAL-ED           NEPAL                          High              0       38      91
24 months   MAL-ED           NEPAL                          High              1        0      91
24 months   MAL-ED           NEPAL                          Low               0       27      91
24 months   MAL-ED           NEPAL                          Low               1        0      91
24 months   MAL-ED           NEPAL                          Medium            0       26      91
24 months   MAL-ED           NEPAL                          Medium            1        0      91
24 months   MAL-ED           PERU                           High              0       76     164
24 months   MAL-ED           PERU                           High              1        1     164
24 months   MAL-ED           PERU                           Low               0       44     164
24 months   MAL-ED           PERU                           Low               1        0     164
24 months   MAL-ED           PERU                           Medium            0       42     164
24 months   MAL-ED           PERU                           Medium            1        1     164
24 months   MAL-ED           SOUTH AFRICA                   High              0       34      91
24 months   MAL-ED           SOUTH AFRICA                   High              1        0      91
24 months   MAL-ED           SOUTH AFRICA                   Low               0       34      91
24 months   MAL-ED           SOUTH AFRICA                   Low               1        0      91
24 months   MAL-ED           SOUTH AFRICA                   Medium            0       23      91
24 months   MAL-ED           SOUTH AFRICA                   Medium            1        0      91
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0      114     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       47     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        0     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0       16     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        0     177
24 months   NIH-Crypto       BANGLADESH                     High              0      209     514
24 months   NIH-Crypto       BANGLADESH                     High              1        2     514
24 months   NIH-Crypto       BANGLADESH                     Low               0      142     514
24 months   NIH-Crypto       BANGLADESH                     Low               1        2     514
24 months   NIH-Crypto       BANGLADESH                     Medium            0      159     514
24 months   NIH-Crypto       BANGLADESH                     Medium            1        0     514
24 months   PROBIT           BELARUS                        High              0      620    3851
24 months   PROBIT           BELARUS                        High              1        0    3851
24 months   PROBIT           BELARUS                        Low               0     1483    3851
24 months   PROBIT           BELARUS                        Low               1        5    3851
24 months   PROBIT           BELARUS                        Medium            0     1741    3851
24 months   PROBIT           BELARUS                        Medium            1        2    3851
24 months   PROVIDE          BANGLADESH                     High              0      199     579
24 months   PROVIDE          BANGLADESH                     High              1        3     579
24 months   PROVIDE          BANGLADESH                     Low               0      192     579
24 months   PROVIDE          BANGLADESH                     Low               1        6     579
24 months   PROVIDE          BANGLADESH                     Medium            0      179     579
24 months   PROVIDE          BANGLADESH                     Medium            1        0     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        0       6
24 months   ZVITAMBO         ZIMBABWE                       High              0       13     410
24 months   ZVITAMBO         ZIMBABWE                       High              1        0     410
24 months   ZVITAMBO         ZIMBABWE                       Low               0       92     410
24 months   ZVITAMBO         ZIMBABWE                       Low               1       11     410
24 months   ZVITAMBO         ZIMBABWE                       Medium            0      275     410
24 months   ZVITAMBO         ZIMBABWE                       Medium            1       19     410


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/9d9e57b7-6170-4fa2-b81a-413f8e06c788/1500e1e5-6fe2-485a-83a6-88cd594bd61d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9d9e57b7-6170-4fa2-b81a-413f8e06c788/1500e1e5-6fe2-485a-83a6-88cd594bd61d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9d9e57b7-6170-4fa2-b81a-413f8e06c788/1500e1e5-6fe2-485a-83a6-88cd594bd61d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9d9e57b7-6170-4fa2-b81a-413f8e06c788/1500e1e5-6fe2-485a-83a6-88cd594bd61d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS         GUATEMALA     High                 NA                0.0893733   0.0433017   0.1354449
Birth       COHORTS         GUATEMALA     Low                  NA                0.0791725   0.0497125   0.1086326
Birth       COHORTS         GUATEMALA     Medium               NA                0.0676203   0.0372992   0.0979414
Birth       COHORTS         INDIA         High                 NA                0.0512821   0.0320749   0.0704892
Birth       COHORTS         INDIA         Low                  NA                0.0169082   0.0044842   0.0293322
Birth       COHORTS         INDIA         Medium               NA                0.0567568   0.0331717   0.0803418
Birth       COHORTS         PHILIPPINES   High                 NA                0.0478824   0.0345426   0.0612222
Birth       COHORTS         PHILIPPINES   Low                  NA                0.0260858   0.0148456   0.0373260
Birth       COHORTS         PHILIPPINES   Medium               NA                0.0437151   0.0306917   0.0567384
Birth       GMS-Nepal       NEPAL         High                 NA                0.0679012   0.0291309   0.1066716
Birth       GMS-Nepal       NEPAL         Low                  NA                0.0263158   0.0070643   0.0455673
Birth       GMS-Nepal       NEPAL         Medium               NA                0.0424528   0.0152914   0.0696143
Birth       JiVitA-3        BANGLADESH    High                 NA                0.0197374   0.0102324   0.0292425
Birth       JiVitA-3        BANGLADESH    Low                  NA                0.0175930   0.0139135   0.0212725
Birth       JiVitA-3        BANGLADESH    Medium               NA                0.0169023   0.0128243   0.0209803
Birth       JiVitA-4        BANGLADESH    High                 NA                0.0098039   0.0022932   0.0173147
Birth       JiVitA-4        BANGLADESH    Low                  NA                0.0153341   0.0072544   0.0234137
Birth       JiVitA-4        BANGLADESH    Medium               NA                0.0111111   0.0007252   0.0214971
Birth       NIH-Crypto      BANGLADESH    High                 NA                0.0531111   0.0264568   0.0797654
Birth       NIH-Crypto      BANGLADESH    Low                  NA                0.0879860   0.0513081   0.1246638
Birth       NIH-Crypto      BANGLADESH    Medium               NA                0.0608982   0.0280474   0.0937490
Birth       PROBIT          BELARUS       High                 NA                0.0642353   0.0316761   0.0967945
Birth       PROBIT          BELARUS       Low                  NA                0.0659888   0.0317609   0.1002167
Birth       PROBIT          BELARUS       Medium               NA                0.0669559   0.0340242   0.0998875
Birth       SAS-CompFeed    INDIA         High                 NA                0.0185185   0.0065073   0.0305297
Birth       SAS-CompFeed    INDIA         Low                  NA                0.0315126   0.0105174   0.0525078
Birth       SAS-CompFeed    INDIA         Medium               NA                0.0253521   0.0030904   0.0476138
Birth       ZVITAMBO        ZIMBABWE      High                 NA                0.0484837   0.0343058   0.0626615
Birth       ZVITAMBO        ZIMBABWE      Low                  NA                0.0590319   0.0488814   0.0691824
Birth       ZVITAMBO        ZIMBABWE      Medium               NA                0.0623597   0.0575450   0.0671745
6 months    COHORTS         INDIA         High                 NA                0.0266861   0.0126620   0.0407102
6 months    COHORTS         INDIA         Low                  NA                0.0314684   0.0155614   0.0473754
6 months    COHORTS         INDIA         Medium               NA                0.0331622   0.0149312   0.0513933
6 months    COHORTS         PHILIPPINES   High                 NA                0.0112108   0.0043001   0.0181214
6 months    COHORTS         PHILIPPINES   Low                  NA                0.0094086   0.0024703   0.0163470
6 months    COHORTS         PHILIPPINES   Medium               NA                0.0172786   0.0088841   0.0256732
6 months    JiVitA-3        BANGLADESH    High                 NA                0.0126673   0.0079577   0.0173769
6 months    JiVitA-3        BANGLADESH    Low                  NA                0.0147897   0.0113443   0.0182351
6 months    JiVitA-3        BANGLADESH    Medium               NA                0.0134897   0.0102556   0.0167239
6 months    SAS-CompFeed    INDIA         High                 NA                0.0143266   0.0000589   0.0285944
6 months    SAS-CompFeed    INDIA         Low                  NA                0.0456204   0.0318281   0.0594127
6 months    SAS-CompFeed    INDIA         Medium               NA                0.0299539   0.0168697   0.0430382
6 months    SAS-FoodSuppl   INDIA         High                 NA                0.0495050   0.0071447   0.0918652
6 months    SAS-FoodSuppl   INDIA         Low                  NA                0.0378788   0.0052691   0.0704884
6 months    SAS-FoodSuppl   INDIA         Medium               NA                0.0612245   0.0224179   0.1000310
6 months    ZVITAMBO        ZIMBABWE      High                 NA                0.0105448   0.0021515   0.0189382
6 months    ZVITAMBO        ZIMBABWE      Low                  NA                0.0167481   0.0101035   0.0233926
6 months    ZVITAMBO        ZIMBABWE      Medium               NA                0.0073436   0.0052291   0.0094580
24 months   JiVitA-3        BANGLADESH    High                 NA                0.0541913   0.0339178   0.0744649
24 months   JiVitA-3        BANGLADESH    Low                  NA                0.0306894   0.0247670   0.0366118
24 months   JiVitA-3        BANGLADESH    Medium               NA                0.0393706   0.0301469   0.0485943
24 months   JiVitA-4        BANGLADESH    High                 NA                0.0328095   0.0176968   0.0479223
24 months   JiVitA-4        BANGLADESH    Low                  NA                0.0209060   0.0127840   0.0290279
24 months   JiVitA-4        BANGLADESH    Medium               NA                0.0296933   0.0212317   0.0381548


### Parameter: E(Y)


agecat      studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS         GUATEMALA     NA                   NA                0.0752089   0.0559050   0.0945128
Birth       COHORTS         INDIA         NA                   NA                0.0418280   0.0309034   0.0527527
Birth       COHORTS         PHILIPPINES   NA                   NA                0.0406891   0.0332739   0.0481044
Birth       GMS-Nepal       NEPAL         NA                   NA                0.0421875   0.0266017   0.0577733
Birth       JiVitA-3        BANGLADESH    NA                   NA                0.0190016   0.0166360   0.0213671
Birth       JiVitA-4        BANGLADESH    NA                   NA                0.0124839   0.0071213   0.0178464
Birth       NIH-Crypto      BANGLADESH    NA                   NA                0.0664781   0.0481022   0.0848539
Birth       PROBIT          BELARUS       NA                   NA                0.0657678   0.0327531   0.0987825
Birth       SAS-CompFeed    INDIA         NA                   NA                0.0263397   0.0123159   0.0403635
Birth       ZVITAMBO        ZIMBABWE      NA                   NA                0.0607651   0.0565891   0.0649411
6 months    COHORTS         INDIA         NA                   NA                0.0303249   0.0212906   0.0393592
6 months    COHORTS         PHILIPPINES   NA                   NA                0.0128806   0.0085134   0.0172477
6 months    JiVitA-3        BANGLADESH    NA                   NA                0.0135983   0.0114298   0.0157667
6 months    SAS-CompFeed    INDIA         NA                   NA                0.0323065   0.0236135   0.0409996
6 months    SAS-FoodSuppl   INDIA         NA                   NA                0.0500000   0.0280580   0.0719420
6 months    ZVITAMBO        ZIMBABWE      NA                   NA                0.0091943   0.0071366   0.0112520
24 months   JiVitA-3        BANGLADESH    NA                   NA                0.0384802   0.0340611   0.0428992
24 months   JiVitA-4        BANGLADESH    NA                   NA                0.0273794   0.0221191   0.0326397


### Parameter: RR


agecat      studyid         country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS         GUATEMALA     High                 High              1.0000000   1.0000000   1.0000000
Birth       COHORTS         GUATEMALA     Low                  High              0.8858631   0.4705228   1.6678331
Birth       COHORTS         GUATEMALA     Medium               High              0.7566052   0.3826232   1.4961233
Birth       COHORTS         INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       COHORTS         INDIA         Low                  High              0.3297101   0.1445278   0.7521652
Birth       COHORTS         INDIA         Medium               High              1.1067568   0.6325520   1.9364582
Birth       COHORTS         PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
Birth       COHORTS         PHILIPPINES   Low                  High              0.5447894   0.3262624   0.9096833
Birth       COHORTS         PHILIPPINES   Medium               High              0.9129670   0.6074693   1.3721003
Birth       GMS-Nepal       NEPAL         High                 High              1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal       NEPAL         Low                  High              0.3875598   0.1532184   0.9803170
Birth       GMS-Nepal       NEPAL         Medium               High              0.6252144   0.2652196   1.4738465
Birth       JiVitA-3        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       JiVitA-3        BANGLADESH    Low                  High              0.8913517   0.5312572   1.4955238
Birth       JiVitA-3        BANGLADESH    Medium               High              0.8563577   0.4949972   1.4815204
Birth       JiVitA-4        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       JiVitA-4        BANGLADESH    Low                  High              1.5640745   0.6170812   3.9643549
Birth       JiVitA-4        BANGLADESH    Medium               High              1.1333333   0.3365230   3.8168098
Birth       NIH-Crypto      BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto      BANGLADESH    Low                  High              1.6566386   0.8627403   3.1810863
Birth       NIH-Crypto      BANGLADESH    Medium               High              1.1466183   0.5491202   2.3942547
Birth       PROBIT          BELARUS       High                 High              1.0000000   1.0000000   1.0000000
Birth       PROBIT          BELARUS       Low                  High              1.0272978   0.9746855   1.0827500
Birth       PROBIT          BELARUS       Medium               High              1.0423530   0.9857467   1.1022098
Birth       SAS-CompFeed    INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed    INDIA         Low                  High              1.7016807   0.6748438   4.2909442
Birth       SAS-CompFeed    INDIA         Medium               High              1.3690141   0.4004177   4.6806116
Birth       ZVITAMBO        ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO        ZIMBABWE      Low                  High              1.2175624   0.8677169   1.7084583
Birth       ZVITAMBO        ZIMBABWE      Medium               High              1.2862004   0.9511591   1.7392584
6 months    COHORTS         INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    COHORTS         INDIA         Low                  High              1.1792056   0.5686726   2.4452132
6 months    COHORTS         INDIA         Medium               High              1.2426783   0.5808418   2.6586402
6 months    COHORTS         PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
6 months    COHORTS         PHILIPPINES   Low                  High              0.8392473   0.3209713   2.1943895
6 months    COHORTS         PHILIPPINES   Medium               High              1.5412527   0.7030864   3.3786173
6 months    JiVitA-3        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    JiVitA-3        BANGLADESH    Low                  High              1.1675536   0.7535289   1.8090632
6 months    JiVitA-3        BANGLADESH    Medium               High              1.0649295   0.6945648   1.6327849
6 months    SAS-CompFeed    INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed    INDIA         Low                  High              3.1843066   1.1506464   8.8122711
6 months    SAS-CompFeed    INDIA         Medium               High              2.0907834   0.9108342   4.7993096
6 months    SAS-FoodSuppl   INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    SAS-FoodSuppl   INDIA         Low                  High              0.7651515   0.2272994   2.5757078
6 months    SAS-FoodSuppl   INDIA         Medium               High              1.2367347   0.4263944   3.5870847
6 months    ZVITAMBO        ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO        ZIMBABWE      Low                  High              1.5882763   0.6526500   3.8651983
6 months    ZVITAMBO        ZIMBABWE      Medium               High              0.6964134   0.2987164   1.6235851
24 months   JiVitA-3        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   JiVitA-3        BANGLADESH    Low                  High              0.5663158   0.3759437   0.8530894
24 months   JiVitA-3        BANGLADESH    Medium               High              0.7265115   0.4698050   1.1234851
24 months   JiVitA-4        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   JiVitA-4        BANGLADESH    Low                  High              0.6371918   0.3458930   1.1738120
24 months   JiVitA-4        BANGLADESH    Medium               High              0.9050186   0.5240145   1.5630459


### Parameter: PAR


agecat      studyid         country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS         GUATEMALA     High                 NA                -0.0141644   -0.0551935   0.0268647
Birth       COHORTS         INDIA         High                 NA                -0.0094540   -0.0235432   0.0046351
Birth       COHORTS         PHILIPPINES   High                 NA                -0.0071933   -0.0173081   0.0029215
Birth       GMS-Nepal       NEPAL         High                 NA                -0.0257137   -0.0570999   0.0056725
Birth       JiVitA-3        BANGLADESH    High                 NA                -0.0007359   -0.0099233   0.0084516
Birth       JiVitA-4        BANGLADESH    High                 NA                 0.0026799   -0.0051313   0.0104911
Birth       NIH-Crypto      BANGLADESH    High                 NA                 0.0133669   -0.0087963   0.0355302
Birth       PROBIT          BELARUS       High                 NA                 0.0015325   -0.0008860   0.0039510
Birth       SAS-CompFeed    INDIA         High                 NA                 0.0078212   -0.0097372   0.0253795
Birth       ZVITAMBO        ZIMBABWE      High                 NA                 0.0122815   -0.0014612   0.0260241
6 months    COHORTS         INDIA         High                 NA                 0.0036388   -0.0079529   0.0152305
6 months    COHORTS         PHILIPPINES   High                 NA                 0.0016698   -0.0041245   0.0074641
6 months    JiVitA-3        BANGLADESH    High                 NA                 0.0009310   -0.0031034   0.0049654
6 months    SAS-CompFeed    INDIA         High                 NA                 0.0179799    0.0090176   0.0269422
6 months    SAS-FoodSuppl   INDIA         High                 NA                 0.0004950   -0.0358640   0.0368541
6 months    ZVITAMBO        ZIMBABWE      High                 NA                -0.0013505   -0.0094118   0.0067107
24 months   JiVitA-3        BANGLADESH    High                 NA                -0.0157112   -0.0347188   0.0032964
24 months   JiVitA-4        BANGLADESH    High                 NA                -0.0054301   -0.0196699   0.0088096


### Parameter: PAF


agecat      studyid         country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS         GUATEMALA     High                 NA                -0.1883341   -0.8808441    0.2491999
Birth       COHORTS         INDIA         High                 NA                -0.2260209   -0.6075615    0.0649644
Birth       COHORTS         PHILIPPINES   High                 NA                -0.1767857   -0.4506680    0.0453883
Birth       GMS-Nepal       NEPAL         High                 NA                -0.6095107   -1.5083392   -0.0327650
Birth       JiVitA-3        BANGLADESH    High                 NA                -0.0387277   -0.6544459    0.3478450
Birth       JiVitA-4        BANGLADESH    High                 NA                 0.2146721   -0.6753540    0.6318748
Birth       NIH-Crypto      BANGLADESH    High                 NA                 0.2010730   -0.2074067    0.4713592
Birth       PROBIT          BELARUS       High                 NA                 0.0233015   -0.0133800    0.0586553
Birth       SAS-CompFeed    INDIA         High                 NA                 0.2969349   -0.5620029    0.6835470
Birth       ZVITAMBO        ZIMBABWE      High                 NA                 0.2021136   -0.0590715    0.3988860
6 months    COHORTS         INDIA         High                 NA                 0.1199939   -0.3562121    0.4289899
6 months    COHORTS         PHILIPPINES   High                 NA                 0.1296372   -0.4558528    0.4796648
6 months    JiVitA-3        BANGLADESH    High                 NA                 0.0684644   -0.2822126    0.3232335
6 months    SAS-CompFeed    INDIA         High                 NA                 0.5565403    0.0163673    0.8000712
6 months    SAS-FoodSuppl   INDIA         High                 NA                 0.0099010   -1.0636802    0.5249768
6 months    ZVITAMBO        ZIMBABWE      High                 NA                -0.1468874   -1.4620659    0.4657532
24 months   JiVitA-3        BANGLADESH    High                 NA                -0.4082927   -0.9911153    0.0039310
24 months   JiVitA-4        BANGLADESH    High                 NA                -0.1983296   -0.8525032    0.2248360
