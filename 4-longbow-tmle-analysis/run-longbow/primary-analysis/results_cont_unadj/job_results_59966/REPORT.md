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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        hhwealth_quart    n_cell       n
----------  ---------------  -----------------------------  ---------------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4             32      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1             15      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2             20      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3             25      92
Birth       COHORTS          GUATEMALA                      Wealth Q4            293     816
Birth       COHORTS          GUATEMALA                      Wealth Q1            157     816
Birth       COHORTS          GUATEMALA                      Wealth Q2            161     816
Birth       COHORTS          GUATEMALA                      Wealth Q3            205     816
Birth       COHORTS          PHILIPPINES                    Wealth Q4            842    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q1            687    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q2            538    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q3            982    3049
Birth       CONTENT          PERU                           Wealth Q4              0       2
Birth       CONTENT          PERU                           Wealth Q1              0       2
Birth       CONTENT          PERU                           Wealth Q2              1       2
Birth       CONTENT          PERU                           Wealth Q3              1       2
Birth       GMS-Nepal        NEPAL                          Wealth Q4            173     696
Birth       GMS-Nepal        NEPAL                          Wealth Q1            175     696
Birth       GMS-Nepal        NEPAL                          Wealth Q2            174     696
Birth       GMS-Nepal        NEPAL                          Wealth Q3            174     696
Birth       IRC              INDIA                          Wealth Q4             91     388
Birth       IRC              INDIA                          Wealth Q1             98     388
Birth       IRC              INDIA                          Wealth Q2             99     388
Birth       IRC              INDIA                          Wealth Q3            100     388
Birth       JiVitA-3         BANGLADESH                     Wealth Q4           5278   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q1           5772   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q2           5701   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q3           5683   22434
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            654    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            685    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            722    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            759    2820
Birth       MAL-ED           BANGLADESH                     Wealth Q4             56     213
Birth       MAL-ED           BANGLADESH                     Wealth Q1             52     213
Birth       MAL-ED           BANGLADESH                     Wealth Q2             51     213
Birth       MAL-ED           BANGLADESH                     Wealth Q3             54     213
Birth       MAL-ED           BRAZIL                         Wealth Q4             11      60
Birth       MAL-ED           BRAZIL                         Wealth Q1             21      60
Birth       MAL-ED           BRAZIL                         Wealth Q2             17      60
Birth       MAL-ED           BRAZIL                         Wealth Q3             11      60
Birth       MAL-ED           INDIA                          Wealth Q4              8      41
Birth       MAL-ED           INDIA                          Wealth Q1             14      41
Birth       MAL-ED           INDIA                          Wealth Q2              9      41
Birth       MAL-ED           INDIA                          Wealth Q3             10      41
Birth       MAL-ED           NEPAL                          Wealth Q4              6      26
Birth       MAL-ED           NEPAL                          Wealth Q1              9      26
Birth       MAL-ED           NEPAL                          Wealth Q2              3      26
Birth       MAL-ED           NEPAL                          Wealth Q3              8      26
Birth       MAL-ED           PERU                           Wealth Q4             54     215
Birth       MAL-ED           PERU                           Wealth Q1             55     215
Birth       MAL-ED           PERU                           Wealth Q2             54     215
Birth       MAL-ED           PERU                           Wealth Q3             52     215
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4             17      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1             27      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2             24      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3             28      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             26     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             28     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             32     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             34     120
Birth       PROVIDE          BANGLADESH                     Wealth Q4            132     539
Birth       PROVIDE          BANGLADESH                     Wealth Q1            134     539
Birth       PROVIDE          BANGLADESH                     Wealth Q2            136     539
Birth       PROVIDE          BANGLADESH                     Wealth Q3            137     539
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4             94     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1             91     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2             94     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3             90     369
6 months    COHORTS          GUATEMALA                      Wealth Q4            339     925
6 months    COHORTS          GUATEMALA                      Wealth Q1            175     925
6 months    COHORTS          GUATEMALA                      Wealth Q2            195     925
6 months    COHORTS          GUATEMALA                      Wealth Q3            216     925
6 months    COHORTS          PHILIPPINES                    Wealth Q4            743    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q1            570    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q2            485    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q3            910    2708
6 months    CONTENT          PERU                           Wealth Q4             52     215
6 months    CONTENT          PERU                           Wealth Q1             59     215
6 months    CONTENT          PERU                           Wealth Q2             52     215
6 months    CONTENT          PERU                           Wealth Q3             52     215
6 months    GMS-Nepal        NEPAL                          Wealth Q4            140     564
6 months    GMS-Nepal        NEPAL                          Wealth Q1            141     564
6 months    GMS-Nepal        NEPAL                          Wealth Q2            148     564
6 months    GMS-Nepal        NEPAL                          Wealth Q3            135     564
6 months    IRC              INDIA                          Wealth Q4             99     407
6 months    IRC              INDIA                          Wealth Q1            105     407
6 months    IRC              INDIA                          Wealth Q2            100     407
6 months    IRC              INDIA                          Wealth Q3            103     407
6 months    JiVitA-3         BANGLADESH                     Wealth Q4           4984   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q1           3586   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q2           3907   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q3           4326   16803
6 months    JiVitA-4         BANGLADESH                     Wealth Q4           1199    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q1           1196    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q2           1201    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q3           1229    4825
6 months    LCNI-5           MALAWI                         Wealth Q4            217     816
6 months    LCNI-5           MALAWI                         Wealth Q1            203     816
6 months    LCNI-5           MALAWI                         Wealth Q2            199     816
6 months    LCNI-5           MALAWI                         Wealth Q3            197     816
6 months    MAL-ED           BANGLADESH                     Wealth Q4             61     240
6 months    MAL-ED           BANGLADESH                     Wealth Q1             59     240
6 months    MAL-ED           BANGLADESH                     Wealth Q2             61     240
6 months    MAL-ED           BANGLADESH                     Wealth Q3             59     240
6 months    MAL-ED           BRAZIL                         Wealth Q4             53     209
6 months    MAL-ED           BRAZIL                         Wealth Q1             53     209
6 months    MAL-ED           BRAZIL                         Wealth Q2             52     209
6 months    MAL-ED           BRAZIL                         Wealth Q3             51     209
6 months    MAL-ED           INDIA                          Wealth Q4             59     235
6 months    MAL-ED           INDIA                          Wealth Q1             60     235
6 months    MAL-ED           INDIA                          Wealth Q2             58     235
6 months    MAL-ED           INDIA                          Wealth Q3             58     235
6 months    MAL-ED           NEPAL                          Wealth Q4             59     236
6 months    MAL-ED           NEPAL                          Wealth Q1             59     236
6 months    MAL-ED           NEPAL                          Wealth Q2             59     236
6 months    MAL-ED           NEPAL                          Wealth Q3             59     236
6 months    MAL-ED           PERU                           Wealth Q4             67     270
6 months    MAL-ED           PERU                           Wealth Q1             68     270
6 months    MAL-ED           PERU                           Wealth Q2             71     270
6 months    MAL-ED           PERU                           Wealth Q3             64     270
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4             62     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1             60     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2             64     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3             63     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             63     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             61     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     247
6 months    PROVIDE          BANGLADESH                     Wealth Q4            135     604
6 months    PROVIDE          BANGLADESH                     Wealth Q1            156     604
6 months    PROVIDE          BANGLADESH                     Wealth Q2            164     604
6 months    PROVIDE          BANGLADESH                     Wealth Q3            149     604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            502    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            605    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            409    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            504    2020
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4             94     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1             91     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2             95     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3             91     371
24 months   COHORTS          GUATEMALA                      Wealth Q4            402    1035
24 months   COHORTS          GUATEMALA                      Wealth Q1            202    1035
24 months   COHORTS          GUATEMALA                      Wealth Q2            212    1035
24 months   COHORTS          GUATEMALA                      Wealth Q3            219    1035
24 months   COHORTS          PHILIPPINES                    Wealth Q4            688    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q1            489    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q2            423    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q3            845    2445
24 months   CONTENT          PERU                           Wealth Q4             41     164
24 months   CONTENT          PERU                           Wealth Q1             40     164
24 months   CONTENT          PERU                           Wealth Q2             42     164
24 months   CONTENT          PERU                           Wealth Q3             41     164
24 months   GMS-Nepal        NEPAL                          Wealth Q4            124     488
24 months   GMS-Nepal        NEPAL                          Wealth Q1            122     488
24 months   GMS-Nepal        NEPAL                          Wealth Q2            128     488
24 months   GMS-Nepal        NEPAL                          Wealth Q3            114     488
24 months   IRC              INDIA                          Wealth Q4            100     409
24 months   IRC              INDIA                          Wealth Q1            105     409
24 months   IRC              INDIA                          Wealth Q2            101     409
24 months   IRC              INDIA                          Wealth Q3            103     409
24 months   JiVitA-3         BANGLADESH                     Wealth Q4           2366    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q1           2001    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q2           2106    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q3           2150    8623
24 months   JiVitA-4         BANGLADESH                     Wealth Q4           1193    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q1           1156    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q2           1173    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q3           1225    4747
24 months   LCNI-5           MALAWI                         Wealth Q4            160     574
24 months   LCNI-5           MALAWI                         Wealth Q1            129     574
24 months   LCNI-5           MALAWI                         Wealth Q2            146     574
24 months   LCNI-5           MALAWI                         Wealth Q3            139     574
24 months   MAL-ED           BANGLADESH                     Wealth Q4             61     212
24 months   MAL-ED           BANGLADESH                     Wealth Q1             30     212
24 months   MAL-ED           BANGLADESH                     Wealth Q2             61     212
24 months   MAL-ED           BANGLADESH                     Wealth Q3             60     212
24 months   MAL-ED           BRAZIL                         Wealth Q4             53     169
24 months   MAL-ED           BRAZIL                         Wealth Q1             26     169
24 months   MAL-ED           BRAZIL                         Wealth Q2             39     169
24 months   MAL-ED           BRAZIL                         Wealth Q3             51     169
24 months   MAL-ED           INDIA                          Wealth Q4             59     227
24 months   MAL-ED           INDIA                          Wealth Q1             52     227
24 months   MAL-ED           INDIA                          Wealth Q2             58     227
24 months   MAL-ED           INDIA                          Wealth Q3             58     227
24 months   MAL-ED           NEPAL                          Wealth Q4             59     228
24 months   MAL-ED           NEPAL                          Wealth Q1             55     228
24 months   MAL-ED           NEPAL                          Wealth Q2             55     228
24 months   MAL-ED           NEPAL                          Wealth Q3             59     228
24 months   MAL-ED           PERU                           Wealth Q4             65     201
24 months   MAL-ED           PERU                           Wealth Q1             42     201
24 months   MAL-ED           PERU                           Wealth Q2             38     201
24 months   MAL-ED           PERU                           Wealth Q3             56     201
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4             63     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1             49     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2             63     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3             63     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             28     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             62     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             61     214
24 months   PROVIDE          BANGLADESH                     Wealth Q4            121     578
24 months   PROVIDE          BANGLADESH                     Wealth Q1            155     578
24 months   PROVIDE          BANGLADESH                     Wealth Q2            157     578
24 months   PROVIDE          BANGLADESH                     Wealth Q3            145     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       6


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
![](/tmp/35cee1f0-49b3-440f-9b35-aa886d43f1de/85a894b7-8713-4ff8-978d-fbcc95aef36c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/35cee1f0-49b3-440f-9b35-aa886d43f1de/85a894b7-8713-4ff8-978d-fbcc95aef36c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/35cee1f0-49b3-440f-9b35-aa886d43f1de/85a894b7-8713-4ff8-978d-fbcc95aef36c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -1.0431250   -1.3789911   -0.7072589
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.5800000   -1.1756526    0.0156526
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.7965000   -1.2446483   -0.3483517
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.2168000   -1.6233511   -0.8102489
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2285666    0.0898567    0.3672764
Birth       COHORTS          GUATEMALA                      Wealth Q1            NA                 0.0414650   -0.1277325    0.2106624
Birth       COHORTS          GUATEMALA                      Wealth Q2            NA                 0.0906211   -0.1174167    0.2986590
Birth       COHORTS          GUATEMALA                      Wealth Q3            NA                 0.1487317   -0.0226652    0.3201286
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0586342   -0.1302466    0.0129782
Birth       COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.3503930   -0.4322723   -0.2685138
Birth       COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.3358364   -0.4322314   -0.2394414
Birth       COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2941853   -0.3624814   -0.2258892
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0130636   -1.1779790   -0.8481482
Birth       GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1917143   -1.3375480   -1.0458805
Birth       GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.0499425   -1.2111832   -0.8887019
Birth       GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.0848851   -1.2512226   -0.9185475
Birth       IRC              INDIA                          Wealth Q4            NA                -0.2161538   -0.5867320    0.1544243
Birth       IRC              INDIA                          Wealth Q1            NA                -0.1436735   -0.4437115    0.1563646
Birth       IRC              INDIA                          Wealth Q2            NA                -0.4218182   -0.7483191   -0.0953172
Birth       IRC              INDIA                          Wealth Q3            NA                -0.4401000   -0.7262494   -0.1539506
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -1.3776241   -1.4130186   -1.3422296
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            NA                -1.7268226   -1.7589462   -1.6946990
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            NA                -1.6457639   -1.6780098   -1.6135180
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            NA                -1.5911878   -1.6238927   -1.5584828
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                -1.3904740   -1.4993512   -1.2815968
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            NA                -1.6639124   -1.7556624   -1.5721625
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            NA                -1.5605263   -1.6503524   -1.4707002
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            NA                -1.4766008   -1.5723191   -1.3808825
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.7389286   -0.9642295   -0.5136276
Birth       MAL-ED           BANGLADESH                     Wealth Q1            NA                -1.3615385   -1.6354422   -1.0876347
Birth       MAL-ED           BANGLADESH                     Wealth Q2            NA                -1.2470588   -1.5462365   -0.9478811
Birth       MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.8985185   -1.1593133   -0.6377237
Birth       MAL-ED           BRAZIL                         Wealth Q4            NA                -0.6827273   -1.3819847    0.0165301
Birth       MAL-ED           BRAZIL                         Wealth Q1            NA                -0.8657143   -1.3681693   -0.3632593
Birth       MAL-ED           BRAZIL                         Wealth Q2            NA                -0.6323529   -1.0858683   -0.1788376
Birth       MAL-ED           BRAZIL                         Wealth Q3            NA                -0.4854545   -1.2577049    0.2867958
Birth       MAL-ED           INDIA                          Wealth Q4            NA                -1.0537500   -1.5024873   -0.6050127
Birth       MAL-ED           INDIA                          Wealth Q1            NA                -1.1307143   -1.7957911   -0.4656374
Birth       MAL-ED           INDIA                          Wealth Q2            NA                -1.4622222   -2.0687425   -0.8557019
Birth       MAL-ED           INDIA                          Wealth Q3            NA                -1.2070000   -1.8208171   -0.5931829
Birth       MAL-ED           PERU                           Wealth Q4            NA                -0.9998148   -1.2246573   -0.7749723
Birth       MAL-ED           PERU                           Wealth Q1            NA                -0.7503636   -0.9872985   -0.5134288
Birth       MAL-ED           PERU                           Wealth Q2            NA                -1.0168519   -1.2644861   -0.7692176
Birth       MAL-ED           PERU                           Wealth Q3            NA                -0.8917308   -1.1536442   -0.6298173
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.5211765   -0.8581919   -0.1841611
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -0.7133333   -1.1310551   -0.2956116
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -0.6004167   -0.9686266   -0.2322068
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -0.3750000   -0.7881045    0.0381045
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -1.3207692   -1.7749094   -0.8666290
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -1.1639286   -1.5791257   -0.7487314
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -1.1553125   -1.6088534   -0.7017716
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.9058824   -1.2610696   -0.5506951
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                -1.0414394   -1.1628523   -0.9200265
Birth       PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.8997761   -1.0710294   -0.7285228
Birth       PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.7539706   -0.8888507   -0.6190905
Birth       PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.8502920   -1.0124317   -0.6881523
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -1.7856738   -2.0590380   -1.5123096
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -1.0471429   -1.2972695   -0.7970162
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -1.4253369   -1.7163029   -1.1343708
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.4236481   -1.7153131   -1.1319832
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -1.6775811   -1.7826026   -1.5725596
6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                -1.9522286   -2.1091839   -1.7952732
6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                -1.9009231   -2.0507620   -1.7510841
6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                -1.8257870   -1.9870835   -1.6644906
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.8903096   -0.9707503   -0.8098688
6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                -1.2539123   -1.3480338   -1.1597908
6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                -1.1810309   -1.2750353   -1.0870265
6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                -1.2523516   -1.3227651   -1.1819382
6 months    CONTENT          PERU                           Wealth Q4            NA                -0.2189615   -0.4612607    0.0233376
6 months    CONTENT          PERU                           Wealth Q1            NA                -0.3133277   -0.5616194   -0.0650360
6 months    CONTENT          PERU                           Wealth Q2            NA                -0.3360609   -0.6289643   -0.0431575
6 months    CONTENT          PERU                           Wealth Q3            NA                -0.2410673   -0.5063002    0.0241655
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.3078690   -1.4522133   -1.1635248
6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.4465248   -1.6033932   -1.2896565
6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.3328604   -1.4984068   -1.1673139
6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.3151728   -1.4708575   -1.1594882
6 months    IRC              INDIA                          Wealth Q4            NA                -1.0400673   -1.3237556   -0.7563791
6 months    IRC              INDIA                          Wealth Q1            NA                -1.4291111   -1.6771035   -1.1811187
6 months    IRC              INDIA                          Wealth Q2            NA                -1.4369667   -1.6864659   -1.1874674
6 months    IRC              INDIA                          Wealth Q3            NA                -1.0260518   -1.2847563   -0.7673473
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -1.0840530   -1.1221879   -1.0459180
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                -1.4962549   -1.5357956   -1.4567142
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                -1.4206783   -1.4582758   -1.3830807
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                -1.3284258   -1.3645189   -1.2923327
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -1.1418766   -1.2165216   -1.0672315
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                -1.5080226   -1.5736855   -1.4423596
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                -1.4232431   -1.4912190   -1.3552673
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                -1.3043206   -1.3725148   -1.2361264
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                -1.5994931   -1.7307591   -1.4682271
6 months    LCNI-5           MALAWI                         Wealth Q1            NA                -1.6273892   -1.7847471   -1.4700313
6 months    LCNI-5           MALAWI                         Wealth Q2            NA                -1.6961809   -1.8330768   -1.5592850
6 months    LCNI-5           MALAWI                         Wealth Q3            NA                -1.6520305   -1.7790138   -1.5250471
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.9296448   -1.1509244   -0.7083652
6 months    MAL-ED           BANGLADESH                     Wealth Q1            NA                -1.3101695   -1.5696976   -1.0506414
6 months    MAL-ED           BANGLADESH                     Wealth Q2            NA                -1.3687158   -1.5875199   -1.1499117
6 months    MAL-ED           BANGLADESH                     Wealth Q3            NA                -1.2058192   -1.4303086   -0.9813298
6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0049371   -0.2457065    0.2555807
6 months    MAL-ED           BRAZIL                         Wealth Q1            NA                 0.0111950   -0.2716772    0.2940672
6 months    MAL-ED           BRAZIL                         Wealth Q2            NA                 0.1420192   -0.1480704    0.4321089
6 months    MAL-ED           BRAZIL                         Wealth Q3            NA                 0.0333987   -0.2909266    0.3577240
6 months    MAL-ED           INDIA                          Wealth Q4            NA                -1.1922316   -1.3551533   -1.0293100
6 months    MAL-ED           INDIA                          Wealth Q1            NA                -1.3173889   -1.5993127   -1.0354651
6 months    MAL-ED           INDIA                          Wealth Q2            NA                -1.2179598   -1.4862862   -0.9496333
6 months    MAL-ED           INDIA                          Wealth Q3            NA                -1.0971264   -1.3079403   -0.8863126
6 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.4637853   -0.6893236   -0.2382470
6 months    MAL-ED           NEPAL                          Wealth Q1            NA                -0.5608192   -0.8013289   -0.3203095
6 months    MAL-ED           NEPAL                          Wealth Q2            NA                -0.4242655   -0.6359179   -0.2126131
6 months    MAL-ED           NEPAL                          Wealth Q3            NA                -0.7974576   -1.0068835   -0.5880317
6 months    MAL-ED           PERU                           Wealth Q4            NA                -1.2689552   -1.4968197   -1.0410908
6 months    MAL-ED           PERU                           Wealth Q1            NA                -1.1565441   -1.3792532   -0.9338350
6 months    MAL-ED           PERU                           Wealth Q2            NA                -1.4129343   -1.6030550   -1.2228135
6 months    MAL-ED           PERU                           Wealth Q3            NA                -1.4644922   -1.6873411   -1.2416433
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.8642204   -1.1415835   -0.5868573
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -1.1401389   -1.4344519   -0.8458259
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -1.2108854   -1.4481751   -0.9735958
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -1.0024868   -1.2186939   -0.7862796
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -1.4769312   -1.6946889   -1.2591735
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -1.3089418   -1.5601005   -1.0577831
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -1.3769672   -1.6163199   -1.1376145
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -1.3095833   -1.5741798   -1.0449869
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -1.3751235   -1.5293606   -1.2208863
6 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.9583974   -1.1154322   -0.8013626
6 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.9223171   -1.0568628   -0.7877713
6 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                -1.1608725   -1.2995565   -1.0221885
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.7437317   -0.8439695   -0.6434940
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.3980565   -0.4900073   -0.3061057
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.5505990   -0.6615406   -0.4396575
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.5157903   -0.6042773   -0.4273034
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -2.6113475   -2.8096183   -2.4130767
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -2.5077656   -2.6924481   -2.3230830
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -2.6205789   -2.8169119   -2.4242460
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -2.4913370   -2.7056173   -2.2770567
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -2.8009453   -2.8989963   -2.7028942
24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                -3.1316832   -3.2780459   -2.9853204
24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                -3.0713679   -3.2200696   -2.9226662
24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                -3.1244749   -3.2733246   -2.9756252
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -1.9760610   -2.0579680   -1.8941541
24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                -2.6726380   -2.7702915   -2.5749846
24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                -2.5430496   -2.6497942   -2.4363051
24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                -2.5566272   -2.6302221   -2.4830324
24 months   CONTENT          PERU                           Wealth Q4            NA                -0.5339024   -0.8188483   -0.2489566
24 months   CONTENT          PERU                           Wealth Q1            NA                -0.7917500   -1.0957812   -0.4877188
24 months   CONTENT          PERU                           Wealth Q2            NA                -0.6882143   -1.0162717   -0.3601569
24 months   CONTENT          PERU                           Wealth Q3            NA                -0.7360976   -1.0260082   -0.4461869
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.8131183   -1.9692130   -1.6570235
24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                -2.0686612   -2.2460215   -1.8913009
24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.9171224   -2.0858701   -1.7483747
24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.7409211   -1.9166164   -1.5652257
24 months   IRC              INDIA                          Wealth Q4            NA                -1.5177167   -1.7070152   -1.3284181
24 months   IRC              INDIA                          Wealth Q1            NA                -1.9760476   -2.1605981   -1.7914972
24 months   IRC              INDIA                          Wealth Q2            NA                -1.8981848   -2.0818887   -1.7144809
24 months   IRC              INDIA                          Wealth Q3            NA                -1.7934628   -1.9727205   -1.6142051
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -1.7099577   -1.7589720   -1.6609434
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                -2.2378961   -2.2867169   -2.1890752
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                -2.1392925   -2.1858634   -2.0927216
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                -2.0157116   -2.0641261   -1.9672972
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -1.5317184   -1.5993103   -1.4641264
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                -1.9728720   -2.0372997   -1.9084442
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                -1.8885251   -1.9539542   -1.8230961
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                -1.7373061   -1.7999859   -1.6746263
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                -1.7519375   -1.9031130   -1.6007620
24 months   LCNI-5           MALAWI                         Wealth Q1            NA                -1.8960465   -2.0814547   -1.7106383
24 months   LCNI-5           MALAWI                         Wealth Q2            NA                -2.0668151   -2.2276339   -1.9059963
24 months   LCNI-5           MALAWI                         Wealth Q3            NA                -1.8256475   -1.9776394   -1.6736556
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -1.6685246   -1.9077116   -1.4293375
24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                -1.9756667   -2.3094246   -1.6419087
24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                -2.2662295   -2.4986780   -2.0337811
24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                -2.0021667   -2.2157284   -1.7886050
24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.1136792   -0.1869993    0.4143578
24 months   MAL-ED           BRAZIL                         Wealth Q1            NA                -0.1503205   -0.5240374    0.2233964
24 months   MAL-ED           BRAZIL                         Wealth Q2            NA                -0.0319231   -0.4128889    0.3490427
24 months   MAL-ED           BRAZIL                         Wealth Q3            NA                 0.0031699   -0.2997471    0.3060870
24 months   MAL-ED           INDIA                          Wealth Q4            NA                -1.8273729   -2.0332276   -1.6215182
24 months   MAL-ED           INDIA                          Wealth Q1            NA                -2.0880769   -2.3637481   -1.8124057
24 months   MAL-ED           INDIA                          Wealth Q2            NA                -1.8333621   -2.1208767   -1.5458475
24 months   MAL-ED           INDIA                          Wealth Q3            NA                -1.8178448   -2.0366064   -1.5990833
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -1.1423729   -1.3980410   -0.8867048
24 months   MAL-ED           NEPAL                          Wealth Q1            NA                -1.1837273   -1.4113217   -0.9561329
24 months   MAL-ED           NEPAL                          Wealth Q2            NA                -1.1920000   -1.4273779   -0.9566221
24 months   MAL-ED           NEPAL                          Wealth Q3            NA                -1.6960169   -1.8991734   -1.4928605
24 months   MAL-ED           PERU                           Wealth Q4            NA                -1.7246923   -1.9362485   -1.5131361
24 months   MAL-ED           PERU                           Wealth Q1            NA                -1.5664683   -1.8283422   -1.3045943
24 months   MAL-ED           PERU                           Wealth Q2            NA                -1.9441228   -2.1724375   -1.7158081
24 months   MAL-ED           PERU                           Wealth Q3            NA                -1.7941667   -2.0443479   -1.5439855
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -1.1596032   -1.4031894   -0.9160170
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -1.7868367   -2.0899335   -1.4837400
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -1.8385053   -2.1161462   -1.5608643
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -1.8267989   -2.0438564   -1.6097415
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -2.6728571   -2.8966666   -2.4490477
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -2.2457143   -2.6297918   -1.8616368
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -2.7000806   -2.9583620   -2.4417993
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -2.7454918   -3.0022251   -2.4887585
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -2.0794628   -2.2255721   -1.9333536
24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                -1.3291613   -1.5001080   -1.1582146
24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                -1.3798408   -1.5363088   -1.2233727
24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                -1.7374483   -1.8932829   -1.5816136


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
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.4631250   -0.2206937    1.1469437
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.2466250   -0.3134133    0.8066633
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.1736750   -0.7010172    0.3536672
Birth       COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.1871016   -0.4058896    0.0316864
Birth       COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1379454   -0.3879858    0.1120949
Birth       COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0798348   -0.3003282    0.1406585
Birth       COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2917588   -0.4005363   -0.1829813
Birth       COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.2772022   -0.3972869   -0.1571175
Birth       COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.2355511   -0.3345092   -0.1365931
Birth       GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1786507   -0.3987974    0.0414960
Birth       GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0368789   -0.2675208    0.1937629
Birth       GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0718215   -0.3060548    0.1624119
Birth       IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Wealth Q1            Wealth Q4          0.0724804   -0.4043330    0.5492937
Birth       IRC              INDIA                          Wealth Q2            Wealth Q4         -0.2056643   -0.6995581    0.2882294
Birth       IRC              INDIA                          Wealth Q3            Wealth Q4         -0.2239462   -0.6921444    0.2442521
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.3491985   -0.3939975   -0.3043994
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.2681398   -0.3129827   -0.2232969
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.2135637   -0.2600960   -0.1670313
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.2734384   -0.4147621   -0.1321147
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1700523   -0.3105389   -0.0295657
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0861268   -0.2309711    0.0587175
Birth       MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.6226099   -0.9772700   -0.2679498
Birth       MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.5081303   -0.8826537   -0.1336068
Birth       MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.1595899   -0.5042267    0.1850468
Birth       MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.1829870   -1.0440456    0.6780716
Birth       MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.0503743   -0.7830746    0.8838232
Birth       MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.1972727   -0.8445197    1.2390652
Birth       MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0769643   -0.8792687    0.7253402
Birth       MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.4084722   -1.1629469    0.3460025
Birth       MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.1532500   -0.9136030    0.6071030
Birth       MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.2494512   -0.0771867    0.5760890
Birth       MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.0170370   -0.3515171    0.3174430
Birth       MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.1080840   -0.2371011    0.4532692
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1921569   -0.7288792    0.3445654
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0792402   -0.5783974    0.4199170
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.1461765   -0.3869602    0.6793131
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1568407   -0.4584902    0.7721715
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1654567   -0.4763709    0.8072844
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.4148869   -0.1616557    0.9914294
Birth       PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.1416633   -0.0682624    0.3515889
Birth       PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.2874688    0.1059923    0.4689453
Birth       PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.1911474   -0.0114121    0.3937070
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.7385309    0.3680025    1.1090593
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.3603369   -0.0388989    0.7595727
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.3620256   -0.0377199    0.7617711
6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2746475   -0.4634979   -0.0857970
6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2233420   -0.4063207   -0.0403632
6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.1482059   -0.3406795    0.0442676
6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.3636027   -0.4874154   -0.2397901
6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.2907214   -0.4144450   -0.1669977
6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.3620421   -0.4689475   -0.2551367
6 months    CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0943661   -0.4412921    0.2525598
6 months    CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.1170994   -0.4972326    0.2630338
6 months    CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0221058   -0.3813513    0.3371397
6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1386558   -0.3518292    0.0745177
6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0249913   -0.2446294    0.1946468
6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0073038   -0.2196077    0.2050002
6 months    IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Wealth Q1            Wealth Q4         -0.3890438   -0.7658451   -0.0122424
6 months    IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3968993   -0.7746941   -0.0191046
6 months    IRC              INDIA                          Wealth Q3            Wealth Q4          0.0140156   -0.3699207    0.3979518
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.4122019   -0.4651795   -0.3592243
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.3366253   -0.3846305   -0.2886201
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.2443728   -0.2936753   -0.1950703
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.3661460   -0.4636865   -0.2686055
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.2813666   -0.3773143   -0.1854188
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.1624440   -0.2638273   -0.0610607
6 months    LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0278961   -0.2328162    0.1770241
6 months    LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0966878   -0.2863487    0.0929730
6 months    LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0525374   -0.2351723    0.1300976
6 months    MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.3805247   -0.7215811   -0.0394682
6 months    MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.4390710   -0.7502621   -0.1278799
6 months    MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.2761744   -0.5913889    0.0390401
6 months    MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4          0.0062579   -0.3716825    0.3841982
6 months    MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.1370821   -0.2462900    0.5204543
6 months    MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.0284616   -0.3814275    0.4383507
6 months    MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.1251573   -0.4507713    0.2004568
6 months    MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0257281   -0.3396430    0.2881868
6 months    MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0951052   -0.1713267    0.3615371
6 months    MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.0970339   -0.4267496    0.2326818
6 months    MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0395198   -0.2697766    0.3488161
6 months    MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.3336723   -0.6414494   -0.0258953
6 months    MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.1124111   -0.2062134    0.4310356
6 months    MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.1439790   -0.4407417    0.1527836
6 months    MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.1955370   -0.5142592    0.1231852
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2759185   -0.6803322    0.1284953
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3466650   -0.7116810    0.0183510
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.1382663   -0.4899421    0.2134094
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1679894   -0.1644247    0.5004035
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0999640   -0.2236224    0.4235504
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1673479   -0.1753323    0.5100280
6 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.4167260    0.1966146    0.6368374
6 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.4528064    0.2481319    0.6574809
6 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.2142510    0.0068327    0.4216692
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.3456753    0.2096511    0.4816994
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1931327    0.0436147    0.3426508
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.2279414    0.0942344    0.3616483
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.1035819   -0.1673774    0.3745413
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0092314   -0.2882618    0.2697989
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.1200105   -0.1719267    0.4119478
24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.3307379   -0.5069085   -0.1545673
24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2704227   -0.4485411   -0.0923042
24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.3235296   -0.5017717   -0.1452875
24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.6965770   -0.8240327   -0.5691213
24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.5669886   -0.7015365   -0.4324407
24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.5805662   -0.6906795   -0.4704528
24 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2578476   -0.6745358    0.1588406
24 months   CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.1543118   -0.5888412    0.2802175
24 months   CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.2021951   -0.6086952    0.2043049
24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.2555429   -0.4918103   -0.0192756
24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.1040041   -0.3338766    0.1258684
24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0721972   -0.1628228    0.3072173
24 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.4583310   -0.7227034   -0.1939585
24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3804682   -0.6442504   -0.1166859
24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         -0.2757461   -0.5364514   -0.0150408
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.5279383   -0.5946538   -0.4612229
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.4293348   -0.4954152   -0.3632543
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.3057539   -0.3741172   -0.2373906
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.4411536   -0.5326640   -0.3496432
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.3568068   -0.4465732   -0.2670404
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.2055878   -0.2946626   -0.1165129
24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1441090   -0.3833375    0.0951194
24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.3148776   -0.5355962   -0.0941589
24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0737100   -0.2880825    0.1406626
24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.3071421   -0.7177572    0.1034731
24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.5977049   -0.9312356   -0.2641742
24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.3336421   -0.6542962   -0.0129880
24 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.2639998   -0.7436579    0.2156584
24 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.1456023   -0.6309296    0.3397249
24 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.1105093   -0.5373188    0.3163002
24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.2607040   -0.6047546    0.0833465
24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0059892   -0.3596003    0.3476219
24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0095281   -0.2908596    0.3099158
24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.0413544   -0.3836487    0.3009399
24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.0496271   -0.3971454    0.2978911
24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.5536441   -0.8801999   -0.2270883
24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.1582241   -0.1784271    0.4948752
24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.2194305   -0.5306919    0.0918309
24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0694744   -0.3971124    0.2581637
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.6272336   -1.0160804   -0.2383867
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.6789021   -1.0482512   -0.3095531
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.6671958   -0.9934597   -0.3409318
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.4271429   -0.0173863    0.8716720
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0272235   -0.3689836    0.3145365
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0726347   -0.4132262    0.2679569
24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.7503015    0.5254223    0.9751808
24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.6996220    0.4855422    0.9137019
24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.3420145    0.1283972    0.5556318


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0819293   -0.2030355    0.3668942
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0832724   -0.1951957    0.0286509
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1905163   -0.2523107   -0.1287220
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0720945   -0.2137997    0.0696108
Birth       IRC              INDIA                          Wealth Q4            NA                -0.0918874   -0.4061365    0.2223617
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.2120853   -0.2409396   -0.1832309
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.1331395   -0.2259606   -0.0403184
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.3141231   -0.5208029   -0.1074432
Birth       MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0136061   -0.6419805    0.6147684
Birth       MAL-ED           INDIA                          Wealth Q4            NA                -0.1533232   -0.6267868    0.3201405
Birth       MAL-ED           PERU                           Wealth Q4            NA                 0.0856753   -0.1145983    0.2859489
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0312194   -0.3694571    0.3070184
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1982692   -0.2035022    0.6000407
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.1563374    0.0416611    0.2710136
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3622230    0.1243626    0.6000834
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1336513   -0.2218265   -0.0454761
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2502628   -0.3186550   -0.1818707
6 months    CONTENT          PERU                           Wealth Q4            NA                -0.0595640   -0.2776522    0.1585241
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0429702   -0.1718520    0.0859116
6 months    IRC              INDIA                          Wealth Q4            NA                -0.1943389   -0.4364239    0.0477461
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.2291560   -0.2576091   -0.2007029
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.2021711   -0.2641778   -0.1401644
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                -0.0432030   -0.1566832    0.0702772
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.2730357   -0.4677386   -0.0783329
6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0426387   -0.1846829    0.2699602
6 months    MAL-ED           INDIA                          Wealth Q4            NA                -0.0148322   -0.1799501    0.1502857
6 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.0977966   -0.2930216    0.0974284
6 months    MAL-ED           PERU                           Wealth Q4            NA                -0.0558997   -0.2508217    0.1390223
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.1905721   -0.4259567    0.0448125
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1081863   -0.0870511    0.3034237
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.2834320    0.1467054    0.4201585
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1995086    0.1131602    0.2858569
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0524796   -0.1186695    0.2236287
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1883977   -0.2685050   -0.1082904
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.4380535   -0.5084470   -0.3676600
24 months   CONTENT          PERU                           Wealth Q4            NA                -0.1529573   -0.4053407    0.0994260
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0742998   -0.2131637    0.0645642
24 months   IRC              INDIA                          Wealth Q4            NA                -0.2810608   -0.4456050   -0.1165167
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.3036014   -0.3438509   -0.2633518
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.2486524   -0.3040467   -0.1932581
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.1303273   -0.2597428   -0.0009119
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.3098716   -0.5106732   -0.1090700
24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.1075648   -0.3568874    0.1417577
24 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0588165   -0.2483577    0.1307246
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.1652148   -0.3792540    0.0488243
24 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0277787   -0.2023980    0.1468407
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.4854563   -0.7000642   -0.2708485
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0272964   -0.1698522    0.2244450
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.4770407    0.3379290    0.6161523
