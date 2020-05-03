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
![](/tmp/7c351404-0092-4ab9-b952-14f73aa965f3/49ab2a44-93d7-427b-abef-17f7a38f8d0b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7c351404-0092-4ab9-b952-14f73aa965f3/49ab2a44-93d7-427b-abef-17f7a38f8d0b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7c351404-0092-4ab9-b952-14f73aa965f3/49ab2a44-93d7-427b-abef-17f7a38f8d0b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -1.0175030   -1.3702604   -0.6647455
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.5282617   -1.2055618    0.1490384
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.7698828   -1.2590342   -0.2807314
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.2225153   -1.6454335   -0.7995970
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2065939    0.0623169    0.3508709
Birth       COHORTS          GUATEMALA                      Wealth Q1            NA                 0.0696080   -0.0999974    0.2392134
Birth       COHORTS          GUATEMALA                      Wealth Q2            NA                 0.0582332   -0.1494414    0.2659077
Birth       COHORTS          GUATEMALA                      Wealth Q3            NA                 0.1588885   -0.0218480    0.3396250
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1442727   -0.2135522   -0.0749933
Birth       COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.3033785   -0.3858113   -0.2209457
Birth       COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.2982475   -0.3974917   -0.1990034
Birth       COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2841841   -0.3533303   -0.2150379
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0352658   -1.1934798   -0.8770518
Birth       GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1872373   -1.3330273   -1.0414473
Birth       GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.0535525   -1.2140807   -0.8930244
Birth       GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.0800888   -1.2414420   -0.9187357
Birth       IRC              INDIA                          Wealth Q4            NA                -0.2640982   -0.5812966    0.0531001
Birth       IRC              INDIA                          Wealth Q1            NA                -0.2041520   -0.4845424    0.0762385
Birth       IRC              INDIA                          Wealth Q2            NA                -0.3996861   -0.6912513   -0.1081209
Birth       IRC              INDIA                          Wealth Q3            NA                -0.4170432   -0.6690060   -0.1650805
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -1.5729638   -1.6211495   -1.5247781
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            NA                -1.6584433   -1.6937338   -1.6231528
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            NA                -1.5962865   -1.6310623   -1.5615107
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            NA                -1.5880883   -1.6201266   -1.5560499
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                -1.4974657   -1.6208841   -1.3740472
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            NA                -1.5706111   -1.6734244   -1.4677978
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            NA                -1.5478628   -1.6685019   -1.4272238
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            NA                -1.4957511   -1.6073985   -1.3841037
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.7583276   -0.9903983   -0.5262569
Birth       MAL-ED           BANGLADESH                     Wealth Q1            NA                -1.3635176   -1.6458434   -1.0811918
Birth       MAL-ED           BANGLADESH                     Wealth Q2            NA                -1.2288586   -1.5246495   -0.9330676
Birth       MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.9134941   -1.1867561   -0.6402320
Birth       MAL-ED           BRAZIL                         Wealth Q4            NA                -0.6801750   -1.4244605    0.0641106
Birth       MAL-ED           BRAZIL                         Wealth Q1            NA                -0.7343596   -1.2874625   -0.1812567
Birth       MAL-ED           BRAZIL                         Wealth Q2            NA                -0.1266321   -0.6613716    0.4081075
Birth       MAL-ED           BRAZIL                         Wealth Q3            NA                -0.1209657   -1.0232115    0.7812802
Birth       MAL-ED           INDIA                          Wealth Q4            NA                -1.0537500   -1.5024873   -0.6050127
Birth       MAL-ED           INDIA                          Wealth Q1            NA                -1.1307143   -1.7957911   -0.4656374
Birth       MAL-ED           INDIA                          Wealth Q2            NA                -1.4622222   -2.0687425   -0.8557019
Birth       MAL-ED           INDIA                          Wealth Q3            NA                -1.2070000   -1.8208171   -0.5931829
Birth       MAL-ED           PERU                           Wealth Q4            NA                -1.0199501   -1.2190398   -0.8208605
Birth       MAL-ED           PERU                           Wealth Q1            NA                -0.8377014   -1.0331045   -0.6422983
Birth       MAL-ED           PERU                           Wealth Q2            NA                -0.9800969   -1.1899384   -0.7702554
Birth       MAL-ED           PERU                           Wealth Q3            NA                -0.9252418   -1.1471000   -0.7033836
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.5041189   -0.8603189   -0.1479188
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -0.6968873   -1.1482182   -0.2455564
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -0.5769244   -0.9607385   -0.1931102
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -0.3779436   -0.8040839    0.0481967
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -1.2970029   -1.7758481   -0.8181577
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -1.1182639   -1.5551568   -0.6813711
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -1.1775471   -1.6235516   -0.7315426
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.9116474   -1.2553260   -0.5679688
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.9573239   -1.0700208   -0.8446269
Birth       PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.8989149   -1.0322074   -0.7656224
Birth       PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.8268947   -0.9472027   -0.7065868
Birth       PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.8557741   -0.9991002   -0.7124479
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -1.7736461   -2.0495898   -1.4977023
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -1.0714181   -1.3199267   -0.8229095
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -1.4288593   -1.7142979   -1.1434207
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.4077532   -1.7064152   -1.1090911
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -1.6871050   -1.7917421   -1.5824679
6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                -1.9313831   -2.0890955   -1.7736706
6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                -1.9024228   -2.0533230   -1.7515225
6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                -1.8278198   -1.9948530   -1.6607866
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.9843667   -1.0652062   -0.9035272
6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                -1.2371656   -1.3387824   -1.1355489
6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                -1.1705686   -1.2752315   -1.0659057
6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                -1.2277186   -1.3000443   -1.1553930
6 months    CONTENT          PERU                           Wealth Q4            NA                -0.2151751   -0.4654775    0.0351272
6 months    CONTENT          PERU                           Wealth Q1            NA                -0.3176119   -0.5726601   -0.0625637
6 months    CONTENT          PERU                           Wealth Q2            NA                -0.3259095   -0.6330187   -0.0188003
6 months    CONTENT          PERU                           Wealth Q3            NA                -0.1874167   -0.4753054    0.1004720
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.3214308   -1.4680354   -1.1748262
6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.4432997   -1.6036981   -1.2829012
6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.3287739   -1.4995932   -1.1579547
6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.3169014   -1.4761132   -1.1576896
6 months    IRC              INDIA                          Wealth Q4            NA                -1.0605977   -1.3404783   -0.7807170
6 months    IRC              INDIA                          Wealth Q1            NA                -1.4099321   -1.6614774   -1.1583867
6 months    IRC              INDIA                          Wealth Q2            NA                -1.4237636   -1.6657815   -1.1817457
6 months    IRC              INDIA                          Wealth Q3            NA                -1.0325986   -1.2924652   -0.7727320
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -1.2773307   -1.3286813   -1.2259802
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                -1.4383657   -1.4858170   -1.3909144
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                -1.3666033   -1.4104919   -1.3227146
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                -1.3070023   -1.3482116   -1.2657930
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -1.2589948   -1.3534182   -1.1645713
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                -1.4883258   -1.5527105   -1.4239411
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                -1.3984261   -1.4718663   -1.3249858
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                -1.3011670   -1.3808788   -1.2214552
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                -1.6168054   -1.7507056   -1.4829051
6 months    LCNI-5           MALAWI                         Wealth Q1            NA                -1.6197543   -1.7753014   -1.4642073
6 months    LCNI-5           MALAWI                         Wealth Q2            NA                -1.7010925   -1.8391946   -1.5629904
6 months    LCNI-5           MALAWI                         Wealth Q3            NA                -1.6364024   -1.7636690   -1.5091358
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.9332282   -1.1604146   -0.7060417
6 months    MAL-ED           BANGLADESH                     Wealth Q1            NA                -1.3139750   -1.5569892   -1.0709607
6 months    MAL-ED           BANGLADESH                     Wealth Q2            NA                -1.3702807   -1.5927102   -1.1478511
6 months    MAL-ED           BANGLADESH                     Wealth Q3            NA                -1.2006190   -1.4305209   -0.9707172
6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                -0.1008751   -0.3564563    0.1547061
6 months    MAL-ED           BRAZIL                         Wealth Q1            NA                -0.0018253   -0.2776447    0.2739941
6 months    MAL-ED           BRAZIL                         Wealth Q2            NA                 0.0800235   -0.2116899    0.3717368
6 months    MAL-ED           BRAZIL                         Wealth Q3            NA                -0.0036585   -0.3223992    0.3150823
6 months    MAL-ED           INDIA                          Wealth Q4            NA                -1.1857324   -1.3529888   -1.0184761
6 months    MAL-ED           INDIA                          Wealth Q1            NA                -1.3137365   -1.5901900   -1.0372829
6 months    MAL-ED           INDIA                          Wealth Q2            NA                -1.2282422   -1.4985947   -0.9578898
6 months    MAL-ED           INDIA                          Wealth Q3            NA                -1.0809930   -1.3085007   -0.8534853
6 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.4013168   -0.6172719   -0.1853616
6 months    MAL-ED           NEPAL                          Wealth Q1            NA                -0.5370975   -0.7933633   -0.2808317
6 months    MAL-ED           NEPAL                          Wealth Q2            NA                -0.4189684   -0.6391578   -0.1987789
6 months    MAL-ED           NEPAL                          Wealth Q3            NA                -0.8091441   -1.0165218   -0.6017665
6 months    MAL-ED           PERU                           Wealth Q4            NA                -1.2572371   -1.4835222   -1.0309519
6 months    MAL-ED           PERU                           Wealth Q1            NA                -1.1756034   -1.4002433   -0.9509634
6 months    MAL-ED           PERU                           Wealth Q2            NA                -1.4197623   -1.6104320   -1.2290925
6 months    MAL-ED           PERU                           Wealth Q3            NA                -1.4604016   -1.6754822   -1.2453210
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.8586644   -1.1385358   -0.5787931
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -1.1197626   -1.4005988   -0.8389264
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -1.2123326   -1.4583130   -0.9663522
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -1.0360084   -1.2605087   -0.8115081
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -1.4620884   -1.6784367   -1.2457401
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -1.2926953   -1.5446387   -1.0407519
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -1.3614654   -1.6040918   -1.1188390
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -1.3097587   -1.5729937   -1.0465237
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -1.3902874   -1.5541198   -1.2264551
6 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                -1.0334914   -1.1846862   -0.8822965
6 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.9444756   -1.0851098   -0.8038414
6 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                -1.1378936   -1.2911454   -0.9846417
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.7021702   -0.7972807   -0.6070596
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.4217504   -0.5080872   -0.3354136
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.5483626   -0.6576220   -0.4391033
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.5263473   -0.6130140   -0.4396806
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -2.6067678   -2.8049715   -2.4085642
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -2.5224495   -2.7084415   -2.3364576
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -2.6114085   -2.8087945   -2.4140224
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -2.4986803   -2.7144992   -2.2828613
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -2.8090720   -2.9062604   -2.7118836
24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                -3.0892638   -3.2395473   -2.9389803
24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                -3.0551243   -3.2058405   -2.9044081
24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                -3.1261934   -3.2754331   -2.9769537
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -2.0729028   -2.1545085   -1.9912970
24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                -2.6509006   -2.7558756   -2.5459256
24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                -2.5033410   -2.6175371   -2.3891449
24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                -2.5197091   -2.5958527   -2.4435655
24 months   CONTENT          PERU                           Wealth Q4            NA                -0.5203405   -0.8104464   -0.2302347
24 months   CONTENT          PERU                           Wealth Q1            NA                -0.7765287   -1.0810808   -0.4719767
24 months   CONTENT          PERU                           Wealth Q2            NA                -0.5986506   -0.9397797   -0.2575215
24 months   CONTENT          PERU                           Wealth Q3            NA                -0.6884165   -0.9824064   -0.3944266
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.8404026   -1.9956802   -1.6851250
24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                -2.0363747   -2.2118085   -1.8609409
24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.9238789   -2.0939735   -1.7537844
24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.7448914   -1.9187194   -1.5710635
24 months   IRC              INDIA                          Wealth Q4            NA                -1.5268555   -1.7186244   -1.3350867
24 months   IRC              INDIA                          Wealth Q1            NA                -1.9676180   -2.1556982   -1.7795379
24 months   IRC              INDIA                          Wealth Q2            NA                -1.8913934   -2.0772641   -1.7055226
24 months   IRC              INDIA                          Wealth Q3            NA                -1.7871146   -1.9673619   -1.6068673
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -1.9030637   -1.9669750   -1.8391523
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                -2.1088949   -2.1653770   -2.0524128
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                -2.0698099   -2.1199414   -2.0196785
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                -2.0276024   -2.0794427   -1.9757621
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -1.6849772   -1.7673030   -1.6026515
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                -1.9430674   -2.0041049   -1.8820299
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                -1.8619668   -1.9342955   -1.7896381
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                -1.7386368   -1.8090019   -1.6682716
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                -1.7608438   -1.9138546   -1.6078329
24 months   LCNI-5           MALAWI                         Wealth Q1            NA                -1.8952084   -2.0809620   -1.7094548
24 months   LCNI-5           MALAWI                         Wealth Q2            NA                -2.0623112   -2.2243195   -1.9003029
24 months   LCNI-5           MALAWI                         Wealth Q3            NA                -1.8195727   -1.9717058   -1.6674396
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -1.6763959   -1.9180601   -1.4347317
24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                -1.9866145   -2.3392235   -1.6340056
24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                -2.2706391   -2.5102758   -2.0310025
24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                -1.9959669   -2.2130644   -1.7788694
24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.1185527   -0.1949536    0.4320589
24 months   MAL-ED           BRAZIL                         Wealth Q1            NA                -0.2610451   -0.6533090    0.1312189
24 months   MAL-ED           BRAZIL                         Wealth Q2            NA                 0.0033882   -0.3853510    0.3921274
24 months   MAL-ED           BRAZIL                         Wealth Q3            NA                 0.0483274   -0.2445475    0.3412023
24 months   MAL-ED           INDIA                          Wealth Q4            NA                -1.8015501   -2.0101587   -1.5929415
24 months   MAL-ED           INDIA                          Wealth Q1            NA                -2.0731125   -2.3523294   -1.7938955
24 months   MAL-ED           INDIA                          Wealth Q2            NA                -1.8253877   -2.1162871   -1.5344883
24 months   MAL-ED           INDIA                          Wealth Q3            NA                -1.7906665   -2.0137648   -1.5675683
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -1.2080538   -1.4765551   -0.9395525
24 months   MAL-ED           NEPAL                          Wealth Q1            NA                -1.1578346   -1.4031949   -0.9124744
24 months   MAL-ED           NEPAL                          Wealth Q2            NA                -1.1860747   -1.4512754   -0.9208741
24 months   MAL-ED           NEPAL                          Wealth Q3            NA                -1.6806671   -1.8853394   -1.4759948
24 months   MAL-ED           PERU                           Wealth Q4            NA                -1.7201530   -1.9313723   -1.5089338
24 months   MAL-ED           PERU                           Wealth Q1            NA                -1.5350280   -1.7893148   -1.2807413
24 months   MAL-ED           PERU                           Wealth Q2            NA                -1.8759788   -2.1135794   -1.6383783
24 months   MAL-ED           PERU                           Wealth Q3            NA                -1.7491167   -1.9928085   -1.5054249
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -1.1242537   -1.3655385   -0.8829689
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -1.7308148   -2.0535443   -1.4080854
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -1.8320911   -2.1282789   -1.5359033
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -1.8659470   -2.1021646   -1.6297294
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -2.6698164   -2.9002028   -2.4394301
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -2.2325670   -2.6404164   -1.8247176
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -2.6971971   -2.9579518   -2.4364425
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -2.7402390   -2.9991372   -2.4813408
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -2.0261034   -2.1696687   -1.8825381
24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                -1.4137638   -1.5786877   -1.2488398
24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                -1.4161252   -1.5760004   -1.2562500
24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                -1.7132241   -1.8874510   -1.5389971


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1452941    0.0610109    0.2295774
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2491505   -0.2881717   -0.2101294
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5897094   -1.6089856   -1.5704331
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.5236135   -1.5727559   -1.4744711
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.0530516   -1.1896058   -0.9164975
Birth       MAL-ED           BRAZIL                         NA                   NA                -0.6963333   -0.9881882   -0.4044785
Birth       MAL-ED           INDIA                          NA                   NA                -1.2070732   -1.5254820   -0.8886644
Birth       MAL-ED           PERU                           NA                   NA                -0.9141395   -1.0364098   -0.7918693
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.5523958   -0.7550074   -0.3497843
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1225000   -1.3335666   -0.9114334
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.8112324   -1.8807284   -1.7417365
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    CONTENT          PERU                           NA                   NA                -0.2785256   -0.4098735   -0.1471776
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3132090   -1.3363486   -1.2900693
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.3440477   -1.3813060   -1.3067894
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6426961   -1.7120603   -1.5733318
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2026806   -1.3203025   -1.0850586
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          NA                   NA                -1.2070638   -1.3255909   -1.0885368
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           NA                   NA                -1.3248549   -1.4336721   -1.2160378
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0547925   -1.1843544   -0.9252306
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5442232   -0.5932373   -0.4952090
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9893430   -3.0546993   -2.9239867
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   CONTENT          PERU                           NA                   NA                -0.6868598   -0.8388476   -0.5348719
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0135591   -2.0412422   -1.9858759
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7803708   -1.8158650   -1.7448765
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8822648   -1.9637218   -1.8008078
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED           NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.4892412   -0.2745635    1.2530459
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.2476202   -0.3565789    0.8518192
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.2050123   -0.7555511    0.3455264
Birth       COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.1369859   -0.3598279    0.0858561
Birth       COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1483607   -0.4011967    0.1044752
Birth       COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0477054   -0.2790106    0.1835998
Birth       COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.1591058   -0.2649703   -0.0532412
Birth       COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1539748   -0.2731897   -0.0347599
Birth       COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.1399113   -0.2357167   -0.0441060
Birth       GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1519715   -0.3631372    0.0591943
Birth       GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0182867   -0.2390930    0.2025195
Birth       GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0448230   -0.2664720    0.1768259
Birth       IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Wealth Q1            Wealth Q4          0.0599462   -0.3427092    0.4626017
Birth       IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1355879   -0.5445074    0.2733315
Birth       IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1529450   -0.5368720    0.2309819
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0854795   -0.1400337   -0.0309253
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0233227   -0.0774292    0.0307839
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0151244   -0.0683533    0.0381044
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0731454   -0.2334456    0.0871548
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0503972   -0.2236739    0.1228796
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4          0.0017145   -0.1640772    0.1675063
Birth       MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.6051900   -0.9725474   -0.2378325
Birth       MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.4705310   -0.8491232   -0.0919388
Birth       MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.1551665   -0.5174058    0.2070729
Birth       MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.0541846   -1.0121730    0.9038037
Birth       MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.5535429   -0.3819733    1.4890591
Birth       MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.5592093   -0.6288871    1.7473056
Birth       MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0769643   -0.8792687    0.7253402
Birth       MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.4084722   -1.1629469    0.3460025
Birth       MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.1532500   -0.9136030    0.6071030
Birth       MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.1822487   -0.0771452    0.4416427
Birth       MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0398533   -0.2285311    0.3082376
Birth       MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0947084   -0.1828035    0.3722202
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1927685   -0.7691421    0.3836051
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0728055   -0.5969675    0.4513564
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.1261753   -0.4304734    0.6828240
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1787390   -0.4735227    0.8310008
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1194559   -0.5368466    0.7757583
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.3853555   -0.2061909    0.9769019
Birth       PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0584090   -0.1047336    0.2215516
Birth       PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.1304291   -0.0239878    0.2848461
Birth       PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.1015498   -0.0697735    0.2728731
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.7022280    0.3313157    1.0731403
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.3447868   -0.0517782    0.7413517
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.3658929   -0.0404691    0.7722549
6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2442780   -0.4336759   -0.0548802
6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2153177   -0.3990280   -0.0316075
6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.1407148   -0.3378412    0.0564116
6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2527989   -0.3827239   -0.1228739
6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1862019   -0.3184183   -0.0539854
6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.2433519   -0.3518525   -0.1348513
6 months    CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.1024368   -0.4590709    0.2541973
6 months    CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.1107344   -0.5065391    0.2850703
6 months    CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0277584   -0.3590554    0.4145722
6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1218689   -0.3393348    0.0955970
6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0073431   -0.2323301    0.2176439
6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0045294   -0.2120547    0.2211135
6 months    IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Wealth Q1            Wealth Q4         -0.3493344   -0.7227356    0.0240668
6 months    IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3631659   -0.7302831    0.0039512
6 months    IRC              INDIA                          Wealth Q3            Wealth Q4          0.0279991   -0.3518723    0.4078705
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1610349   -0.2297426   -0.0923272
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0892725   -0.1532239   -0.0253211
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0296715   -0.0918300    0.0324869
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.2293310   -0.3402371   -0.1184250
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1394313   -0.2541898   -0.0246728
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0421722   -0.1642608    0.0799163
6 months    LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0029490   -0.2088571    0.2029592
6 months    LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0842871   -0.2774295    0.1088552
6 months    LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0195971   -0.2047177    0.1655235
6 months    MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.3807468   -0.7151605   -0.0463330
6 months    MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.4370525   -0.7573736   -0.1167314
6 months    MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.2673909   -0.5921426    0.0573609
6 months    MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4          0.0990498   -0.2762364    0.4743361
6 months    MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.1808986   -0.2045385    0.5663356
6 months    MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.0972166   -0.3102397    0.5046730
6 months    MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.1280040   -0.4516559    0.1956478
6 months    MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0425098   -0.3597981    0.2747785
6 months    MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.1047394   -0.1775039    0.3869828
6 months    MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.1357807   -0.4722437    0.2006823
6 months    MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.0176516   -0.3275544    0.2922512
6 months    MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.4078274   -0.7082948   -0.1073599
6 months    MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0816337   -0.2367912    0.4000586
6 months    MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.1625252   -0.4591610    0.1341106
6 months    MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.2031645   -0.5135634    0.1072344
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2610982   -0.6579775    0.1357811
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3536682   -0.7267185    0.0193821
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.1773440   -0.5365145    0.1818266
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1693931   -0.1620943    0.5008805
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1006231   -0.2234038    0.4246499
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1523298   -0.1870646    0.4917241
6 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.3567961    0.1327258    0.5808663
6 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.4458118    0.2290648    0.6625588
6 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.2523939    0.0271654    0.4776223
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.2804198    0.1542292    0.4066104
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1538075    0.0109201    0.2966950
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1758229    0.0491759    0.3024698
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0843183   -0.1870107    0.3556473
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0046406   -0.2841481    0.2748668
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.1080875   -0.1847867    0.4009618
24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2801918   -0.4589929   -0.1013907
24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2460523   -0.4249485   -0.0671561
24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.3171214   -0.4949158   -0.1393271
24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.5779978   -0.7112289   -0.4447667
24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.4304382   -0.5710501   -0.2898263
24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.4468063   -0.5588306   -0.3347820
24 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2561882   -0.6774759    0.1650995
24 months   CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.0783101   -0.5269277    0.3703076
24 months   CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1680760   -0.5815393    0.2453874
24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1959721   -0.4288794    0.0369353
24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0834763   -0.3126373    0.1456847
24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0955112   -0.1359432    0.3269656
24 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.4407625   -0.7101492   -0.1713758
24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3645378   -0.6313200   -0.0977557
24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         -0.2602590   -0.5232097    0.0026916
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.2058312   -0.2864678   -0.1251947
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1667463   -0.2448913   -0.0886012
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.1245387   -0.2041556   -0.0449218
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.2580901   -0.3585457   -0.1576345
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1769896   -0.2790456   -0.0749335
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0536595   -0.1559032    0.0485842
24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1343646   -0.3749119    0.1061826
24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.3014674   -0.5243522   -0.0785826
24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0587289   -0.2745825    0.1571247
24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.3102186   -0.7374363    0.1169990
24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.5942432   -0.9351726   -0.2533138
24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.3195710   -0.6450475    0.0059055
24 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.3795977   -0.8801815    0.1209860
24 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.1151644   -0.6159204    0.3855915
24 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.0702253   -0.5015159    0.3610654
24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.2715624   -0.6197580    0.0766332
24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0238376   -0.3824204    0.3347452
24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0108836   -0.2951706    0.3169377
24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4          0.0502191   -0.3136440    0.4140822
24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0219790   -0.3557736    0.3997317
24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.4726133   -0.8109525   -0.1342741
24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.1851250   -0.1431174    0.5133674
24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.1558258   -0.4724955    0.1608438
24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0289637   -0.3487189    0.2907916
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.6065611   -1.0075913   -0.2055309
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.7078374   -1.0929313   -0.3227434
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.7416933   -1.0826162   -0.4007704
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.4372494   -0.0314823    0.9059812
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0273807   -0.3757067    0.3209454
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0704225   -0.4172907    0.2764456
24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.6123397    0.3943255    0.8303538
24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.6099783    0.3952194    0.8247371
24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.3128794    0.0879056    0.5378532


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0563073   -0.2422908    0.3549054
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0612998   -0.1787875    0.0561880
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1048778   -0.1642464   -0.0455092
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0498922   -0.1836736    0.0838892
Birth       IRC              INDIA                          Wealth Q4            NA                -0.0439430   -0.3018999    0.2140139
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0167456   -0.0588515    0.0253604
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0261478   -0.1366328    0.0843372
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.2947240   -0.5110808   -0.0783673
Birth       MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0161584   -0.7144666    0.6821498
Birth       MAL-ED           INDIA                          Wealth Q4            NA                -0.1533232   -0.6267868    0.3201405
Birth       MAL-ED           PERU                           Wealth Q4            NA                 0.1058106   -0.0583734    0.2699946
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0482770   -0.4043828    0.3078289
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1745029   -0.2528746    0.6018805
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0722218   -0.0270033    0.1714470
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3501953    0.1105858    0.5898048
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1241274   -0.2123309   -0.0359240
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1562057   -0.2258415   -0.0865699
6 months    CONTENT          PERU                           Wealth Q4            NA                -0.0633505   -0.2893080    0.1626071
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0294085   -0.1602908    0.1014739
6 months    IRC              INDIA                          Wealth Q4            NA                -0.1738086   -0.4108197    0.0632025
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0358782   -0.0798940    0.0081376
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0850529   -0.1690774   -0.0010284
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                -0.0258907   -0.1416477    0.0898663
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.2694524   -0.4733829   -0.0655219
6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.1484509   -0.0839124    0.3808141
6 months    MAL-ED           INDIA                          Wealth Q4            NA                -0.0213314   -0.1898911    0.1472282
6 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.1602652   -0.3514016    0.0308713
6 months    MAL-ED           PERU                           Wealth Q4            NA                -0.0676179   -0.2619908    0.1267551
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.1961281   -0.4347597    0.0425036
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0933435   -0.1000563    0.2867433
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.2985959    0.1501992    0.4469927
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1579470    0.0766611    0.2392329
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0478999   -0.1231944    0.2189942
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1802710   -0.2600688   -0.1004732
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.3412117   -0.4127199   -0.2697036
24 months   CONTENT          PERU                           Wealth Q4            NA                -0.1665192   -0.4244008    0.0913623
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0470154   -0.1844068    0.0903759
24 months   IRC              INDIA                          Wealth Q4            NA                -0.2719220   -0.4388271   -0.1050169
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.1104954   -0.1674768   -0.0535140
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0953935   -0.1670143   -0.0237727
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.1214210   -0.2522321    0.0093900
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.3020003   -0.5060412   -0.0979594
24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.1124383   -0.3779586    0.1530821
24 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0846393   -0.2768533    0.1075747
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.0995339   -0.3267823    0.1277144
24 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0323179   -0.2043832    0.1397473
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.5208058   -0.7378985   -0.3037131
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0242557   -0.1783902    0.2269016
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.4236813    0.2846884    0.5626742
