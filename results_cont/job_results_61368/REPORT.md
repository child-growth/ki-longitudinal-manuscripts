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
![](/tmp/f8490e6d-0f16-47f3-bea3-a0dacf52d97f/69949b76-6117-4e0b-a9d6-3117564d116a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f8490e6d-0f16-47f3-bea3-a0dacf52d97f/69949b76-6117-4e0b-a9d6-3117564d116a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f8490e6d-0f16-47f3-bea3-a0dacf52d97f/69949b76-6117-4e0b-a9d6-3117564d116a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -1.0981420   -1.4541374   -0.7421467
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.6405120   -1.2759295   -0.0050945
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.8160320   -1.2726833   -0.3593807
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.2586662   -1.6851884   -0.8321440
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1998006    0.0562280    0.3433732
Birth       COHORTS          GUATEMALA                      Wealth Q1            NA                 0.0762045   -0.0969231    0.2493321
Birth       COHORTS          GUATEMALA                      Wealth Q2            NA                 0.1230042   -0.0810554    0.3270637
Birth       COHORTS          GUATEMALA                      Wealth Q3            NA                 0.1185522   -0.0693041    0.3064084
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1448785   -0.2139161   -0.0758409
Birth       COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.3120336   -0.3956035   -0.2284637
Birth       COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.2974741   -0.3964894   -0.1984588
Birth       COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2757073   -0.3449556   -0.2064590
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0283008   -1.1885992   -0.8680025
Birth       GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1907480   -1.3364274   -1.0450686
Birth       GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.0537950   -1.2137720   -0.8938179
Birth       GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.0768069   -1.2345186   -0.9190952
Birth       IRC              INDIA                          Wealth Q4            NA                -0.2762208   -0.5996250    0.0471834
Birth       IRC              INDIA                          Wealth Q1            NA                -0.1756924   -0.4501466    0.0987619
Birth       IRC              INDIA                          Wealth Q2            NA                -0.3913107   -0.6815204   -0.1011010
Birth       IRC              INDIA                          Wealth Q3            NA                -0.4368700   -0.6938196   -0.1799204
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -1.5621638   -1.6098957   -1.5144318
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            NA                -1.6484096   -1.6841737   -1.6126455
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            NA                -1.6045162   -1.6382857   -1.5707467
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            NA                -1.5854988   -1.6178205   -1.5531772
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                -1.5008521   -1.6223741   -1.3793301
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            NA                -1.5646496   -1.6793961   -1.4499032
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            NA                -1.5519187   -1.6767835   -1.4270540
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            NA                -1.5043394   -1.6190229   -1.3896559
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.7513952   -0.9836522   -0.5191383
Birth       MAL-ED           BANGLADESH                     Wealth Q1            NA                -1.3780585   -1.6519048   -1.1042122
Birth       MAL-ED           BANGLADESH                     Wealth Q2            NA                -1.2792657   -1.5794852   -0.9790461
Birth       MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.9531833   -1.2234238   -0.6829428
Birth       MAL-ED           BRAZIL                         Wealth Q4            NA                -0.6057074   -1.5666416    0.3552269
Birth       MAL-ED           BRAZIL                         Wealth Q1            NA                -0.8065402   -1.3756441   -0.2374364
Birth       MAL-ED           BRAZIL                         Wealth Q2            NA                -0.5421972   -1.0882725    0.0038781
Birth       MAL-ED           BRAZIL                         Wealth Q3            NA                -0.2749387   -1.2404360    0.6905586
Birth       MAL-ED           INDIA                          Wealth Q4            NA                -1.0537500   -1.5024873   -0.6050127
Birth       MAL-ED           INDIA                          Wealth Q1            NA                -1.1307143   -1.7957911   -0.4656374
Birth       MAL-ED           INDIA                          Wealth Q2            NA                -1.4622222   -2.0687425   -0.8557019
Birth       MAL-ED           INDIA                          Wealth Q3            NA                -1.2070000   -1.8208171   -0.5931829
Birth       MAL-ED           PERU                           Wealth Q4            NA                -0.9746035   -1.1727947   -0.7764123
Birth       MAL-ED           PERU                           Wealth Q1            NA                -0.8082026   -1.0021988   -0.6142065
Birth       MAL-ED           PERU                           Wealth Q2            NA                -0.9737594   -1.1846480   -0.7628708
Birth       MAL-ED           PERU                           Wealth Q3            NA                -0.9140939   -1.1383158   -0.6898721
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.4744006   -0.8455870   -0.1032141
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -0.7128439   -1.1435210   -0.2821667
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -0.5865353   -0.9680274   -0.2050432
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -0.3767738   -0.7903768    0.0368293
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -1.3021484   -1.7821284   -0.8221684
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -1.1625473   -1.5703143   -0.7547802
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -1.1429449   -1.5911231   -0.6947667
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.9179538   -1.2411883   -0.5947194
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.9956688   -1.1056503   -0.8856873
Birth       PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.9085760   -1.0408883   -0.7762636
Birth       PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.8167632   -0.9369397   -0.6965868
Birth       PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.8447904   -0.9879873   -0.7015935
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -1.7118509   -1.9891551   -1.4345467
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -1.0541566   -1.3027567   -0.8055564
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -1.4135586   -1.6889904   -1.1381268
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.4444874   -1.7371339   -1.1518409
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -1.6798034   -1.7843495   -1.5752573
6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                -1.9172383   -2.0711949   -1.7632816
6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                -1.9037033   -2.0572648   -1.7501418
6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                -1.8329224   -2.0025397   -1.6633051
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.9784037   -1.0593621   -0.8974454
6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                -1.2362583   -1.3390428   -1.1334738
6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                -1.1673904   -1.2694661   -1.0653148
6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                -1.2257271   -1.2975712   -1.1538830
6 months    CONTENT          PERU                           Wealth Q4            NA                -0.2311236   -0.4821562    0.0199089
6 months    CONTENT          PERU                           Wealth Q1            NA                -0.3111025   -0.5686225   -0.0535824
6 months    CONTENT          PERU                           Wealth Q2            NA                -0.3403326   -0.6462449   -0.0344204
6 months    CONTENT          PERU                           Wealth Q3            NA                -0.1888121   -0.4895526    0.1119285
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.3137959   -1.4583076   -1.1692843
6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.4372902   -1.5924976   -1.2820829
6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.3298944   -1.4957750   -1.1640138
6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.3231147   -1.4763723   -1.1698571
6 months    IRC              INDIA                          Wealth Q4            NA                -1.0496141   -1.3332081   -0.7660200
6 months    IRC              INDIA                          Wealth Q1            NA                -1.4159293   -1.6658015   -1.1660571
6 months    IRC              INDIA                          Wealth Q2            NA                -1.4206817   -1.6667769   -1.1745866
6 months    IRC              INDIA                          Wealth Q3            NA                -1.0413418   -1.2971688   -0.7855149
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -1.2689016   -1.3215297   -1.2162736
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                -1.4480486   -1.4969333   -1.3991639
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                -1.3664235   -1.4107731   -1.3220738
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                -1.3075752   -1.3483502   -1.2668001
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -1.2572110   -1.3509679   -1.1634540
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                -1.4972681   -1.5604718   -1.4340645
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                -1.3981859   -1.4742674   -1.3221044
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                -1.3086430   -1.3913149   -1.2259711
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                -1.5977077   -1.7288194   -1.4665960
6 months    LCNI-5           MALAWI                         Wealth Q1            NA                -1.6163421   -1.7706400   -1.4620443
6 months    LCNI-5           MALAWI                         Wealth Q2            NA                -1.6947456   -1.8337353   -1.5557558
6 months    LCNI-5           MALAWI                         Wealth Q3            NA                -1.6542208   -1.7818379   -1.5266038
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.9388317   -1.1661757   -0.7114876
6 months    MAL-ED           BANGLADESH                     Wealth Q1            NA                -1.3066076   -1.5664614   -1.0467539
6 months    MAL-ED           BANGLADESH                     Wealth Q2            NA                -1.3569901   -1.5728205   -1.1411596
6 months    MAL-ED           BANGLADESH                     Wealth Q3            NA                -1.2205320   -1.4536259   -0.9874381
6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0217579   -0.2314092    0.2749249
6 months    MAL-ED           BRAZIL                         Wealth Q1            NA                 0.0231387   -0.2601331    0.3064105
6 months    MAL-ED           BRAZIL                         Wealth Q2            NA                 0.1741977   -0.1241218    0.4725172
6 months    MAL-ED           BRAZIL                         Wealth Q3            NA                 0.0734060   -0.2561811    0.4029932
6 months    MAL-ED           INDIA                          Wealth Q4            NA                -1.1867150   -1.3555649   -1.0178651
6 months    MAL-ED           INDIA                          Wealth Q1            NA                -1.2933426   -1.5762470   -1.0104382
6 months    MAL-ED           INDIA                          Wealth Q2            NA                -1.2297021   -1.4984578   -0.9609463
6 months    MAL-ED           INDIA                          Wealth Q3            NA                -1.0254972   -1.2495989   -0.8013954
6 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.4079720   -0.6312987   -0.1846452
6 months    MAL-ED           NEPAL                          Wealth Q1            NA                -0.5146059   -0.7720761   -0.2571357
6 months    MAL-ED           NEPAL                          Wealth Q2            NA                -0.3998891   -0.6220552   -0.1777230
6 months    MAL-ED           NEPAL                          Wealth Q3            NA                -0.7889210   -0.9895582   -0.5882838
6 months    MAL-ED           PERU                           Wealth Q4            NA                -1.2506264   -1.4908174   -1.0104354
6 months    MAL-ED           PERU                           Wealth Q1            NA                -1.1540387   -1.3925645   -0.9155129
6 months    MAL-ED           PERU                           Wealth Q2            NA                -1.4283892   -1.6272842   -1.2294943
6 months    MAL-ED           PERU                           Wealth Q3            NA                -1.4384812   -1.6605594   -1.2164030
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.8629776   -1.1440329   -0.5819223
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -1.1243187   -1.4269700   -0.8216673
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -1.2069300   -1.4467972   -0.9670628
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -0.9981110   -1.2185177   -0.7777043
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -1.4590164   -1.6792817   -1.2387511
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -1.3105368   -1.5558941   -1.0651796
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -1.3849449   -1.6300550   -1.1398348
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -1.3195430   -1.5839550   -1.0551310
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -1.3860057   -1.5516171   -1.2203942
6 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                -1.0468909   -1.1989577   -0.8948240
6 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.9473282   -1.0929495   -0.8017069
6 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                -1.1494031   -1.2998855   -0.9989207
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.7154577   -0.8117071   -0.6192083
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.4120220   -0.4993829   -0.3246611
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.5492746   -0.6583515   -0.4401977
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.5244328   -0.6107944   -0.4380711
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -2.6086590   -2.8107605   -2.4065575
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -2.5069484   -2.6957960   -2.3181008
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -2.6176799   -2.8140979   -2.4212619
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -2.4939844   -2.7108761   -2.2770926
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -2.8055381   -2.9030873   -2.7079890
24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                -3.0980381   -3.2524960   -2.9435803
24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                -3.0785633   -3.2213680   -2.9357586
24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                -3.1416491   -3.2917631   -2.9915351
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -2.0724954   -2.1538581   -1.9911327
24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                -2.6492904   -2.7549394   -2.5436414
24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                -2.5054198   -2.6203770   -2.3904626
24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                -2.5177092   -2.5945678   -2.4408506
24 months   CONTENT          PERU                           Wealth Q4            NA                -0.5355860   -0.8225796   -0.2485924
24 months   CONTENT          PERU                           Wealth Q1            NA                -0.7818635   -1.0944504   -0.4692766
24 months   CONTENT          PERU                           Wealth Q2            NA                -0.6733636   -1.0073951   -0.3393321
24 months   CONTENT          PERU                           Wealth Q3            NA                -0.6996257   -1.0086588   -0.3905925
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.8330350   -1.9858133   -1.6802568
24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                -2.0469364   -2.2275581   -1.8663147
24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.9220217   -2.0951859   -1.7488576
24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.7392747   -1.9124216   -1.5661278
24 months   IRC              INDIA                          Wealth Q4            NA                -1.5216729   -1.7146847   -1.3286610
24 months   IRC              INDIA                          Wealth Q1            NA                -1.9711658   -2.1561062   -1.7862253
24 months   IRC              INDIA                          Wealth Q2            NA                -1.8875332   -2.0718074   -1.7032590
24 months   IRC              INDIA                          Wealth Q3            NA                -1.7746012   -1.9578595   -1.5913430
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -1.8969179   -1.9608453   -1.8329905
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                -2.1221788   -2.1759148   -2.0684428
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                -2.0673994   -2.1173862   -2.0174125
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                -2.0258081   -2.0775571   -1.9740591
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -1.6904353   -1.7638744   -1.6169962
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                -1.9453936   -2.0059114   -1.8848758
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                -1.8582313   -1.9311194   -1.7853432
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                -1.7354651   -1.8029607   -1.6679695
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                -1.7512023   -1.9029683   -1.5994364
24 months   LCNI-5           MALAWI                         Wealth Q1            NA                -1.8845836   -2.0728903   -1.6962769
24 months   LCNI-5           MALAWI                         Wealth Q2            NA                -2.0581182   -2.2198646   -1.8963717
24 months   LCNI-5           MALAWI                         Wealth Q3            NA                -1.8213845   -1.9742780   -1.6684909
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -1.7156688   -1.9553291   -1.4760085
24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                -1.9917159   -2.3374869   -1.6459449
24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                -2.2334787   -2.4690132   -1.9979442
24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                -1.9667958   -2.1800885   -1.7535031
24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.1077799   -0.2059723    0.4215321
24 months   MAL-ED           BRAZIL                         Wealth Q1            NA                -0.1543501   -0.5247243    0.2160242
24 months   MAL-ED           BRAZIL                         Wealth Q2            NA                -0.0660478   -0.4574484    0.3253528
24 months   MAL-ED           BRAZIL                         Wealth Q3            NA                -0.0014754   -0.3047999    0.3018492
24 months   MAL-ED           INDIA                          Wealth Q4            NA                -1.8709377   -2.0837671   -1.6581082
24 months   MAL-ED           INDIA                          Wealth Q1            NA                -2.0587428   -2.3222351   -1.7952505
24 months   MAL-ED           INDIA                          Wealth Q2            NA                -1.8100860   -2.1061796   -1.5139925
24 months   MAL-ED           INDIA                          Wealth Q3            NA                -1.8015965   -2.0323408   -1.5708522
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -1.1956545   -1.4549248   -0.9363842
24 months   MAL-ED           NEPAL                          Wealth Q1            NA                -1.1795765   -1.4234103   -0.9357428
24 months   MAL-ED           NEPAL                          Wealth Q2            NA                -1.1887342   -1.4431979   -0.9342705
24 months   MAL-ED           NEPAL                          Wealth Q3            NA                -1.7028137   -1.9083742   -1.4972533
24 months   MAL-ED           PERU                           Wealth Q4            NA                -1.7236965   -1.9348598   -1.5125332
24 months   MAL-ED           PERU                           Wealth Q1            NA                -1.5645247   -1.8289494   -1.3000999
24 months   MAL-ED           PERU                           Wealth Q2            NA                -1.9135428   -2.1411135   -1.6859721
24 months   MAL-ED           PERU                           Wealth Q3            NA                -1.7832877   -2.0332963   -1.5332792
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -1.1598807   -1.4041698   -0.9155916
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -1.7405668   -2.0490262   -1.4321074
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -1.8478934   -2.1331040   -1.5626827
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -1.8358206   -2.0583885   -1.6132528
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -2.6861570   -2.9166778   -2.4556362
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -2.2556686   -2.6480345   -1.8633026
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -2.6967559   -2.9580343   -2.4354775
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -2.7508060   -3.0126220   -2.4889900
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -2.0657116   -2.2139317   -1.9174916
24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                -1.4066617   -1.5753832   -1.2379403
24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                -1.4058816   -1.5615141   -1.2502491
24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                -1.7084277   -1.8749327   -1.5419227


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
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.4576301   -0.2702931    1.1855532
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.2821101   -0.2968849    0.8611050
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.1605242   -0.7144152    0.3933668
Birth       COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.1235961   -0.3486711    0.1014790
Birth       COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.0767964   -0.3263870    0.1727942
Birth       COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0812484   -0.3177117    0.1552149
Birth       COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.1671550   -0.2735940   -0.0607161
Birth       COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1525956   -0.2713310   -0.0338602
Birth       COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.1308288   -0.2263598   -0.0352978
Birth       GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1624471   -0.3752386    0.0503443
Birth       GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0254941   -0.2473676    0.1963793
Birth       GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0485060   -0.2691216    0.1721095
Birth       IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Wealth Q1            Wealth Q4          0.1005284   -0.3028868    0.5039437
Birth       IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1150899   -0.5277514    0.2975716
Birth       IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1606492   -0.5518602    0.2305618
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0862459   -0.1418814   -0.0306103
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0423524   -0.0951475    0.0104426
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0233351   -0.0761747    0.0295045
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0637976   -0.2302627    0.1026676
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0510666   -0.2271401    0.1250068
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0034873   -0.1701256    0.1631509
Birth       MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.6266633   -0.9880048   -0.2653217
Birth       MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.5278704   -0.9098001   -0.1459408
Birth       MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.2017881   -0.5600681    0.1564919
Birth       MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.2008329   -1.3449823    0.9433166
Birth       MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.0635102   -1.0508666    1.1778870
Birth       MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.3307687   -1.0379583    1.6994957
Birth       MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0769643   -0.8792687    0.7253402
Birth       MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.4084722   -1.1629469    0.3460025
Birth       MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.1532500   -0.9136030    0.6071030
Birth       MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.1664009   -0.0910859    0.4238877
Birth       MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0008441   -0.2677697    0.2694579
Birth       MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0605095   -0.2179396    0.3389587
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2384433   -0.8092647    0.3323781
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.1121347   -0.6443103    0.4200409
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.0976268   -0.4606492    0.6559028
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1396011   -0.4907045    0.7699068
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1592035   -0.4985501    0.8169572
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.3841946   -0.1955941    0.9639832
Birth       PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0870928   -0.0743163    0.2485020
Birth       PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.1789056    0.0261098    0.3317013
Birth       PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.1508784   -0.0186210    0.3203778
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.6576943    0.2860002    1.0293885
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.2982923   -0.0900315    0.6866162
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.2673635   -0.1334921    0.6682192
6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2374349   -0.4237276   -0.0511421
6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2238999   -0.4099396   -0.0378602
6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.1531190   -0.3526391    0.0464011
6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2578546   -0.3887880   -0.1269211
6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1889867   -0.3192874   -0.0586861
6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.2473234   -0.3556425   -0.1390042
6 months    CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0799788   -0.4382598    0.2783021
6 months    CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.1092090   -0.5038888    0.2854708
6 months    CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0423116   -0.3571191    0.4417423
6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1234943   -0.3344816    0.0874929
6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0160985   -0.2345152    0.2023182
6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0093188   -0.2184941    0.1998566
6 months    IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Wealth Q1            Wealth Q4         -0.3663152   -0.7425842    0.0099537
6 months    IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3710677   -0.7441364    0.0020011
6 months    IRC              INDIA                          Wealth Q3            Wealth Q4          0.0082722   -0.3724973    0.3890417
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1791470   -0.2500315   -0.1082625
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0975218   -0.1627212   -0.0323225
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0386736   -0.1007210    0.0233739
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.2400572   -0.3496855   -0.1304288
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1409749   -0.2562987   -0.0256512
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0514320   -0.1758426    0.0729785
6 months    LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0186345   -0.2213596    0.1840907
6 months    LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0970379   -0.2883124    0.0942366
6 months    LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0565131   -0.2395355    0.1265092
6 months    MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.3677760   -0.7137864   -0.0217656
6 months    MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.4181584   -0.7328814   -0.1034354
6 months    MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.2817003   -0.6082553    0.0448546
6 months    MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4          0.0013808   -0.3776505    0.3804121
6 months    MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.1524399   -0.2381962    0.5430760
6 months    MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.0516482   -0.3635354    0.4668317
6 months    MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.1066276   -0.4373166    0.2240615
6 months    MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0429871   -0.3591555    0.2731814
6 months    MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.1612178   -0.1200545    0.4424901
6 months    MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.1066339   -0.4499103    0.2366425
6 months    MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0080829   -0.3064831    0.3226489
6 months    MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.3809490   -0.6819712   -0.0799269
6 months    MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0965877   -0.2422632    0.4354386
6 months    MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.1777628   -0.4893204    0.1337947
6 months    MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.1878548   -0.5138560    0.1381465
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2613411   -0.6748024    0.1521202
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3439524   -0.7135864    0.0256815
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.1351334   -0.4924163    0.2221495
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1484796   -0.1793866    0.4763458
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0740715   -0.2529165    0.4010595
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1394735   -0.2018015    0.4807484
6 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.3391148    0.1126864    0.5655432
6 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.4386775    0.2169153    0.6604397
6 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.2366026    0.0124882    0.4607170
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.3034357    0.1756069    0.4312645
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1661831    0.0227708    0.3095954
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1910249    0.0636402    0.3184096
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.1017106   -0.1752408    0.3786619
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0090209   -0.2909694    0.2729276
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.1146746   -0.1818720    0.4112212
24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2925000   -0.4749353   -0.1100647
24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2730252   -0.4456763   -0.1003741
24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.3361109   -0.5148037   -0.1574182
24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.5767950   -0.7103548   -0.4432351
24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.4329244   -0.5739676   -0.2918811
24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.4452138   -0.5575235   -0.3329041
24 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2462775   -0.6703881    0.1778331
24 months   CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.1377776   -0.5768350    0.3012798
24 months   CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1640396   -0.5859454    0.2578661
24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.2139014   -0.4492385    0.0214356
24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0889867   -0.3187991    0.1408256
24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0937603   -0.1357044    0.3232250
24 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.4494929   -0.7167533   -0.1822325
24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3658604   -0.6320532   -0.0996676
24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         -0.2529284   -0.5188351    0.0129784
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.2252610   -0.3039917   -0.1465302
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1704815   -0.2488665   -0.0920965
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.1288902   -0.2080914   -0.0496891
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.2549583   -0.3480836   -0.1618330
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1677960   -0.2634582   -0.0721337
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0450298   -0.1385843    0.0485247
24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1333813   -0.3755318    0.1087693
24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.3069159   -0.5287653   -0.0850665
24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0701822   -0.2858524    0.1454880
24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.2760471   -0.6933589    0.1412647
24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.5178099   -0.8521030   -0.1835168
24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.2511270   -0.5701114    0.0678575
24 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.2621299   -0.7478780    0.2236182
24 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.1738277   -0.6783644    0.3307091
24 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.1092552   -0.5480379    0.3295275
24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.1878052   -0.5261719    0.1505616
24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0608516   -0.3058596    0.4275628
24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0693411   -0.2465405    0.3852228
24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4          0.0160780   -0.3400892    0.3722451
24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0069204   -0.3563319    0.3701726
24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.5071592   -0.8382581   -0.1760603
24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.1591718   -0.1786159    0.4969595
24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.1898463   -0.4995430    0.1198503
24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0595912   -0.3854811    0.2662986
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.5806861   -0.9721882   -0.1891839
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.6880126   -1.0645513   -0.3114740
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.6759399   -1.0071033   -0.3447765
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.4304884   -0.0251496    0.8861265
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0105989   -0.3599164    0.3387186
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0646490   -0.4135967    0.2842988
24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.6590499    0.4347087    0.8833911
24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.6598300    0.4449096    0.8747505
24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.3572839    0.1341326    0.5804353


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1369464   -0.1633029    0.4371957
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0545064   -0.1719431    0.0629302
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1042720   -0.1634698   -0.0450742
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0568572   -0.1924763    0.0787619
Birth       IRC              INDIA                          Wealth Q4            NA                -0.0318204   -0.2947426    0.2311017
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0275456   -0.0692270    0.0141358
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0227614   -0.1324148    0.0868920
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.3016564   -0.5169403   -0.0863725
Birth       MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0906259   -0.9728422    0.7915903
Birth       MAL-ED           INDIA                          Wealth Q4            NA                -0.1533232   -0.6267868    0.3201405
Birth       MAL-ED           PERU                           Wealth Q4            NA                 0.0604639   -0.1018986    0.2228265
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0779953   -0.4466916    0.2907011
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1796484   -0.2470334    0.6063302
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.1105668    0.0131741    0.2079595
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.2884002    0.0494448    0.5273555
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1314290   -0.2199250   -0.0429331
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1621686   -0.2320408   -0.0922965
6 months    CONTENT          PERU                           Wealth Q4            NA                -0.0474019   -0.2742709    0.1794670
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0370433   -0.1653241    0.0912375
6 months    IRC              INDIA                          Wealth Q4            NA                -0.1847922   -0.4255585    0.0559742
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0443073   -0.0898495    0.0012348
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0868367   -0.1707887   -0.0028847
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                -0.0449884   -0.1587979    0.0688211
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.2638489   -0.4655507   -0.0621471
6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0258179   -0.2032576    0.2548934
6 months    MAL-ED           INDIA                          Wealth Q4            NA                -0.0203489   -0.1909294    0.1502317
6 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.1536100   -0.3510490    0.0438290
6 months    MAL-ED           PERU                           Wealth Q4            NA                -0.0742285   -0.2806650    0.1322079
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.1918149   -0.4306946    0.0470647
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0902715   -0.1056467    0.2861897
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.2943142    0.1438824    0.4447459
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1712345    0.0890137    0.2534553
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0497910   -0.1249000    0.2244820
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1838049   -0.2636814   -0.1039283
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.3416191   -0.4128959   -0.2703424
24 months   CONTENT          PERU                           Wealth Q4            NA                -0.1512737   -0.4051987    0.1026512
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0543830   -0.1899784    0.0812123
24 months   IRC              INDIA                          Wealth Q4            NA                -0.2771046   -0.4447375   -0.1094718
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.1166412   -0.1737737   -0.0595088
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0899354   -0.1527533   -0.0271176
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.1310625   -0.2610718   -0.0010532
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.2627274   -0.4633789   -0.0620760
24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.1016655   -0.3663128    0.1629819
24 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0152518   -0.2109315    0.1804279
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.1119332   -0.3299223    0.1060559
24 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0287745   -0.2024370    0.1448880
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.4851788   -0.7012264   -0.2691312
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0405963   -0.1625287    0.2437212
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.4632895    0.3203594    0.6062196
