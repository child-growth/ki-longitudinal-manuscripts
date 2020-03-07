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

agecat      studyid          country                        feducyrs    wasted   n_cell       n
----------  ---------------  -----------------------------  ---------  -------  -------  ------
Birth       COHORTS          GUATEMALA                      High             0       95     718
Birth       COHORTS          GUATEMALA                      High             1       41     718
Birth       COHORTS          GUATEMALA                      Low              0      232     718
Birth       COHORTS          GUATEMALA                      Low              1       79     718
Birth       COHORTS          GUATEMALA                      Medium           0      210     718
Birth       COHORTS          GUATEMALA                      Medium           1       61     718
Birth       COHORTS          INDIA                          High             0      418    1291
Birth       COHORTS          INDIA                          High             1       89    1291
Birth       COHORTS          INDIA                          Low              0      359    1291
Birth       COHORTS          INDIA                          Low              1       55    1291
Birth       COHORTS          INDIA                          Medium           0      293    1291
Birth       COHORTS          INDIA                          Medium           1       77    1291
Birth       COHORTS          PHILIPPINES                    High             0      818    2728
Birth       COHORTS          PHILIPPINES                    High             1      176    2728
Birth       COHORTS          PHILIPPINES                    Low              0      673    2728
Birth       COHORTS          PHILIPPINES                    Low              1      100    2728
Birth       COHORTS          PHILIPPINES                    Medium           0      826    2728
Birth       COHORTS          PHILIPPINES                    Medium           1      135    2728
Birth       GMS-Nepal        NEPAL                          High             0      118     640
Birth       GMS-Nepal        NEPAL                          High             1       44     640
Birth       GMS-Nepal        NEPAL                          Low              0      223     640
Birth       GMS-Nepal        NEPAL                          Low              1       43     640
Birth       GMS-Nepal        NEPAL                          Medium           0      167     640
Birth       GMS-Nepal        NEPAL                          Medium           1       45     640
Birth       JiVitA-3         BANGLADESH                     High             0     3606   17367
Birth       JiVitA-3         BANGLADESH                     High             1      443   17367
Birth       JiVitA-3         BANGLADESH                     Low              0     6633   17367
Birth       JiVitA-3         BANGLADESH                     Low              1      819   17367
Birth       JiVitA-3         BANGLADESH                     Medium           0     5234   17367
Birth       JiVitA-3         BANGLADESH                     Medium           1      632   17367
Birth       JiVitA-4         BANGLADESH                     High             0      457    2323
Birth       JiVitA-4         BANGLADESH                     High             1       53    2323
Birth       JiVitA-4         BANGLADESH                     Low              0      820    2323
Birth       JiVitA-4         BANGLADESH                     Low              1       93    2323
Birth       JiVitA-4         BANGLADESH                     Medium           0      814    2323
Birth       JiVitA-4         BANGLADESH                     Medium           1       86    2323
Birth       MAL-ED           BANGLADESH                     High             0       40     119
Birth       MAL-ED           BANGLADESH                     High             1        4     119
Birth       MAL-ED           BANGLADESH                     Low              0       25     119
Birth       MAL-ED           BANGLADESH                     Low              1        8     119
Birth       MAL-ED           BANGLADESH                     Medium           0       35     119
Birth       MAL-ED           BANGLADESH                     Medium           1        7     119
Birth       MAL-ED           INDIA                          High             0        6      23
Birth       MAL-ED           INDIA                          High             1        1      23
Birth       MAL-ED           INDIA                          Low              0       11      23
Birth       MAL-ED           INDIA                          Low              1        2      23
Birth       MAL-ED           INDIA                          Medium           0        3      23
Birth       MAL-ED           INDIA                          Medium           1        0      23
Birth       MAL-ED           NEPAL                          High             0        2       9
Birth       MAL-ED           NEPAL                          High             1        1       9
Birth       MAL-ED           NEPAL                          Low              0        3       9
Birth       MAL-ED           NEPAL                          Low              1        0       9
Birth       MAL-ED           NEPAL                          Medium           0        3       9
Birth       MAL-ED           NEPAL                          Medium           1        0       9
Birth       MAL-ED           PERU                           High             0       83     190
Birth       MAL-ED           PERU                           High             1        1     190
Birth       MAL-ED           PERU                           Low              0       55     190
Birth       MAL-ED           PERU                           Low              1        1     190
Birth       MAL-ED           PERU                           Medium           0       48     190
Birth       MAL-ED           PERU                           Medium           1        2     190
Birth       MAL-ED           SOUTH AFRICA                   High             0       10      33
Birth       MAL-ED           SOUTH AFRICA                   High             1        0      33
Birth       MAL-ED           SOUTH AFRICA                   Low              0       13      33
Birth       MAL-ED           SOUTH AFRICA                   Low              1        1      33
Birth       MAL-ED           SOUTH AFRICA                   Medium           0        9      33
Birth       MAL-ED           SOUTH AFRICA                   Medium           1        0      33
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             0       62      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              0       25      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              1        1      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           0        8      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           1        0      96
Birth       NIH-Crypto       BANGLADESH                     High             0      211     707
Birth       NIH-Crypto       BANGLADESH                     High             1       66     707
Birth       NIH-Crypto       BANGLADESH                     Low              0      168     707
Birth       NIH-Crypto       BANGLADESH                     Low              1       61     707
Birth       NIH-Crypto       BANGLADESH                     Medium           0      156     707
Birth       NIH-Crypto       BANGLADESH                     Medium           1       45     707
Birth       PROBIT           BELARUS                        High             0     1649   13350
Birth       PROBIT           BELARUS                        High             1      398   13350
Birth       PROBIT           BELARUS                        Low              0     4166   13350
Birth       PROBIT           BELARUS                        Low              1     1126   13350
Birth       PROBIT           BELARUS                        Medium           0     4743   13350
Birth       PROBIT           BELARUS                        Medium           1     1268   13350
Birth       PROVIDE          BANGLADESH                     High             0      131     532
Birth       PROVIDE          BANGLADESH                     High             1       30     532
Birth       PROVIDE          BANGLADESH                     Low              0      142     532
Birth       PROVIDE          BANGLADESH                     Low              1       43     532
Birth       PROVIDE          BANGLADESH                     Medium           0      142     532
Birth       PROVIDE          BANGLADESH                     Medium           1       44     532
Birth       SAS-CompFeed     INDIA                          High             0      244    1101
Birth       SAS-CompFeed     INDIA                          High             1       26    1101
Birth       SAS-CompFeed     INDIA                          Low              0      421    1101
Birth       SAS-CompFeed     INDIA                          Low              1       55    1101
Birth       SAS-CompFeed     INDIA                          Medium           0      318    1101
Birth       SAS-CompFeed     INDIA                          Medium           1       37    1101
Birth       ZVITAMBO         ZIMBABWE                       High             0      759   12573
Birth       ZVITAMBO         ZIMBABWE                       High             1      155   12573
Birth       ZVITAMBO         ZIMBABWE                       Low              0     1779   12573
Birth       ZVITAMBO         ZIMBABWE                       Low              1      312   12573
Birth       ZVITAMBO         ZIMBABWE                       Medium           0     8051   12573
Birth       ZVITAMBO         ZIMBABWE                       Medium           1     1517   12573
6 months    COHORTS          GUATEMALA                      High             0      160     905
6 months    COHORTS          GUATEMALA                      High             1        5     905
6 months    COHORTS          GUATEMALA                      Low              0      394     905
6 months    COHORTS          GUATEMALA                      Low              1       12     905
6 months    COHORTS          GUATEMALA                      Medium           0      322     905
6 months    COHORTS          GUATEMALA                      Medium           1       12     905
6 months    COHORTS          INDIA                          High             0      483    1385
6 months    COHORTS          INDIA                          High             1       61    1385
6 months    COHORTS          INDIA                          Low              0      399    1385
6 months    COHORTS          INDIA                          Low              1       51    1385
6 months    COHORTS          INDIA                          Medium           0      344    1385
6 months    COHORTS          INDIA                          Medium           1       47    1385
6 months    COHORTS          PHILIPPINES                    High             0      843    2562
6 months    COHORTS          PHILIPPINES                    High             1       49    2562
6 months    COHORTS          PHILIPPINES                    Low              0      699    2562
6 months    COHORTS          PHILIPPINES                    Low              1       45    2562
6 months    COHORTS          PHILIPPINES                    Medium           0      871    2562
6 months    COHORTS          PHILIPPINES                    Medium           1       55    2562
6 months    GMS-Nepal        NEPAL                          High             0      125     563
6 months    GMS-Nepal        NEPAL                          High             1       12     563
6 months    GMS-Nepal        NEPAL                          Low              0      216     563
6 months    GMS-Nepal        NEPAL                          Low              1       27     563
6 months    GMS-Nepal        NEPAL                          Medium           0      171     563
6 months    GMS-Nepal        NEPAL                          Medium           1       12     563
6 months    JiVitA-3         BANGLADESH                     High             0     3956   16105
6 months    JiVitA-3         BANGLADESH                     High             1      315   16105
6 months    JiVitA-3         BANGLADESH                     Low              0     5711   16105
6 months    JiVitA-3         BANGLADESH                     Low              1      580   16105
6 months    JiVitA-3         BANGLADESH                     Medium           0     5077   16105
6 months    JiVitA-3         BANGLADESH                     Medium           1      466   16105
6 months    JiVitA-4         BANGLADESH                     High             0     1055    4690
6 months    JiVitA-4         BANGLADESH                     High             1       43    4690
6 months    JiVitA-4         BANGLADESH                     Low              0     1611    4690
6 months    JiVitA-4         BANGLADESH                     Low              1      115    4690
6 months    JiVitA-4         BANGLADESH                     Medium           0     1758    4690
6 months    JiVitA-4         BANGLADESH                     Medium           1      108    4690
6 months    LCNI-5           MALAWI                         High             0      248     812
6 months    LCNI-5           MALAWI                         High             1        3     812
6 months    LCNI-5           MALAWI                         Low              0      285     812
6 months    LCNI-5           MALAWI                         Low              1        5     812
6 months    LCNI-5           MALAWI                         Medium           0      265     812
6 months    LCNI-5           MALAWI                         Medium           1        6     812
6 months    MAL-ED           BANGLADESH                     High             0       49     132
6 months    MAL-ED           BANGLADESH                     High             1        1     132
6 months    MAL-ED           BANGLADESH                     Low              0       35     132
6 months    MAL-ED           BANGLADESH                     Low              1        1     132
6 months    MAL-ED           BANGLADESH                     Medium           0       43     132
6 months    MAL-ED           BANGLADESH                     Medium           1        3     132
6 months    MAL-ED           INDIA                          High             0       42     138
6 months    MAL-ED           INDIA                          High             1        1     138
6 months    MAL-ED           INDIA                          Low              0       51     138
6 months    MAL-ED           INDIA                          Low              1        3     138
6 months    MAL-ED           INDIA                          Medium           0       34     138
6 months    MAL-ED           INDIA                          Medium           1        7     138
6 months    MAL-ED           NEPAL                          High             0       40      95
6 months    MAL-ED           NEPAL                          High             1        0      95
6 months    MAL-ED           NEPAL                          Low              0       27      95
6 months    MAL-ED           NEPAL                          Low              1        0      95
6 months    MAL-ED           NEPAL                          Medium           0       27      95
6 months    MAL-ED           NEPAL                          Medium           1        1      95
6 months    MAL-ED           PERU                           High             0      107     224
6 months    MAL-ED           PERU                           High             1        0     224
6 months    MAL-ED           PERU                           Low              0       60     224
6 months    MAL-ED           PERU                           Low              1        0     224
6 months    MAL-ED           PERU                           Medium           0       57     224
6 months    MAL-ED           PERU                           Medium           1        0     224
6 months    MAL-ED           SOUTH AFRICA                   High             0       33      92
6 months    MAL-ED           SOUTH AFRICA                   High             1        0      92
6 months    MAL-ED           SOUTH AFRICA                   Low              0       32      92
6 months    MAL-ED           SOUTH AFRICA                   Low              1        3      92
6 months    MAL-ED           SOUTH AFRICA                   Medium           0       24      92
6 months    MAL-ED           SOUTH AFRICA                   Medium           1        0      92
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             0      126     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             1        1     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              0       55     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              1        0     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           0       19     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           1        0     201
6 months    NIH-Crypto       BANGLADESH                     High             0      274     715
6 months    NIH-Crypto       BANGLADESH                     High             1        5     715
6 months    NIH-Crypto       BANGLADESH                     Low              0      213     715
6 months    NIH-Crypto       BANGLADESH                     Low              1       10     715
6 months    NIH-Crypto       BANGLADESH                     Medium           0      207     715
6 months    NIH-Crypto       BANGLADESH                     Medium           1        6     715
6 months    PROBIT           BELARUS                        High             0     2495   15207
6 months    PROBIT           BELARUS                        High             1       17   15207
6 months    PROBIT           BELARUS                        Low              0     5910   15207
6 months    PROBIT           BELARUS                        Low              1       47   15207
6 months    PROBIT           BELARUS                        Medium           0     6697   15207
6 months    PROBIT           BELARUS                        Medium           1       41   15207
6 months    PROVIDE          BANGLADESH                     High             0      201     603
6 months    PROVIDE          BANGLADESH                     High             1        8     603
6 months    PROVIDE          BANGLADESH                     Low              0      197     603
6 months    PROVIDE          BANGLADESH                     Low              1       11     603
6 months    PROVIDE          BANGLADESH                     Medium           0      180     603
6 months    PROVIDE          BANGLADESH                     Medium           1        6     603
6 months    SAS-CompFeed     INDIA                          High             0      311    1331
6 months    SAS-CompFeed     INDIA                          High             1       38    1331
6 months    SAS-CompFeed     INDIA                          Low              0      476    1331
6 months    SAS-CompFeed     INDIA                          Low              1       72    1331
6 months    SAS-CompFeed     INDIA                          Medium           0      379    1331
6 months    SAS-CompFeed     INDIA                          Medium           1       55    1331
6 months    SAS-FoodSuppl    INDIA                          High             0       82     380
6 months    SAS-FoodSuppl    INDIA                          High             1       19     380
6 months    SAS-FoodSuppl    INDIA                          Low              0      115     380
6 months    SAS-FoodSuppl    INDIA                          Low              1       17     380
6 months    SAS-FoodSuppl    INDIA                          Medium           0      114     380
6 months    SAS-FoodSuppl    INDIA                          Medium           1       33     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0      358    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1       13    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0     1038    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       44    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0      534    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1       30    2017
6 months    ZVITAMBO         ZIMBABWE                       High             0      552    8266
6 months    ZVITAMBO         ZIMBABWE                       High             1       17    8266
6 months    ZVITAMBO         ZIMBABWE                       Low              0     1364    8266
6 months    ZVITAMBO         ZIMBABWE                       Low              1       69    8266
6 months    ZVITAMBO         ZIMBABWE                       Medium           0     6096    8266
6 months    ZVITAMBO         ZIMBABWE                       Medium           1      168    8266
24 months   COHORTS          GUATEMALA                      High             0      170    1002
24 months   COHORTS          GUATEMALA                      High             1        8    1002
24 months   COHORTS          GUATEMALA                      Low              0      446    1002
24 months   COHORTS          GUATEMALA                      Low              1       19    1002
24 months   COHORTS          GUATEMALA                      Medium           0      341    1002
24 months   COHORTS          GUATEMALA                      Medium           1       18    1002
24 months   COHORTS          INDIA                          High             0      504    1370
24 months   COHORTS          INDIA                          High             1       32    1370
24 months   COHORTS          INDIA                          Low              0      393    1370
24 months   COHORTS          INDIA                          Low              1       55    1370
24 months   COHORTS          INDIA                          Medium           0      353    1370
24 months   COHORTS          INDIA                          Medium           1       33    1370
24 months   COHORTS          PHILIPPINES                    High             0      769    2319
24 months   COHORTS          PHILIPPINES                    High             1       29    2319
24 months   COHORTS          PHILIPPINES                    Low              0      642    2319
24 months   COHORTS          PHILIPPINES                    Low              1       51    2319
24 months   COHORTS          PHILIPPINES                    Medium           0      753    2319
24 months   COHORTS          PHILIPPINES                    Medium           1       75    2319
24 months   GMS-Nepal        NEPAL                          High             0       86     486
24 months   GMS-Nepal        NEPAL                          High             1       27     486
24 months   GMS-Nepal        NEPAL                          Low              0      182     486
24 months   GMS-Nepal        NEPAL                          Low              1       36     486
24 months   GMS-Nepal        NEPAL                          Medium           0      128     486
24 months   GMS-Nepal        NEPAL                          Medium           1       27     486
24 months   JiVitA-3         BANGLADESH                     High             0     1642    8264
24 months   JiVitA-3         BANGLADESH                     High             1      413    8264
24 months   JiVitA-3         BANGLADESH                     Low              0     2606    8264
24 months   JiVitA-3         BANGLADESH                     Low              1      765    8264
24 months   JiVitA-3         BANGLADESH                     Medium           0     2208    8264
24 months   JiVitA-3         BANGLADESH                     Medium           1      630    8264
24 months   JiVitA-4         BANGLADESH                     High             0      884    4602
24 months   JiVitA-4         BANGLADESH                     High             1      208    4602
24 months   JiVitA-4         BANGLADESH                     Low              0     1372    4602
24 months   JiVitA-4         BANGLADESH                     Low              1      322    4602
24 months   JiVitA-4         BANGLADESH                     Medium           0     1454    4602
24 months   JiVitA-4         BANGLADESH                     Medium           1      362    4602
24 months   LCNI-5           MALAWI                         High             0      168     555
24 months   LCNI-5           MALAWI                         High             1        2     555
24 months   LCNI-5           MALAWI                         Low              0      189     555
24 months   LCNI-5           MALAWI                         Low              1        5     555
24 months   LCNI-5           MALAWI                         Medium           0      188     555
24 months   LCNI-5           MALAWI                         Medium           1        3     555
24 months   MAL-ED           BANGLADESH                     High             0       37     117
24 months   MAL-ED           BANGLADESH                     High             1        3     117
24 months   MAL-ED           BANGLADESH                     Low              0       30     117
24 months   MAL-ED           BANGLADESH                     Low              1        5     117
24 months   MAL-ED           BANGLADESH                     Medium           0       35     117
24 months   MAL-ED           BANGLADESH                     Medium           1        7     117
24 months   MAL-ED           INDIA                          High             0       41     132
24 months   MAL-ED           INDIA                          High             1        1     132
24 months   MAL-ED           INDIA                          Low              0       47     132
24 months   MAL-ED           INDIA                          Low              1        4     132
24 months   MAL-ED           INDIA                          Medium           0       32     132
24 months   MAL-ED           INDIA                          Medium           1        7     132
24 months   MAL-ED           NEPAL                          High             0       37      91
24 months   MAL-ED           NEPAL                          High             1        1      91
24 months   MAL-ED           NEPAL                          Low              0       26      91
24 months   MAL-ED           NEPAL                          Low              1        1      91
24 months   MAL-ED           NEPAL                          Medium           0       24      91
24 months   MAL-ED           NEPAL                          Medium           1        2      91
24 months   MAL-ED           PERU                           High             0       75     164
24 months   MAL-ED           PERU                           High             1        2     164
24 months   MAL-ED           PERU                           Low              0       44     164
24 months   MAL-ED           PERU                           Low              1        0     164
24 months   MAL-ED           PERU                           Medium           0       42     164
24 months   MAL-ED           PERU                           Medium           1        1     164
24 months   MAL-ED           SOUTH AFRICA                   High             0       34      91
24 months   MAL-ED           SOUTH AFRICA                   High             1        0      91
24 months   MAL-ED           SOUTH AFRICA                   Low              0       33      91
24 months   MAL-ED           SOUTH AFRICA                   Low              1        1      91
24 months   MAL-ED           SOUTH AFRICA                   Medium           0       23      91
24 months   MAL-ED           SOUTH AFRICA                   Medium           1        0      91
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             0      113     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             1        1     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              0       45     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              1        2     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           0       16     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           1        0     177
24 months   NIH-Crypto       BANGLADESH                     High             0      195     514
24 months   NIH-Crypto       BANGLADESH                     High             1       16     514
24 months   NIH-Crypto       BANGLADESH                     Low              0      127     514
24 months   NIH-Crypto       BANGLADESH                     Low              1       17     514
24 months   NIH-Crypto       BANGLADESH                     Medium           0      147     514
24 months   NIH-Crypto       BANGLADESH                     Medium           1       12     514
24 months   PROBIT           BELARUS                        High             0      619    3851
24 months   PROBIT           BELARUS                        High             1        1    3851
24 months   PROBIT           BELARUS                        Low              0     1473    3851
24 months   PROBIT           BELARUS                        Low              1       15    3851
24 months   PROBIT           BELARUS                        Medium           0     1728    3851
24 months   PROBIT           BELARUS                        Medium           1       15    3851
24 months   PROVIDE          BANGLADESH                     High             0      187     579
24 months   PROVIDE          BANGLADESH                     High             1       15     579
24 months   PROVIDE          BANGLADESH                     Low              0      171     579
24 months   PROVIDE          BANGLADESH                     Low              1       27     579
24 months   PROVIDE          BANGLADESH                     Medium           0      159     579
24 months   PROVIDE          BANGLADESH                     Medium           1       20     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1        0       6
24 months   ZVITAMBO         ZIMBABWE                       High             0       11     410
24 months   ZVITAMBO         ZIMBABWE                       High             1        2     410
24 months   ZVITAMBO         ZIMBABWE                       Low              0       76     410
24 months   ZVITAMBO         ZIMBABWE                       Low              1       27     410
24 months   ZVITAMBO         ZIMBABWE                       Medium           0      246     410
24 months   ZVITAMBO         ZIMBABWE                       Medium           1       48     410


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
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE

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




