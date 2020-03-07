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

**Outcome Variable:** ever_sstunted

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
* W_nrooms
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
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        meducyrs    ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  ---------  --------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          High                    0       65     373
0-24 months   CMC-V-BCS-2002   INDIA                          High                    1       93     373
0-24 months   CMC-V-BCS-2002   INDIA                          Low                     0       37     373
0-24 months   CMC-V-BCS-2002   INDIA                          Low                     1       69     373
0-24 months   CMC-V-BCS-2002   INDIA                          Medium                  0       34     373
0-24 months   CMC-V-BCS-2002   INDIA                          Medium                  1       75     373
0-24 months   COHORTS          GUATEMALA                      High                    0      161    1341
0-24 months   COHORTS          GUATEMALA                      High                    1      124    1341
0-24 months   COHORTS          GUATEMALA                      Low                     0      326    1341
0-24 months   COHORTS          GUATEMALA                      Low                     1      310    1341
0-24 months   COHORTS          GUATEMALA                      Medium                  0      232    1341
0-24 months   COHORTS          GUATEMALA                      Medium                  1      188    1341
0-24 months   COHORTS          INDIA                          High                    0      761    5852
0-24 months   COHORTS          INDIA                          High                    1       32    5852
0-24 months   COHORTS          INDIA                          Low                     0     1530    5852
0-24 months   COHORTS          INDIA                          Low                     1      426    5852
0-24 months   COHORTS          INDIA                          Medium                  0     2788    5852
0-24 months   COHORTS          INDIA                          Medium                  1      315    5852
0-24 months   COHORTS          PHILIPPINES                    High                    0      885    3058
0-24 months   COHORTS          PHILIPPINES                    High                    1      288    3058
0-24 months   COHORTS          PHILIPPINES                    Low                     0      481    3058
0-24 months   COHORTS          PHILIPPINES                    Low                     1      422    3058
0-24 months   COHORTS          PHILIPPINES                    Medium                  0      603    3058
0-24 months   COHORTS          PHILIPPINES                    Medium                  1      379    3058
0-24 months   EE               PAKISTAN                       High                    0        8     376
0-24 months   EE               PAKISTAN                       High                    1        7     376
0-24 months   EE               PAKISTAN                       Low                     0      122     376
0-24 months   EE               PAKISTAN                       Low                     1      206     376
0-24 months   EE               PAKISTAN                       Medium                  0       20     376
0-24 months   EE               PAKISTAN                       Medium                  1       13     376
0-24 months   GMS-Nepal        NEPAL                          High                    0       71     695
0-24 months   GMS-Nepal        NEPAL                          High                    1       14     695
0-24 months   GMS-Nepal        NEPAL                          Low                     0      360     695
0-24 months   GMS-Nepal        NEPAL                          Low                     1      126     695
0-24 months   GMS-Nepal        NEPAL                          Medium                  0       95     695
0-24 months   GMS-Nepal        NEPAL                          Medium                  1       29     695
0-24 months   Guatemala BSC    GUATEMALA                      High                    0       96     282
0-24 months   Guatemala BSC    GUATEMALA                      High                    1       22     282
0-24 months   Guatemala BSC    GUATEMALA                      Low                     0       57     282
0-24 months   Guatemala BSC    GUATEMALA                      Low                     1       19     282
0-24 months   Guatemala BSC    GUATEMALA                      Medium                  0       76     282
0-24 months   Guatemala BSC    GUATEMALA                      Medium                  1       12     282
0-24 months   IRC              INDIA                          High                    0      101     410
0-24 months   IRC              INDIA                          High                    1       23     410
0-24 months   IRC              INDIA                          Low                     0      111     410
0-24 months   IRC              INDIA                          Low                     1       36     410
0-24 months   IRC              INDIA                          Medium                  0       96     410
0-24 months   IRC              INDIA                          Medium                  1       43     410
0-24 months   JiVitA-3         BANGLADESH                     High                    0     7817   27193
0-24 months   JiVitA-3         BANGLADESH                     High                    1     1210   27193
0-24 months   JiVitA-3         BANGLADESH                     Low                     0     7779   27193
0-24 months   JiVitA-3         BANGLADESH                     Low                     1     2088   27193
0-24 months   JiVitA-3         BANGLADESH                     Medium                  0     6577   27193
0-24 months   JiVitA-3         BANGLADESH                     Medium                  1     1722   27193
0-24 months   JiVitA-4         BANGLADESH                     High                    0     1623    5419
0-24 months   JiVitA-4         BANGLADESH                     High                    1      278    5419
0-24 months   JiVitA-4         BANGLADESH                     Low                     0     1328    5419
0-24 months   JiVitA-4         BANGLADESH                     Low                     1      457    5419
0-24 months   JiVitA-4         BANGLADESH                     Medium                  0     1365    5419
0-24 months   JiVitA-4         BANGLADESH                     Medium                  1      368    5419
0-24 months   LCNI-5           MALAWI                         High                    0      251     814
0-24 months   LCNI-5           MALAWI                         High                    1       47     814
0-24 months   LCNI-5           MALAWI                         Low                     0      191     814
0-24 months   LCNI-5           MALAWI                         Low                     1       70     814
0-24 months   LCNI-5           MALAWI                         Medium                  0      203     814
0-24 months   LCNI-5           MALAWI                         Medium                  1       52     814
0-24 months   MAL-ED           BANGLADESH                     High                    0       64     214
0-24 months   MAL-ED           BANGLADESH                     High                    1       14     214
0-24 months   MAL-ED           BANGLADESH                     Low                     0       55     214
0-24 months   MAL-ED           BANGLADESH                     Low                     1       15     214
0-24 months   MAL-ED           BANGLADESH                     Medium                  0       55     214
0-24 months   MAL-ED           BANGLADESH                     Medium                  1       11     214
0-24 months   MAL-ED           BRAZIL                         High                    0       69     232
0-24 months   MAL-ED           BRAZIL                         High                    1       10     232
0-24 months   MAL-ED           BRAZIL                         Low                     0       60     232
0-24 months   MAL-ED           BRAZIL                         Low                     1        3     232
0-24 months   MAL-ED           BRAZIL                         Medium                  0       81     232
0-24 months   MAL-ED           BRAZIL                         Medium                  1        9     232
0-24 months   MAL-ED           INDIA                          High                    0       50     220
0-24 months   MAL-ED           INDIA                          High                    1       13     220
0-24 months   MAL-ED           INDIA                          Low                     0       59     220
0-24 months   MAL-ED           INDIA                          Low                     1       17     220
0-24 months   MAL-ED           INDIA                          Medium                  0       64     220
0-24 months   MAL-ED           INDIA                          Medium                  1       17     220
0-24 months   MAL-ED           NEPAL                          High                    0       48     225
0-24 months   MAL-ED           NEPAL                          High                    1        5     225
0-24 months   MAL-ED           NEPAL                          Low                     0       88     225
0-24 months   MAL-ED           NEPAL                          Low                     1        8     225
0-24 months   MAL-ED           NEPAL                          Medium                  0       70     225
0-24 months   MAL-ED           NEPAL                          Medium                  1        6     225
0-24 months   MAL-ED           PERU                           High                    0       71     302
0-24 months   MAL-ED           PERU                           High                    1       20     302
0-24 months   MAL-ED           PERU                           Low                     0       83     302
0-24 months   MAL-ED           PERU                           Low                     1       21     302
0-24 months   MAL-ED           PERU                           Medium                  0       84     302
0-24 months   MAL-ED           PERU                           Medium                  1       23     302
0-24 months   MAL-ED           SOUTH AFRICA                   High                    0       75     314
0-24 months   MAL-ED           SOUTH AFRICA                   High                    1       20     314
0-24 months   MAL-ED           SOUTH AFRICA                   Low                     0      111     314
0-24 months   MAL-ED           SOUTH AFRICA                   Low                     1       39     314
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                  0       55     314
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                  1       14     314
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                    0        6     217
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                    1        5     217
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                     0       27     217
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                     1       37     217
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                  0       77     217
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                  1       65     217
0-24 months   NIH-Birth        BANGLADESH                     High                    0      138     629
0-24 months   NIH-Birth        BANGLADESH                     High                    1       41     629
0-24 months   NIH-Birth        BANGLADESH                     Low                     0      139     629
0-24 months   NIH-Birth        BANGLADESH                     Low                     1       91     629
0-24 months   NIH-Birth        BANGLADESH                     Medium                  0      156     629
0-24 months   NIH-Birth        BANGLADESH                     Medium                  1       64     629
0-24 months   NIH-Crypto       BANGLADESH                     High                    0      234     758
0-24 months   NIH-Crypto       BANGLADESH                     High                    1       20     758
0-24 months   NIH-Crypto       BANGLADESH                     Low                     0      202     758
0-24 months   NIH-Crypto       BANGLADESH                     Low                     1       40     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium                  0      223     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium                  1       39     758
0-24 months   PROBIT           BELARUS                        High                    0     2797   16897
0-24 months   PROBIT           BELARUS                        High                    1       43   16897
0-24 months   PROBIT           BELARUS                        Low                     0     5863   16897
0-24 months   PROBIT           BELARUS                        Low                     1      237   16897
0-24 months   PROBIT           BELARUS                        Medium                  0     7770   16897
0-24 months   PROBIT           BELARUS                        Medium                  1      187   16897
0-24 months   PROVIDE          BANGLADESH                     High                    0      217     700
0-24 months   PROVIDE          BANGLADESH                     High                    1       18     700
0-24 months   PROVIDE          BANGLADESH                     Low                     0      180     700
0-24 months   PROVIDE          BANGLADESH                     Low                     1       34     700
0-24 months   PROVIDE          BANGLADESH                     Medium                  0      208     700
0-24 months   PROVIDE          BANGLADESH                     Medium                  1       43     700
0-24 months   SAS-CompFeed     INDIA                          High                    0      265    1533
0-24 months   SAS-CompFeed     INDIA                          High                    1       58    1533
0-24 months   SAS-CompFeed     INDIA                          Low                     0      401    1533
0-24 months   SAS-CompFeed     INDIA                          Low                     1      295    1533
0-24 months   SAS-CompFeed     INDIA                          Medium                  0      360    1533
0-24 months   SAS-CompFeed     INDIA                          Medium                  1      154    1533
0-24 months   SAS-FoodSuppl    INDIA                          High                    0       27     418
0-24 months   SAS-FoodSuppl    INDIA                          High                    1       14     418
0-24 months   SAS-FoodSuppl    INDIA                          Low                     0      167     418
0-24 months   SAS-FoodSuppl    INDIA                          Low                     1      165     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium                  0       23     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium                  1       22     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    0      568    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    1       53    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     0       71    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     1       11    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  0     1510    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  1      173    2386
0-24 months   ZVITAMBO         ZIMBABWE                       High                    0     6498   14054
0-24 months   ZVITAMBO         ZIMBABWE                       High                    1     1126   14054
0-24 months   ZVITAMBO         ZIMBABWE                       Low                     0     2367   14054
0-24 months   ZVITAMBO         ZIMBABWE                       Low                     1      592   14054
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                  0     2824   14054
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                  1      647   14054
0-6 months    CMC-V-BCS-2002   INDIA                          High                    0      125     368
0-6 months    CMC-V-BCS-2002   INDIA                          High                    1       32     368
0-6 months    CMC-V-BCS-2002   INDIA                          Low                     0       76     368
0-6 months    CMC-V-BCS-2002   INDIA                          Low                     1       28     368
0-6 months    CMC-V-BCS-2002   INDIA                          Medium                  0       76     368
0-6 months    CMC-V-BCS-2002   INDIA                          Medium                  1       31     368
0-6 months    COHORTS          GUATEMALA                      High                    0      207    1078
0-6 months    COHORTS          GUATEMALA                      High                    1       17    1078
0-6 months    COHORTS          GUATEMALA                      Low                     0      448    1078
0-6 months    COHORTS          GUATEMALA                      Low                     1       66    1078
0-6 months    COHORTS          GUATEMALA                      Medium                  0      314    1078
0-6 months    COHORTS          GUATEMALA                      Medium                  1       26    1078
0-6 months    COHORTS          INDIA                          High                    0      741    5662
0-6 months    COHORTS          INDIA                          High                    1       12    5662
0-6 months    COHORTS          INDIA                          Low                     0     1775    5662
0-6 months    COHORTS          INDIA                          Low                     1      134    5662
0-6 months    COHORTS          INDIA                          Medium                  0     2878    5662
0-6 months    COHORTS          INDIA                          Medium                  1      122    5662
0-6 months    COHORTS          PHILIPPINES                    High                    0     1130    3058
0-6 months    COHORTS          PHILIPPINES                    High                    1       43    3058
0-6 months    COHORTS          PHILIPPINES                    Low                     0      824    3058
0-6 months    COHORTS          PHILIPPINES                    Low                     1       79    3058
0-6 months    COHORTS          PHILIPPINES                    Medium                  0      913    3058
0-6 months    COHORTS          PHILIPPINES                    Medium                  1       69    3058
0-6 months    EE               PAKISTAN                       High                    0        9     376
0-6 months    EE               PAKISTAN                       High                    1        6     376
0-6 months    EE               PAKISTAN                       Low                     0      186     376
0-6 months    EE               PAKISTAN                       Low                     1      142     376
0-6 months    EE               PAKISTAN                       Medium                  0       22     376
0-6 months    EE               PAKISTAN                       Medium                  1       11     376
0-6 months    GMS-Nepal        NEPAL                          High                    0       80     695
0-6 months    GMS-Nepal        NEPAL                          High                    1        5     695
0-6 months    GMS-Nepal        NEPAL                          Low                     0      438     695
0-6 months    GMS-Nepal        NEPAL                          Low                     1       48     695
0-6 months    GMS-Nepal        NEPAL                          Medium                  0      117     695
0-6 months    GMS-Nepal        NEPAL                          Medium                  1        7     695
0-6 months    Guatemala BSC    GUATEMALA                      High                    0       97     265
0-6 months    Guatemala BSC    GUATEMALA                      High                    1       15     265
0-6 months    Guatemala BSC    GUATEMALA                      Low                     0       70     265
0-6 months    Guatemala BSC    GUATEMALA                      Low                     1        4     265
0-6 months    Guatemala BSC    GUATEMALA                      Medium                  0       74     265
0-6 months    Guatemala BSC    GUATEMALA                      Medium                  1        5     265
0-6 months    IRC              INDIA                          High                    0      113     410
0-6 months    IRC              INDIA                          High                    1       11     410
0-6 months    IRC              INDIA                          Low                     0      126     410
0-6 months    IRC              INDIA                          Low                     1       21     410
0-6 months    IRC              INDIA                          Medium                  0      109     410
0-6 months    IRC              INDIA                          Medium                  1       30     410
0-6 months    JiVitA-3         BANGLADESH                     High                    0     8054   27127
0-6 months    JiVitA-3         BANGLADESH                     High                    1      941   27127
0-6 months    JiVitA-3         BANGLADESH                     Low                     0     8182   27127
0-6 months    JiVitA-3         BANGLADESH                     Low                     1     1665   27127
0-6 months    JiVitA-3         BANGLADESH                     Medium                  0     6889   27127
0-6 months    JiVitA-3         BANGLADESH                     Medium                  1     1396   27127
0-6 months    JiVitA-4         BANGLADESH                     High                    0     1661    5111
0-6 months    JiVitA-4         BANGLADESH                     High                    1      135    5111
0-6 months    JiVitA-4         BANGLADESH                     Low                     0     1463    5111
0-6 months    JiVitA-4         BANGLADESH                     Low                     1      217    5111
0-6 months    JiVitA-4         BANGLADESH                     Medium                  0     1469    5111
0-6 months    JiVitA-4         BANGLADESH                     Medium                  1      166    5111
0-6 months    LCNI-5           MALAWI                         High                    0       85     267
0-6 months    LCNI-5           MALAWI                         High                    1        2     267
0-6 months    LCNI-5           MALAWI                         Low                     0       83     267
0-6 months    LCNI-5           MALAWI                         Low                     1        9     267
0-6 months    LCNI-5           MALAWI                         Medium                  0       80     267
0-6 months    LCNI-5           MALAWI                         Medium                  1        8     267
0-6 months    MAL-ED           BANGLADESH                     High                    0       71     214
0-6 months    MAL-ED           BANGLADESH                     High                    1        7     214
0-6 months    MAL-ED           BANGLADESH                     Low                     0       63     214
0-6 months    MAL-ED           BANGLADESH                     Low                     1        7     214
0-6 months    MAL-ED           BANGLADESH                     Medium                  0       64     214
0-6 months    MAL-ED           BANGLADESH                     Medium                  1        2     214
0-6 months    MAL-ED           BRAZIL                         High                    0       71     232
0-6 months    MAL-ED           BRAZIL                         High                    1        8     232
0-6 months    MAL-ED           BRAZIL                         Low                     0       61     232
0-6 months    MAL-ED           BRAZIL                         Low                     1        2     232
0-6 months    MAL-ED           BRAZIL                         Medium                  0       83     232
0-6 months    MAL-ED           BRAZIL                         Medium                  1        7     232
0-6 months    MAL-ED           INDIA                          High                    0       60     220
0-6 months    MAL-ED           INDIA                          High                    1        3     220
0-6 months    MAL-ED           INDIA                          Low                     0       72     220
0-6 months    MAL-ED           INDIA                          Low                     1        4     220
0-6 months    MAL-ED           INDIA                          Medium                  0       72     220
0-6 months    MAL-ED           INDIA                          Medium                  1        9     220
0-6 months    MAL-ED           NEPAL                          High                    0       52     225
0-6 months    MAL-ED           NEPAL                          High                    1        1     225
0-6 months    MAL-ED           NEPAL                          Low                     0       92     225
0-6 months    MAL-ED           NEPAL                          Low                     1        4     225
0-6 months    MAL-ED           NEPAL                          Medium                  0       73     225
0-6 months    MAL-ED           NEPAL                          Medium                  1        3     225
0-6 months    MAL-ED           PERU                           High                    0       78     302
0-6 months    MAL-ED           PERU                           High                    1       13     302
0-6 months    MAL-ED           PERU                           Low                     0       94     302
0-6 months    MAL-ED           PERU                           Low                     1       10     302
0-6 months    MAL-ED           PERU                           Medium                  0       92     302
0-6 months    MAL-ED           PERU                           Medium                  1       15     302
0-6 months    MAL-ED           SOUTH AFRICA                   High                    0       85     314
0-6 months    MAL-ED           SOUTH AFRICA                   High                    1       10     314
0-6 months    MAL-ED           SOUTH AFRICA                   Low                     0      136     314
0-6 months    MAL-ED           SOUTH AFRICA                   Low                     1       14     314
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                  0       64     314
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                  1        5     314
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                    0       11     217
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                    1        0     217
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                     0       55     217
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                     1        9     217
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                  0      125     217
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                  1       17     217
0-6 months    NIH-Birth        BANGLADESH                     High                    0      163     629
0-6 months    NIH-Birth        BANGLADESH                     High                    1       16     629
0-6 months    NIH-Birth        BANGLADESH                     Low                     0      203     629
0-6 months    NIH-Birth        BANGLADESH                     Low                     1       27     629
0-6 months    NIH-Birth        BANGLADESH                     Medium                  0      204     629
0-6 months    NIH-Birth        BANGLADESH                     Medium                  1       16     629
0-6 months    NIH-Crypto       BANGLADESH                     High                    0      244     758
0-6 months    NIH-Crypto       BANGLADESH                     High                    1       10     758
0-6 months    NIH-Crypto       BANGLADESH                     Low                     0      226     758
0-6 months    NIH-Crypto       BANGLADESH                     Low                     1       16     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium                  0      241     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium                  1       21     758
0-6 months    PROBIT           BELARUS                        High                    0     2826   16892
0-6 months    PROBIT           BELARUS                        High                    1       14   16892
0-6 months    PROBIT           BELARUS                        Low                     0     6004   16892
0-6 months    PROBIT           BELARUS                        Low                     1       93   16892
0-6 months    PROBIT           BELARUS                        Medium                  0     7877   16892
0-6 months    PROBIT           BELARUS                        Medium                  1       78   16892
0-6 months    PROVIDE          BANGLADESH                     High                    0      231     700
0-6 months    PROVIDE          BANGLADESH                     High                    1        4     700
0-6 months    PROVIDE          BANGLADESH                     Low                     0      204     700
0-6 months    PROVIDE          BANGLADESH                     Low                     1       10     700
0-6 months    PROVIDE          BANGLADESH                     Medium                  0      234     700
0-6 months    PROVIDE          BANGLADESH                     Medium                  1       17     700
0-6 months    SAS-CompFeed     INDIA                          High                    0      296    1530
0-6 months    SAS-CompFeed     INDIA                          High                    1       27    1530
0-6 months    SAS-CompFeed     INDIA                          Low                     0      567    1530
0-6 months    SAS-CompFeed     INDIA                          Low                     1      128    1530
0-6 months    SAS-CompFeed     INDIA                          Medium                  0      438    1530
0-6 months    SAS-CompFeed     INDIA                          Medium                  1       74    1530
0-6 months    SAS-FoodSuppl    INDIA                          High                    0       38     416
0-6 months    SAS-FoodSuppl    INDIA                          High                    1        2     416
0-6 months    SAS-FoodSuppl    INDIA                          Low                     0      287     416
0-6 months    SAS-FoodSuppl    INDIA                          Low                     1       44     416
0-6 months    SAS-FoodSuppl    INDIA                          Medium                  0       41     416
0-6 months    SAS-FoodSuppl    INDIA                          Medium                  1        4     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    0      594    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    1       27    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     0       79    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     1        3    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  0     1610    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  1       73    2386
0-6 months    ZVITAMBO         ZIMBABWE                       High                    0     6976   14037
0-6 months    ZVITAMBO         ZIMBABWE                       High                    1      641   14037
0-6 months    ZVITAMBO         ZIMBABWE                       Low                     0     2653   14037
0-6 months    ZVITAMBO         ZIMBABWE                       Low                     1      301   14037
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                  0     3126   14037
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                  1      340   14037


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/afc6ada2-326d-4a26-9c25-3b6f103f8277/a5bd9dc6-7bc2-42e8-a9f1-b67d832f49a0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/afc6ada2-326d-4a26-9c25-3b6f103f8277/a5bd9dc6-7bc2-42e8-a9f1-b67d832f49a0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/afc6ada2-326d-4a26-9c25-3b6f103f8277/a5bd9dc6-7bc2-42e8-a9f1-b67d832f49a0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/afc6ada2-326d-4a26-9c25-3b6f103f8277/a5bd9dc6-7bc2-42e8-a9f1-b67d832f49a0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.5852110   0.5078588   0.6625633
0-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.6532860   0.5615631   0.7450089
0-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.6835280   0.5924468   0.7746093
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.5015929   0.4321500   0.5710358
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.4642378   0.4224883   0.5059873
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.4555420   0.4011820   0.5099020
0-24 months   COHORTS          INDIA                          High                 NA                0.0386240   0.0250878   0.0521601
0-24 months   COHORTS          INDIA                          Low                  NA                0.2107815   0.1915127   0.2300503
0-24 months   COHORTS          INDIA                          Medium               NA                0.1019924   0.0909790   0.1130058
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.3207100   0.2878979   0.3535222
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.3634354   0.3269077   0.3999630
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.3856719   0.3518143   0.4195295
0-24 months   EE               PAKISTAN                       High                 NA                0.4666667   0.2138629   0.7194704
0-24 months   EE               PAKISTAN                       Low                  NA                0.6280488   0.5756732   0.6804244
0-24 months   EE               PAKISTAN                       Medium               NA                0.3939394   0.2270064   0.5608724
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.1598864   0.0786673   0.2411055
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.2581159   0.2187047   0.2975271
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.2186253   0.1411021   0.2961486
0-24 months   Guatemala BSC    GUATEMALA                      High                 NA                0.1831761   0.1118191   0.2545330
0-24 months   Guatemala BSC    GUATEMALA                      Low                  NA                0.2592726   0.1590273   0.3595179
0-24 months   Guatemala BSC    GUATEMALA                      Medium               NA                0.1355926   0.0624670   0.2087183
0-24 months   IRC              INDIA                          High                 NA                0.1849132   0.1159576   0.2538688
0-24 months   IRC              INDIA                          Low                  NA                0.2494474   0.1819439   0.3169510
0-24 months   IRC              INDIA                          Medium               NA                0.3102203   0.2371522   0.3832884
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.1760180   0.1670192   0.1850168
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.1898548   0.1797851   0.1999245
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.1945705   0.1846020   0.2045390
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.2011436   0.1766341   0.2256531
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.2237528   0.2020423   0.2454633
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.2025004   0.1786499   0.2263508
0-24 months   LCNI-5           MALAWI                         High                 NA                0.1729983   0.1310326   0.2149640
0-24 months   LCNI-5           MALAWI                         Low                  NA                0.2515873   0.1990723   0.3041022
0-24 months   LCNI-5           MALAWI                         Medium               NA                0.2078630   0.1578661   0.2578599
0-24 months   MAL-ED           BANGLADESH                     High                 NA                0.1944732   0.1077715   0.2811749
0-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.2166906   0.1206252   0.3127560
0-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.1675154   0.0797211   0.2553097
0-24 months   MAL-ED           INDIA                          High                 NA                0.2299263   0.1164521   0.3434004
0-24 months   MAL-ED           INDIA                          Low                  NA                0.2185978   0.1271000   0.3100956
0-24 months   MAL-ED           INDIA                          Medium               NA                0.1932105   0.1082501   0.2781709
0-24 months   MAL-ED           NEPAL                          High                 NA                0.0943396   0.0154705   0.1732088
0-24 months   MAL-ED           NEPAL                          Low                  NA                0.0833333   0.0279225   0.1387442
0-24 months   MAL-ED           NEPAL                          Medium               NA                0.0789474   0.0181871   0.1397076
0-24 months   MAL-ED           PERU                           High                 NA                0.2247526   0.1384900   0.3110152
0-24 months   MAL-ED           PERU                           Low                  NA                0.1830469   0.1091601   0.2569336
0-24 months   MAL-ED           PERU                           Medium               NA                0.2227151   0.1430059   0.3024242
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.2169438   0.1327895   0.3010982
0-24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.2572637   0.1869886   0.3275388
0-24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.1987576   0.1038395   0.2936757
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.4545455   0.1596129   0.7494780
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.5781250   0.4568521   0.6993979
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4577465   0.3756129   0.5398800
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                0.2611618   0.1998456   0.3224779
0-24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.3853104   0.3256121   0.4450087
0-24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.2855194   0.2251465   0.3458923
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.0852647   0.0532426   0.1172868
0-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1635677   0.1178007   0.2093347
0-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.1393199   0.0965369   0.1821030
0-24 months   PROBIT           BELARUS                        High                 NA                0.0156088   0.0071296   0.0240881
0-24 months   PROBIT           BELARUS                        Low                  NA                0.0358390   0.0229858   0.0486921
0-24 months   PROBIT           BELARUS                        Medium               NA                0.0240440   0.0174275   0.0306606
0-24 months   PROVIDE          BANGLADESH                     High                 NA                0.0774875   0.0434612   0.1115137
0-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.1613150   0.1120711   0.2105589
0-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.1726134   0.1262118   0.2190149
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.2412749   0.1819467   0.3006031
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.3818969   0.3469713   0.4168225
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.3211524   0.2918246   0.3504801
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.3374245   0.1746038   0.5002453
0-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.4944724   0.4400310   0.5489138
0-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.4874089   0.3190252   0.6557926
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0895672   0.0672789   0.1118555
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1271513   0.0545418   0.1997608
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1009541   0.0865333   0.1153748
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.1562199   0.1471980   0.1652417
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.1830185   0.1682995   0.1977375
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.1783341   0.1654767   0.1911915
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                0.2036258   0.1418321   0.2654195
0-6 months    CMC-V-BCS-2002   INDIA                          Low                  NA                0.2711818   0.1837599   0.3586037
0-6 months    CMC-V-BCS-2002   INDIA                          Medium               NA                0.2932559   0.2047569   0.3817549
0-6 months    COHORTS          GUATEMALA                      High                 NA                0.0759709   0.0412059   0.1107360
0-6 months    COHORTS          GUATEMALA                      Low                  NA                0.1266181   0.0976777   0.1555586
0-6 months    COHORTS          GUATEMALA                      Medium               NA                0.0771483   0.0491291   0.1051674
0-6 months    COHORTS          INDIA                          High                 NA                0.0165930   0.0069963   0.0261896
0-6 months    COHORTS          INDIA                          Low                  NA                0.0719834   0.0602781   0.0836887
0-6 months    COHORTS          INDIA                          Medium               NA                0.0407307   0.0336270   0.0478344
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.0405801   0.0285063   0.0526540
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.0682158   0.0502791   0.0861526
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.0785963   0.0584401   0.0987525
0-6 months    EE               PAKISTAN                       High                 NA                0.4000000   0.1517516   0.6482484
0-6 months    EE               PAKISTAN                       Low                  NA                0.4329268   0.3792340   0.4866197
0-6 months    EE               PAKISTAN                       Medium               NA                0.3333333   0.1722824   0.4943842
0-6 months    GMS-Nepal        NEPAL                          High                 NA                0.0588235   0.0087668   0.1088802
0-6 months    GMS-Nepal        NEPAL                          Low                  NA                0.0987654   0.0722216   0.1253093
0-6 months    GMS-Nepal        NEPAL                          Medium               NA                0.0564516   0.0158007   0.0971025
0-6 months    IRC              INDIA                          High                 NA                0.0866130   0.0353133   0.1379127
0-6 months    IRC              INDIA                          Low                  NA                0.1396674   0.0819967   0.1973381
0-6 months    IRC              INDIA                          Medium               NA                0.2091074   0.1409179   0.2772970
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                0.1413722   0.1332372   0.1495073
0-6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.1536076   0.1445539   0.1626613
0-6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.1568066   0.1485600   0.1650531
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                0.0849818   0.0721100   0.0978535
0-6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.1160564   0.0996339   0.1324789
0-6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.1029620   0.0868232   0.1191007
0-6 months    MAL-ED           PERU                           High                 NA                0.1437868   0.0706725   0.2169011
0-6 months    MAL-ED           PERU                           Low                  NA                0.0978348   0.0407428   0.1549267
0-6 months    MAL-ED           PERU                           Medium               NA                0.1398637   0.0742144   0.2055129
0-6 months    MAL-ED           SOUTH AFRICA                   High                 NA                0.1052632   0.0434523   0.1670740
0-6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                0.0933333   0.0467063   0.1399603
0-6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                0.0724638   0.0111946   0.1337330
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                0.0971844   0.0497261   0.1446428
0-6 months    NIH-Birth        BANGLADESH                     Low                  NA                0.1178391   0.0749519   0.1607264
0-6 months    NIH-Birth        BANGLADESH                     Medium               NA                0.0721102   0.0362773   0.1079432
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.0401305   0.0158655   0.0643955
0-6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.0609796   0.0294126   0.0925466
0-6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.0782652   0.0453688   0.1111617
0-6 months    PROBIT           BELARUS                        High                 NA                0.0057592   0.0021106   0.0094077
0-6 months    PROBIT           BELARUS                        Low                  NA                0.0144908   0.0078282   0.0211533
0-6 months    PROBIT           BELARUS                        Medium               NA                0.0096381   0.0067383   0.0125379
0-6 months    SAS-CompFeed     INDIA                          High                 NA                0.0924843   0.0611080   0.1238605
0-6 months    SAS-CompFeed     INDIA                          Low                  NA                0.1749474   0.1477267   0.2021681
0-6 months    SAS-CompFeed     INDIA                          Medium               NA                0.1463538   0.1305449   0.1621626
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.0876718   0.0814933   0.0938502
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.0954797   0.0848774   0.1060820
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.0918018   0.0828465   0.1007572


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6353887   0.5864772   0.6843003
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4638330   0.4371320   0.4905339
0-24 months   COHORTS          INDIA                          NA                   NA                0.1320916   0.1234158   0.1407674
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.3561151   0.3391405   0.3730897
0-24 months   EE               PAKISTAN                       NA                   NA                0.6010638   0.5515023   0.6506253
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2431655   0.2112486   0.2750823
0-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.1879433   0.1422659   0.2336207
0-24 months   IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1846063   0.1789984   0.1902143
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.2035431   0.1916695   0.2154167
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.2076167   0.1797361   0.2354973
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1869159   0.1345620   0.2392698
0-24 months   MAL-ED           INDIA                          NA                   NA                0.2136364   0.1593519   0.2679208
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.0844444   0.0480318   0.1208571
0-24 months   MAL-ED           PERU                           NA                   NA                0.2119205   0.1657530   0.2580880
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2324841   0.1856873   0.2792809
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4930876   0.4264146   0.5597605
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0276380   0.0201988   0.0350773
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3307241   0.3024794   0.3589688
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.4808612   0.4329065   0.5288160
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0993294   0.0873254   0.1113334
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1682795   0.1620941   0.1744649
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.2472826   0.2031431   0.2914222
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.1011132   0.0831080   0.1191183
0-6 months    COHORTS          INDIA                          NA                   NA                0.0473331   0.0418015   0.0528647
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0624591   0.0538810   0.0710373
0-6 months    EE               PAKISTAN                       NA                   NA                0.4228723   0.3728720   0.4728727
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0863309   0.0654358   0.1072261
0-6 months    IRC              INDIA                          NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1475283   0.1424745   0.1525821
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1013500   0.0923758   0.1103243
0-6 months    MAL-ED           PERU                           NA                   NA                0.1258278   0.0883606   0.1632951
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.0923567   0.0602816   0.1244318
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0109519   0.0074064   0.0144975
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.1496732   0.1307571   0.1685893
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0913301   0.0865643   0.0960959


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   CMC-V-BCS-2002   INDIA                          Low                  High              1.1163255   0.9207945   1.353377
0-24 months   CMC-V-BCS-2002   INDIA                          Medium               High              1.1680027   0.9679381   1.409419
0-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      Low                  High              0.9255270   0.7871191   1.088273
0-24 months   COHORTS          GUATEMALA                      Medium               High              0.9081906   0.7588798   1.086879
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          Low                  High              5.4572726   3.7995869   7.838175
0-24 months   COHORTS          INDIA                          Medium               High              2.6406515   1.8302944   3.809792
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              1.1332211   0.9842744   1.304707
0-24 months   COHORTS          PHILIPPINES                    Medium               High              1.2025564   1.0537469   1.372381
0-24 months   EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   EE               PAKISTAN                       Low                  High              1.3458188   0.7779437   2.328225
0-24 months   EE               PAKISTAN                       Medium               High              0.8441558   0.4243530   1.679260
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              1.6143708   0.9494976   2.744813
0-24 months   GMS-Nepal        NEPAL                          Medium               High              1.3673793   0.7361598   2.539837
0-24 months   Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   Guatemala BSC    GUATEMALA                      Low                  High              1.4154286   0.8177502   2.449939
0-24 months   Guatemala BSC    GUATEMALA                      Medium               High              0.7402312   0.3805144   1.440004
0-24 months   IRC              INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA                          Low                  High              1.3489974   0.8554508   2.127293
0-24 months   IRC              INDIA                          Medium               High              1.6776537   1.0851717   2.593619
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.0786102   1.0113410   1.150354
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.1054011   1.0354588   1.180068
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.1124032   0.9594462   1.289745
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.0067454   0.8541686   1.186576
0-24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         Low                  High              1.4542759   1.0590704   1.996957
0-24 months   LCNI-5           MALAWI                         Medium               High              1.2015320   0.8567819   1.685002
0-24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     Low                  High              1.1142439   0.5958179   2.083757
0-24 months   MAL-ED           BANGLADESH                     Medium               High              0.8613803   0.4364965   1.699844
0-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          Low                  High              0.9507301   0.5005418   1.805818
0-24 months   MAL-ED           INDIA                          Medium               High              0.8403151   0.4346619   1.624549
0-24 months   MAL-ED           NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           NEPAL                          Low                  High              0.8833333   0.3035369   2.570619
0-24 months   MAL-ED           NEPAL                          Medium               High              0.8368421   0.2686218   2.607028
0-24 months   MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           PERU                           Low                  High              0.8144372   0.4689666   1.414404
0-24 months   MAL-ED           PERU                           Medium               High              0.9909345   0.5873094   1.671949
0-24 months   MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   Low                  High              1.1858540   0.7385016   1.904193
0-24 months   MAL-ED           SOUTH AFRICA                   Medium               High              0.9161708   0.4957060   1.693280
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2718750   0.6431191   2.515344
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0070423   0.5136638   1.974315
0-24 months   NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     Low                  High              1.4753706   1.1228443   1.938576
0-24 months   NIH-Birth        BANGLADESH                     Medium               High              1.0932663   0.8041088   1.486405
0-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.9183507   1.2106633   3.039713
0-24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.6339690   1.0130912   2.635355
0-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        Low                  High              2.2960683   1.2761111   4.131247
0-24 months   PROBIT           BELARUS                        Medium               High              1.5404110   0.9450334   2.510881
0-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     Low                  High              2.0818211   1.2200056   3.552426
0-24 months   PROVIDE          BANGLADESH                     Medium               High              2.2276299   1.3312235   3.727650
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              1.5828287   1.2022856   2.083820
0-24 months   SAS-CompFeed     INDIA                          Medium               High              1.3310639   1.0381644   1.706600
0-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.4654310   0.8931203   2.404478
0-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.4444976   0.7977368   2.615616
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.4196190   0.7617460   2.645656
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1271319   0.8463559   1.501054
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.1715445   1.0643641   1.289518
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.1415586   1.0442401   1.247947
0-6 months    CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          Low                  High              1.3317654   0.8569904   2.069567
0-6 months    CMC-V-BCS-2002   INDIA                          Medium               High              1.4401707   0.9419007   2.202028
0-6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      Low                  High              1.6666649   0.9990631   2.780377
0-6 months    COHORTS          GUATEMALA                      Medium               High              1.0154969   0.5671122   1.818395
0-6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          Low                  High              4.3381859   2.3788235   7.911414
0-6 months    COHORTS          INDIA                          Medium               High              2.4546978   1.3416856   4.491023
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              1.6810157   1.1325333   2.495127
0-6 months    COHORTS          PHILIPPINES                    Medium               High              1.9368179   1.3104497   2.862577
0-6 months    EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    EE               PAKISTAN                       Low                  High              1.0823171   0.5747687   2.038055
0-6 months    EE               PAKISTAN                       Medium               High              0.8333333   0.3795241   1.829777
0-6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL                          Low                  High              1.6790123   0.6878462   4.098420
0-6 months    GMS-Nepal        NEPAL                          Medium               High              0.9596774   0.3147689   2.925895
0-6 months    IRC              INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA                          Low                  High              1.6125462   0.7825162   3.323005
0-6 months    IRC              INDIA                          Medium               High              2.4142739   1.2281259   4.746027
0-6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     Low                  High              1.0865470   1.0112229   1.167482
0-6 months    JiVitA-3         BANGLADESH                     Medium               High              1.1091751   1.0373856   1.185933
0-6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4         BANGLADESH                     Low                  High              1.3656623   1.1353839   1.642646
0-6 months    JiVitA-4         BANGLADESH                     Medium               High              1.2115769   0.9921911   1.479472
0-6 months    MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           PERU                           Low                  High              0.6804155   0.3132077   1.478141
0-6 months    MAL-ED           PERU                           Medium               High              0.9727158   0.4861591   1.946227
0-6 months    MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           SOUTH AFRICA                   Low                  High              0.8866667   0.4101435   1.916836
0-6 months    MAL-ED           SOUTH AFRICA                   Medium               High              0.6884058   0.2459086   1.927149
0-6 months    NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     Low                  High              1.2125309   0.6592622   2.230116
0-6 months    NIH-Birth        BANGLADESH                     Medium               High              0.7419935   0.3695445   1.489819
0-6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     Low                  High              1.5195307   0.6854757   3.368425
0-6 months    NIH-Crypto       BANGLADESH                     Medium               High              1.9502661   0.9337653   4.073334
0-6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        Low                  High              2.5161159   1.3433968   4.712561
0-6 months    PROBIT           BELARUS                        Medium               High              1.6735113   0.8538072   3.280178
0-6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          Low                  High              1.8916448   1.4391408   2.486428
0-6 months    SAS-CompFeed     INDIA                          Medium               High              1.5824722   1.1843111   2.114494
0-6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  High              1.0890587   0.9623678   1.232428
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               High              1.0471085   0.9366992   1.170532


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0501777   -0.0080332   0.1083887
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0377600   -0.1019812   0.0264613
0-24 months   COHORTS          INDIA                          High                 NA                 0.0934676    0.0789036   0.1080316
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0354051    0.0064749   0.0643352
0-24 months   EE               PAKISTAN                       High                 NA                 0.1343972   -0.1131243   0.3819187
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0832791    0.0045306   0.1620276
0-24 months   Guatemala BSC    GUATEMALA                      High                 NA                 0.0047672   -0.0498547   0.0593891
0-24 months   IRC              INDIA                          High                 NA                 0.0638673    0.0045717   0.1231629
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0085883    0.0009078   0.0162689
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0023995   -0.0194911   0.0242901
0-24 months   LCNI-5           MALAWI                         High                 NA                 0.0346184   -0.0005881   0.0698249
0-24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0075573   -0.0768178   0.0617032
0-24 months   MAL-ED           INDIA                          High                 NA                -0.0162899   -0.1124229   0.0798431
0-24 months   MAL-ED           NEPAL                          High                 NA                -0.0098952   -0.0778345   0.0580441
0-24 months   MAL-ED           PERU                           High                 NA                -0.0128320   -0.0839509   0.0582868
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0155403   -0.0558411   0.0869216
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0385421   -0.2488804   0.3259646
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0504440   -0.0022500   0.1031379
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0453421    0.0159701   0.0747142
0-24 months   PROBIT           BELARUS                        High                 NA                 0.0120292    0.0035663   0.0204921
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0582268    0.0262509   0.0902028
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0894491    0.0329515   0.1459468
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.1434367   -0.0142747   0.3011481
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0097622   -0.0098865   0.0294109
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0120596    0.0051524   0.0189669
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                 0.0436568   -0.0060574   0.0933711
0-6 months    COHORTS          GUATEMALA                      High                 NA                 0.0251422   -0.0069588   0.0572433
0-6 months    COHORTS          INDIA                          High                 NA                 0.0307401    0.0207210   0.0407593
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0218790    0.0105649   0.0331931
0-6 months    EE               PAKISTAN                       High                 NA                 0.0228723   -0.2204591   0.2662038
0-6 months    GMS-Nepal        NEPAL                          High                 NA                 0.0275074   -0.0207563   0.0757711
0-6 months    IRC              INDIA                          High                 NA                 0.0646065    0.0167542   0.1124589
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0061560   -0.0007637   0.0130758
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0163682    0.0059025   0.0268340
0-6 months    MAL-ED           PERU                           High                 NA                -0.0179590   -0.0777007   0.0417828
0-6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.0129065   -0.0632808   0.0374679
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                -0.0033847   -0.0445999   0.0378304
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0218747   -0.0003701   0.0441195
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0051927    0.0012062   0.0091793
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0571889    0.0401785   0.0741994
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0036583   -0.0005379   0.0078544


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0789717   -0.0178151   0.1665547
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0814085   -0.2292340   0.0486397
0-24 months   COHORTS          INDIA                          High                 NA                 0.7075971    0.5877178   0.7926192
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0994203    0.0145099   0.1770148
0-24 months   EE               PAKISTAN                       High                 NA                 0.2235988   -0.3205244   0.5435156
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.3424790   -0.0719726   0.5966932
0-24 months   Guatemala BSC    GUATEMALA                      High                 NA                 0.0253651   -0.3133691   0.2767356
0-24 months   IRC              INDIA                          High                 NA                 0.2567215   -0.0234834   0.4602131
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0465224    0.0041337   0.0871069
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0117886   -0.1018032   0.1136695
0-24 months   LCNI-5           MALAWI                         High                 NA                 0.1667419   -0.0195511   0.3189954
0-24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0404316   -0.4858354   0.2714551
0-24 months   MAL-ED           INDIA                          High                 NA                -0.0762506   -0.6336014   0.2909438
0-24 months   MAL-ED           NEPAL                          High                 NA                -0.1171797   -1.2929418   0.4556815
0-24 months   MAL-ED           PERU                           High                 NA                -0.0605512   -0.4549738   0.2269490
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0668444   -0.2965740   0.3283997
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0781648   -0.7350273   0.5102209
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.1618839   -0.0247835   0.3145493
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.3471649    0.0925153   0.5303573
0-24 months   PROBIT           BELARUS                        High                 NA                 0.4352406    0.0795258   0.6534904
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.4290398    0.1550203   0.6141971
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.2704646    0.0803106   0.4213025
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.2982913   -0.1198872   0.5603172
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0982811   -0.1223037   0.2755106
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0716643    0.0297562   0.1117622
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                 0.1765463   -0.0487954   0.3534717
0-6 months    COHORTS          GUATEMALA                      High                 NA                 0.2486543   -0.1425983   0.5059328
0-6 months    COHORTS          INDIA                          High                 NA                 0.6494426    0.3829281   0.8008489
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.3502931    0.1513690   0.5025882
0-6 months    EE               PAKISTAN                       High                 NA                 0.0540881   -0.7380042   0.4851857
0-6 months    GMS-Nepal        NEPAL                          High                 NA                 0.3186275   -0.5372684   0.6979912
0-6 months    IRC              INDIA                          High                 NA                 0.4272368    0.0228067   0.6642858
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0417279   -0.0062109   0.0873827
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.1615021    0.0525944   0.2578906
0-6 months    MAL-ED           PERU                           High                 NA                -0.1427265   -0.7288735   0.2446967
0-6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.1397459   -0.8365787   0.2926953
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                -0.0360849   -0.5832415   0.3219784
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.3527884   -0.1048467   0.6208679
0-6 months    PROBIT           BELARUS                        High                 NA                 0.4741393    0.0516300   0.7084160
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.3820920    0.2187696   0.5112706
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0400558   -0.0069385   0.0848568
