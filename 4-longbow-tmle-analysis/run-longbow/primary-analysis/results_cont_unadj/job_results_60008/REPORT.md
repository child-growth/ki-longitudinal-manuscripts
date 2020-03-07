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

**Outcome Variable:** whz

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
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4             32      86
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1             13      86
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2             19      86
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3             22      86
Birth       COHORTS          GUATEMALA                      Wealth Q4            258     729
Birth       COHORTS          GUATEMALA                      Wealth Q1            144     729
Birth       COHORTS          GUATEMALA                      Wealth Q2            141     729
Birth       COHORTS          GUATEMALA                      Wealth Q3            186     729
Birth       COHORTS          PHILIPPINES                    Wealth Q4            815    2898
Birth       COHORTS          PHILIPPINES                    Wealth Q1            647    2898
Birth       COHORTS          PHILIPPINES                    Wealth Q2            506    2898
Birth       COHORTS          PHILIPPINES                    Wealth Q3            930    2898
Birth       CONTENT          PERU                           Wealth Q4              0       2
Birth       CONTENT          PERU                           Wealth Q1              0       2
Birth       CONTENT          PERU                           Wealth Q2              1       2
Birth       CONTENT          PERU                           Wealth Q3              1       2
Birth       GMS-Nepal        NEPAL                          Wealth Q4            161     641
Birth       GMS-Nepal        NEPAL                          Wealth Q1            164     641
Birth       GMS-Nepal        NEPAL                          Wealth Q2            160     641
Birth       GMS-Nepal        NEPAL                          Wealth Q3            156     641
Birth       IRC              INDIA                          Wealth Q4             79     343
Birth       IRC              INDIA                          Wealth Q1             90     343
Birth       IRC              INDIA                          Wealth Q2             83     343
Birth       IRC              INDIA                          Wealth Q3             91     343
Birth       JiVitA-3         BANGLADESH                     Wealth Q4           4505   17994
Birth       JiVitA-3         BANGLADESH                     Wealth Q1           4435   17994
Birth       JiVitA-3         BANGLADESH                     Wealth Q2           4476   17994
Birth       JiVitA-3         BANGLADESH                     Wealth Q3           4578   17994
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            572    2394
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            560    2394
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            617    2394
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            645    2394
Birth       MAL-ED           BANGLADESH                     Wealth Q4             56     201
Birth       MAL-ED           BANGLADESH                     Wealth Q1             48     201
Birth       MAL-ED           BANGLADESH                     Wealth Q2             46     201
Birth       MAL-ED           BANGLADESH                     Wealth Q3             51     201
Birth       MAL-ED           BRAZIL                         Wealth Q4             10      57
Birth       MAL-ED           BRAZIL                         Wealth Q1             20      57
Birth       MAL-ED           BRAZIL                         Wealth Q2             16      57
Birth       MAL-ED           BRAZIL                         Wealth Q3             11      57
Birth       MAL-ED           INDIA                          Wealth Q4              8      39
Birth       MAL-ED           INDIA                          Wealth Q1             13      39
Birth       MAL-ED           INDIA                          Wealth Q2              9      39
Birth       MAL-ED           INDIA                          Wealth Q3              9      39
Birth       MAL-ED           NEPAL                          Wealth Q4              6      25
Birth       MAL-ED           NEPAL                          Wealth Q1              8      25
Birth       MAL-ED           NEPAL                          Wealth Q2              3      25
Birth       MAL-ED           NEPAL                          Wealth Q3              8      25
Birth       MAL-ED           PERU                           Wealth Q4             53     210
Birth       MAL-ED           PERU                           Wealth Q1             55     210
Birth       MAL-ED           PERU                           Wealth Q2             51     210
Birth       MAL-ED           PERU                           Wealth Q3             51     210
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4             17      95
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1             26      95
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2             24      95
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3             28      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             23     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             26     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             30     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             33     112
Birth       PROVIDE          BANGLADESH                     Wealth Q4            132     532
Birth       PROVIDE          BANGLADESH                     Wealth Q1            129     532
Birth       PROVIDE          BANGLADESH                     Wealth Q2            136     532
Birth       PROVIDE          BANGLADESH                     Wealth Q3            135     532
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4             95     368
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1             90     368
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2             93     368
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3             90     368
6 months    COHORTS          GUATEMALA                      Wealth Q4            339     926
6 months    COHORTS          GUATEMALA                      Wealth Q1            176     926
6 months    COHORTS          GUATEMALA                      Wealth Q2            194     926
6 months    COHORTS          GUATEMALA                      Wealth Q3            217     926
6 months    COHORTS          PHILIPPINES                    Wealth Q4            744    2706
6 months    COHORTS          PHILIPPINES                    Wealth Q1            569    2706
6 months    COHORTS          PHILIPPINES                    Wealth Q2            485    2706
6 months    COHORTS          PHILIPPINES                    Wealth Q3            908    2706
6 months    CONTENT          PERU                           Wealth Q4             52     215
6 months    CONTENT          PERU                           Wealth Q1             59     215
6 months    CONTENT          PERU                           Wealth Q2             52     215
6 months    CONTENT          PERU                           Wealth Q3             52     215
6 months    GMS-Nepal        NEPAL                          Wealth Q4            140     564
6 months    GMS-Nepal        NEPAL                          Wealth Q1            141     564
6 months    GMS-Nepal        NEPAL                          Wealth Q2            148     564
6 months    GMS-Nepal        NEPAL                          Wealth Q3            135     564
6 months    IRC              INDIA                          Wealth Q4            100     408
6 months    IRC              INDIA                          Wealth Q1            104     408
6 months    IRC              INDIA                          Wealth Q2            102     408
6 months    IRC              INDIA                          Wealth Q3            102     408
6 months    JiVitA-3         BANGLADESH                     Wealth Q4           4971   16776
6 months    JiVitA-3         BANGLADESH                     Wealth Q1           3585   16776
6 months    JiVitA-3         BANGLADESH                     Wealth Q2           3902   16776
6 months    JiVitA-3         BANGLADESH                     Wealth Q3           4318   16776
6 months    JiVitA-4         BANGLADESH                     Wealth Q4           1199    4827
6 months    JiVitA-4         BANGLADESH                     Wealth Q1           1199    4827
6 months    JiVitA-4         BANGLADESH                     Wealth Q2           1201    4827
6 months    JiVitA-4         BANGLADESH                     Wealth Q3           1228    4827
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
6 months    PROVIDE          BANGLADESH                     Wealth Q4            134     603
6 months    PROVIDE          BANGLADESH                     Wealth Q1            156     603
6 months    PROVIDE          BANGLADESH                     Wealth Q2            164     603
6 months    PROVIDE          BANGLADESH                     Wealth Q3            149     603
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            501    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            605    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            409    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            504    2019
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4             95     372
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1             91     372
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2             95     372
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3             91     372
24 months   COHORTS          GUATEMALA                      Wealth Q4            405    1046
24 months   COHORTS          GUATEMALA                      Wealth Q1            203    1046
24 months   COHORTS          GUATEMALA                      Wealth Q2            215    1046
24 months   COHORTS          GUATEMALA                      Wealth Q3            223    1046
24 months   COHORTS          PHILIPPINES                    Wealth Q4            685    2449
24 months   COHORTS          PHILIPPINES                    Wealth Q1            492    2449
24 months   COHORTS          PHILIPPINES                    Wealth Q2            424    2449
24 months   COHORTS          PHILIPPINES                    Wealth Q3            848    2449
24 months   CONTENT          PERU                           Wealth Q4             41     164
24 months   CONTENT          PERU                           Wealth Q1             40     164
24 months   CONTENT          PERU                           Wealth Q2             42     164
24 months   CONTENT          PERU                           Wealth Q3             41     164
24 months   GMS-Nepal        NEPAL                          Wealth Q4            124     487
24 months   GMS-Nepal        NEPAL                          Wealth Q1            121     487
24 months   GMS-Nepal        NEPAL                          Wealth Q2            128     487
24 months   GMS-Nepal        NEPAL                          Wealth Q3            114     487
24 months   IRC              INDIA                          Wealth Q4            100     409
24 months   IRC              INDIA                          Wealth Q1            105     409
24 months   IRC              INDIA                          Wealth Q2            101     409
24 months   IRC              INDIA                          Wealth Q3            103     409
24 months   JiVitA-3         BANGLADESH                     Wealth Q4           2351    8594
24 months   JiVitA-3         BANGLADESH                     Wealth Q1           1996    8594
24 months   JiVitA-3         BANGLADESH                     Wealth Q2           2103    8594
24 months   JiVitA-3         BANGLADESH                     Wealth Q3           2144    8594
24 months   JiVitA-4         BANGLADESH                     Wealth Q4           1187    4730
24 months   JiVitA-4         BANGLADESH                     Wealth Q1           1153    4730
24 months   JiVitA-4         BANGLADESH                     Wealth Q2           1169    4730
24 months   JiVitA-4         BANGLADESH                     Wealth Q3           1221    4730
24 months   LCNI-5           MALAWI                         Wealth Q4            155     558
24 months   LCNI-5           MALAWI                         Wealth Q1            127     558
24 months   LCNI-5           MALAWI                         Wealth Q2            140     558
24 months   LCNI-5           MALAWI                         Wealth Q3            136     558
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
24 months   PROVIDE          BANGLADESH                     Wealth Q4            122     579
24 months   PROVIDE          BANGLADESH                     Wealth Q1            155     579
24 months   PROVIDE          BANGLADESH                     Wealth Q2            157     579
24 months   PROVIDE          BANGLADESH                     Wealth Q3            145     579
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
![](/tmp/c5673477-3944-4165-975f-34ef7f08c2a3/a3493130-77f3-4d89-8242-37e4fc2fbc1b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c5673477-3944-4165-975f-34ef7f08c2a3/a3493130-77f3-4d89-8242-37e4fc2fbc1b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c5673477-3944-4165-975f-34ef7f08c2a3/a3493130-77f3-4d89-8242-37e4fc2fbc1b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.4967188   -1.0927927    0.0993552
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.6023077   -1.2239875    0.0193721
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.6673684   -1.1792476   -0.1554892
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.1622727   -0.6759851    0.3514396
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                -0.9951550   -1.1817400   -0.8085701
Birth       COHORTS          GUATEMALA                      Wealth Q1            NA                -1.3420139   -1.5518154   -1.1322123
Birth       COHORTS          GUATEMALA                      Wealth Q2            NA                -0.9657447   -1.1843212   -0.7471682
Birth       COHORTS          GUATEMALA                      Wealth Q3            NA                -0.9924194   -1.1962585   -0.7885802
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.8258405   -0.9156996   -0.7359814
Birth       COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7875889   -0.8888141   -0.6863637
Birth       COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6700791   -0.7769933   -0.5631648
Birth       COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.6768495   -0.7560494   -0.5976495
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0904969   -1.2558929   -0.9251009
Birth       GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.0932317   -1.2618915   -0.9245719
Birth       GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.1365625   -1.3162573   -0.9568677
Birth       GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.1469872   -1.3337108   -0.9602636
Birth       IRC              INDIA                          Wealth Q4            NA                -0.8089873   -1.1314135   -0.4865611
Birth       IRC              INDIA                          Wealth Q1            NA                -1.4476667   -1.7995427   -1.0957906
Birth       IRC              INDIA                          Wealth Q2            NA                -0.9233735   -1.3377352   -0.5090118
Birth       IRC              INDIA                          Wealth Q3            NA                -0.8328571   -1.2095501   -0.4561642
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.7156559   -0.7525270   -0.6787849
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            NA                -0.8443405   -0.8780616   -0.8106194
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            NA                -0.7832194   -0.8155959   -0.7508429
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            NA                -0.7688401   -0.7994844   -0.7381958
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.6563811   -0.7673576   -0.5454046
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            NA                -0.7157500   -0.8151340   -0.6163660
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            NA                -0.6953160   -0.7912427   -0.5993894
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            NA                -0.6858760   -0.7915898   -0.5801622
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.9708036   -1.2125533   -0.7290539
Birth       MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.7736458   -1.0748823   -0.4724094
Birth       MAL-ED           BANGLADESH                     Wealth Q2            NA                -1.1367391   -1.4296771   -0.8438012
Birth       MAL-ED           BANGLADESH                     Wealth Q3            NA                -1.0147059   -1.3593361   -0.6700757
Birth       MAL-ED           BRAZIL                         Wealth Q4            NA                 0.3010000   -0.5771574    1.1791574
Birth       MAL-ED           BRAZIL                         Wealth Q1            NA                 0.2500000   -0.3735997    0.8735997
Birth       MAL-ED           BRAZIL                         Wealth Q2            NA                 0.7162500    0.2582356    1.1742644
Birth       MAL-ED           BRAZIL                         Wealth Q3            NA                 0.6363636   -0.0317059    1.3044332
Birth       MAL-ED           INDIA                          Wealth Q4            NA                -0.6625000   -1.2946579   -0.0303421
Birth       MAL-ED           INDIA                          Wealth Q1            NA                -0.7753846   -1.2462747   -0.3044945
Birth       MAL-ED           INDIA                          Wealth Q2            NA                -1.2233333   -1.8175527   -0.6291139
Birth       MAL-ED           INDIA                          Wealth Q3            NA                -1.1588889   -1.7968865   -0.5208913
Birth       MAL-ED           PERU                           Wealth Q4            NA                 0.0196226   -0.2069488    0.2461941
Birth       MAL-ED           PERU                           Wealth Q1            NA                -0.1434545   -0.3914073    0.1044983
Birth       MAL-ED           PERU                           Wealth Q2            NA                 0.0627451   -0.1855766    0.3110668
Birth       MAL-ED           PERU                           Wealth Q3            NA                -0.1211765   -0.4088065    0.1664536
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.2529412   -0.2033447    0.7092270
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -0.4207692   -0.8857319    0.0441935
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -0.0137500   -0.4691436    0.4416436
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -0.3378571   -0.8371677    0.1614534
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.7069565    0.2887216    1.1251914
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.8576923    0.5122068    1.2031779
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.8413333    0.4437596    1.2389071
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.6587879    0.2709848    1.0465909
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                -1.2818182   -1.4287486   -1.1348878
Birth       PROVIDE          BANGLADESH                     Wealth Q1            NA                -1.3665116   -1.5284432   -1.2045800
Birth       PROVIDE          BANGLADESH                     Wealth Q2            NA                -1.1820588   -1.3297429   -1.0343748
Birth       PROVIDE          BANGLADESH                     Wealth Q3            NA                -1.3669630   -1.5227287   -1.2111972
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0044737   -0.3279235    0.3368708
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.8835926   -1.1552531   -0.6119321
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.7475986   -1.0295263   -0.4656708
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.4040000   -0.6843157   -0.1236843
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2982006    0.1788339    0.4175672
6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                 0.2025568    0.0459515    0.3591621
6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                 0.1054639   -0.0488410    0.2597688
6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                 0.0925346   -0.0698014    0.2548706
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2008065   -0.2765391   -0.1250738
6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.4521090   -0.5436444   -0.3605736
6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.2628247   -0.3615385   -0.1641110
6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2874670   -0.3594074   -0.2155265
6 months    CONTENT          PERU                           Wealth Q4            NA                 1.2462628    1.0171477    1.4753779
6 months    CONTENT          PERU                           Wealth Q1            NA                 0.9031808    0.6614555    1.1449061
6 months    CONTENT          PERU                           Wealth Q2            NA                 0.9952051    0.7509456    1.2394647
6 months    CONTENT          PERU                           Wealth Q3            NA                 1.1347692    0.9261692    1.3433693
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.5451905   -0.7039171   -0.3864639
6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.6413475   -0.8069986   -0.4756965
6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.6211937   -0.7914322   -0.4509552
6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.6064691   -0.7998221   -0.4131162
6 months    IRC              INDIA                          Wealth Q4            NA                -0.6425500   -0.9157414   -0.3693586
6 months    IRC              INDIA                          Wealth Q1            NA                -0.5085577   -0.7375943   -0.2795211
6 months    IRC              INDIA                          Wealth Q2            NA                -0.4725980   -0.7656889   -0.1795072
6 months    IRC              INDIA                          Wealth Q3            NA                -0.7746405   -1.0566371   -0.4926439
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.4889248   -0.5225980   -0.4552515
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                -0.7277601   -0.7649866   -0.6905336
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                -0.6483419   -0.6867209   -0.6099628
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                -0.5518921   -0.5881873   -0.5155968
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.2355963   -0.3093410   -0.1618517
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                -0.5276147   -0.5976738   -0.4575556
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                -0.4302206   -0.4987640   -0.3616773
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                -0.3676832   -0.4347665   -0.3006000
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                 0.5422581    0.4131238    0.6713923
6 months    LCNI-5           MALAWI                         Wealth Q1            NA                 0.3366010    0.1798311    0.4933708
6 months    LCNI-5           MALAWI                         Wealth Q2            NA                 0.3826633    0.2484048    0.5169218
6 months    LCNI-5           MALAWI                         Wealth Q3            NA                 0.4991371    0.3494952    0.6487789
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0208743   -0.3056399    0.2638913
6 months    MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.1038701   -0.3267010    0.1189609
6 months    MAL-ED           BANGLADESH                     Wealth Q2            NA                -0.2159290   -0.4874927    0.0556348
6 months    MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.1936723   -0.4360820    0.0487373
6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.7272956    0.3953370    1.0592542
6 months    MAL-ED           BRAZIL                         Wealth Q1            NA                 0.9461635    0.6464930    1.2458341
6 months    MAL-ED           BRAZIL                         Wealth Q2            NA                 1.0801763    0.7381460    1.4222066
6 months    MAL-ED           BRAZIL                         Wealth Q3            NA                 1.1431699    0.8150756    1.4712643
6 months    MAL-ED           INDIA                          Wealth Q4            NA                -0.6664124   -0.9049909   -0.4278340
6 months    MAL-ED           INDIA                          Wealth Q1            NA                -0.7819167   -1.0607740   -0.5030594
6 months    MAL-ED           INDIA                          Wealth Q2            NA                -0.7816523   -1.0389666   -0.5243380
6 months    MAL-ED           INDIA                          Wealth Q3            NA                -0.6094540   -0.8428007   -0.3761073
6 months    MAL-ED           NEPAL                          Wealth Q4            NA                 0.1988983   -0.0770500    0.4748466
6 months    MAL-ED           NEPAL                          Wealth Q1            NA                 0.0517514   -0.2032914    0.3067942
6 months    MAL-ED           NEPAL                          Wealth Q2            NA                 0.1060734   -0.1062063    0.3183532
6 months    MAL-ED           NEPAL                          Wealth Q3            NA                 0.0850000   -0.2129550    0.3829550
6 months    MAL-ED           PERU                           Wealth Q4            NA                 0.9688557    0.7090139    1.2286975
6 months    MAL-ED           PERU                           Wealth Q1            NA                 1.2642157    1.0486933    1.4797381
6 months    MAL-ED           PERU                           Wealth Q2            NA                 1.0049178    0.7877960    1.2220397
6 months    MAL-ED           PERU                           Wealth Q3            NA                 0.9624609    0.6808155    1.2441064
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.8189247    0.5148162    1.1230332
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                 0.3295833   -0.0013485    0.6605152
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                 0.4710417    0.1720956    0.7699877
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                 0.5376720    0.2539428    0.8214011
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.6186243    0.3786226    0.8586261
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.5909788    0.3506613    0.8312963
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.5162568    0.2500816    0.7824321
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.4125000    0.1124951    0.7125049
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.3230721   -0.4806886   -0.1654557
6 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.1874359   -0.3515919   -0.0232799
6 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.0374390   -0.2103885    0.1355104
6 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.2777181   -0.4355132   -0.1199230
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1125981    0.0064896    0.2187066
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0521446   -0.0495264    0.1538157
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.0923105   -0.0206169    0.2052380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.0717163   -0.0301680    0.1736005
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3197544   -0.5274837   -0.1120250
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.6221978   -0.8064699   -0.4379257
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.6710351   -0.8551222   -0.4869480
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.6210440   -0.8455479   -0.3965400
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1814321   -0.2702931   -0.0925711
24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                -0.4054187   -0.5202913   -0.2905461
24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                -0.3434419   -0.4595740   -0.2273097
24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                -0.2796413   -0.4034828   -0.1557997
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.4327445   -0.5010904   -0.3643987
24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7455285   -0.8266882   -0.6643687
24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6300708   -0.7178878   -0.5422537
24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.6643986   -0.7270155   -0.6017816
24 months   CONTENT          PERU                           Wealth Q4            NA                 0.5734146    0.2925729    0.8542564
24 months   CONTENT          PERU                           Wealth Q1            NA                 0.4888750    0.2601094    0.7176406
24 months   CONTENT          PERU                           Wealth Q2            NA                 0.5872619    0.2861834    0.8883404
24 months   CONTENT          PERU                           Wealth Q3            NA                 0.7090244    0.4596840    0.9583647
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0938172   -1.2776619   -0.9099725
24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1927961   -1.3685218   -1.0170705
24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.2069661   -1.3819622   -1.0319701
24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.0432456   -1.2176388   -0.8688524
24 months   IRC              INDIA                          Wealth Q4            NA                -0.7121667   -0.9082012   -0.5161322
24 months   IRC              INDIA                          Wealth Q1            NA                -0.8694444   -1.0240929   -0.7147960
24 months   IRC              INDIA                          Wealth Q2            NA                -0.7581683   -0.9447883   -0.5715483
24 months   IRC              INDIA                          Wealth Q3            NA                -0.6403398   -0.8273473   -0.4533323
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -1.2210634   -1.2624842   -1.1796425
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                -1.3534920   -1.3980091   -1.3089749
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                -1.3374465   -1.3833688   -1.2915242
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                -1.2892397   -1.3363245   -1.2421550
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -1.1492755   -1.2169453   -1.0816057
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                -1.2822637   -1.3470042   -1.2175231
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                -1.2421899   -1.2976950   -1.1866848
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                -1.2210238   -1.2791260   -1.1629215
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0319355   -0.1259419    0.1898129
24 months   LCNI-5           MALAWI                         Wealth Q1            NA                -0.1328346   -0.3071975    0.0415282
24 months   LCNI-5           MALAWI                         Wealth Q2            NA                -0.0595357   -0.2239254    0.1048539
24 months   LCNI-5           MALAWI                         Wealth Q3            NA                -0.0471324   -0.2088811    0.1146164
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.7872951   -1.0437204   -0.5308698
24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.5895000   -0.9074749   -0.2715251
24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                -0.9000820   -1.1081908   -0.6919731
24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.8845833   -1.0973451   -0.6718216
24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.4091509    0.0509573    0.7673446
24 months   MAL-ED           BRAZIL                         Wealth Q1            NA                 0.1533333   -0.2498647    0.5565314
24 months   MAL-ED           BRAZIL                         Wealth Q2            NA                 0.6431197    0.2007333    1.0855060
24 months   MAL-ED           BRAZIL                         Wealth Q3            NA                 0.5378431    0.1329797    0.9427066
24 months   MAL-ED           INDIA                          Wealth Q4            NA                -1.0132203   -1.2554919   -0.7709488
24 months   MAL-ED           INDIA                          Wealth Q1            NA                -0.9182692   -1.1760451   -0.6604933
24 months   MAL-ED           INDIA                          Wealth Q2            NA                -1.0149138   -1.2379971   -0.7918305
24 months   MAL-ED           INDIA                          Wealth Q3            NA                -0.8556897   -1.0529721   -0.6584072
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.1090678   -0.3472695    0.1291339
24 months   MAL-ED           NEPAL                          Wealth Q1            NA                -0.6241818   -0.8198852   -0.4284784
24 months   MAL-ED           NEPAL                          Wealth Q2            NA                -0.4392727   -0.6529826   -0.2255628
24 months   MAL-ED           NEPAL                          Wealth Q3            NA                -0.3483898   -0.5820999   -0.1146798
24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0849872   -0.1101715    0.2801459
24 months   MAL-ED           PERU                           Wealth Q1            NA                 0.1318651   -0.1467155    0.4104456
24 months   MAL-ED           PERU                           Wealth Q2            NA                 0.1642105   -0.0953438    0.4237649
24 months   MAL-ED           PERU                           Wealth Q3            NA                 0.0901488   -0.1721499    0.3524476
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.6057143    0.3669167    0.8445118
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                 0.4620068    0.2515061    0.6725075
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                 0.1810185   -0.0736073    0.4356444
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                 0.3991534    0.1648627    0.6334442
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2425397    0.0218317    0.4632477
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0521429   -0.2605270    0.3648128
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.0530914   -0.1893986    0.2955814
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1361475   -0.3702586    0.0979635
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -1.1788525   -1.3360200   -1.0216849
24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.7902258   -0.9606365   -0.6198151
24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.6968471   -0.8633811   -0.5303131
24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.9742069   -1.1236269   -0.8247869


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0572840   -1.1606089   -0.9539590
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7422912   -0.7886598   -0.6959226
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7777103   -0.7967006   -0.7587201
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -0.6882498   -0.7406539   -0.6358456
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9728358   -1.1217009   -0.8239707
Birth       MAL-ED           BRAZIL                         NA                   NA                 0.4643860    0.1360519    0.7927200
Birth       MAL-ED           INDIA                          NA                   NA                -0.9441026   -1.2397919   -0.6484132
Birth       MAL-ED           PERU                           NA                   NA                -0.0468095   -0.1738806    0.0802616
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1729474   -0.4186222    0.0727275
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7637500    0.5676177    0.9598823
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1914471    0.1185005    0.2643936
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    CONTENT          PERU                           NA                   NA                 1.0644279    0.9468682    1.1819876
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5932502   -0.6127743   -0.5737261
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.3901595   -0.4274150   -0.3529041
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4417647    0.3702742    0.5132552
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1333333   -0.2623761   -0.0042906
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED           INDIA                          NA                   NA                -0.7102872   -0.8371659   -0.5834085
6 months    MAL-ED           NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           NA                   NA                 1.0512099    0.9285617    1.1738581
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5404351    0.3867005    0.6941696
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0801680    0.0273223    0.1330136
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2791396   -0.3336899   -0.2245893
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   CONTENT          PERU                           NA                   NA                 0.5902439    0.4560143    0.7244735
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2973086   -1.3206115   -1.2740057
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.2231776   -1.2550332   -1.1913220
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0477867   -0.1301103    0.0345368
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED           INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   MAL-ED           NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.1055889   -0.9668612    0.7556833
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.1706497   -0.9563496    0.6150503
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.3344460   -0.4524495    1.1213415
Birth       COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.3468589   -0.6276268   -0.0660909
Birth       COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0294104   -0.2579738    0.3167945
Birth       COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0027357   -0.2736053    0.2790767
Birth       COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4          0.0382516   -0.0971042    0.1736075
Birth       COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4          0.1557614    0.0161000    0.2954229
Birth       COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4          0.1489910    0.0292109    0.2687712
Birth       GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0027348   -0.2389592    0.2334896
Birth       GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0460656   -0.2902910    0.1981598
Birth       GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0564903   -0.3059327    0.1929522
Birth       IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Wealth Q1            Wealth Q4         -0.6386793   -1.1159375   -0.1614211
Birth       IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1143862   -0.6394140    0.4106417
Birth       IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0238698   -0.5197087    0.4719691
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1286845   -0.1773297   -0.0800394
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0675635   -0.1137024   -0.0214245
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0531842   -0.0993703   -0.0069980
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0593689   -0.2054578    0.0867200
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0389349   -0.1846590    0.1067891
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0294949   -0.1820401    0.1230504
Birth       MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.1971577   -0.1890887    0.5834042
Birth       MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.1659356   -0.5457454    0.2138743
Birth       MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0439023   -0.4648689    0.3770643
Birth       MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.0510000   -1.1280502    1.0260502
Birth       MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.4152500   -0.5751730    1.4056730
Birth       MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.3353636   -0.7680299    1.4387572
Birth       MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.1128846   -0.9011492    0.6753800
Birth       MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.5608333   -1.4284279    0.3067612
Birth       MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.4963889   -1.3945340    0.4017562
Birth       MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.1630772   -0.4989569    0.1728026
Birth       MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0431225   -0.2930297    0.3792746
Birth       MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.1407991   -0.5069489    0.2253507
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.6737104   -1.3251604   -0.0222604
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.2666912   -0.9113462    0.3779639
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.5907983   -1.2671915    0.0855949
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1507358   -0.3917406    0.6932122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1343768   -0.4426720    0.7114256
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0481686   -0.6185296    0.5221923
Birth       PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         -0.0846934   -0.3033493    0.1339624
Birth       PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0997594   -0.1085652    0.3080839
Birth       PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0851448   -0.2992745    0.1289849
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.8880663   -1.3173532   -0.4587793
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.7520723   -1.1879290   -0.3162155
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.4084737   -0.8432894    0.0263421
6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0956438   -0.2925540    0.1012664
6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1927367   -0.3878223    0.0023489
6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.2056660   -0.4071639   -0.0041682
6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2513025   -0.3701056   -0.1324994
6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0620183   -0.1864363    0.0623998
6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0866605   -0.1911156    0.0177946
6 months    CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.3430820   -0.6761358   -0.0100282
6 months    CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.2510577   -0.5859554    0.0838400
6 months    CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1114936   -0.4213447    0.1983575
6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0961570   -0.3255789    0.1332649
6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0760032   -0.3087591    0.1567526
6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0612787   -0.3114376    0.1888803
6 months    IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Wealth Q1            Wealth Q4          0.1339923   -0.2225064    0.4904910
6 months    IRC              INDIA                          Wealth Q2            Wealth Q4          0.1699520   -0.2307173    0.5706212
6 months    IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1320905   -0.5247171    0.2605361
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.2388353   -0.2868935   -0.1907772
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1594171   -0.2092082   -0.1096260
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0629673   -0.1108385   -0.0150961
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.2920183   -0.3931254   -0.1909113
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1946243   -0.2938922   -0.0953564
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.1320869   -0.2296895   -0.0344843
6 months    LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.2056571   -0.4087640   -0.0025501
6 months    LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.1595947   -0.3458768    0.0266873
6 months    LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0431210   -0.2407781    0.1545361
6 months    MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.0829957   -0.4445826    0.2785911
6 months    MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.1950546   -0.5885496    0.1984403
6 months    MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.1727980   -0.5467684    0.2011724
6 months    MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4          0.2188679   -0.2283445    0.6660803
6 months    MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.3528807   -0.1237547    0.8295160
6 months    MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.4158743   -0.0508616    0.8826103
6 months    MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.1155042   -0.4824934    0.2514850
6 months    MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.1152399   -0.4661391    0.2356594
6 months    MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0569584   -0.2767636    0.3906804
6 months    MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.1471469   -0.5229052    0.2286114
6 months    MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.0928249   -0.4409773    0.2553276
6 months    MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.1138983   -0.5200074    0.2922108
6 months    MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.2953600   -0.0422310    0.6329510
6 months    MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0360621   -0.3025522    0.3746764
6 months    MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0063948   -0.3895944    0.3768048
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.4893414   -0.9387832   -0.0398996
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3478831   -0.7743227    0.0785565
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2812528   -0.6971665    0.1346609
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0276455   -0.3672826    0.3119916
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.1023675   -0.4607669    0.2560319
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.2061243   -0.5903167    0.1780680
6 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.1356362   -0.0919382    0.3632107
6 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.2856331    0.0516364    0.5196298
6 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.0453540   -0.1776756    0.2683837
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0604535   -0.2074093    0.0865023
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0202876   -0.1752445    0.1346692
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0408819   -0.1879853    0.1062215
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.3024434   -0.5801262   -0.0247607
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.3512807   -0.6288407   -0.0737207
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.3012896   -0.6071547    0.0045756
24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2239866   -0.3692174   -0.0787558
24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1620098   -0.3082389   -0.0157806
24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0982092   -0.2506329    0.0542146
24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.3127839   -0.4188879   -0.2066799
24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1973262   -0.3086051   -0.0860473
24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.2316541   -0.3243473   -0.1389608
24 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0845396   -0.4467631    0.2776838
24 months   CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0138473   -0.3978812    0.4255758
24 months   CONTENT          PERU                           Wealth Q3            Wealth Q4          0.1356098   -0.2399468    0.5111663
24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0989789   -0.3532984    0.1553405
24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.1131489   -0.3669648    0.1406669
24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0505716   -0.2028290    0.3039722
24 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.1572778   -0.4069689    0.0924133
24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0460017   -0.3166611    0.2246578
24 months   IRC              INDIA                          Wealth Q3            Wealth Q4          0.0718269   -0.1990999    0.3427536
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1324286   -0.1905002   -0.0743570
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1163831   -0.1771661   -0.0556002
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0681764   -0.1310441   -0.0053087
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1329882   -0.2262943   -0.0396821
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0929144   -0.1789342   -0.0068947
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0717483   -0.1617465    0.0182500
24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1647701   -0.3999885    0.0704482
24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0914712   -0.3193949    0.1364525
24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0790678   -0.3050942    0.1469585
24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.1977951   -0.2106924    0.6062826
24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.1127869   -0.4430341    0.2174603
24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0972883   -0.4304871    0.2359106
24 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.2558176   -0.7951426    0.2835073
24 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.2339687   -0.3352486    0.8031860
24 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.1286922   -0.4118789    0.6692633
24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4          0.0949511   -0.2588058    0.4487080
24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0016935   -0.3310286    0.3276417
24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.1575307   -0.1549047    0.4699661
24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.5151140   -0.8233994   -0.2068286
24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.3302049   -0.6502237   -0.0101862
24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.2393220   -0.5730292    0.0943851
24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0468779   -0.2932603    0.3870161
24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0792233   -0.2455156    0.4039623
24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0051616   -0.3217750    0.3320982
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1437075   -0.4620388    0.1746238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.4246958   -0.7737783   -0.0756133
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2065608   -0.5411000    0.1279783
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.1903968   -0.5731167    0.1923230
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.1894483   -0.5173407    0.1384441
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.3786872   -0.7004325   -0.0569419
24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.3886267    0.1568046    0.6204487
24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.4820053    0.2530180    0.7109927
24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.2046456   -0.0122138    0.4215049


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0318932   -0.3930648    0.4568511
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0621289   -0.2065173    0.0822595
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0835493    0.0081632    0.1589353
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0259462   -0.1718313    0.1199389
Birth       IRC              INDIA                          Wealth Q4            NA                -0.2015957   -0.5031499    0.0999584
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0620544   -0.0919133   -0.0321955
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0318687   -0.1258995    0.0621622
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0020322   -0.2212092    0.2171447
Birth       MAL-ED           BRAZIL                         Wealth Q4            NA                 0.1633860   -0.6166019    0.9433738
Birth       MAL-ED           INDIA                          Wealth Q4            NA                -0.2816026   -0.8500282    0.2868230
Birth       MAL-ED           PERU                           Wealth Q4            NA                -0.0664322   -0.2703192    0.1374549
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.4258885   -0.8663887    0.0146116
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0567935   -0.3194325    0.4330194
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0166405   -0.1461638    0.1128829
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.5071503   -0.7832770   -0.2310236
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1067535   -0.2023421   -0.0111649
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0930369   -0.1585540   -0.0275197
6 months    CONTENT          PERU                           Wealth Q4            NA                -0.1818349   -0.3841260    0.0204562
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0586511   -0.2004262    0.0831239
6 months    IRC              INDIA                          Wealth Q4            NA                 0.0436203   -0.1938960    0.2811365
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.1043254   -0.1313334   -0.0773174
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.1545632   -0.2171194   -0.0920069
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                -0.1004934   -0.2141480    0.0131613
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.1124590   -0.3502026    0.1252845
6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.2447818   -0.0403317    0.5298952
6 months    MAL-ED           INDIA                          Wealth Q4            NA                -0.0438748   -0.2546755    0.1669259
6 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.0884675   -0.3236528    0.1467178
6 months    MAL-ED           PERU                           Wealth Q4            NA                 0.0823542   -0.1391216    0.3038300
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.2784897   -0.5431801   -0.0137993
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0824030   -0.2955988    0.1307928
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.1239815   -0.0196915    0.2676545
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0324301   -0.1244301    0.0595698
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2373962   -0.4145641   -0.0602282
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0977075   -0.1666807   -0.0287343
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1772146   -0.2356263   -0.1188030
24 months   CONTENT          PERU                           Wealth Q4            NA                 0.0168293   -0.2228656    0.2565242
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0424935   -0.1990278    0.1140407
24 months   IRC              INDIA                          Wealth Q4            NA                -0.0336483   -0.2007385    0.1334418
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0762452   -0.1110643   -0.0414261
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0739021   -0.1309267   -0.0168775
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.0797222   -0.2133451    0.0539006
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0319974   -0.2388599    0.1748652
24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0534723   -0.2468822    0.3538269
24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0615684   -0.1421581    0.2652948
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.2658445   -0.4665959   -0.0650930
24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0262110   -0.1428805    0.1953025
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.1966842   -0.4003917    0.0070234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1877422   -0.3766600    0.0011757
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.2859854    0.1406489    0.4313219
