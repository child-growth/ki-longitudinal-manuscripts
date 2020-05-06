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

agecat        studyid          country                        meducyrs    ever_sstunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  ---------  --------------  -------  ------  -----------------
0-24 months   CMC-V-BCS-2002   INDIA                          High                    0       65     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          High                    1       93     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          Low                     0       37     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          Low                     1       69     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          Medium                  0       34     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          Medium                  1       75     373  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      High                    0      161    1341  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      High                    1      124    1341  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      Low                     0      326    1341  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      Low                     1      310    1341  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      Medium                  0      232    1341  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      Medium                  1      188    1341  ever_sstunted    
0-24 months   COHORTS          INDIA                          High                    0      761    5852  ever_sstunted    
0-24 months   COHORTS          INDIA                          High                    1       32    5852  ever_sstunted    
0-24 months   COHORTS          INDIA                          Low                     0     1530    5852  ever_sstunted    
0-24 months   COHORTS          INDIA                          Low                     1      426    5852  ever_sstunted    
0-24 months   COHORTS          INDIA                          Medium                  0     2788    5852  ever_sstunted    
0-24 months   COHORTS          INDIA                          Medium                  1      315    5852  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    High                    0      885    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    High                    1      288    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    Low                     0      481    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    Low                     1      422    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    Medium                  0      603    3058  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    Medium                  1      379    3058  ever_sstunted    
0-24 months   EE               PAKISTAN                       High                    0        8     376  ever_sstunted    
0-24 months   EE               PAKISTAN                       High                    1        7     376  ever_sstunted    
0-24 months   EE               PAKISTAN                       Low                     0      122     376  ever_sstunted    
0-24 months   EE               PAKISTAN                       Low                     1      206     376  ever_sstunted    
0-24 months   EE               PAKISTAN                       Medium                  0       20     376  ever_sstunted    
0-24 months   EE               PAKISTAN                       Medium                  1       13     376  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          High                    0       71     695  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          High                    1       14     695  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          Low                     0      360     695  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          Low                     1      126     695  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          Medium                  0       95     695  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          Medium                  1       29     695  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      High                    0       96     282  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      High                    1       22     282  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      Low                     0       57     282  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      Low                     1       19     282  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      Medium                  0       76     282  ever_sstunted    
0-24 months   Guatemala BSC    GUATEMALA                      Medium                  1       12     282  ever_sstunted    
0-24 months   IRC              INDIA                          High                    0      101     410  ever_sstunted    
0-24 months   IRC              INDIA                          High                    1       23     410  ever_sstunted    
0-24 months   IRC              INDIA                          Low                     0      111     410  ever_sstunted    
0-24 months   IRC              INDIA                          Low                     1       36     410  ever_sstunted    
0-24 months   IRC              INDIA                          Medium                  0       96     410  ever_sstunted    
0-24 months   IRC              INDIA                          Medium                  1       43     410  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     High                    0     7817   27193  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     High                    1     1210   27193  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     Low                     0     7779   27193  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     Low                     1     2088   27193  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     Medium                  0     6577   27193  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     Medium                  1     1722   27193  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     High                    0     1623    5419  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     High                    1      278    5419  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     Low                     0     1328    5419  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     Low                     1      457    5419  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     Medium                  0     1365    5419  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     Medium                  1      368    5419  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         High                    0      251     814  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         High                    1       47     814  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         Low                     0      191     814  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         Low                     1       70     814  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         Medium                  0      203     814  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         Medium                  1       52     814  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     High                    0       64     214  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     High                    1       14     214  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     Low                     0       55     214  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     Low                     1       15     214  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     Medium                  0       55     214  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     Medium                  1       11     214  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         High                    0       69     232  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         High                    1       10     232  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         Low                     0       60     232  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         Low                     1        3     232  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         Medium                  0       81     232  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         Medium                  1        9     232  ever_sstunted    
0-24 months   MAL-ED           INDIA                          High                    0       50     220  ever_sstunted    
0-24 months   MAL-ED           INDIA                          High                    1       13     220  ever_sstunted    
0-24 months   MAL-ED           INDIA                          Low                     0       59     220  ever_sstunted    
0-24 months   MAL-ED           INDIA                          Low                     1       17     220  ever_sstunted    
0-24 months   MAL-ED           INDIA                          Medium                  0       64     220  ever_sstunted    
0-24 months   MAL-ED           INDIA                          Medium                  1       17     220  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          High                    0       48     225  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          High                    1        5     225  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          Low                     0       88     225  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          Low                     1        8     225  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          Medium                  0       70     225  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          Medium                  1        6     225  ever_sstunted    
0-24 months   MAL-ED           PERU                           High                    0       71     302  ever_sstunted    
0-24 months   MAL-ED           PERU                           High                    1       20     302  ever_sstunted    
0-24 months   MAL-ED           PERU                           Low                     0       83     302  ever_sstunted    
0-24 months   MAL-ED           PERU                           Low                     1       21     302  ever_sstunted    
0-24 months   MAL-ED           PERU                           Medium                  0       84     302  ever_sstunted    
0-24 months   MAL-ED           PERU                           Medium                  1       23     302  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   High                    0       75     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   High                    1       20     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   Low                     0      111     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   Low                     1       39     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                  0       55     314  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                  1       14     314  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                    0        6     217  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                    1        5     217  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                     0       27     217  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                     1       37     217  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                  0       77     217  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                  1       65     217  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     High                    0      138     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     High                    1       41     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     Low                     0      139     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     Low                     1       91     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     Medium                  0      156     629  ever_sstunted    
0-24 months   NIH-Birth        BANGLADESH                     Medium                  1       64     629  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     High                    0      234     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     High                    1       20     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     Low                     0      202     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     Low                     1       40     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     Medium                  0      223     758  ever_sstunted    
0-24 months   NIH-Crypto       BANGLADESH                     Medium                  1       39     758  ever_sstunted    
0-24 months   PROBIT           BELARUS                        High                    0     2797   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        High                    1       43   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        Low                     0     5863   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        Low                     1      237   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        Medium                  0     7770   16897  ever_sstunted    
0-24 months   PROBIT           BELARUS                        Medium                  1      187   16897  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     High                    0      217     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     High                    1       18     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     Low                     0      180     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     Low                     1       34     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     Medium                  0      208     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     Medium                  1       43     700  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          High                    0      265    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          High                    1       58    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          Low                     0      401    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          Low                     1      295    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          Medium                  0      360    1533  ever_sstunted    
0-24 months   SAS-CompFeed     INDIA                          Medium                  1      154    1533  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          High                    0       27     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          High                    1       14     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          Low                     0      167     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          Low                     1      165     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          Medium                  0       23     418  ever_sstunted    
0-24 months   SAS-FoodSuppl    INDIA                          Medium                  1       22     418  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    0      568    2386  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    1       53    2386  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     0       71    2386  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     1       11    2386  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  0     1510    2386  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  1      173    2386  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       High                    0     6498   14054  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       High                    1     1126   14054  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       Low                     0     2367   14054  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       Low                     1      592   14054  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                  0     2824   14054  ever_sstunted    
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                  1      647   14054  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          High                    0      125     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          High                    1       32     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          Low                     0       76     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          Low                     1       28     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          Medium                  0       76     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          Medium                  1       31     368  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      High                    0      207    1078  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      High                    1       17    1078  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      Low                     0      448    1078  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      Low                     1       66    1078  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      Medium                  0      314    1078  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      Medium                  1       26    1078  ever_sstunted    
0-6 months    COHORTS          INDIA                          High                    0      741    5662  ever_sstunted    
0-6 months    COHORTS          INDIA                          High                    1       12    5662  ever_sstunted    
0-6 months    COHORTS          INDIA                          Low                     0     1775    5662  ever_sstunted    
0-6 months    COHORTS          INDIA                          Low                     1      134    5662  ever_sstunted    
0-6 months    COHORTS          INDIA                          Medium                  0     2878    5662  ever_sstunted    
0-6 months    COHORTS          INDIA                          Medium                  1      122    5662  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    High                    0     1130    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    High                    1       43    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    Low                     0      824    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    Low                     1       79    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    Medium                  0      913    3058  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    Medium                  1       69    3058  ever_sstunted    
0-6 months    EE               PAKISTAN                       High                    0        9     376  ever_sstunted    
0-6 months    EE               PAKISTAN                       High                    1        6     376  ever_sstunted    
0-6 months    EE               PAKISTAN                       Low                     0      186     376  ever_sstunted    
0-6 months    EE               PAKISTAN                       Low                     1      142     376  ever_sstunted    
0-6 months    EE               PAKISTAN                       Medium                  0       22     376  ever_sstunted    
0-6 months    EE               PAKISTAN                       Medium                  1       11     376  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          High                    0       80     695  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          High                    1        5     695  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          Low                     0      438     695  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          Low                     1       48     695  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          Medium                  0      117     695  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          Medium                  1        7     695  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      High                    0       97     265  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      High                    1       15     265  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      Low                     0       70     265  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      Low                     1        4     265  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      Medium                  0       74     265  ever_sstunted    
0-6 months    Guatemala BSC    GUATEMALA                      Medium                  1        5     265  ever_sstunted    
0-6 months    IRC              INDIA                          High                    0      113     410  ever_sstunted    
0-6 months    IRC              INDIA                          High                    1       11     410  ever_sstunted    
0-6 months    IRC              INDIA                          Low                     0      126     410  ever_sstunted    
0-6 months    IRC              INDIA                          Low                     1       21     410  ever_sstunted    
0-6 months    IRC              INDIA                          Medium                  0      109     410  ever_sstunted    
0-6 months    IRC              INDIA                          Medium                  1       30     410  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     High                    0     8054   27127  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     High                    1      941   27127  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     Low                     0     8182   27127  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     Low                     1     1665   27127  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     Medium                  0     6889   27127  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     Medium                  1     1396   27127  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     High                    0     1661    5111  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     High                    1      135    5111  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     Low                     0     1463    5111  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     Low                     1      217    5111  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     Medium                  0     1469    5111  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     Medium                  1      166    5111  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         High                    0       85     267  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         High                    1        2     267  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         Low                     0       83     267  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         Low                     1        9     267  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         Medium                  0       80     267  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         Medium                  1        8     267  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     High                    0       71     214  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     High                    1        7     214  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     Low                     0       63     214  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     Low                     1        7     214  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     Medium                  0       64     214  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     Medium                  1        2     214  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         High                    0       71     232  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         High                    1        8     232  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         Low                     0       61     232  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         Low                     1        2     232  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         Medium                  0       83     232  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         Medium                  1        7     232  ever_sstunted    
0-6 months    MAL-ED           INDIA                          High                    0       60     220  ever_sstunted    
0-6 months    MAL-ED           INDIA                          High                    1        3     220  ever_sstunted    
0-6 months    MAL-ED           INDIA                          Low                     0       72     220  ever_sstunted    
0-6 months    MAL-ED           INDIA                          Low                     1        4     220  ever_sstunted    
0-6 months    MAL-ED           INDIA                          Medium                  0       72     220  ever_sstunted    
0-6 months    MAL-ED           INDIA                          Medium                  1        9     220  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          High                    0       52     225  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          High                    1        1     225  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          Low                     0       92     225  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          Low                     1        4     225  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          Medium                  0       73     225  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          Medium                  1        3     225  ever_sstunted    
0-6 months    MAL-ED           PERU                           High                    0       78     302  ever_sstunted    
0-6 months    MAL-ED           PERU                           High                    1       13     302  ever_sstunted    
0-6 months    MAL-ED           PERU                           Low                     0       94     302  ever_sstunted    
0-6 months    MAL-ED           PERU                           Low                     1       10     302  ever_sstunted    
0-6 months    MAL-ED           PERU                           Medium                  0       92     302  ever_sstunted    
0-6 months    MAL-ED           PERU                           Medium                  1       15     302  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   High                    0       85     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   High                    1       10     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   Low                     0      136     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   Low                     1       14     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                  0       64     314  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                  1        5     314  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                    0       11     217  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                    1        0     217  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                     0       55     217  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                     1        9     217  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                  0      125     217  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                  1       17     217  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     High                    0      163     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     High                    1       16     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     Low                     0      203     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     Low                     1       27     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     Medium                  0      204     629  ever_sstunted    
0-6 months    NIH-Birth        BANGLADESH                     Medium                  1       16     629  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     High                    0      244     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     High                    1       10     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     Low                     0      226     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     Low                     1       16     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     Medium                  0      241     758  ever_sstunted    
0-6 months    NIH-Crypto       BANGLADESH                     Medium                  1       21     758  ever_sstunted    
0-6 months    PROBIT           BELARUS                        High                    0     2826   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        High                    1       14   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        Low                     0     6004   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        Low                     1       93   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        Medium                  0     7877   16892  ever_sstunted    
0-6 months    PROBIT           BELARUS                        Medium                  1       78   16892  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     High                    0      231     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     High                    1        4     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     Low                     0      204     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     Low                     1       10     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     Medium                  0      234     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     Medium                  1       17     700  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          High                    0      296    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          High                    1       27    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          Low                     0      567    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          Low                     1      128    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          Medium                  0      438    1530  ever_sstunted    
0-6 months    SAS-CompFeed     INDIA                          Medium                  1       74    1530  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          High                    0       38     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          High                    1        2     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          Low                     0      287     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          Low                     1       44     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          Medium                  0       41     416  ever_sstunted    
0-6 months    SAS-FoodSuppl    INDIA                          Medium                  1        4     416  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    0      594    2386  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    1       27    2386  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     0       79    2386  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     1        3    2386  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  0     1610    2386  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  1       73    2386  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       High                    0     6976   14037  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       High                    1      641   14037  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       Low                     0     2653   14037  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       Low                     1      301   14037  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                  0     3126   14037  ever_sstunted    
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                  1      340   14037  ever_sstunted    


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
