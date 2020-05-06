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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        hhwealth_quart    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4             32      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1             15      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2             20      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3             25      92  haz              
Birth       COHORTS          GUATEMALA                      Wealth Q4            293     816  haz              
Birth       COHORTS          GUATEMALA                      Wealth Q1            157     816  haz              
Birth       COHORTS          GUATEMALA                      Wealth Q2            161     816  haz              
Birth       COHORTS          GUATEMALA                      Wealth Q3            205     816  haz              
Birth       COHORTS          PHILIPPINES                    Wealth Q4            842    3049  haz              
Birth       COHORTS          PHILIPPINES                    Wealth Q1            687    3049  haz              
Birth       COHORTS          PHILIPPINES                    Wealth Q2            538    3049  haz              
Birth       COHORTS          PHILIPPINES                    Wealth Q3            982    3049  haz              
Birth       CONTENT          PERU                           Wealth Q4              0       2  haz              
Birth       CONTENT          PERU                           Wealth Q1              0       2  haz              
Birth       CONTENT          PERU                           Wealth Q2              1       2  haz              
Birth       CONTENT          PERU                           Wealth Q3              1       2  haz              
Birth       GMS-Nepal        NEPAL                          Wealth Q4            173     696  haz              
Birth       GMS-Nepal        NEPAL                          Wealth Q1            175     696  haz              
Birth       GMS-Nepal        NEPAL                          Wealth Q2            174     696  haz              
Birth       GMS-Nepal        NEPAL                          Wealth Q3            174     696  haz              
Birth       IRC              INDIA                          Wealth Q4             91     388  haz              
Birth       IRC              INDIA                          Wealth Q1             98     388  haz              
Birth       IRC              INDIA                          Wealth Q2             99     388  haz              
Birth       IRC              INDIA                          Wealth Q3            100     388  haz              
Birth       JiVitA-3         BANGLADESH                     Wealth Q4           5278   22434  haz              
Birth       JiVitA-3         BANGLADESH                     Wealth Q1           5772   22434  haz              
Birth       JiVitA-3         BANGLADESH                     Wealth Q2           5701   22434  haz              
Birth       JiVitA-3         BANGLADESH                     Wealth Q3           5683   22434  haz              
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            654    2820  haz              
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            685    2820  haz              
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            722    2820  haz              
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            759    2820  haz              
Birth       MAL-ED           BANGLADESH                     Wealth Q4             56     213  haz              
Birth       MAL-ED           BANGLADESH                     Wealth Q1             52     213  haz              
Birth       MAL-ED           BANGLADESH                     Wealth Q2             51     213  haz              
Birth       MAL-ED           BANGLADESH                     Wealth Q3             54     213  haz              
Birth       MAL-ED           BRAZIL                         Wealth Q4             11      60  haz              
Birth       MAL-ED           BRAZIL                         Wealth Q1             21      60  haz              
Birth       MAL-ED           BRAZIL                         Wealth Q2             17      60  haz              
Birth       MAL-ED           BRAZIL                         Wealth Q3             11      60  haz              
Birth       MAL-ED           INDIA                          Wealth Q4              8      41  haz              
Birth       MAL-ED           INDIA                          Wealth Q1             14      41  haz              
Birth       MAL-ED           INDIA                          Wealth Q2              9      41  haz              
Birth       MAL-ED           INDIA                          Wealth Q3             10      41  haz              
Birth       MAL-ED           NEPAL                          Wealth Q4              6      26  haz              
Birth       MAL-ED           NEPAL                          Wealth Q1              9      26  haz              
Birth       MAL-ED           NEPAL                          Wealth Q2              3      26  haz              
Birth       MAL-ED           NEPAL                          Wealth Q3              8      26  haz              
Birth       MAL-ED           PERU                           Wealth Q4             54     215  haz              
Birth       MAL-ED           PERU                           Wealth Q1             55     215  haz              
Birth       MAL-ED           PERU                           Wealth Q2             54     215  haz              
Birth       MAL-ED           PERU                           Wealth Q3             52     215  haz              
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4             17      96  haz              
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1             27      96  haz              
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2             24      96  haz              
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3             28      96  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             26     120  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             28     120  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             32     120  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             34     120  haz              
Birth       PROVIDE          BANGLADESH                     Wealth Q4            132     539  haz              
Birth       PROVIDE          BANGLADESH                     Wealth Q1            134     539  haz              
Birth       PROVIDE          BANGLADESH                     Wealth Q2            136     539  haz              
Birth       PROVIDE          BANGLADESH                     Wealth Q3            137     539  haz              
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4             94     369  haz              
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1             91     369  haz              
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2             94     369  haz              
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3             90     369  haz              
6 months    COHORTS          GUATEMALA                      Wealth Q4            339     925  haz              
6 months    COHORTS          GUATEMALA                      Wealth Q1            175     925  haz              
6 months    COHORTS          GUATEMALA                      Wealth Q2            195     925  haz              
6 months    COHORTS          GUATEMALA                      Wealth Q3            216     925  haz              
6 months    COHORTS          PHILIPPINES                    Wealth Q4            743    2708  haz              
6 months    COHORTS          PHILIPPINES                    Wealth Q1            570    2708  haz              
6 months    COHORTS          PHILIPPINES                    Wealth Q2            485    2708  haz              
6 months    COHORTS          PHILIPPINES                    Wealth Q3            910    2708  haz              
6 months    CONTENT          PERU                           Wealth Q4             52     215  haz              
6 months    CONTENT          PERU                           Wealth Q1             59     215  haz              
6 months    CONTENT          PERU                           Wealth Q2             52     215  haz              
6 months    CONTENT          PERU                           Wealth Q3             52     215  haz              
6 months    GMS-Nepal        NEPAL                          Wealth Q4            140     564  haz              
6 months    GMS-Nepal        NEPAL                          Wealth Q1            141     564  haz              
6 months    GMS-Nepal        NEPAL                          Wealth Q2            148     564  haz              
6 months    GMS-Nepal        NEPAL                          Wealth Q3            135     564  haz              
6 months    IRC              INDIA                          Wealth Q4             99     407  haz              
6 months    IRC              INDIA                          Wealth Q1            105     407  haz              
6 months    IRC              INDIA                          Wealth Q2            100     407  haz              
6 months    IRC              INDIA                          Wealth Q3            103     407  haz              
6 months    JiVitA-3         BANGLADESH                     Wealth Q4           4984   16803  haz              
6 months    JiVitA-3         BANGLADESH                     Wealth Q1           3586   16803  haz              
6 months    JiVitA-3         BANGLADESH                     Wealth Q2           3907   16803  haz              
6 months    JiVitA-3         BANGLADESH                     Wealth Q3           4326   16803  haz              
6 months    JiVitA-4         BANGLADESH                     Wealth Q4           1199    4825  haz              
6 months    JiVitA-4         BANGLADESH                     Wealth Q1           1196    4825  haz              
6 months    JiVitA-4         BANGLADESH                     Wealth Q2           1201    4825  haz              
6 months    JiVitA-4         BANGLADESH                     Wealth Q3           1229    4825  haz              
6 months    LCNI-5           MALAWI                         Wealth Q4            217     816  haz              
6 months    LCNI-5           MALAWI                         Wealth Q1            203     816  haz              
6 months    LCNI-5           MALAWI                         Wealth Q2            199     816  haz              
6 months    LCNI-5           MALAWI                         Wealth Q3            197     816  haz              
6 months    MAL-ED           BANGLADESH                     Wealth Q4             61     240  haz              
6 months    MAL-ED           BANGLADESH                     Wealth Q1             59     240  haz              
6 months    MAL-ED           BANGLADESH                     Wealth Q2             61     240  haz              
6 months    MAL-ED           BANGLADESH                     Wealth Q3             59     240  haz              
6 months    MAL-ED           BRAZIL                         Wealth Q4             53     209  haz              
6 months    MAL-ED           BRAZIL                         Wealth Q1             53     209  haz              
6 months    MAL-ED           BRAZIL                         Wealth Q2             52     209  haz              
6 months    MAL-ED           BRAZIL                         Wealth Q3             51     209  haz              
6 months    MAL-ED           INDIA                          Wealth Q4             59     235  haz              
6 months    MAL-ED           INDIA                          Wealth Q1             60     235  haz              
6 months    MAL-ED           INDIA                          Wealth Q2             58     235  haz              
6 months    MAL-ED           INDIA                          Wealth Q3             58     235  haz              
6 months    MAL-ED           NEPAL                          Wealth Q4             59     236  haz              
6 months    MAL-ED           NEPAL                          Wealth Q1             59     236  haz              
6 months    MAL-ED           NEPAL                          Wealth Q2             59     236  haz              
6 months    MAL-ED           NEPAL                          Wealth Q3             59     236  haz              
6 months    MAL-ED           PERU                           Wealth Q4             67     270  haz              
6 months    MAL-ED           PERU                           Wealth Q1             68     270  haz              
6 months    MAL-ED           PERU                           Wealth Q2             71     270  haz              
6 months    MAL-ED           PERU                           Wealth Q3             64     270  haz              
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4             62     249  haz              
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1             60     249  haz              
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2             64     249  haz              
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3             63     249  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             63     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             61     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     247  haz              
6 months    PROVIDE          BANGLADESH                     Wealth Q4            135     604  haz              
6 months    PROVIDE          BANGLADESH                     Wealth Q1            156     604  haz              
6 months    PROVIDE          BANGLADESH                     Wealth Q2            164     604  haz              
6 months    PROVIDE          BANGLADESH                     Wealth Q3            149     604  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            502    2020  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            605    2020  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            409    2020  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            504    2020  haz              
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4             94     371  haz              
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1             91     371  haz              
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2             95     371  haz              
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3             91     371  haz              
24 months   COHORTS          GUATEMALA                      Wealth Q4            402    1035  haz              
24 months   COHORTS          GUATEMALA                      Wealth Q1            202    1035  haz              
24 months   COHORTS          GUATEMALA                      Wealth Q2            212    1035  haz              
24 months   COHORTS          GUATEMALA                      Wealth Q3            219    1035  haz              
24 months   COHORTS          PHILIPPINES                    Wealth Q4            688    2445  haz              
24 months   COHORTS          PHILIPPINES                    Wealth Q1            489    2445  haz              
24 months   COHORTS          PHILIPPINES                    Wealth Q2            423    2445  haz              
24 months   COHORTS          PHILIPPINES                    Wealth Q3            845    2445  haz              
24 months   CONTENT          PERU                           Wealth Q4             41     164  haz              
24 months   CONTENT          PERU                           Wealth Q1             40     164  haz              
24 months   CONTENT          PERU                           Wealth Q2             42     164  haz              
24 months   CONTENT          PERU                           Wealth Q3             41     164  haz              
24 months   GMS-Nepal        NEPAL                          Wealth Q4            124     488  haz              
24 months   GMS-Nepal        NEPAL                          Wealth Q1            122     488  haz              
24 months   GMS-Nepal        NEPAL                          Wealth Q2            128     488  haz              
24 months   GMS-Nepal        NEPAL                          Wealth Q3            114     488  haz              
24 months   IRC              INDIA                          Wealth Q4            100     409  haz              
24 months   IRC              INDIA                          Wealth Q1            105     409  haz              
24 months   IRC              INDIA                          Wealth Q2            101     409  haz              
24 months   IRC              INDIA                          Wealth Q3            103     409  haz              
24 months   JiVitA-3         BANGLADESH                     Wealth Q4           2366    8623  haz              
24 months   JiVitA-3         BANGLADESH                     Wealth Q1           2001    8623  haz              
24 months   JiVitA-3         BANGLADESH                     Wealth Q2           2106    8623  haz              
24 months   JiVitA-3         BANGLADESH                     Wealth Q3           2150    8623  haz              
24 months   JiVitA-4         BANGLADESH                     Wealth Q4           1193    4747  haz              
24 months   JiVitA-4         BANGLADESH                     Wealth Q1           1156    4747  haz              
24 months   JiVitA-4         BANGLADESH                     Wealth Q2           1173    4747  haz              
24 months   JiVitA-4         BANGLADESH                     Wealth Q3           1225    4747  haz              
24 months   LCNI-5           MALAWI                         Wealth Q4            160     574  haz              
24 months   LCNI-5           MALAWI                         Wealth Q1            129     574  haz              
24 months   LCNI-5           MALAWI                         Wealth Q2            146     574  haz              
24 months   LCNI-5           MALAWI                         Wealth Q3            139     574  haz              
24 months   MAL-ED           BANGLADESH                     Wealth Q4             61     212  haz              
24 months   MAL-ED           BANGLADESH                     Wealth Q1             30     212  haz              
24 months   MAL-ED           BANGLADESH                     Wealth Q2             61     212  haz              
24 months   MAL-ED           BANGLADESH                     Wealth Q3             60     212  haz              
24 months   MAL-ED           BRAZIL                         Wealth Q4             53     169  haz              
24 months   MAL-ED           BRAZIL                         Wealth Q1             26     169  haz              
24 months   MAL-ED           BRAZIL                         Wealth Q2             39     169  haz              
24 months   MAL-ED           BRAZIL                         Wealth Q3             51     169  haz              
24 months   MAL-ED           INDIA                          Wealth Q4             59     227  haz              
24 months   MAL-ED           INDIA                          Wealth Q1             52     227  haz              
24 months   MAL-ED           INDIA                          Wealth Q2             58     227  haz              
24 months   MAL-ED           INDIA                          Wealth Q3             58     227  haz              
24 months   MAL-ED           NEPAL                          Wealth Q4             59     228  haz              
24 months   MAL-ED           NEPAL                          Wealth Q1             55     228  haz              
24 months   MAL-ED           NEPAL                          Wealth Q2             55     228  haz              
24 months   MAL-ED           NEPAL                          Wealth Q3             59     228  haz              
24 months   MAL-ED           PERU                           Wealth Q4             65     201  haz              
24 months   MAL-ED           PERU                           Wealth Q1             42     201  haz              
24 months   MAL-ED           PERU                           Wealth Q2             38     201  haz              
24 months   MAL-ED           PERU                           Wealth Q3             56     201  haz              
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4             63     238  haz              
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1             49     238  haz              
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2             63     238  haz              
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3             63     238  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             28     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             62     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             61     214  haz              
24 months   PROVIDE          BANGLADESH                     Wealth Q4            121     578  haz              
24 months   PROVIDE          BANGLADESH                     Wealth Q1            155     578  haz              
24 months   PROVIDE          BANGLADESH                     Wealth Q2            157     578  haz              
24 months   PROVIDE          BANGLADESH                     Wealth Q3            145     578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       6  haz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error: from glmnet Fortran code (error code 7777); All used predictors have zero variance
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error: from glmnet Fortran code (error code 7777); All used predictors have zero variance
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error: from glmnet Fortran code (error code 7777); All used predictors have zero variance
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error: from glmnet Fortran code (error code 7777); All used predictors have zero variance
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