# Results Detail

## Results Plots
![](/tmp/d433eea5-03cc-4b1e-93cb-80385c3c8c22/05c97f85-498b-44bf-9f70-52b3655d3267/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d433eea5-03cc-4b1e-93cb-80385c3c8c22/05c97f85-498b-44bf-9f70-52b3655d3267/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d433eea5-03cc-4b1e-93cb-80385c3c8c22/05c97f85-498b-44bf-9f70-52b3655d3267/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d433eea5-03cc-4b1e-93cb-80385c3c8c22/05c97f85-498b-44bf-9f70-52b3655d3267/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      High                 NA                0.3196123   0.2428970   0.3963276
Birth       COHORTS          GUATEMALA                      Low                  NA                0.2672349   0.2183097   0.3161600
Birth       COHORTS          GUATEMALA                      Medium               NA                0.2177582   0.1678192   0.2676972
Birth       COHORTS          INDIA                          High                 NA                0.1676480   0.1331729   0.2021231
Birth       COHORTS          INDIA                          Low                  NA                0.1493390   0.1120339   0.1866442
Birth       COHORTS          INDIA                          Medium               NA                0.2143211   0.1651628   0.2634794
Birth       COHORTS          PHILIPPINES                    High                 NA                0.1513722   0.1373207   0.1654238
Birth       COHORTS          PHILIPPINES                    Low                  NA                0.1595619   0.1452102   0.1739135
Birth       COHORTS          PHILIPPINES                    Medium               NA                0.1468301   0.1329802   0.1606801
Birth       GMS-Nepal        NEPAL                          High                 NA                0.2763326   0.2004008   0.3522643
Birth       GMS-Nepal        NEPAL                          Low                  NA                0.1698013   0.1209644   0.2186382
Birth       GMS-Nepal        NEPAL                          Medium               NA                0.2158343   0.1509296   0.2807389
Birth       JiVitA-3         BANGLADESH                     High                 NA                0.1101634   0.1028980   0.1174288
Birth       JiVitA-3         BANGLADESH                     Low                  NA                0.1093735   0.1038121   0.1149349
Birth       JiVitA-3         BANGLADESH                     Medium               NA                0.1080974   0.1022622   0.1139326
Birth       JiVitA-4         BANGLADESH                     High                 NA                0.0908167   0.0759767   0.1056568
Birth       JiVitA-4         BANGLADESH                     Low                  NA                0.1024668   0.0866976   0.1182361
Birth       JiVitA-4         BANGLADESH                     Medium               NA                0.1022195   0.0833345   0.1211045
Birth       NIH-Crypto       BANGLADESH                     High                 NA                0.2316137   0.1833467   0.2798808
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                0.2855412   0.2286548   0.3424276
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                0.2138622   0.1582923   0.2694321
Birth       PROBIT           BELARUS                        High                 NA                0.2079413   0.1424253   0.2734573
Birth       PROBIT           BELARUS                        Low                  NA                0.2098272   0.1438282   0.2758261
Birth       PROBIT           BELARUS                        Medium               NA                0.2101920   0.1445795   0.2758045
Birth       PROVIDE          BANGLADESH                     High                 NA                0.1957813   0.1346056   0.2569570
Birth       PROVIDE          BANGLADESH                     Low                  NA                0.2292621   0.1671583   0.2913658
Birth       PROVIDE          BANGLADESH                     Medium               NA                0.2343117   0.1722230   0.2964005
Birth       SAS-CompFeed     INDIA                          High                 NA                0.0963579   0.0623878   0.1303280
Birth       SAS-CompFeed     INDIA                          Low                  NA                0.1156361   0.0771350   0.1541373
Birth       SAS-CompFeed     INDIA                          Medium               NA                0.1041317   0.0588957   0.1493676
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                0.1584003   0.1509289   0.1658718
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                0.1610039   0.1534671   0.1685408
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                0.1573386   0.1508567   0.1638205
6 months    COHORTS          GUATEMALA                      High                 NA                0.0303030   0.0041328   0.0564732
6 months    COHORTS          GUATEMALA                      Low                  NA                0.0295567   0.0130736   0.0460397
6 months    COHORTS          GUATEMALA                      Medium               NA                0.0359281   0.0159577   0.0558986
6 months    COHORTS          INDIA                          High                 NA                0.1139306   0.0878581   0.1400031
6 months    COHORTS          INDIA                          Low                  NA                0.1071280   0.0779362   0.1363198
6 months    COHORTS          INDIA                          Medium               NA                0.1213583   0.0884293   0.1542874
6 months    COHORTS          PHILIPPINES                    High                 NA                0.0557533   0.0404062   0.0711004
6 months    COHORTS          PHILIPPINES                    Low                  NA                0.0583627   0.0417109   0.0750146
6 months    COHORTS          PHILIPPINES                    Medium               NA                0.0594346   0.0440380   0.0748312
6 months    GMS-Nepal        NEPAL                          High                 NA                0.0850891   0.0381609   0.1320173
6 months    GMS-Nepal        NEPAL                          Low                  NA                0.1127436   0.0723965   0.1530908
6 months    GMS-Nepal        NEPAL                          Medium               NA                0.0664503   0.0295179   0.1033827
6 months    JiVitA-3         BANGLADESH                     High                 NA                0.0828268   0.0645466   0.1011071
6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.0815954   0.0718778   0.0913130
6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.0838767   0.0747445   0.0930088
6 months    JiVitA-4         BANGLADESH                     High                 NA                0.0602202   0.0251381   0.0953024
6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.0601425   0.0474415   0.0728434
6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.0608591   0.0433861   0.0783320
6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.0179211   0.0023434   0.0334989
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.0448430   0.0176609   0.0720252
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.0281690   0.0059337   0.0504043
6 months    PROBIT           BELARUS                        High                 NA                0.0095492   0.0050989   0.0139996
6 months    PROBIT           BELARUS                        Low                  NA                0.0070692   0.0028175   0.0113209
6 months    PROBIT           BELARUS                        Medium               NA                0.0058610   0.0037933   0.0079288
6 months    PROVIDE          BANGLADESH                     High                 NA                0.0382775   0.0122440   0.0643110
6 months    PROVIDE          BANGLADESH                     Low                  NA                0.0528846   0.0224447   0.0833245
6 months    PROVIDE          BANGLADESH                     Medium               NA                0.0322581   0.0068454   0.0576708
6 months    SAS-CompFeed     INDIA                          High                 NA                0.1070557   0.0802093   0.1339021
6 months    SAS-CompFeed     INDIA                          Low                  NA                0.1300473   0.0971357   0.1629588
6 months    SAS-CompFeed     INDIA                          Medium               NA                0.1282732   0.0935284   0.1630181
6 months    SAS-FoodSuppl    INDIA                          High                 NA                0.1889257   0.1114160   0.2664354
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                0.1278102   0.0701929   0.1854275
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                0.2267364   0.1583682   0.2951045
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0341496   0.0156743   0.0526249
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0405865   0.0287684   0.0524046
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0539015   0.0348055   0.0729975
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.0293230   0.0155821   0.0430639
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.0478735   0.0367350   0.0590119
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.0268519   0.0228466   0.0308571
24 months   COHORTS          GUATEMALA                      High                 NA                0.0449438   0.0144926   0.0753950
24 months   COHORTS          GUATEMALA                      Low                  NA                0.0408602   0.0228578   0.0588626
24 months   COHORTS          GUATEMALA                      Medium               NA                0.0501393   0.0275534   0.0727251
24 months   COHORTS          INDIA                          High                 NA                0.0703011   0.0464070   0.0941952
24 months   COHORTS          INDIA                          Low                  NA                0.0988651   0.0716522   0.1260780
24 months   COHORTS          INDIA                          Medium               NA                0.0981860   0.0614108   0.1349612
24 months   COHORTS          PHILIPPINES                    High                 NA                0.0368102   0.0237557   0.0498647
24 months   COHORTS          PHILIPPINES                    Low                  NA                0.0719338   0.0526838   0.0911838
24 months   COHORTS          PHILIPPINES                    Medium               NA                0.0904085   0.0707915   0.1100255
24 months   GMS-Nepal        NEPAL                          High                 NA                0.2513153   0.1736319   0.3289986
24 months   GMS-Nepal        NEPAL                          Low                  NA                0.1650528   0.1154221   0.2146836
24 months   GMS-Nepal        NEPAL                          Medium               NA                0.1787062   0.1181573   0.2392551
24 months   JiVitA-3         BANGLADESH                     High                 NA                0.2222343   0.1837941   0.2606746
24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.2168838   0.1982274   0.2355403
24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.2176769   0.1971451   0.2382087
24 months   JiVitA-4         BANGLADESH                     High                 NA                0.2297575   0.1875493   0.2719657
24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.1771248   0.1521040   0.2021455
24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.2020093   0.1761242   0.2278944
24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.0767940   0.0404160   0.1131719
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1113623   0.0599171   0.1628075
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.0783331   0.0361038   0.1205624
24 months   PROVIDE          BANGLADESH                     High                 NA                0.0748761   0.0386304   0.1111218
24 months   PROVIDE          BANGLADESH                     Low                  NA                0.1311506   0.0830456   0.1792556
24 months   PROVIDE          BANGLADESH                     Medium               NA                0.1068980   0.0604143   0.1533817


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.2520891   0.2203065   0.2838718
Birth       COHORTS          INDIA                          NA                   NA                0.1711851   0.1506302   0.1917400
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.1506598   0.1372339   0.1640858
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.2062500   0.1748784   0.2376216
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1090574   0.1037994   0.1143154
Birth       JiVitA-4         BANGLADESH                     NA                   NA                0.0998709   0.0841992   0.1155426
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.2432815   0.2116319   0.2749310
Birth       PROBIT           BELARUS                        NA                   NA                0.2091386   0.1437485   0.2745287
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.1071753   0.0763487   0.1380019
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1577985   0.1514260   0.1641709
6 months    COHORTS          GUATEMALA                      NA                   NA                0.0320442   0.0205636   0.0435248
6 months    COHORTS          INDIA                          NA                   NA                0.1148014   0.0980067   0.1315962
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0581577   0.0490934   0.0672220
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0905861   0.0668565   0.1143158
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0845079   0.0795688   0.0894470
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0567164   0.0477001   0.0657328
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0293706   0.0169860   0.0417552
6 months    PROBIT           BELARUS                        NA                   NA                0.0069047   0.0051835   0.0086259
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0414594   0.0255348   0.0573839
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.1239669   0.0988748   0.1490591
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1815789   0.1427684   0.2203895
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0431334   0.0342652   0.0520016
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0307283   0.0270076   0.0344489
24 months   COHORTS          GUATEMALA                      NA                   NA                0.0449102   0.0320802   0.0577401
24 months   COHORTS          INDIA                          NA                   NA                0.0875912   0.0726161   0.1025664
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0668392   0.0566723   0.0770060
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1851852   0.1506144   0.2197560
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2187803   0.2086815   0.2288790
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1938288   0.1801571   0.2075004
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0875486   0.0630908   0.1120065
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1070812   0.0818727   0.1322897


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
Birth       COHORTS          GUATEMALA                      Low                  High              0.8361218   0.6213172   1.1251898
Birth       COHORTS          GUATEMALA                      Medium               High              0.6813197   0.4911665   0.9450901
Birth       COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
Birth       COHORTS          INDIA                          Low                  High              0.8907892   0.6446861   1.2308400
Birth       COHORTS          INDIA                          Medium               High              1.2783995   0.9396087   1.7393465
Birth       COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES                    Low                  High              1.0541025   1.0062167   1.1042673
Birth       COHORTS          PHILIPPINES                    Medium               High              0.9699939   0.9269125   1.0150776
Birth       GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL                          Low                  High              0.6144818   0.4129812   0.9142979
Birth       GMS-Nepal        NEPAL                          Medium               High              0.7810671   0.5193962   1.1745674
Birth       JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     Low                  High              0.9928302   0.9425611   1.0457804
Birth       JiVitA-3         BANGLADESH                     Medium               High              0.9812461   0.9315420   1.0336023
Birth       JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       JiVitA-4         BANGLADESH                     Low                  High              1.1282811   1.0635352   1.1969687
Birth       JiVitA-4         BANGLADESH                     Medium               High              1.1255580   0.9903189   1.2792656
Birth       NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High              1.2328338   0.9288883   1.6362346
Birth       NIH-Crypto       BANGLADESH                     Medium               High              0.9233572   0.6667875   1.2786512
Birth       PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
Birth       PROBIT           BELARUS                        Low                  High              1.0090692   0.9858475   1.0328380
Birth       PROBIT           BELARUS                        Medium               High              1.0108235   0.9959265   1.0259435
Birth       PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     Low                  High              1.1710110   0.7748326   1.7697589
Birth       PROVIDE          BANGLADESH                     Medium               High              1.1968036   0.7942304   1.8034298
Birth       SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed     INDIA                          Low                  High              1.2000693   0.8660390   1.6629348
Birth       SAS-CompFeed     INDIA                          Medium               High              1.0806762   0.6239201   1.8718118
Birth       ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High              1.0164367   0.9800477   1.0541768
Birth       ZVITAMBO         ZIMBABWE                       Medium               High              0.9932972   0.9659790   1.0213879
6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6 months    COHORTS          GUATEMALA                      Low                  High              0.9753695   0.3489017   2.7266868
6 months    COHORTS          GUATEMALA                      Medium               High              1.1856287   0.4245356   3.3111839
6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    COHORTS          INDIA                          Low                  High              0.9402919   0.6595668   1.3404993
6 months    COHORTS          INDIA                          Medium               High              1.0651952   0.7474514   1.5180130
6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES                    Low                  High              1.0468032   0.7041685   1.5561574
6 months    COHORTS          PHILIPPINES                    Medium               High              1.0660278   0.7304543   1.5557650
6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL                          Low                  High              1.3250063   0.6864364   2.5576175
6 months    GMS-Nepal        NEPAL                          Medium               High              0.7809490   0.3568254   1.7091871
6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              0.9851321   0.7684417   1.2629263
6 months    JiVitA-3         BANGLADESH                     Medium               High              1.0126750   0.7935046   1.2923815
6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    JiVitA-4         BANGLADESH                     Low                  High              0.9987092   0.5395397   1.8486501
6 months    JiVitA-4         BANGLADESH                     Medium               High              1.0106083   0.5262200   1.9408787
6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              2.5022422   0.8671563   7.2204006
6 months    NIH-Crypto       BANGLADESH                     Medium               High              1.5718310   0.4858176   5.0855564
6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6 months    PROBIT           BELARUS                        Low                  High              0.7402916   0.3351396   1.6352339
6 months    PROBIT           BELARUS                        Medium               High              0.6137712   0.3502147   1.0756690
6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     Low                  High              1.3816106   0.5668016   3.3677531
6 months    PROVIDE          BANGLADESH                     Medium               High              0.8427419   0.2976437   2.3861209
6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed     INDIA                          Low                  High              1.2147626   0.8974935   1.6441881
6 months    SAS-CompFeed     INDIA                          Medium               High              1.1981912   1.0031646   1.4311333
6 months    SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High              0.6765103   0.3680532   1.2434782
6 months    SAS-FoodSuppl    INDIA                          Medium               High              1.2001349   0.7216826   1.9957857
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1884914   0.6428451   2.1972816
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.5783938   0.8266898   3.0136174
6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              1.6326246   0.9674933   2.7550197
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              0.9157270   0.5599942   1.4974369
24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA                      Low                  High              0.9091398   0.4051702   2.0399704
24 months   COHORTS          GUATEMALA                      Medium               High              1.1155989   0.4944904   2.5168554
24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
24 months   COHORTS          INDIA                          Low                  High              1.4063093   0.9085817   2.1766955
24 months   COHORTS          INDIA                          Medium               High              1.3966494   0.8433193   2.3130381
24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES                    Low                  High              1.9541810   1.2530967   3.0475089
24 months   COHORTS          PHILIPPINES                    Medium               High              2.4560719   1.6206073   3.7222399
24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL                          Low                  High              0.6567561   0.4269852   1.0101722
24 months   GMS-Nepal        NEPAL                          Medium               High              0.7110837   0.4494966   1.1249029
24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     Low                  High              0.9759240   0.8053523   1.1826224
24 months   JiVitA-3         BANGLADESH                     Medium               High              0.9794925   0.8045879   1.1924186
24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              0.7709205   0.6122249   0.9707517
24 months   JiVitA-4         BANGLADESH                     Medium               High              0.8792285   0.7021356   1.1009877
24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.4501434   0.7477559   2.8123026
24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.0200422   0.4976508   2.0907957
24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     Low                  High              1.7515696   0.9538643   3.2163862
24 months   PROVIDE          BANGLADESH                     Medium               High              1.4276653   0.7442540   2.7386191


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 NA                -0.0675232   -0.1358246    0.0007782
Birth       COHORTS          INDIA                          High                 NA                 0.0035371   -0.0244062    0.0314804
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.0007124   -0.0048291    0.0034043
Birth       GMS-Nepal        NEPAL                          High                 NA                -0.0700826   -0.1369751   -0.0031901
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.0011060   -0.0060517    0.0038398
Birth       JiVitA-4         BANGLADESH                     High                 NA                 0.0090541    0.0035966    0.0145117
Birth       NIH-Crypto       BANGLADESH                     High                 NA                 0.0116678   -0.0255047    0.0488402
Birth       PROBIT           BELARUS                        High                 NA                 0.0011973   -0.0017639    0.0041584
Birth       PROVIDE          BANGLADESH                     High                 NA                 0.0241435   -0.0284223    0.0767093
Birth       SAS-CompFeed     INDIA                          High                 NA                 0.0108174   -0.0179029    0.0395378
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.0006019   -0.0045213    0.0033175
6 months    COHORTS          GUATEMALA                      High                 NA                 0.0017412   -0.0220695    0.0255519
6 months    COHORTS          INDIA                          High                 NA                 0.0008708   -0.0196629    0.0214046
6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0024044   -0.0102283    0.0150370
6 months    GMS-Nepal        NEPAL                          High                 NA                 0.0054970   -0.0357044    0.0466985
6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0016811   -0.0157031    0.0190652
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0035038   -0.0365624    0.0295548
6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0114495   -0.0029263    0.0258253
6 months    PROBIT           BELARUS                        High                 NA                -0.0026445   -0.0072083    0.0019193
6 months    PROVIDE          BANGLADESH                     High                 NA                 0.0031819   -0.0183012    0.0246649
6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0169112   -0.0018697    0.0356921
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.0073468   -0.0735553    0.0588618
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0089838   -0.0081948    0.0261623
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0014053   -0.0118711    0.0146816
24 months   COHORTS          GUATEMALA                      High                 NA                -0.0000336   -0.0276458    0.0275785
24 months   COHORTS          INDIA                          High                 NA                 0.0172901   -0.0037674    0.0383477
24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0300290    0.0174721    0.0425858
24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0661301   -0.1324357    0.0001755
24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0034541   -0.0403325    0.0334243
24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0359287   -0.0754979    0.0036405
24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0107547   -0.0185788    0.0400882
24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0322051   -0.0000168    0.0644270


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 NA                -0.2678544   -0.5705064   -0.0235265
Birth       COHORTS          INDIA                          High                 NA                 0.0206625   -0.1569485    0.1710073
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.0047286   -0.0324304    0.0222299
Birth       GMS-Nepal        NEPAL                          High                 NA                -0.3397942   -0.7071780   -0.0514712
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.0101412   -0.0565209    0.0342026
Birth       JiVitA-4         BANGLADESH                     High                 NA                 0.0906582    0.0373139    0.1410466
Birth       NIH-Crypto       BANGLADESH                     High                 NA                 0.0479599   -0.1177629    0.1891121
Birth       PROBIT           BELARUS                        High                 NA                 0.0057247   -0.0086855    0.0199291
Birth       PROVIDE          BANGLADESH                     High                 NA                 0.1097808   -0.1636182    0.3189431
Birth       SAS-CompFeed     INDIA                          High                 NA                 0.1009320   -0.1995245    0.3261303
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.0038143   -0.0289633    0.0207201
6 months    COHORTS          GUATEMALA                      High                 NA                 0.0543365   -1.0743176    0.5688801
6 months    COHORTS          INDIA                          High                 NA                 0.0075856   -0.1883678    0.1712276
6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0413425   -0.2023486    0.2356425
6 months    GMS-Nepal        NEPAL                          High                 NA                 0.0606828   -0.5240993    0.4210897
6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0198924   -0.2090662    0.2054936
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0617775   -0.8369469    0.3862798
6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.3898276   -0.3012672    0.7138863
6 months    PROBIT           BELARUS                        High                 NA                -0.3830004   -1.2799846    0.1610952
6 months    PROVIDE          BANGLADESH                     High                 NA                 0.0767464   -0.6169746    0.4728444
6 months    SAS-CompFeed     INDIA                          High                 NA                 0.1364172   -0.0229592    0.2709629
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.0404605   -0.4770086    0.2670604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2082793   -0.3055675    0.5198856
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0457326   -0.5006715    0.3931875
24 months   COHORTS          GUATEMALA                      High                 NA                -0.0007491   -0.8498780    0.4586137
24 months   COHORTS          INDIA                          High                 NA                 0.1973958   -0.0790924    0.4030414
24 months   COHORTS          PHILIPPINES                    High                 NA                 0.4492719    0.2423875    0.5996616
24 months   GMS-Nepal        NEPAL                          High                 NA                -0.3571023   -0.7665192   -0.0425739
24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0157879   -0.1991280    0.1395205
24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.1853632   -0.4082244    0.0022286
24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.1228422   -0.2830233    0.4003181
24 months   PROVIDE          BANGLADESH                     High                 NA                 0.3007542   -0.0638850    0.5404159
