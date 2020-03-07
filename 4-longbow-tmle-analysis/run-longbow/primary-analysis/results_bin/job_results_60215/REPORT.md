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

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_feducyrs
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

agecat        studyid          country                        meducyrs    ever_stunted   n_cell       n
------------  ---------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          High                   0       17     373
0-24 months   CMC-V-BCS-2002   INDIA                          High                   1      141     373
0-24 months   CMC-V-BCS-2002   INDIA                          Low                    0        5     373
0-24 months   CMC-V-BCS-2002   INDIA                          Low                    1      101     373
0-24 months   CMC-V-BCS-2002   INDIA                          Medium                 0        6     373
0-24 months   CMC-V-BCS-2002   INDIA                          Medium                 1      103     373
0-24 months   COHORTS          GUATEMALA                      High                   0       65    1341
0-24 months   COHORTS          GUATEMALA                      High                   1      220    1341
0-24 months   COHORTS          GUATEMALA                      Low                    0      132    1341
0-24 months   COHORTS          GUATEMALA                      Low                    1      504    1341
0-24 months   COHORTS          GUATEMALA                      Medium                 0      117    1341
0-24 months   COHORTS          GUATEMALA                      Medium                 1      303    1341
0-24 months   COHORTS          INDIA                          High                   0      648    5852
0-24 months   COHORTS          INDIA                          High                   1      145    5852
0-24 months   COHORTS          INDIA                          Low                    0      931    5852
0-24 months   COHORTS          INDIA                          Low                    1     1025    5852
0-24 months   COHORTS          INDIA                          Medium                 0     2039    5852
0-24 months   COHORTS          INDIA                          Medium                 1     1064    5852
0-24 months   COHORTS          PHILIPPINES                    High                   0      495    3058
0-24 months   COHORTS          PHILIPPINES                    High                   1      678    3058
0-24 months   COHORTS          PHILIPPINES                    Low                    0      177    3058
0-24 months   COHORTS          PHILIPPINES                    Low                    1      726    3058
0-24 months   COHORTS          PHILIPPINES                    Medium                 0      287    3058
0-24 months   COHORTS          PHILIPPINES                    Medium                 1      695    3058
0-24 months   EE               PAKISTAN                       High                   0        3     376
0-24 months   EE               PAKISTAN                       High                   1       12     376
0-24 months   EE               PAKISTAN                       Low                    0       31     376
0-24 months   EE               PAKISTAN                       Low                    1      297     376
0-24 months   EE               PAKISTAN                       Medium                 0        7     376
0-24 months   EE               PAKISTAN                       Medium                 1       26     376
0-24 months   GMS-Nepal        NEPAL                          High                   0       43     695
0-24 months   GMS-Nepal        NEPAL                          High                   1       42     695
0-24 months   GMS-Nepal        NEPAL                          Low                    0      158     695
0-24 months   GMS-Nepal        NEPAL                          Low                    1      328     695
0-24 months   GMS-Nepal        NEPAL                          Medium                 0       50     695
0-24 months   GMS-Nepal        NEPAL                          Medium                 1       74     695
0-24 months   Guatemala BSC    GUATEMALA                      High                   0       60     282
0-24 months   Guatemala BSC    GUATEMALA                      High                   1       58     282
0-24 months   Guatemala BSC    GUATEMALA                      Low                    0       27     282
0-24 months   Guatemala BSC    GUATEMALA                      Low                    1       49     282
0-24 months   Guatemala BSC    GUATEMALA                      Medium                 0       39     282
0-24 months   Guatemala BSC    GUATEMALA                      Medium                 1       49     282
0-24 months   IRC              INDIA                          High                   0       53     410
0-24 months   IRC              INDIA                          High                   1       71     410
0-24 months   IRC              INDIA                          Low                    0       51     410
0-24 months   IRC              INDIA                          Low                    1       96     410
0-24 months   IRC              INDIA                          Medium                 0       43     410
0-24 months   IRC              INDIA                          Medium                 1       96     410
0-24 months   JiVitA-3         BANGLADESH                     High                   0     5324   27193
0-24 months   JiVitA-3         BANGLADESH                     High                   1     3703   27193
0-24 months   JiVitA-3         BANGLADESH                     Low                    0     4472   27193
0-24 months   JiVitA-3         BANGLADESH                     Low                    1     5395   27193
0-24 months   JiVitA-3         BANGLADESH                     Medium                 0     3928   27193
0-24 months   JiVitA-3         BANGLADESH                     Medium                 1     4371   27193
0-24 months   JiVitA-4         BANGLADESH                     High                   0      946    5419
0-24 months   JiVitA-4         BANGLADESH                     High                   1      955    5419
0-24 months   JiVitA-4         BANGLADESH                     Low                    0      630    5419
0-24 months   JiVitA-4         BANGLADESH                     Low                    1     1155    5419
0-24 months   JiVitA-4         BANGLADESH                     Medium                 0      688    5419
0-24 months   JiVitA-4         BANGLADESH                     Medium                 1     1045    5419
0-24 months   LCNI-5           MALAWI                         High                   0      125     814
0-24 months   LCNI-5           MALAWI                         High                   1      173     814
0-24 months   LCNI-5           MALAWI                         Low                    0       84     814
0-24 months   LCNI-5           MALAWI                         Low                    1      177     814
0-24 months   LCNI-5           MALAWI                         Medium                 0       86     814
0-24 months   LCNI-5           MALAWI                         Medium                 1      169     814
0-24 months   MAL-ED           BANGLADESH                     High                   0       36     214
0-24 months   MAL-ED           BANGLADESH                     High                   1       42     214
0-24 months   MAL-ED           BANGLADESH                     Low                    0       25     214
0-24 months   MAL-ED           BANGLADESH                     Low                    1       45     214
0-24 months   MAL-ED           BANGLADESH                     Medium                 0       25     214
0-24 months   MAL-ED           BANGLADESH                     Medium                 1       41     214
0-24 months   MAL-ED           BRAZIL                         High                   0       57     232
0-24 months   MAL-ED           BRAZIL                         High                   1       22     232
0-24 months   MAL-ED           BRAZIL                         Low                    0       45     232
0-24 months   MAL-ED           BRAZIL                         Low                    1       18     232
0-24 months   MAL-ED           BRAZIL                         Medium                 0       67     232
0-24 months   MAL-ED           BRAZIL                         Medium                 1       23     232
0-24 months   MAL-ED           INDIA                          High                   0       27     220
0-24 months   MAL-ED           INDIA                          High                   1       36     220
0-24 months   MAL-ED           INDIA                          Low                    0       29     220
0-24 months   MAL-ED           INDIA                          Low                    1       47     220
0-24 months   MAL-ED           INDIA                          Medium                 0       33     220
0-24 months   MAL-ED           INDIA                          Medium                 1       48     220
0-24 months   MAL-ED           NEPAL                          High                   0       40     225
0-24 months   MAL-ED           NEPAL                          High                   1       13     225
0-24 months   MAL-ED           NEPAL                          Low                    0       56     225
0-24 months   MAL-ED           NEPAL                          Low                    1       40     225
0-24 months   MAL-ED           NEPAL                          Medium                 0       53     225
0-24 months   MAL-ED           NEPAL                          Medium                 1       23     225
0-24 months   MAL-ED           PERU                           High                   0       38     302
0-24 months   MAL-ED           PERU                           High                   1       53     302
0-24 months   MAL-ED           PERU                           Low                    0       37     302
0-24 months   MAL-ED           PERU                           Low                    1       67     302
0-24 months   MAL-ED           PERU                           Medium                 0       40     302
0-24 months   MAL-ED           PERU                           Medium                 1       67     302
0-24 months   MAL-ED           SOUTH AFRICA                   High                   0       47     314
0-24 months   MAL-ED           SOUTH AFRICA                   High                   1       48     314
0-24 months   MAL-ED           SOUTH AFRICA                   Low                    0       62     314
0-24 months   MAL-ED           SOUTH AFRICA                   Low                    1       88     314
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                 0       29     314
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                 1       40     314
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0        4     217
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1        7     217
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0       11     217
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1       53     217
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0       22     217
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1      120     217
0-24 months   NIH-Birth        BANGLADESH                     High                   0       76     629
0-24 months   NIH-Birth        BANGLADESH                     High                   1      103     629
0-24 months   NIH-Birth        BANGLADESH                     Low                    0       65     629
0-24 months   NIH-Birth        BANGLADESH                     Low                    1      165     629
0-24 months   NIH-Birth        BANGLADESH                     Medium                 0       70     629
0-24 months   NIH-Birth        BANGLADESH                     Medium                 1      150     629
0-24 months   NIH-Crypto       BANGLADESH                     High                   0      157     758
0-24 months   NIH-Crypto       BANGLADESH                     High                   1       97     758
0-24 months   NIH-Crypto       BANGLADESH                     Low                    0      117     758
0-24 months   NIH-Crypto       BANGLADESH                     Low                    1      125     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium                 0      122     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium                 1      140     758
0-24 months   PROBIT           BELARUS                        High                   0     2578   16897
0-24 months   PROBIT           BELARUS                        High                   1      262   16897
0-24 months   PROBIT           BELARUS                        Low                    0     5135   16897
0-24 months   PROBIT           BELARUS                        Low                    1      965   16897
0-24 months   PROBIT           BELARUS                        Medium                 0     7031   16897
0-24 months   PROBIT           BELARUS                        Medium                 1      926   16897
0-24 months   PROVIDE          BANGLADESH                     High                   0      147     700
0-24 months   PROVIDE          BANGLADESH                     High                   1       88     700
0-24 months   PROVIDE          BANGLADESH                     Low                    0      112     700
0-24 months   PROVIDE          BANGLADESH                     Low                    1      102     700
0-24 months   PROVIDE          BANGLADESH                     Medium                 0      136     700
0-24 months   PROVIDE          BANGLADESH                     Medium                 1      115     700
0-24 months   SAS-CompFeed     INDIA                          High                   0      145    1533
0-24 months   SAS-CompFeed     INDIA                          High                   1      178    1533
0-24 months   SAS-CompFeed     INDIA                          Low                    0      158    1533
0-24 months   SAS-CompFeed     INDIA                          Low                    1      538    1533
0-24 months   SAS-CompFeed     INDIA                          Medium                 0      170    1533
0-24 months   SAS-CompFeed     INDIA                          Medium                 1      344    1533
0-24 months   SAS-FoodSuppl    INDIA                          High                   0        7     418
0-24 months   SAS-FoodSuppl    INDIA                          High                   1       34     418
0-24 months   SAS-FoodSuppl    INDIA                          Low                    0       54     418
0-24 months   SAS-FoodSuppl    INDIA                          Low                    1      278     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium                 0       11     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium                 1       34     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      426    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1      195    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       50    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       32    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1083    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      600    2386
0-24 months   ZVITAMBO         ZIMBABWE                       High                   0     4699   14054
0-24 months   ZVITAMBO         ZIMBABWE                       High                   1     2925   14054
0-24 months   ZVITAMBO         ZIMBABWE                       Low                    0     1610   14054
0-24 months   ZVITAMBO         ZIMBABWE                       Low                    1     1349   14054
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                 0     1880   14054
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                 1     1591   14054
0-6 months    CMC-V-BCS-2002   INDIA                          High                   0       80     368
0-6 months    CMC-V-BCS-2002   INDIA                          High                   1       77     368
0-6 months    CMC-V-BCS-2002   INDIA                          Low                    0       51     368
0-6 months    CMC-V-BCS-2002   INDIA                          Low                    1       53     368
0-6 months    CMC-V-BCS-2002   INDIA                          Medium                 0       49     368
0-6 months    CMC-V-BCS-2002   INDIA                          Medium                 1       58     368
0-6 months    COHORTS          GUATEMALA                      High                   0      164    1078
0-6 months    COHORTS          GUATEMALA                      High                   1       60    1078
0-6 months    COHORTS          GUATEMALA                      Low                    0      322    1078
0-6 months    COHORTS          GUATEMALA                      Low                    1      192    1078
0-6 months    COHORTS          GUATEMALA                      Medium                 0      245    1078
0-6 months    COHORTS          GUATEMALA                      Medium                 1       95    1078
0-6 months    COHORTS          INDIA                          High                   0      676    5662
0-6 months    COHORTS          INDIA                          High                   1       77    5662
0-6 months    COHORTS          INDIA                          Low                    0     1436    5662
0-6 months    COHORTS          INDIA                          Low                    1      473    5662
0-6 months    COHORTS          INDIA                          Medium                 0     2483    5662
0-6 months    COHORTS          INDIA                          Medium                 1      517    5662
0-6 months    COHORTS          PHILIPPINES                    High                   0      954    3058
0-6 months    COHORTS          PHILIPPINES                    High                   1      219    3058
0-6 months    COHORTS          PHILIPPINES                    Low                    0      638    3058
0-6 months    COHORTS          PHILIPPINES                    Low                    1      265    3058
0-6 months    COHORTS          PHILIPPINES                    Medium                 0      735    3058
0-6 months    COHORTS          PHILIPPINES                    Medium                 1      247    3058
0-6 months    EE               PAKISTAN                       High                   0        3     376
0-6 months    EE               PAKISTAN                       High                   1       12     376
0-6 months    EE               PAKISTAN                       Low                    0       79     376
0-6 months    EE               PAKISTAN                       Low                    1      249     376
0-6 months    EE               PAKISTAN                       Medium                 0       13     376
0-6 months    EE               PAKISTAN                       Medium                 1       20     376
0-6 months    GMS-Nepal        NEPAL                          High                   0       66     695
0-6 months    GMS-Nepal        NEPAL                          High                   1       19     695
0-6 months    GMS-Nepal        NEPAL                          Low                    0      317     695
0-6 months    GMS-Nepal        NEPAL                          Low                    1      169     695
0-6 months    GMS-Nepal        NEPAL                          Medium                 0       90     695
0-6 months    GMS-Nepal        NEPAL                          Medium                 1       34     695
0-6 months    Guatemala BSC    GUATEMALA                      High                   0       74     265
0-6 months    Guatemala BSC    GUATEMALA                      High                   1       38     265
0-6 months    Guatemala BSC    GUATEMALA                      Low                    0       52     265
0-6 months    Guatemala BSC    GUATEMALA                      Low                    1       22     265
0-6 months    Guatemala BSC    GUATEMALA                      Medium                 0       55     265
0-6 months    Guatemala BSC    GUATEMALA                      Medium                 1       24     265
0-6 months    IRC              INDIA                          High                   0       82     410
0-6 months    IRC              INDIA                          High                   1       42     410
0-6 months    IRC              INDIA                          Low                    0       84     410
0-6 months    IRC              INDIA                          Low                    1       63     410
0-6 months    IRC              INDIA                          Medium                 0       70     410
0-6 months    IRC              INDIA                          Medium                 1       69     410
0-6 months    JiVitA-3         BANGLADESH                     High                   0     6011   27127
0-6 months    JiVitA-3         BANGLADESH                     High                   1     2984   27127
0-6 months    JiVitA-3         BANGLADESH                     Low                    0     5327   27127
0-6 months    JiVitA-3         BANGLADESH                     Low                    1     4520   27127
0-6 months    JiVitA-3         BANGLADESH                     Medium                 0     4585   27127
0-6 months    JiVitA-3         BANGLADESH                     Medium                 1     3700   27127
0-6 months    JiVitA-4         BANGLADESH                     High                   0     1271    5111
0-6 months    JiVitA-4         BANGLADESH                     High                   1      525    5111
0-6 months    JiVitA-4         BANGLADESH                     Low                    0     1002    5111
0-6 months    JiVitA-4         BANGLADESH                     Low                    1      678    5111
0-6 months    JiVitA-4         BANGLADESH                     Medium                 0     1062    5111
0-6 months    JiVitA-4         BANGLADESH                     Medium                 1      573    5111
0-6 months    LCNI-5           MALAWI                         High                   0       65     267
0-6 months    LCNI-5           MALAWI                         High                   1       22     267
0-6 months    LCNI-5           MALAWI                         Low                    0       49     267
0-6 months    LCNI-5           MALAWI                         Low                    1       43     267
0-6 months    LCNI-5           MALAWI                         Medium                 0       58     267
0-6 months    LCNI-5           MALAWI                         Medium                 1       30     267
0-6 months    MAL-ED           BANGLADESH                     High                   0       58     214
0-6 months    MAL-ED           BANGLADESH                     High                   1       20     214
0-6 months    MAL-ED           BANGLADESH                     Low                    0       42     214
0-6 months    MAL-ED           BANGLADESH                     Low                    1       28     214
0-6 months    MAL-ED           BANGLADESH                     Medium                 0       41     214
0-6 months    MAL-ED           BANGLADESH                     Medium                 1       25     214
0-6 months    MAL-ED           BRAZIL                         High                   0       60     232
0-6 months    MAL-ED           BRAZIL                         High                   1       19     232
0-6 months    MAL-ED           BRAZIL                         Low                    0       49     232
0-6 months    MAL-ED           BRAZIL                         Low                    1       14     232
0-6 months    MAL-ED           BRAZIL                         Medium                 0       71     232
0-6 months    MAL-ED           BRAZIL                         Medium                 1       19     232
0-6 months    MAL-ED           INDIA                          High                   0       44     220
0-6 months    MAL-ED           INDIA                          High                   1       19     220
0-6 months    MAL-ED           INDIA                          Low                    0       52     220
0-6 months    MAL-ED           INDIA                          Low                    1       24     220
0-6 months    MAL-ED           INDIA                          Medium                 0       52     220
0-6 months    MAL-ED           INDIA                          Medium                 1       29     220
0-6 months    MAL-ED           NEPAL                          High                   0       46     225
0-6 months    MAL-ED           NEPAL                          High                   1        7     225
0-6 months    MAL-ED           NEPAL                          Low                    0       76     225
0-6 months    MAL-ED           NEPAL                          Low                    1       20     225
0-6 months    MAL-ED           NEPAL                          Medium                 0       63     225
0-6 months    MAL-ED           NEPAL                          Medium                 1       13     225
0-6 months    MAL-ED           PERU                           High                   0       50     302
0-6 months    MAL-ED           PERU                           High                   1       41     302
0-6 months    MAL-ED           PERU                           Low                    0       60     302
0-6 months    MAL-ED           PERU                           Low                    1       44     302
0-6 months    MAL-ED           PERU                           Medium                 0       64     302
0-6 months    MAL-ED           PERU                           Medium                 1       43     302
0-6 months    MAL-ED           SOUTH AFRICA                   High                   0       59     314
0-6 months    MAL-ED           SOUTH AFRICA                   High                   1       36     314
0-6 months    MAL-ED           SOUTH AFRICA                   Low                    0       99     314
0-6 months    MAL-ED           SOUTH AFRICA                   Low                    1       51     314
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                 0       40     314
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                 1       29     314
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0       10     217
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1        1     217
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0       38     217
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1       26     217
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0       82     217
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1       60     217
0-6 months    NIH-Birth        BANGLADESH                     High                   0      126     629
0-6 months    NIH-Birth        BANGLADESH                     High                   1       53     629
0-6 months    NIH-Birth        BANGLADESH                     Low                    0      146     629
0-6 months    NIH-Birth        BANGLADESH                     Low                    1       84     629
0-6 months    NIH-Birth        BANGLADESH                     Medium                 0      137     629
0-6 months    NIH-Birth        BANGLADESH                     Medium                 1       83     629
0-6 months    NIH-Crypto       BANGLADESH                     High                   0      195     758
0-6 months    NIH-Crypto       BANGLADESH                     High                   1       59     758
0-6 months    NIH-Crypto       BANGLADESH                     Low                    0      166     758
0-6 months    NIH-Crypto       BANGLADESH                     Low                    1       76     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium                 0      168     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium                 1       94     758
0-6 months    PROBIT           BELARUS                        High                   0     2698   16892
0-6 months    PROBIT           BELARUS                        High                   1      142   16892
0-6 months    PROBIT           BELARUS                        Low                    0     5576   16892
0-6 months    PROBIT           BELARUS                        Low                    1      521   16892
0-6 months    PROBIT           BELARUS                        Medium                 0     7459   16892
0-6 months    PROBIT           BELARUS                        Medium                 1      496   16892
0-6 months    PROVIDE          BANGLADESH                     High                   0      184     700
0-6 months    PROVIDE          BANGLADESH                     High                   1       51     700
0-6 months    PROVIDE          BANGLADESH                     Low                    0      162     700
0-6 months    PROVIDE          BANGLADESH                     Low                    1       52     700
0-6 months    PROVIDE          BANGLADESH                     Medium                 0      186     700
0-6 months    PROVIDE          BANGLADESH                     Medium                 1       65     700
0-6 months    SAS-CompFeed     INDIA                          High                   0      228    1530
0-6 months    SAS-CompFeed     INDIA                          High                   1       95    1530
0-6 months    SAS-CompFeed     INDIA                          Low                    0      350    1530
0-6 months    SAS-CompFeed     INDIA                          Low                    1      345    1530
0-6 months    SAS-CompFeed     INDIA                          Medium                 0      301    1530
0-6 months    SAS-CompFeed     INDIA                          Medium                 1      211    1530
0-6 months    SAS-FoodSuppl    INDIA                          High                   0       26     416
0-6 months    SAS-FoodSuppl    INDIA                          High                   1       14     416
0-6 months    SAS-FoodSuppl    INDIA                          Low                    0      201     416
0-6 months    SAS-FoodSuppl    INDIA                          Low                    1      130     416
0-6 months    SAS-FoodSuppl    INDIA                          Medium                 0       27     416
0-6 months    SAS-FoodSuppl    INDIA                          Medium                 1       18     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      503    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1      118    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       65    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       17    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1353    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      330    2386
0-6 months    ZVITAMBO         ZIMBABWE                       High                   0     5759   14037
0-6 months    ZVITAMBO         ZIMBABWE                       High                   1     1858   14037
0-6 months    ZVITAMBO         ZIMBABWE                       Low                    0     2147   14037
0-6 months    ZVITAMBO         ZIMBABWE                       Low                    1      807   14037
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                 0     2499   14037
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                 1      967   14037
6-24 months   CMC-V-BCS-2002   INDIA                          High                   0       17     185
6-24 months   CMC-V-BCS-2002   INDIA                          High                   1       64     185
6-24 months   CMC-V-BCS-2002   INDIA                          Low                    0        5     185
6-24 months   CMC-V-BCS-2002   INDIA                          Low                    1       48     185
6-24 months   CMC-V-BCS-2002   INDIA                          Medium                 0        6     185
6-24 months   CMC-V-BCS-2002   INDIA                          Medium                 1       45     185
6-24 months   COHORTS          GUATEMALA                      High                   0       30     887
6-24 months   COHORTS          GUATEMALA                      High                   1      160     887
6-24 months   COHORTS          GUATEMALA                      Low                    0       89     887
6-24 months   COHORTS          GUATEMALA                      Low                    1      312     887
6-24 months   COHORTS          GUATEMALA                      Medium                 0       88     887
6-24 months   COHORTS          GUATEMALA                      Medium                 1      208     887
6-24 months   COHORTS          INDIA                          High                   0      607    4497
6-24 months   COHORTS          INDIA                          High                   1       68    4497
6-24 months   COHORTS          INDIA                          Low                    0      821    4497
6-24 months   COHORTS          INDIA                          Low                    1      552    4497
6-24 months   COHORTS          INDIA                          Medium                 0     1902    4497
6-24 months   COHORTS          INDIA                          Medium                 1      547    4497
6-24 months   COHORTS          PHILIPPINES                    High                   0      394    2121
6-24 months   COHORTS          PHILIPPINES                    High                   1      459    2121
6-24 months   COHORTS          PHILIPPINES                    Low                    0      136    2121
6-24 months   COHORTS          PHILIPPINES                    Low                    1      461    2121
6-24 months   COHORTS          PHILIPPINES                    Medium                 0      223    2121
6-24 months   COHORTS          PHILIPPINES                    Medium                 1      448    2121
6-24 months   EE               PAKISTAN                       High                   0        3      93
6-24 months   EE               PAKISTAN                       High                   1        0      93
6-24 months   EE               PAKISTAN                       Low                    0       29      93
6-24 months   EE               PAKISTAN                       Low                    1       48      93
6-24 months   EE               PAKISTAN                       Medium                 0        7      93
6-24 months   EE               PAKISTAN                       Medium                 1        6      93
6-24 months   GMS-Nepal        NEPAL                          High                   0       33     394
6-24 months   GMS-Nepal        NEPAL                          High                   1       23     394
6-24 months   GMS-Nepal        NEPAL                          Low                    0      105     394
6-24 months   GMS-Nepal        NEPAL                          Low                    1      159     394
6-24 months   GMS-Nepal        NEPAL                          Medium                 0       34     394
6-24 months   GMS-Nepal        NEPAL                          Medium                 1       40     394
6-24 months   Guatemala BSC    GUATEMALA                      High                   0       54     185
6-24 months   Guatemala BSC    GUATEMALA                      High                   1       20     185
6-24 months   Guatemala BSC    GUATEMALA                      Low                    0       22     185
6-24 months   Guatemala BSC    GUATEMALA                      Low                    1       27     185
6-24 months   Guatemala BSC    GUATEMALA                      Medium                 0       37     185
6-24 months   Guatemala BSC    GUATEMALA                      Medium                 1       25     185
6-24 months   IRC              INDIA                          High                   0       53     236
6-24 months   IRC              INDIA                          High                   1       29     236
6-24 months   IRC              INDIA                          Low                    0       51     236
6-24 months   IRC              INDIA                          Low                    1       33     236
6-24 months   IRC              INDIA                          Medium                 0       43     236
6-24 months   IRC              INDIA                          Medium                 1       27     236
6-24 months   JiVitA-3         BANGLADESH                     High                   0     3432   10484
6-24 months   JiVitA-3         BANGLADESH                     High                   1      719   10484
6-24 months   JiVitA-3         BANGLADESH                     Low                    0     2365   10484
6-24 months   JiVitA-3         BANGLADESH                     Low                    1      875   10484
6-24 months   JiVitA-3         BANGLADESH                     Medium                 0     2422   10484
6-24 months   JiVitA-3         BANGLADESH                     Medium                 1      671   10484
6-24 months   JiVitA-4         BANGLADESH                     High                   0      943    3639
6-24 months   JiVitA-4         BANGLADESH                     High                   1      430    3639
6-24 months   JiVitA-4         BANGLADESH                     Low                    0      630    3639
6-24 months   JiVitA-4         BANGLADESH                     Low                    1      477    3639
6-24 months   JiVitA-4         BANGLADESH                     Medium                 0      687    3639
6-24 months   JiVitA-4         BANGLADESH                     Medium                 1      472    3639
6-24 months   LCNI-5           MALAWI                         High                   0      120     708
6-24 months   LCNI-5           MALAWI                         High                   1      151     708
6-24 months   LCNI-5           MALAWI                         Low                    0       82     708
6-24 months   LCNI-5           MALAWI                         Low                    1      134     708
6-24 months   LCNI-5           MALAWI                         Medium                 0       82     708
6-24 months   LCNI-5           MALAWI                         Medium                 1      139     708
6-24 months   MAL-ED           BANGLADESH                     High                   0       31     130
6-24 months   MAL-ED           BANGLADESH                     High                   1       22     130
6-24 months   MAL-ED           BANGLADESH                     Low                    0       21     130
6-24 months   MAL-ED           BANGLADESH                     Low                    1       17     130
6-24 months   MAL-ED           BANGLADESH                     Medium                 0       23     130
6-24 months   MAL-ED           BANGLADESH                     Medium                 1       16     130
6-24 months   MAL-ED           BRAZIL                         High                   0       51     162
6-24 months   MAL-ED           BRAZIL                         High                   1        3     162
6-24 months   MAL-ED           BRAZIL                         Low                    0       39     162
6-24 months   MAL-ED           BRAZIL                         Low                    1        4     162
6-24 months   MAL-ED           BRAZIL                         Medium                 0       61     162
6-24 months   MAL-ED           BRAZIL                         Medium                 1        4     162
6-24 months   MAL-ED           INDIA                          High                   0       25     140
6-24 months   MAL-ED           INDIA                          High                   1       17     140
6-24 months   MAL-ED           INDIA                          Low                    0       27     140
6-24 months   MAL-ED           INDIA                          Low                    1       23     140
6-24 months   MAL-ED           INDIA                          Medium                 0       29     140
6-24 months   MAL-ED           INDIA                          Medium                 1       19     140
6-24 months   MAL-ED           NEPAL                          High                   0       39     182
6-24 months   MAL-ED           NEPAL                          High                   1        6     182
6-24 months   MAL-ED           NEPAL                          Low                    0       55     182
6-24 months   MAL-ED           NEPAL                          Low                    1       20     182
6-24 months   MAL-ED           NEPAL                          Medium                 0       52     182
6-24 months   MAL-ED           NEPAL                          Medium                 1       10     182
6-24 months   MAL-ED           PERU                           High                   0       29     149
6-24 months   MAL-ED           PERU                           High                   1       12     149
6-24 months   MAL-ED           PERU                           Low                    0       28     149
6-24 months   MAL-ED           PERU                           Low                    1       23     149
6-24 months   MAL-ED           PERU                           Medium                 0       33     149
6-24 months   MAL-ED           PERU                           Medium                 1       24     149
6-24 months   MAL-ED           SOUTH AFRICA                   High                   0       31     158
6-24 months   MAL-ED           SOUTH AFRICA                   High                   1       12     158
6-24 months   MAL-ED           SOUTH AFRICA                   Low                    0       47     158
6-24 months   MAL-ED           SOUTH AFRICA                   Low                    1       37     158
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                 0       20     158
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                 1       11     158
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0        2     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1        6     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0        9     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1       27     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0       17     121
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1       60     121
6-24 months   NIH-Birth        BANGLADESH                     High                   0       61     345
6-24 months   NIH-Birth        BANGLADESH                     High                   1       50     345
6-24 months   NIH-Birth        BANGLADESH                     Low                    0       38     345
6-24 months   NIH-Birth        BANGLADESH                     Low                    1       81     345
6-24 months   NIH-Birth        BANGLADESH                     Medium                 0       48     345
6-24 months   NIH-Birth        BANGLADESH                     Medium                 1       67     345
6-24 months   NIH-Crypto       BANGLADESH                     High                   0      150     506
6-24 months   NIH-Crypto       BANGLADESH                     High                   1       38     506
6-24 months   NIH-Crypto       BANGLADESH                     Low                    0      109     506
6-24 months   NIH-Crypto       BANGLADESH                     Low                    1       49     506
6-24 months   NIH-Crypto       BANGLADESH                     Medium                 0      114     506
6-24 months   NIH-Crypto       BANGLADESH                     Medium                 1       46     506
6-24 months   PROBIT           BELARUS                        High                   0     2520   15467
6-24 months   PROBIT           BELARUS                        High                   1      120   15467
6-24 months   PROBIT           BELARUS                        Low                    0     5021   15467
6-24 months   PROBIT           BELARUS                        Low                    1      444   15467
6-24 months   PROBIT           BELARUS                        Medium                 0     6932   15467
6-24 months   PROBIT           BELARUS                        Medium                 1      430   15467
6-24 months   PROVIDE          BANGLADESH                     High                   0      126     456
6-24 months   PROVIDE          BANGLADESH                     High                   1       37     456
6-24 months   PROVIDE          BANGLADESH                     Low                    0       86     456
6-24 months   PROVIDE          BANGLADESH                     Low                    1       50     456
6-24 months   PROVIDE          BANGLADESH                     Medium                 0      107     456
6-24 months   PROVIDE          BANGLADESH                     Medium                 1       50     456
6-24 months   SAS-CompFeed     INDIA                          High                   0      130     813
6-24 months   SAS-CompFeed     INDIA                          High                   1       83     813
6-24 months   SAS-CompFeed     INDIA                          Low                    0      124     813
6-24 months   SAS-CompFeed     INDIA                          Low                    1      193     813
6-24 months   SAS-CompFeed     INDIA                          Medium                 0      150     813
6-24 months   SAS-CompFeed     INDIA                          Medium                 1      133     813
6-24 months   SAS-FoodSuppl    INDIA                          High                   0        7     243
6-24 months   SAS-FoodSuppl    INDIA                          High                   1       20     243
6-24 months   SAS-FoodSuppl    INDIA                          Low                    0       44     243
6-24 months   SAS-FoodSuppl    INDIA                          Low                    1      148     243
6-24 months   SAS-FoodSuppl    INDIA                          Medium                 0        8     243
6-24 months   SAS-FoodSuppl    INDIA                          Medium                 1       16     243
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      328    1597
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       77    1597
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       40    1597
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       15    1597
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      867    1597
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      270    1597
6-24 months   ZVITAMBO         ZIMBABWE                       High                   0     3634    8483
6-24 months   ZVITAMBO         ZIMBABWE                       High                   1     1067    8483
6-24 months   ZVITAMBO         ZIMBABWE                       Low                    0     1193    8483
6-24 months   ZVITAMBO         ZIMBABWE                       Low                    1      542    8483
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                 0     1423    8483
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                 1      624    8483


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
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/58e3a46a-238d-4ec3-9885-da59911a0dda/1d022fb3-e9bf-4828-bc89-0d046e0d4482/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/58e3a46a-238d-4ec3-9885-da59911a0dda/1d022fb3-e9bf-4828-bc89-0d046e0d4482/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/58e3a46a-238d-4ec3-9885-da59911a0dda/1d022fb3-e9bf-4828-bc89-0d046e0d4482/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/58e3a46a-238d-4ec3-9885-da59911a0dda/1d022fb3-e9bf-4828-bc89-0d046e0d4482/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.8924051   0.8440236   0.9407866
0-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.9528302   0.9124175   0.9932429
0-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.9449541   0.9020810   0.9878273
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.7881939   0.7332498   0.8431380
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.7761497   0.7424433   0.8098561
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.7472540   0.7051013   0.7894067
0-24 months   COHORTS          INDIA                          High                 NA                0.2481065   0.2186675   0.2775454
0-24 months   COHORTS          INDIA                          Low                  NA                0.4783475   0.4559751   0.5007199
0-24 months   COHORTS          INDIA                          Medium               NA                0.3556616   0.3389783   0.3723448
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.6603284   0.6320318   0.6886250
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.7671761   0.7335337   0.8008184
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.7002731   0.6685751   0.7319711
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.5438804   0.4441502   0.6436105
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.6593937   0.6164410   0.7023463
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.6279765   0.5307836   0.7251695
0-24 months   Guatemala BSC    GUATEMALA                      High                 NA                0.4913968   0.4013524   0.5814411
0-24 months   Guatemala BSC    GUATEMALA                      Low                  NA                0.6534323   0.5483392   0.7585253
0-24 months   Guatemala BSC    GUATEMALA                      Medium               NA                0.5551434   0.4504387   0.6598481
0-24 months   IRC              INDIA                          High                 NA                0.5706138   0.4863690   0.6548586
0-24 months   IRC              INDIA                          Low                  NA                0.6482910   0.5716597   0.7249224
0-24 months   IRC              INDIA                          Medium               NA                0.7009708   0.6291728   0.7727687
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.4873351   0.4731011   0.5015691
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.5198944   0.5071692   0.5326196
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.5022583   0.4902003   0.5143164
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.5495256   0.5199579   0.5790933
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.6145035   0.5804625   0.6485445
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.6029108   0.5756805   0.6301411
0-24 months   LCNI-5           MALAWI                         High                 NA                0.6083617   0.5529022   0.6638212
0-24 months   LCNI-5           MALAWI                         Low                  NA                0.6458495   0.5879488   0.7037502
0-24 months   LCNI-5           MALAWI                         Medium               NA                0.6609470   0.6004366   0.7214573
0-24 months   MAL-ED           BANGLADESH                     High                 NA                0.5973105   0.4944415   0.7001795
0-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.5753461   0.4751161   0.6755762
0-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.6102566   0.4916310   0.7288821
0-24 months   MAL-ED           BRAZIL                         High                 NA                0.2876492   0.1866728   0.3886255
0-24 months   MAL-ED           BRAZIL                         Low                  NA                0.2765969   0.1620549   0.3911389
0-24 months   MAL-ED           BRAZIL                         Medium               NA                0.2561628   0.1643566   0.3479690
0-24 months   MAL-ED           INDIA                          High                 NA                0.6120196   0.4903619   0.7336773
0-24 months   MAL-ED           INDIA                          Low                  NA                0.6198230   0.5169905   0.7226555
0-24 months   MAL-ED           INDIA                          Medium               NA                0.5876386   0.4825909   0.6926863
0-24 months   MAL-ED           NEPAL                          High                 NA                0.2812842   0.1573968   0.4051717
0-24 months   MAL-ED           NEPAL                          Low                  NA                0.4163548   0.3174366   0.5152730
0-24 months   MAL-ED           NEPAL                          Medium               NA                0.3056427   0.2043164   0.4069691
0-24 months   MAL-ED           PERU                           High                 NA                0.5945805   0.4947902   0.6943708
0-24 months   MAL-ED           PERU                           Low                  NA                0.6424794   0.5504660   0.7344927
0-24 months   MAL-ED           PERU                           Medium               NA                0.6175603   0.5291064   0.7060141
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.5318982   0.4360155   0.6277808
0-24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.5696547   0.4913437   0.6479657
0-24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.5718032   0.4582732   0.6853333
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                0.6327402   0.5642905   0.7011900
0-24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.6975969   0.6419037   0.7532901
0-24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.6725379   0.6137540   0.7313217
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.4897314   0.4330263   0.5464366
0-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.4597879   0.3977539   0.5218220
0-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.4987173   0.4399299   0.5575048
0-24 months   PROBIT           BELARUS                        High                 NA                0.0955213   0.0757329   0.1153097
0-24 months   PROBIT           BELARUS                        Low                  NA                0.1407392   0.1225597   0.1589186
0-24 months   PROBIT           BELARUS                        Medium               NA                0.1195225   0.1032745   0.1357705
0-24 months   PROVIDE          BANGLADESH                     High                 NA                0.4375347   0.3766260   0.4984434
0-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.4145188   0.3507474   0.4782901
0-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.4344667   0.3647401   0.5041933
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.6250844   0.5719797   0.6781890
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.7354275   0.6835196   0.7873355
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.6871329   0.6610108   0.7132551
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.8292683   0.7139546   0.9445820
0-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.8373494   0.7976046   0.8770942
0-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.7555556   0.6298411   0.8812700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3349889   0.2986138   0.3713639
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3566793   0.2516849   0.4616736
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3500103   0.3272499   0.3727706
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.4022338   0.3901385   0.4143290
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.4382050   0.4188946   0.4575155
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.4477686   0.4311586   0.4643786
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                0.4900592   0.4132531   0.5668652
0-6 months    CMC-V-BCS-2002   INDIA                          Low                  NA                0.5163080   0.4216679   0.6109480
0-6 months    CMC-V-BCS-2002   INDIA                          Medium               NA                0.5335602   0.4378797   0.6292408
0-6 months    COHORTS          GUATEMALA                      High                 NA                0.2997716   0.2391158   0.3604274
0-6 months    COHORTS          GUATEMALA                      Low                  NA                0.3564514   0.3165825   0.3963203
0-6 months    COHORTS          GUATEMALA                      Medium               NA                0.3190634   0.2708356   0.3672913
0-6 months    COHORTS          INDIA                          High                 NA                0.1665013   0.1440368   0.1889657
0-6 months    COHORTS          INDIA                          Low                  NA                0.2088531   0.1931328   0.2245734
0-6 months    COHORTS          INDIA                          Medium               NA                0.1806168   0.1682367   0.1929969
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.2364226   0.2101161   0.2627290
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.2404184   0.2114124   0.2694244
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.2460060   0.2186639   0.2733480
0-6 months    GMS-Nepal        NEPAL                          High                 NA                0.2977466   0.2316935   0.3637996
0-6 months    GMS-Nepal        NEPAL                          Low                  NA                0.3423538   0.3026591   0.3820484
0-6 months    GMS-Nepal        NEPAL                          Medium               NA                0.2732414   0.2107687   0.3357142
0-6 months    Guatemala BSC    GUATEMALA                      High                 NA                0.3357044   0.2489498   0.4224591
0-6 months    Guatemala BSC    GUATEMALA                      Low                  NA                0.2782159   0.1761570   0.3802748
0-6 months    Guatemala BSC    GUATEMALA                      Medium               NA                0.3088310   0.2032141   0.4144479
0-6 months    IRC              INDIA                          High                 NA                0.3443646   0.2690514   0.4196778
0-6 months    IRC              INDIA                          Low                  NA                0.4307018   0.3552346   0.5061689
0-6 months    IRC              INDIA                          Medium               NA                0.5097603   0.4331083   0.5864123
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                0.4033624   0.3909207   0.4158040
0-6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.4340095   0.4217910   0.4462281
0-6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.4209748   0.4101100   0.4318395
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                0.3178866   0.2889886   0.3467846
0-6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.3671042   0.3399207   0.3942876
0-6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.3489896   0.3232306   0.3747487
0-6 months    LCNI-5           MALAWI                         High                 NA                0.2679463   0.1741858   0.3617067
0-6 months    LCNI-5           MALAWI                         Low                  NA                0.4709662   0.3670544   0.5748779
0-6 months    LCNI-5           MALAWI                         Medium               NA                0.3498644   0.2492593   0.4504696
0-6 months    MAL-ED           BANGLADESH                     High                 NA                0.2724589   0.1774619   0.3674559
0-6 months    MAL-ED           BANGLADESH                     Low                  NA                0.3934922   0.2787776   0.5082068
0-6 months    MAL-ED           BANGLADESH                     Medium               NA                0.3950711   0.2776799   0.5124623
0-6 months    MAL-ED           BRAZIL                         High                 NA                0.2451217   0.1489356   0.3413079
0-6 months    MAL-ED           BRAZIL                         Low                  NA                0.2258917   0.1198303   0.3319531
0-6 months    MAL-ED           BRAZIL                         Medium               NA                0.2084328   0.1234658   0.2933998
0-6 months    MAL-ED           INDIA                          High                 NA                0.3316616   0.2133776   0.4499455
0-6 months    MAL-ED           INDIA                          Low                  NA                0.3285366   0.2232296   0.4338436
0-6 months    MAL-ED           INDIA                          Medium               NA                0.3769875   0.2704159   0.4835592
0-6 months    MAL-ED           NEPAL                          High                 NA                0.1320755   0.0407211   0.2234299
0-6 months    MAL-ED           NEPAL                          Low                  NA                0.2083333   0.1269135   0.2897532
0-6 months    MAL-ED           NEPAL                          Medium               NA                0.1710526   0.0862056   0.2558997
0-6 months    MAL-ED           PERU                           High                 NA                0.4434562   0.3407460   0.5461665
0-6 months    MAL-ED           PERU                           Low                  NA                0.4223560   0.3351719   0.5095402
0-6 months    MAL-ED           PERU                           Medium               NA                0.4066710   0.3191323   0.4942098
0-6 months    MAL-ED           SOUTH AFRICA                   High                 NA                0.3894024   0.2936740   0.4851307
0-6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                0.3340731   0.2604359   0.4077103
0-6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                0.4156197   0.3002038   0.5310357
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                0.3209307   0.2627272   0.3791342
0-6 months    NIH-Birth        BANGLADESH                     Low                  NA                0.3291013   0.2772065   0.3809961
0-6 months    NIH-Birth        BANGLADESH                     Medium               NA                0.3746410   0.3168941   0.4323878
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.2853123   0.2392159   0.3314086
0-6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.2928182   0.2427742   0.3428622
0-6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.3217783   0.2741424   0.3694143
0-6 months    PROBIT           BELARUS                        High                 NA                0.0526674   0.0380826   0.0672523
0-6 months    PROBIT           BELARUS                        Low                  NA                0.0715406   0.0573172   0.0857640
0-6 months    PROBIT           BELARUS                        Medium               NA                0.0671617   0.0549366   0.0793868
0-6 months    PROVIDE          BANGLADESH                     High                 NA                0.2480863   0.2011517   0.2950209
0-6 months    PROVIDE          BANGLADESH                     Low                  NA                0.2393840   0.1893475   0.2894204
0-6 months    PROVIDE          BANGLADESH                     Medium               NA                0.2336763   0.1841566   0.2831959
0-6 months    SAS-CompFeed     INDIA                          High                 NA                0.3403043   0.2589160   0.4216926
0-6 months    SAS-CompFeed     INDIA                          Low                  NA                0.4486237   0.4143382   0.4829091
0-6 months    SAS-CompFeed     INDIA                          Medium               NA                0.4362609   0.3993972   0.4731247
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                0.4061644   0.2469505   0.5653783
0-6 months    SAS-FoodSuppl    INDIA                          Low                  NA                0.3925549   0.3401831   0.4449268
0-6 months    SAS-FoodSuppl    INDIA                          Medium               NA                0.3983209   0.2610811   0.5355607
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2016310   0.1704121   0.2328499
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2062941   0.1193118   0.2932765
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1935273   0.1746302   0.2124244
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.2543459   0.2439839   0.2647079
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.2599097   0.2446823   0.2751370
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.2685463   0.2549222   0.2821703
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.7901235   0.7012009   0.8790460
6-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.9056604   0.8267531   0.9845676
6-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.8823529   0.7936881   0.9710178
6-24 months   COHORTS          GUATEMALA                      High                 NA                0.8415608   0.7900704   0.8930511
6-24 months   COHORTS          GUATEMALA                      Low                  NA                0.7681584   0.7266241   0.8096927
6-24 months   COHORTS          GUATEMALA                      Medium               NA                0.7174838   0.6668114   0.7681563
6-24 months   COHORTS          INDIA                          High                 NA                0.1041993   0.0780487   0.1303500
6-24 months   COHORTS          INDIA                          Low                  NA                0.3710661   0.3434792   0.3986529
6-24 months   COHORTS          INDIA                          Medium               NA                0.2287314   0.2113725   0.2460903
6-24 months   COHORTS          PHILIPPINES                    High                 NA                0.6090512   0.5746153   0.6434870
6-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.7246004   0.6832882   0.7659126
6-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.6647002   0.6241571   0.7052432
6-24 months   GMS-Nepal        NEPAL                          High                 NA                0.4765540   0.3540719   0.5990362
6-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.5990788   0.5400075   0.6581502
6-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.5439516   0.4185471   0.6693562
6-24 months   Guatemala BSC    GUATEMALA                      High                 NA                0.2699407   0.1655011   0.3743803
6-24 months   Guatemala BSC    GUATEMALA                      Low                  NA                0.5598106   0.4224526   0.6971686
6-24 months   Guatemala BSC    GUATEMALA                      Medium               NA                0.3954938   0.2751615   0.5158260
6-24 months   IRC              INDIA                          High                 NA                0.3590688   0.2523702   0.4657673
6-24 months   IRC              INDIA                          Low                  NA                0.3882191   0.2833581   0.4930801
6-24 months   IRC              INDIA                          Medium               NA                0.3834852   0.2663545   0.5006160
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.2161171   0.1940716   0.2381627
6-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.2537250   0.2320780   0.2753720
6-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.2086298   0.1892766   0.2279829
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.3483522   0.3092669   0.3874376
6-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.4111222   0.3714303   0.4508141
6-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.4043470   0.3697155   0.4389784
6-24 months   LCNI-5           MALAWI                         High                 NA                0.5737001   0.5145117   0.6328885
6-24 months   LCNI-5           MALAWI                         Low                  NA                0.5891657   0.5247097   0.6536218
6-24 months   LCNI-5           MALAWI                         Medium               NA                0.6273486   0.5615000   0.6931972
6-24 months   MAL-ED           BANGLADESH                     High                 NA                0.4572480   0.3218180   0.5926780
6-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.4445501   0.2808525   0.6082478
6-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.3745072   0.2188127   0.5302016
6-24 months   MAL-ED           INDIA                          High                 NA                0.4235241   0.2695305   0.5775176
6-24 months   MAL-ED           INDIA                          Low                  NA                0.4583559   0.3209465   0.5957653
6-24 months   MAL-ED           INDIA                          Medium               NA                0.4088471   0.2655669   0.5521272
6-24 months   MAL-ED           NEPAL                          High                 NA                0.1333333   0.0337392   0.2329274
6-24 months   MAL-ED           NEPAL                          Low                  NA                0.2666667   0.1663094   0.3670240
6-24 months   MAL-ED           NEPAL                          Medium               NA                0.1612903   0.0694870   0.2530937
6-24 months   MAL-ED           PERU                           High                 NA                0.2933611   0.1523594   0.4343629
6-24 months   MAL-ED           PERU                           Low                  NA                0.4467927   0.3053254   0.5882601
6-24 months   MAL-ED           PERU                           Medium               NA                0.4219788   0.2914347   0.5525229
6-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.2936159   0.1534518   0.4337800
6-24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.4462329   0.3382322   0.5542337
6-24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.3603535   0.1915276   0.5291794
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                0.4802391   0.3888139   0.5716643
6-24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.6819265   0.6005258   0.7633272
6-24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.5535899   0.4643922   0.6427877
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.2149433   0.1573471   0.2725396
6-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.2945555   0.2229486   0.3661623
6-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.2861350   0.2159102   0.3563598
6-24 months   PROBIT           BELARUS                        High                 NA                0.0457991   0.0316031   0.0599951
6-24 months   PROBIT           BELARUS                        Low                  NA                0.0766357   0.0629452   0.0903261
6-24 months   PROBIT           BELARUS                        Medium               NA                0.0565509   0.0443807   0.0687210
6-24 months   PROVIDE          BANGLADESH                     High                 NA                0.2494003   0.1849155   0.3138851
6-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.3400336   0.2618275   0.4182398
6-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.3139324   0.2409562   0.3869085
6-24 months   SAS-CompFeed     INDIA                          High                 NA                0.4371466   0.3742983   0.4999949
6-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.5703965   0.4922924   0.6485005
6-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.4846727   0.4228006   0.5465447
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.7407407   0.5751020   0.9063795
6-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.7708333   0.7112604   0.8304063
6-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.6666667   0.4776798   0.8556536
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1871326   0.1492319   0.2250333
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2741512   0.1584595   0.3898428
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2374766   0.2126993   0.2622539
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.2406344   0.2268759   0.2543929
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.3090706   0.2835711   0.3345700
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.3005490   0.2788668   0.3222312


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.9249330   0.8981563   0.9517096
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.7658464   0.7431730   0.7885198
0-24 months   COHORTS          INDIA                          NA                   NA                0.3817498   0.3693017   0.3941980
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.6388489   0.6031124   0.6745854
0-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.5531915   0.4950624   0.6113206
0-24 months   IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4953113   0.4874769   0.5031456
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.5822107   0.5661650   0.5982565
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.6375921   0.6045496   0.6706347
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.5981308   0.5322895   0.6639722
0-24 months   MAL-ED           BRAZIL                         NA                   NA                0.2715517   0.2141972   0.3289063
0-24 months   MAL-ED           INDIA                          NA                   NA                0.5954545   0.5304515   0.6604576
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.3377778   0.2758420   0.3997135
0-24 months   MAL-ED           PERU                           NA                   NA                0.6192053   0.5643489   0.6740617
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.5605096   0.5055248   0.6154943
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   PROBIT           BELARUS                        NA                   NA                0.1274191   0.1115552   0.1432829
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.6914547   0.6510509   0.7318584
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3466052   0.3275063   0.3657041
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.4173189   0.4091660   0.4254718
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.3218924   0.2939898   0.3497950
0-6 months    COHORTS          INDIA                          NA                   NA                0.1884493   0.1782621   0.1986366
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.3194245   0.2847356   0.3541134
0-6 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.3169811   0.2608532   0.3731091
0-6 months    IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.4130202   0.4055695   0.4204710
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.3474858   0.3322499   0.3627218
0-6 months    LCNI-5           MALAWI                         NA                   NA                0.3558052   0.2982716   0.4133389
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.3411215   0.2774543   0.4047887
0-6 months    MAL-ED           BRAZIL                         NA                   NA                0.2241379   0.1703615   0.2779144
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3272727   0.2651285   0.3894169
0-6 months    MAL-ED           NEPAL                          NA                   NA                0.1777778   0.1277101   0.2278455
0-6 months    MAL-ED           PERU                           NA                   NA                0.4238411   0.3680149   0.4796672
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.3694268   0.3159570   0.4228965
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0686124   0.0577768   0.0794479
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.4254902   0.3977202   0.4532601
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1948868   0.1789895   0.2107841
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.2587447   0.2514996   0.2659899
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.8486486   0.7968646   0.9004327
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.7666291   0.7387777   0.7944805
6-24 months   COHORTS          INDIA                          NA                   NA                0.2595063   0.2466928   0.2723199
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5634518   0.5144179   0.6124857
6-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.3891892   0.3187405   0.4596379
6-24 months   IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2160435   0.2066720   0.2254150
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.3789503   0.3603576   0.3975429
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.5988701   0.5627418   0.6349983
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4230769   0.3378215   0.5083323
6-24 months   MAL-ED           INDIA                          NA                   NA                0.4214286   0.3393403   0.5035169
6-24 months   MAL-ED           NEPAL                          NA                   NA                0.1978022   0.1397705   0.2558339
6-24 months   MAL-ED           PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.3797468   0.3038314   0.4556622
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0642659   0.0526827   0.0758490
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2266750   0.2061344   0.2472157
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2632323   0.2538603   0.2726044


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          Low                  High              1.0677104   0.9966880   1.1437938
0-24 months   CMC-V-BCS-2002   INDIA                          Medium               High              1.0588848   0.9866120   1.1364517
0-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      Low                  High              0.9847193   0.9075991   1.0683925
0-24 months   COHORTS          GUATEMALA                      Medium               High              0.9480586   0.8674106   1.0362049
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          Low                  High              1.9279927   1.7015797   2.1845322
0-24 months   COHORTS          INDIA                          Medium               High              1.4335038   1.2669798   1.6219147
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              1.1618099   1.0936408   1.2342282
0-24 months   COHORTS          PHILIPPINES                    Medium               High              1.0604921   0.9977170   1.1272170
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              1.2123873   1.0018624   1.4671506
0-24 months   GMS-Nepal        NEPAL                          Medium               High              1.1546225   0.9116358   1.4623748
0-24 months   Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   Guatemala BSC    GUATEMALA                      Low                  High              1.3297448   1.0436116   1.6943287
0-24 months   Guatemala BSC    GUATEMALA                      Medium               High              1.1297254   0.8683589   1.4697603
0-24 months   IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          Low                  High              1.1361293   0.9431602   1.3685795
0-24 months   IRC              INDIA                          Medium               High              1.2284504   1.0315683   1.4629089
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.0668110   1.0312875   1.1035581
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0306221   0.9978890   1.0644289
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.1182437   1.0402908   1.2020378
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.0971478   1.0254389   1.1738712
0-24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         Low                  High              1.0616210   0.9357846   1.2043788
0-24 months   LCNI-5           MALAWI                         Medium               High              1.0864376   0.9557817   1.2349542
0-24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Low                  High              0.9632279   0.7660758   1.2111178
0-24 months   MAL-ED           BANGLADESH                     Medium               High              1.0216739   0.7934756   1.3155005
0-24 months   MAL-ED           BRAZIL                         High                 High              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BRAZIL                         Low                  High              0.9615773   0.5584934   1.6555806
0-24 months   MAL-ED           BRAZIL                         Medium               High              0.8905390   0.5390965   1.4710904
0-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Low                  High              1.0127502   0.7869772   1.3032944
0-24 months   MAL-ED           INDIA                          Medium               High              0.9601631   0.7366528   1.2514893
0-24 months   MAL-ED           NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           NEPAL                          Low                  High              1.4801926   0.8975938   2.4409373
0-24 months   MAL-ED           NEPAL                          Medium               High              1.0865975   0.6250840   1.8888569
0-24 months   MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           PERU                           Low                  High              1.0805591   0.8695596   1.3427578
0-24 months   MAL-ED           PERU                           Medium               High              1.0386487   0.8374841   1.2881333
0-24 months   MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   Low                  High              1.0709845   0.8582972   1.3363759
0-24 months   MAL-ED           SOUTH AFRICA                   Medium               High              1.0750239   0.8268492   1.3976870
0-24 months   NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     Low                  High              1.1025013   0.9671639   1.2567767
0-24 months   NIH-Birth        BANGLADESH                     Medium               High              1.0628972   0.9290367   1.2160451
0-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     Low                  High              0.9388573   0.7928840   1.1117048
0-24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.0183486   0.8729589   1.1879527
0-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        Low                  High              1.4733804   1.2119860   1.7911509
0-24 months   PROBIT           BELARUS                        Medium               High              1.2512660   1.0055312   1.5570544
0-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Low                  High              0.9473963   0.7777547   1.1540397
0-24 months   PROVIDE          BANGLADESH                     Medium               High              0.9929880   0.8077841   1.2206544
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              1.1765252   1.0613992   1.3041386
0-24 months   SAS-CompFeed     INDIA                          Medium               High              1.0992643   1.0278516   1.1756386
0-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.0097449   0.8717655   1.1695630
0-24 months   SAS-FoodSuppl    INDIA                          Medium               High              0.9111111   0.7334960   1.1317356
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0647497   0.7784399   1.4563640
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0448415   0.9216200   1.1845379
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.0894287   1.0347207   1.1470293
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.1132049   1.0632884   1.1654647
0-6 months    CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          Low                  High              1.0535626   0.8309260   1.3358519
0-6 months    CMC-V-BCS-2002   INDIA                          Medium               High              1.0887670   0.8610679   1.3766783
0-6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      Low                  High              1.1890767   0.9519087   1.4853352
0-6 months    COHORTS          GUATEMALA                      Medium               High              1.0643553   0.8347303   1.3571475
0-6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          Low                  High              1.2543634   1.0862220   1.4485324
0-6 months    COHORTS          INDIA                          Medium               High              1.0847773   0.9442654   1.2461982
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              1.0169014   0.8691273   1.1898009
0-6 months    COHORTS          PHILIPPINES                    Medium               High              1.0405350   0.8962270   1.2080791
0-6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          Low                  High              1.1498160   0.9161725   1.4430435
0-6 months    GMS-Nepal        NEPAL                          Medium               High              0.9176980   0.6828031   1.2334004
0-6 months    Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    Guatemala BSC    GUATEMALA                      Low                  High              0.8287524   0.5293434   1.2975142
0-6 months    Guatemala BSC    GUATEMALA                      Medium               High              0.9199490   0.6006119   1.4090733
0-6 months    IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          Low                  High              1.2507144   0.9582477   1.6324449
0-6 months    IRC              INDIA                          Medium               High              1.4802923   1.1501588   1.9051849
0-6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Low                  High              1.0759793   1.0378301   1.1155307
0-6 months    JiVitA-3         BANGLADESH                     Medium               High              1.0436640   1.0091377   1.0793715
0-6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Low                  High              1.1548276   1.0364776   1.2866913
0-6 months    JiVitA-4         BANGLADESH                     Medium               High              1.0978433   0.9812182   1.2283303
0-6 months    LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
0-6 months    LCNI-5           MALAWI                         Low                  High              1.7576889   1.1611422   2.6607164
0-6 months    LCNI-5           MALAWI                         Medium               High              1.3057262   0.8307424   2.0522858
0-6 months    MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BANGLADESH                     Low                  High              1.4442260   0.9231409   2.2594479
0-6 months    MAL-ED           BANGLADESH                     Medium               High              1.4500209   0.9141055   2.3001292
0-6 months    MAL-ED           BRAZIL                         High                 High              1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BRAZIL                         Low                  High              0.9215491   0.4995443   1.7000548
0-6 months    MAL-ED           BRAZIL                         Medium               High              0.8503236   0.4831979   1.4963852
0-6 months    MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA                          Low                  High              0.9905779   0.6110561   1.6058175
0-6 months    MAL-ED           INDIA                          Medium               High              1.1366633   0.7195961   1.7954564
0-6 months    MAL-ED           NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           NEPAL                          Low                  High              1.5773810   0.7127023   3.4911219
0-6 months    MAL-ED           NEPAL                          Medium               High              1.2951128   0.5529097   3.0336187
0-6 months    MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           PERU                           Low                  High              0.9524187   0.7054114   1.2859182
0-6 months    MAL-ED           PERU                           Medium               High              0.9170488   0.6748836   1.2461092
0-6 months    MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           SOUTH AFRICA                   Low                  High              0.8579123   0.6213541   1.1845314
0-6 months    MAL-ED           SOUTH AFRICA                   Medium               High              1.0673272   0.7402855   1.5388488
0-6 months    NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     Low                  High              1.0254590   0.8241503   1.2759399
0-6 months    NIH-Birth        BANGLADESH                     Medium               High              1.1673578   0.9352023   1.4571439
0-6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     Low                  High              1.0263078   0.8293758   1.2700005
0-6 months    NIH-Crypto       BANGLADESH                     Medium               High              1.1278110   0.9282050   1.3703415
0-6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        Low                  High              1.3583459   1.0256949   1.7988814
0-6 months    PROBIT           BELARUS                        Medium               High              1.2752034   0.9270593   1.7540880
0-6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Low                  High              0.9649220   0.7468967   1.2465907
0-6 months    PROVIDE          BANGLADESH                     Medium               High              0.9419151   0.7245333   1.2245178
0-6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          Low                  High              1.3183016   1.0276954   1.6910840
0-6 months    SAS-CompFeed     INDIA                          Medium               High              1.2819732   1.0333974   1.5903419
0-6 months    SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    SAS-FoodSuppl    INDIA                          Low                  High              0.9664926   0.6390771   1.4616516
0-6 months    SAS-FoodSuppl    INDIA                          Medium               High              0.9806888   0.5829541   1.6497875
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0231272   0.6532112   1.6025280
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.9598093   0.8000460   1.1514762
0-6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  High              1.0218749   0.9558185   1.0924965
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               High              1.0558310   0.9939617   1.1215514
6-24 months   CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          Low                  High              1.1462264   0.9941655   1.3215456
6-24 months   CMC-V-BCS-2002   INDIA                          Medium               High              1.1167279   0.9603354   1.2985893
6-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      Low                  High              0.9127783   0.8416045   0.9899713
6-24 months   COHORTS          GUATEMALA                      Medium               High              0.8525633   0.7770849   0.9353729
6-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          Low                  High              3.5611173   2.7423979   4.6242584
6-24 months   COHORTS          INDIA                          Medium               High              2.1951327   1.6902876   2.8507619
6-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    Low                  High              1.1897201   1.0988891   1.2880590
6-24 months   COHORTS          PHILIPPINES                    Medium               High              1.0913700   1.0052369   1.1848834
6-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          Low                  High              1.2571058   0.9576975   1.6501191
6-24 months   GMS-Nepal        NEPAL                          Medium               High              1.1414270   0.8109218   1.6066353
6-24 months   Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   Guatemala BSC    GUATEMALA                      Low                  High              2.0738279   1.3131600   3.2751242
6-24 months   Guatemala BSC    GUATEMALA                      Medium               High              1.4651132   0.8969525   2.3931665
6-24 months   IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          Low                  High              1.0811832   0.7230740   1.6166495
6-24 months   IRC              INDIA                          Medium               High              1.0679995   0.6968348   1.6368625
6-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.1740161   1.0323823   1.3350807
6-24 months   JiVitA-3         BANGLADESH                     Medium               High              0.9653549   0.8502608   1.0960286
6-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.1801911   1.0202770   1.3651694
6-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.1607417   1.0083760   1.3361298
6-24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         Low                  High              1.0269576   0.8854778   1.1910428
6-24 months   LCNI-5           MALAWI                         Medium               High              1.0935131   0.9452050   1.2650915
6-24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     Low                  High              0.9722298   0.6063985   1.5587618
6-24 months   MAL-ED           BANGLADESH                     Medium               High              0.8190461   0.4934664   1.3594369
6-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          Low                  High              1.0822428   0.6759243   1.7328118
6-24 months   MAL-ED           INDIA                          Medium               High              0.9653455   0.5817349   1.6019186
6-24 months   MAL-ED           NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           NEPAL                          Low                  High              2.0000000   0.8665299   4.6161130
6-24 months   MAL-ED           NEPAL                          Medium               High              1.2096774   0.4729589   3.0939677
6-24 months   MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           PERU                           Low                  High              1.5230127   0.8564064   2.7084894
6-24 months   MAL-ED           PERU                           Medium               High              1.4384277   0.8135323   2.5433215
6-24 months   MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           SOUTH AFRICA                   Low                  High              1.5197845   0.8885538   2.5994431
6-24 months   MAL-ED           SOUTH AFRICA                   Medium               High              1.2272955   0.6268537   2.4028801
6-24 months   NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     Low                  High              1.4199728   1.1376259   1.7723952
6-24 months   NIH-Birth        BANGLADESH                     Medium               High              1.1527381   0.9021489   1.4729332
6-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.3703865   0.9553608   1.9657067
6-24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.3312114   0.9275310   1.9105816
6-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6-24 months   PROBIT           BELARUS                        Low                  High              1.6733008   1.2321263   2.2724420
6-24 months   PROBIT           BELARUS                        Medium               High              1.2347590   0.9236079   1.6507326
6-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     Low                  High              1.3634050   0.9697322   1.9168933
6-24 months   PROVIDE          BANGLADESH                     Medium               High              1.2587488   0.8934731   1.7733589
6-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          Low                  High              1.3048173   1.0907224   1.5609363
6-24 months   SAS-CompFeed     INDIA                          Medium               High              1.1087188   0.8856431   1.3879828
6-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.0406250   0.8213800   1.3183914
6-24 months   SAS-FoodSuppl    INDIA                          Medium               High              0.9000000   0.6272441   1.2913632
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.4650101   0.9172418   2.3399006
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2690285   1.0103983   1.5938599
6-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.2843991   1.1623039   1.4193199
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.2489862   1.1396988   1.3687533


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0325279   -0.0002546    0.0653104
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0223475   -0.0722841    0.0275891
0-24 months   COHORTS          INDIA                          High                 NA                 0.1336434    0.1052480    0.1620387
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0260679    0.0031936    0.0489423
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0949685    0.0003931    0.1895440
0-24 months   Guatemala BSC    GUATEMALA                      High                 NA                 0.0617947   -0.0060892    0.1296786
0-24 months   IRC              INDIA                          High                 NA                 0.0708496    0.0028576    0.1388416
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0079762   -0.0035342    0.0194866
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0326852    0.0081259    0.0572445
0-24 months   LCNI-5           MALAWI                         High                 NA                 0.0292305   -0.0142808    0.0727418
0-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.0008203   -0.0762293    0.0778700
0-24 months   MAL-ED           BRAZIL                         High                 NA                -0.0160974   -0.0980364    0.0658415
0-24 months   MAL-ED           INDIA                          High                 NA                -0.0165651   -0.1172223    0.0840922
0-24 months   MAL-ED           NEPAL                          High                 NA                 0.0564936   -0.0550084    0.1679955
0-24 months   MAL-ED           PERU                           High                 NA                 0.0246248   -0.0570481    0.1062977
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0286114   -0.0499870    0.1072098
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0318067   -0.0240801    0.0876934
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0121589   -0.0578166    0.0334988
0-24 months   PROBIT           BELARUS                        High                 NA                 0.0318978    0.0126885    0.0511071
0-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0018204   -0.0526328    0.0489920
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0663703    0.0207286    0.1120120
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                -0.0015171   -0.1110714    0.1080373
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0116163   -0.0198081    0.0430408
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0150851    0.0059938    0.0241765
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                 0.0208104   -0.0368036    0.0784244
0-6 months    COHORTS          GUATEMALA                      High                 NA                 0.0221208   -0.0321083    0.0763499
0-6 months    COHORTS          INDIA                          High                 NA                 0.0219480    0.0010326    0.0428635
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0026226   -0.0194346    0.0246797
0-6 months    GMS-Nepal        NEPAL                          High                 NA                 0.0216779   -0.0375322    0.0808880
0-6 months    Guatemala BSC    GUATEMALA                      High                 NA                -0.0187233   -0.0842378    0.0467912
0-6 months    IRC              INDIA                          High                 NA                 0.0800256    0.0187989    0.1412524
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0096579   -0.0004609    0.0197767
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0295992    0.0042708    0.0549277
0-6 months    LCNI-5           MALAWI                         High                 NA                 0.0878590    0.0070552    0.1686628
0-6 months    MAL-ED           BANGLADESH                     High                 NA                 0.0686626   -0.0107440    0.1480692
0-6 months    MAL-ED           BRAZIL                         High                 NA                -0.0209838   -0.0983652    0.0563976
0-6 months    MAL-ED           INDIA                          High                 NA                -0.0043888   -0.1064385    0.0976608
0-6 months    MAL-ED           NEPAL                          High                 NA                 0.0457023   -0.0374883    0.1288929
0-6 months    MAL-ED           PERU                           High                 NA                -0.0196152   -0.1023720    0.0631416
0-6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.0199756   -0.0982568    0.0583056
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                 0.0288308   -0.0181134    0.0757750
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0167985   -0.0178262    0.0514233
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0159449    0.0002196    0.0316702
0-6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0080863   -0.0438609    0.0276882
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0851859    0.0213050    0.1490669
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.0167414   -0.1678680    0.1343852
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0067441   -0.0336572    0.0201689
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0043989   -0.0031059    0.0119037
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0585252   -0.0020112    0.1190616
6-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0749317   -0.1223921   -0.0274712
6-24 months   COHORTS          INDIA                          High                 NA                 0.1553070    0.1288671    0.1817469
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0359276    0.0083590    0.0634962
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0868977   -0.0269774    0.2007729
6-24 months   Guatemala BSC    GUATEMALA                      High                 NA                 0.1192484    0.0345450    0.2039519
6-24 months   IRC              INDIA                          High                 NA                 0.0180499   -0.0688860    0.1049858
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0000736   -0.0198414    0.0196941
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0305980   -0.0028671    0.0640632
6-24 months   LCNI-5           MALAWI                         High                 NA                 0.0251699   -0.0208490    0.0711888
6-24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0341711   -0.1399225    0.0715803
6-24 months   MAL-ED           INDIA                          High                 NA                -0.0020955   -0.1313207    0.1271297
6-24 months   MAL-ED           NEPAL                          High                 NA                 0.0644689   -0.0270826    0.1560203
6-24 months   MAL-ED           PERU                           High                 NA                 0.1026120   -0.0208570    0.2260810
6-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0861309   -0.0374730    0.2097348
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0936739    0.0190024    0.1683455
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0479025    0.0000544    0.0957507
6-24 months   PROBIT           BELARUS                        High                 NA                 0.0184667    0.0067475    0.0301860
6-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0510383   -0.0024388    0.1045153
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0659284    0.0116992    0.1201577
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0164609   -0.1392877    0.1722095
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0395424    0.0059328    0.0731520
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0225980    0.0118728    0.0333232


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0351679   -0.0012783    0.0702874
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0291801   -0.0964960    0.0340031
0-24 months   COHORTS          INDIA                          High                 NA                 0.3500810    0.2720088    0.4197804
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0379780    0.0040472    0.0707528
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.1486557   -0.0129103    0.2844508
0-24 months   Guatemala BSC    GUATEMALA                      High                 NA                 0.1117059   -0.0207362    0.2269634
0-24 months   IRC              INDIA                          High                 NA                 0.1104500   -0.0029048    0.2109926
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0161034   -0.0074260    0.0390833
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0561397    0.0129425    0.0974465
0-24 months   LCNI-5           MALAWI                         High                 NA                 0.0458451   -0.0250226    0.1118131
0-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.0013715   -0.1361286    0.1222306
0-24 months   MAL-ED           BRAZIL                         High                 NA                -0.0592795   -0.4083928    0.2032954
0-24 months   MAL-ED           INDIA                          High                 NA                -0.0278192   -0.2114682    0.1279901
0-24 months   MAL-ED           NEPAL                          High                 NA                 0.1672507   -0.2369341    0.4393627
0-24 months   MAL-ED           PERU                           High                 NA                 0.0397684   -0.1017990    0.1631462
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0510453   -0.1001703    0.1814768
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0478622   -0.0402466    0.1285081
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0254598   -0.1257691    0.0659117
0-24 months   PROBIT           BELARUS                        High                 NA                 0.2503377    0.0939859    0.3797077
0-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0041780   -0.1278624    0.1059428
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0959865    0.0287271    0.1585883
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                -0.0018328   -0.1433253    0.1221493
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0335146   -0.0615089    0.1200319
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0361478    0.0141166    0.0576866
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                 0.0407353   -0.0789931    0.1471782
0-6 months    COHORTS          GUATEMALA                      High                 NA                 0.0687212   -0.1159800    0.2228533
0-6 months    COHORTS          INDIA                          High                 NA                 0.1164666   -0.0013817    0.2204458
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0109710   -0.0857187    0.0990499
0-6 months    GMS-Nepal        NEPAL                          High                 NA                 0.0678655   -0.1366358    0.2355733
0-6 months    Guatemala BSC    GUATEMALA                      High                 NA                -0.0590676   -0.2874729    0.1288173
0-6 months    IRC              INDIA                          High                 NA                 0.1885662    0.0304088    0.3209252
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0233836   -0.0014206    0.0475734
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0851812    0.0094065    0.1551595
0-6 months    LCNI-5           MALAWI                         High                 NA                 0.2469300   -0.0167895    0.4422499
0-6 months    MAL-ED           BANGLADESH                     High                 NA                 0.2012849   -0.0663813    0.4017658
0-6 months    MAL-ED           BRAZIL                         High                 NA                -0.0936200   -0.4991958    0.2022358
0-6 months    MAL-ED           INDIA                          High                 NA                -0.0134103   -0.3786159    0.2550496
0-6 months    MAL-ED           NEPAL                          High                 NA                 0.2570755   -0.3875966    0.6022354
0-6 months    MAL-ED           PERU                           High                 NA                -0.0462796   -0.2605912    0.1315972
0-6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.0540719   -0.2887462    0.1378694
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                 0.0824300   -0.0618315    0.2070919
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0556039   -0.0659965    0.1633330
0-6 months    PROBIT           BELARUS                        High                 NA                 0.2323914   -0.0161933    0.4201664
0-6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0336931   -0.1942930    0.1053105
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.2002066    0.0266522    0.3428150
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.0429901   -0.5130069    0.2810156
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0346054   -0.1823835    0.0947029
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0170008   -0.0124336    0.0455795
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0689628   -0.0064293    0.1387073
6-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0977417   -0.1620692   -0.0369752
6-24 months   COHORTS          INDIA                          High                 NA                 0.5984709    0.4871149    0.6856497
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0557036    0.0119223    0.0975449
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.1542239   -0.0740708    0.3339944
6-24 months   Guatemala BSC    GUATEMALA                      High                 NA                 0.3064023    0.0489004    0.4941877
6-24 months   IRC              INDIA                          High                 NA                 0.0478626   -0.2131252    0.2527024
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0003409   -0.0961548    0.0870980
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0807442   -0.0122618    0.1652048
6-24 months   LCNI-5           MALAWI                         High                 NA                 0.0420290   -0.0380914    0.1159657
6-24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0807680   -0.3627869    0.1428891
6-24 months   MAL-ED           INDIA                          High                 NA                -0.0049723   -0.3635176    0.2592913
6-24 months   MAL-ED           NEPAL                          High                 NA                 0.3259259   -0.3262663    0.6574022
6-24 months   MAL-ED           PERU                           High                 NA                 0.2591388   -0.1287036    0.5137117
6-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.2268114   -0.1775833    0.4923326
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.1632197    0.0213458    0.2845264
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.1822456   -0.0200356    0.3444129
6-24 months   PROBIT           BELARUS                        High                 NA                 0.2873493    0.0873802    0.4435021
6-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.1698792   -0.0274953    0.3293395
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.1310509    0.0181743    0.2309505
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0217391   -0.2072103    0.2072679
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1744453    0.0125925    0.3097677
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0858480    0.0442782    0.1256098
