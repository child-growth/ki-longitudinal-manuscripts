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

agecat        studyid          country                        meducyrs    ever_stunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  ---------  -------------  -------  ------  -----------------
0-24 months   CMC-V-BCS-2002   INDIA                          High                   0       17     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          High                   1      141     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          Low                    0        5     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          Low                    1      101     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          Medium                 0        6     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          Medium                 1      103     373  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      High                   0       65    1341  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      High                   1      220    1341  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      Low                    0      132    1341  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      Low                    1      504    1341  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      Medium                 0      117    1341  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      Medium                 1      303    1341  ever_stunted     
0-24 months   COHORTS          INDIA                          High                   0      648    5852  ever_stunted     
0-24 months   COHORTS          INDIA                          High                   1      145    5852  ever_stunted     
0-24 months   COHORTS          INDIA                          Low                    0      931    5852  ever_stunted     
0-24 months   COHORTS          INDIA                          Low                    1     1025    5852  ever_stunted     
0-24 months   COHORTS          INDIA                          Medium                 0     2039    5852  ever_stunted     
0-24 months   COHORTS          INDIA                          Medium                 1     1064    5852  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    High                   0      495    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    High                   1      678    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    Low                    0      177    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    Low                    1      726    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    Medium                 0      287    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    Medium                 1      695    3058  ever_stunted     
0-24 months   EE               PAKISTAN                       High                   0        3     376  ever_stunted     
0-24 months   EE               PAKISTAN                       High                   1       12     376  ever_stunted     
0-24 months   EE               PAKISTAN                       Low                    0       31     376  ever_stunted     
0-24 months   EE               PAKISTAN                       Low                    1      297     376  ever_stunted     
0-24 months   EE               PAKISTAN                       Medium                 0        7     376  ever_stunted     
0-24 months   EE               PAKISTAN                       Medium                 1       26     376  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          High                   0       43     695  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          High                   1       42     695  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          Low                    0      158     695  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          Low                    1      328     695  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          Medium                 0       50     695  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          Medium                 1       74     695  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      High                   0       60     282  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      High                   1       58     282  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      Low                    0       27     282  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      Low                    1       49     282  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      Medium                 0       39     282  ever_stunted     
0-24 months   Guatemala BSC    GUATEMALA                      Medium                 1       49     282  ever_stunted     
0-24 months   IRC              INDIA                          High                   0       53     410  ever_stunted     
0-24 months   IRC              INDIA                          High                   1       71     410  ever_stunted     
0-24 months   IRC              INDIA                          Low                    0       51     410  ever_stunted     
0-24 months   IRC              INDIA                          Low                    1       96     410  ever_stunted     
0-24 months   IRC              INDIA                          Medium                 0       43     410  ever_stunted     
0-24 months   IRC              INDIA                          Medium                 1       96     410  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     High                   0     5324   27193  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     High                   1     3703   27193  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Low                    0     4472   27193  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Low                    1     5395   27193  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Medium                 0     3928   27193  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Medium                 1     4371   27193  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     High                   0      946    5419  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     High                   1      955    5419  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     Low                    0      630    5419  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     Low                    1     1155    5419  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     Medium                 0      688    5419  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     Medium                 1     1045    5419  ever_stunted     
0-24 months   LCNI-5           MALAWI                         High                   0      125     814  ever_stunted     
0-24 months   LCNI-5           MALAWI                         High                   1      173     814  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Low                    0       84     814  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Low                    1      177     814  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Medium                 0       86     814  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Medium                 1      169     814  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     High                   0       36     214  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     High                   1       42     214  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Low                    0       25     214  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Low                    1       45     214  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Medium                 0       25     214  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Medium                 1       41     214  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         High                   0       57     232  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         High                   1       22     232  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         Low                    0       45     232  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         Low                    1       18     232  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         Medium                 0       67     232  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         Medium                 1       23     232  ever_stunted     
0-24 months   MAL-ED           INDIA                          High                   0       27     220  ever_stunted     
0-24 months   MAL-ED           INDIA                          High                   1       36     220  ever_stunted     
0-24 months   MAL-ED           INDIA                          Low                    0       29     220  ever_stunted     
0-24 months   MAL-ED           INDIA                          Low                    1       47     220  ever_stunted     
0-24 months   MAL-ED           INDIA                          Medium                 0       33     220  ever_stunted     
0-24 months   MAL-ED           INDIA                          Medium                 1       48     220  ever_stunted     
0-24 months   MAL-ED           NEPAL                          High                   0       40     225  ever_stunted     
0-24 months   MAL-ED           NEPAL                          High                   1       13     225  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Low                    0       56     225  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Low                    1       40     225  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Medium                 0       53     225  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Medium                 1       23     225  ever_stunted     
0-24 months   MAL-ED           PERU                           High                   0       38     302  ever_stunted     
0-24 months   MAL-ED           PERU                           High                   1       53     302  ever_stunted     
0-24 months   MAL-ED           PERU                           Low                    0       37     302  ever_stunted     
0-24 months   MAL-ED           PERU                           Low                    1       67     302  ever_stunted     
0-24 months   MAL-ED           PERU                           Medium                 0       40     302  ever_stunted     
0-24 months   MAL-ED           PERU                           Medium                 1       67     302  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   High                   0       47     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   High                   1       48     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Low                    0       62     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Low                    1       88     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                 0       29     314  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                 1       40     314  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0        4     217  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1        7     217  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0       11     217  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1       53     217  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0       22     217  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1      120     217  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     High                   0       76     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     High                   1      103     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     Low                    0       65     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     Low                    1      165     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     Medium                 0       70     629  ever_stunted     
0-24 months   NIH-Birth        BANGLADESH                     Medium                 1      150     629  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     High                   0      157     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     High                   1       97     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     Low                    0      117     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     Low                    1      125     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     Medium                 0      122     758  ever_stunted     
0-24 months   NIH-Crypto       BANGLADESH                     Medium                 1      140     758  ever_stunted     
0-24 months   PROBIT           BELARUS                        High                   0     2578   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        High                   1      262   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        Low                    0     5135   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        Low                    1      965   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        Medium                 0     7031   16897  ever_stunted     
0-24 months   PROBIT           BELARUS                        Medium                 1      926   16897  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     High                   0      147     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     High                   1       88     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Low                    0      112     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Low                    1      102     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Medium                 0      136     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Medium                 1      115     700  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          High                   0      145    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          High                   1      178    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          Low                    0      158    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          Low                    1      538    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          Medium                 0      170    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          Medium                 1      344    1533  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          High                   0        7     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          High                   1       34     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          Low                    0       54     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          Low                    1      278     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          Medium                 0       11     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          Medium                 1       34     418  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      426    2386  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1      195    2386  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       50    2386  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       32    2386  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1083    2386  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      600    2386  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       High                   0     4699   14054  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       High                   1     2925   14054  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       Low                    0     1610   14054  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       Low                    1     1349   14054  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                 0     1880   14054  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                 1     1591   14054  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          High                   0       80     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          High                   1       77     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          Low                    0       51     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          Low                    1       53     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          Medium                 0       49     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          Medium                 1       58     368  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      High                   0      164    1078  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      High                   1       60    1078  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      Low                    0      322    1078  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      Low                    1      192    1078  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      Medium                 0      245    1078  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      Medium                 1       95    1078  ever_stunted     
0-6 months    COHORTS          INDIA                          High                   0      676    5662  ever_stunted     
0-6 months    COHORTS          INDIA                          High                   1       77    5662  ever_stunted     
0-6 months    COHORTS          INDIA                          Low                    0     1436    5662  ever_stunted     
0-6 months    COHORTS          INDIA                          Low                    1      473    5662  ever_stunted     
0-6 months    COHORTS          INDIA                          Medium                 0     2483    5662  ever_stunted     
0-6 months    COHORTS          INDIA                          Medium                 1      517    5662  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    High                   0      954    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    High                   1      219    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    Low                    0      638    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    Low                    1      265    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    Medium                 0      735    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    Medium                 1      247    3058  ever_stunted     
0-6 months    EE               PAKISTAN                       High                   0        3     376  ever_stunted     
0-6 months    EE               PAKISTAN                       High                   1       12     376  ever_stunted     
0-6 months    EE               PAKISTAN                       Low                    0       79     376  ever_stunted     
0-6 months    EE               PAKISTAN                       Low                    1      249     376  ever_stunted     
0-6 months    EE               PAKISTAN                       Medium                 0       13     376  ever_stunted     
0-6 months    EE               PAKISTAN                       Medium                 1       20     376  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          High                   0       66     695  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          High                   1       19     695  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          Low                    0      317     695  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          Low                    1      169     695  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          Medium                 0       90     695  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          Medium                 1       34     695  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      High                   0       74     265  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      High                   1       38     265  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      Low                    0       52     265  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      Low                    1       22     265  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      Medium                 0       55     265  ever_stunted     
0-6 months    Guatemala BSC    GUATEMALA                      Medium                 1       24     265  ever_stunted     
0-6 months    IRC              INDIA                          High                   0       82     410  ever_stunted     
0-6 months    IRC              INDIA                          High                   1       42     410  ever_stunted     
0-6 months    IRC              INDIA                          Low                    0       84     410  ever_stunted     
0-6 months    IRC              INDIA                          Low                    1       63     410  ever_stunted     
0-6 months    IRC              INDIA                          Medium                 0       70     410  ever_stunted     
0-6 months    IRC              INDIA                          Medium                 1       69     410  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     High                   0     6011   27127  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     High                   1     2984   27127  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Low                    0     5327   27127  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Low                    1     4520   27127  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Medium                 0     4585   27127  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Medium                 1     3700   27127  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     High                   0     1271    5111  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     High                   1      525    5111  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     Low                    0     1002    5111  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     Low                    1      678    5111  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     Medium                 0     1062    5111  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     Medium                 1      573    5111  ever_stunted     
0-6 months    LCNI-5           MALAWI                         High                   0       65     267  ever_stunted     
0-6 months    LCNI-5           MALAWI                         High                   1       22     267  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Low                    0       49     267  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Low                    1       43     267  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Medium                 0       58     267  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Medium                 1       30     267  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     High                   0       58     214  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     High                   1       20     214  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Low                    0       42     214  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Low                    1       28     214  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Medium                 0       41     214  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Medium                 1       25     214  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         High                   0       60     232  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         High                   1       19     232  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         Low                    0       49     232  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         Low                    1       14     232  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         Medium                 0       71     232  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         Medium                 1       19     232  ever_stunted     
0-6 months    MAL-ED           INDIA                          High                   0       44     220  ever_stunted     
0-6 months    MAL-ED           INDIA                          High                   1       19     220  ever_stunted     
0-6 months    MAL-ED           INDIA                          Low                    0       52     220  ever_stunted     
0-6 months    MAL-ED           INDIA                          Low                    1       24     220  ever_stunted     
0-6 months    MAL-ED           INDIA                          Medium                 0       52     220  ever_stunted     
0-6 months    MAL-ED           INDIA                          Medium                 1       29     220  ever_stunted     
0-6 months    MAL-ED           NEPAL                          High                   0       46     225  ever_stunted     
0-6 months    MAL-ED           NEPAL                          High                   1        7     225  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Low                    0       76     225  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Low                    1       20     225  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Medium                 0       63     225  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Medium                 1       13     225  ever_stunted     
0-6 months    MAL-ED           PERU                           High                   0       50     302  ever_stunted     
0-6 months    MAL-ED           PERU                           High                   1       41     302  ever_stunted     
0-6 months    MAL-ED           PERU                           Low                    0       60     302  ever_stunted     
0-6 months    MAL-ED           PERU                           Low                    1       44     302  ever_stunted     
0-6 months    MAL-ED           PERU                           Medium                 0       64     302  ever_stunted     
0-6 months    MAL-ED           PERU                           Medium                 1       43     302  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   High                   0       59     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   High                   1       36     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Low                    0       99     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Low                    1       51     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                 0       40     314  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                 1       29     314  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0       10     217  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1        1     217  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0       38     217  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1       26     217  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0       82     217  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1       60     217  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     High                   0      126     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     High                   1       53     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     Low                    0      146     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     Low                    1       84     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     Medium                 0      137     629  ever_stunted     
0-6 months    NIH-Birth        BANGLADESH                     Medium                 1       83     629  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     High                   0      195     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     High                   1       59     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     Low                    0      166     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     Low                    1       76     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     Medium                 0      168     758  ever_stunted     
0-6 months    NIH-Crypto       BANGLADESH                     Medium                 1       94     758  ever_stunted     
0-6 months    PROBIT           BELARUS                        High                   0     2698   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        High                   1      142   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        Low                    0     5576   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        Low                    1      521   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        Medium                 0     7459   16892  ever_stunted     
0-6 months    PROBIT           BELARUS                        Medium                 1      496   16892  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     High                   0      184     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     High                   1       51     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Low                    0      162     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Low                    1       52     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Medium                 0      186     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Medium                 1       65     700  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          High                   0      228    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          High                   1       95    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          Low                    0      350    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          Low                    1      345    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          Medium                 0      301    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          Medium                 1      211    1530  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          High                   0       26     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          High                   1       14     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          Low                    0      201     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          Low                    1      130     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          Medium                 0       27     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          Medium                 1       18     416  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      503    2386  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1      118    2386  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       65    2386  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       17    2386  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0     1353    2386  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      330    2386  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       High                   0     5759   14037  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       High                   1     1858   14037  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       Low                    0     2147   14037  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       Low                    1      807   14037  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                 0     2499   14037  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                 1      967   14037  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          High                   0       17     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          High                   1       64     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          Low                    0        5     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          Low                    1       48     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          Medium                 0        6     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          Medium                 1       45     185  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      High                   0       30     887  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      High                   1      160     887  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      Low                    0       89     887  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      Low                    1      312     887  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      Medium                 0       88     887  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      Medium                 1      208     887  ever_stunted     
6-24 months   COHORTS          INDIA                          High                   0      607    4497  ever_stunted     
6-24 months   COHORTS          INDIA                          High                   1       68    4497  ever_stunted     
6-24 months   COHORTS          INDIA                          Low                    0      821    4497  ever_stunted     
6-24 months   COHORTS          INDIA                          Low                    1      552    4497  ever_stunted     
6-24 months   COHORTS          INDIA                          Medium                 0     1902    4497  ever_stunted     
6-24 months   COHORTS          INDIA                          Medium                 1      547    4497  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    High                   0      394    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    High                   1      459    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    Low                    0      136    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    Low                    1      461    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    Medium                 0      223    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    Medium                 1      448    2121  ever_stunted     
6-24 months   EE               PAKISTAN                       High                   0        3      93  ever_stunted     
6-24 months   EE               PAKISTAN                       High                   1        0      93  ever_stunted     
6-24 months   EE               PAKISTAN                       Low                    0       29      93  ever_stunted     
6-24 months   EE               PAKISTAN                       Low                    1       48      93  ever_stunted     
6-24 months   EE               PAKISTAN                       Medium                 0        7      93  ever_stunted     
6-24 months   EE               PAKISTAN                       Medium                 1        6      93  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          High                   0       33     394  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          High                   1       23     394  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          Low                    0      105     394  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          Low                    1      159     394  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          Medium                 0       34     394  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          Medium                 1       40     394  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      High                   0       54     185  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      High                   1       20     185  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      Low                    0       22     185  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      Low                    1       27     185  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      Medium                 0       37     185  ever_stunted     
6-24 months   Guatemala BSC    GUATEMALA                      Medium                 1       25     185  ever_stunted     
6-24 months   IRC              INDIA                          High                   0       53     236  ever_stunted     
6-24 months   IRC              INDIA                          High                   1       29     236  ever_stunted     
6-24 months   IRC              INDIA                          Low                    0       51     236  ever_stunted     
6-24 months   IRC              INDIA                          Low                    1       33     236  ever_stunted     
6-24 months   IRC              INDIA                          Medium                 0       43     236  ever_stunted     
6-24 months   IRC              INDIA                          Medium                 1       27     236  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     High                   0     3432   10484  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     High                   1      719   10484  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Low                    0     2365   10484  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Low                    1      875   10484  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Medium                 0     2422   10484  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Medium                 1      671   10484  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     High                   0      943    3639  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     High                   1      430    3639  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     Low                    0      630    3639  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     Low                    1      477    3639  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     Medium                 0      687    3639  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     Medium                 1      472    3639  ever_stunted     
6-24 months   LCNI-5           MALAWI                         High                   0      120     708  ever_stunted     
6-24 months   LCNI-5           MALAWI                         High                   1      151     708  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Low                    0       82     708  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Low                    1      134     708  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Medium                 0       82     708  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Medium                 1      139     708  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     High                   0       31     130  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     High                   1       22     130  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Low                    0       21     130  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Low                    1       17     130  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Medium                 0       23     130  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Medium                 1       16     130  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         High                   0       51     162  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         High                   1        3     162  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         Low                    0       39     162  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         Low                    1        4     162  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         Medium                 0       61     162  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         Medium                 1        4     162  ever_stunted     
6-24 months   MAL-ED           INDIA                          High                   0       25     140  ever_stunted     
6-24 months   MAL-ED           INDIA                          High                   1       17     140  ever_stunted     
6-24 months   MAL-ED           INDIA                          Low                    0       27     140  ever_stunted     
6-24 months   MAL-ED           INDIA                          Low                    1       23     140  ever_stunted     
6-24 months   MAL-ED           INDIA                          Medium                 0       29     140  ever_stunted     
6-24 months   MAL-ED           INDIA                          Medium                 1       19     140  ever_stunted     
6-24 months   MAL-ED           NEPAL                          High                   0       39     182  ever_stunted     
6-24 months   MAL-ED           NEPAL                          High                   1        6     182  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Low                    0       55     182  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Low                    1       20     182  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Medium                 0       52     182  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Medium                 1       10     182  ever_stunted     
6-24 months   MAL-ED           PERU                           High                   0       29     149  ever_stunted     
6-24 months   MAL-ED           PERU                           High                   1       12     149  ever_stunted     
6-24 months   MAL-ED           PERU                           Low                    0       28     149  ever_stunted     
6-24 months   MAL-ED           PERU                           Low                    1       23     149  ever_stunted     
6-24 months   MAL-ED           PERU                           Medium                 0       33     149  ever_stunted     
6-24 months   MAL-ED           PERU                           Medium                 1       24     149  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   High                   0       31     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   High                   1       12     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Low                    0       47     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Low                    1       37     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                 0       20     158  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                 1       11     158  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0        2     121  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1        6     121  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0        9     121  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1       27     121  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0       17     121  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1       60     121  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     High                   0       61     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     High                   1       50     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     Low                    0       38     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     Low                    1       81     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     Medium                 0       48     345  ever_stunted     
6-24 months   NIH-Birth        BANGLADESH                     Medium                 1       67     345  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     High                   0      150     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     High                   1       38     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     Low                    0      109     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     Low                    1       49     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     Medium                 0      114     506  ever_stunted     
6-24 months   NIH-Crypto       BANGLADESH                     Medium                 1       46     506  ever_stunted     
6-24 months   PROBIT           BELARUS                        High                   0     2520   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        High                   1      120   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        Low                    0     5021   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        Low                    1      444   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        Medium                 0     6932   15467  ever_stunted     
6-24 months   PROBIT           BELARUS                        Medium                 1      430   15467  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     High                   0      126     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     High                   1       37     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Low                    0       86     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Low                    1       50     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Medium                 0      107     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Medium                 1       50     456  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          High                   0      130     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          High                   1       83     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          Low                    0      124     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          Low                    1      193     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          Medium                 0      150     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          Medium                 1      133     813  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          High                   0        7     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          High                   1       20     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          Low                    0       44     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          Low                    1      148     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          Medium                 0        8     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          Medium                 1       16     243  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      328    1597  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       77    1597  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0       40    1597  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       15    1597  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      867    1597  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      270    1597  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       High                   0     3634    8483  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       High                   1     1067    8483  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       Low                    0     1193    8483  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       Low                    1      542    8483  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                 0     1423    8483  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                 1      624    8483  ever_stunted     


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
