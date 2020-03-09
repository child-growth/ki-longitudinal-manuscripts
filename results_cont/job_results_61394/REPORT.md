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

**Intervention Variable:** birthwt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        birthwt                       n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------------------------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight        76      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                   10      86  whz              
Birth       CMIN             BANGLADESH                     Normal or high birthweight        14      19  whz              
Birth       CMIN             BANGLADESH                     Low birthweight                    5      19  whz              
Birth       COHORTS          GUATEMALA                      Normal or high birthweight       702     756  whz              
Birth       COHORTS          GUATEMALA                      Low birthweight                   54     756  whz              
Birth       COHORTS          INDIA                          Normal or high birthweight      5178    6193  whz              
Birth       COHORTS          INDIA                          Low birthweight                 1015    6193  whz              
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight      2688    2899  whz              
Birth       COHORTS          PHILIPPINES                    Low birthweight                  211    2899  whz              
Birth       CONTENT          PERU                           Normal or high birthweight         2       2  whz              
Birth       CONTENT          PERU                           Low birthweight                    0       2  whz              
Birth       EE               PAKISTAN                       Normal or high birthweight       138     177  whz              
Birth       EE               PAKISTAN                       Low birthweight                   39     177  whz              
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight       472     641  whz              
Birth       GMS-Nepal        NEPAL                          Low birthweight                  169     641  whz              
Birth       IRC              INDIA                          Normal or high birthweight       296     343  whz              
Birth       IRC              INDIA                          Low birthweight                   47     343  whz              
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight     12587   18014  whz              
Birth       JiVitA-3         BANGLADESH                     Low birthweight                 5427   18014  whz              
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight      1758    2396  whz              
Birth       JiVitA-4         BANGLADESH                     Low birthweight                  638    2396  whz              
Birth       Keneba           GAMBIA                         Normal or high birthweight      1273    1465  whz              
Birth       Keneba           GAMBIA                         Low birthweight                  192    1465  whz              
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight       177     215  whz              
Birth       MAL-ED           BANGLADESH                     Low birthweight                   38     215  whz              
Birth       MAL-ED           BRAZIL                         Normal or high birthweight        60      62  whz              
Birth       MAL-ED           BRAZIL                         Low birthweight                    2      62  whz              
Birth       MAL-ED           INDIA                          Normal or high birthweight        38      45  whz              
Birth       MAL-ED           INDIA                          Low birthweight                    7      45  whz              
Birth       MAL-ED           NEPAL                          Normal or high birthweight        24      26  whz              
Birth       MAL-ED           NEPAL                          Low birthweight                    2      26  whz              
Birth       MAL-ED           PERU                           Normal or high birthweight       218     228  whz              
Birth       MAL-ED           PERU                           Low birthweight                   10     228  whz              
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight       115     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                    5     120  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       113     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    2     115  whz              
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight       421     575  whz              
Birth       NIH-Birth        BANGLADESH                     Low birthweight                  154     575  whz              
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight       554     707  whz              
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                  153     707  whz              
Birth       PROBIT           BELARUS                        Normal or high birthweight     13817   13817  whz              
Birth       PROBIT           BELARUS                        Low birthweight                    0   13817  whz              
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight       401     532  whz              
Birth       PROVIDE          BANGLADESH                     Low birthweight                  131     532  whz              
Birth       ResPak           PAKISTAN                       Normal or high birthweight        34      38  whz              
Birth       ResPak           PAKISTAN                       Low birthweight                    4      38  whz              
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight       894    1103  whz              
Birth       SAS-CompFeed     INDIA                          Low birthweight                  209    1103  whz              
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11614   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                 1303   12917  whz              
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight       317     360  whz              
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                   43     360  whz              
6 months    CMIN             BANGLADESH                     Normal or high birthweight         9      12  whz              
6 months    CMIN             BANGLADESH                     Low birthweight                    3      12  whz              
6 months    COHORTS          GUATEMALA                      Normal or high birthweight       704     774  whz              
6 months    COHORTS          GUATEMALA                      Low birthweight                   70     774  whz              
6 months    COHORTS          INDIA                          Normal or high birthweight      5000    6252  whz              
6 months    COHORTS          INDIA                          Low birthweight                 1252    6252  whz              
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight      2416    2664  whz              
6 months    COHORTS          PHILIPPINES                    Low birthweight                  248    2664  whz              
6 months    CONTENT          PERU                           Normal or high birthweight         2       2  whz              
6 months    CONTENT          PERU                           Low birthweight                    0       2  whz              
6 months    EE               PAKISTAN                       Normal or high birthweight       243     374  whz              
6 months    EE               PAKISTAN                       Low birthweight                  131     374  whz              
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight       397     563  whz              
6 months    GMS-Nepal        NEPAL                          Low birthweight                  166     563  whz              
6 months    IRC              INDIA                          Normal or high birthweight       334     402  whz              
6 months    IRC              INDIA                          Low birthweight                   68     402  whz              
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight      8338   14105  whz              
6 months    JiVitA-3         BANGLADESH                     Low birthweight                 5767   14105  whz              
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight      3005    4045  whz              
6 months    JiVitA-4         BANGLADESH                     Low birthweight                 1040    4045  whz              
6 months    Keneba           GAMBIA                         Normal or high birthweight      1146    1334  whz              
6 months    Keneba           GAMBIA                         Low birthweight                  188    1334  whz              
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight       188     238  whz              
6 months    MAL-ED           BANGLADESH                     Low birthweight                   50     238  whz              
6 months    MAL-ED           BRAZIL                         Normal or high birthweight       199     209  whz              
6 months    MAL-ED           BRAZIL                         Low birthweight                   10     209  whz              
6 months    MAL-ED           INDIA                          Normal or high birthweight       193     227  whz              
6 months    MAL-ED           INDIA                          Low birthweight                   34     227  whz              
6 months    MAL-ED           NEPAL                          Normal or high birthweight       210     229  whz              
6 months    MAL-ED           NEPAL                          Low birthweight                   19     229  whz              
6 months    MAL-ED           PERU                           Normal or high birthweight       254     270  whz              
6 months    MAL-ED           PERU                           Low birthweight                   16     270  whz              
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight       238     253  whz              
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                   15     253  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       177     186  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    9     186  whz              
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight       367     518  whz              
6 months    NIH-Birth        BANGLADESH                     Low birthweight                  151     518  whz              
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight       545     715  whz              
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                  170     715  whz              
6 months    PROBIT           BELARUS                        Normal or high birthweight     15757   15757  whz              
6 months    PROBIT           BELARUS                        Low birthweight                    0   15757  whz              
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight       460     603  whz              
6 months    PROVIDE          BANGLADESH                     Low birthweight                  143     603  whz              
6 months    ResPak           PAKISTAN                       Normal or high birthweight        29      34  whz              
6 months    ResPak           PAKISTAN                       Low birthweight                    5      34  whz              
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight      1001    1324  whz              
6 months    SAS-CompFeed     INDIA                          Low birthweight                  323    1324  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1943    2010  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   67    2010  whz              
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7405    8473  whz              
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                 1068    8473  whz              
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight       321     364  whz              
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                   43     364  whz              
24 months   CMIN             BANGLADESH                     Normal or high birthweight         8      11  whz              
24 months   CMIN             BANGLADESH                     Low birthweight                    3      11  whz              
24 months   COHORTS          GUATEMALA                      Normal or high birthweight       595     657  whz              
24 months   COHORTS          GUATEMALA                      Low birthweight                   62     657  whz              
24 months   COHORTS          INDIA                          Normal or high birthweight      3911    4821  whz              
24 months   COHORTS          INDIA                          Low birthweight                  910    4821  whz              
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight      2195    2410  whz              
24 months   COHORTS          PHILIPPINES                    Low birthweight                  215    2410  whz              
24 months   CONTENT          PERU                           Normal or high birthweight         2       2  whz              
24 months   CONTENT          PERU                           Low birthweight                    0       2  whz              
24 months   EE               PAKISTAN                       Normal or high birthweight       101     168  whz              
24 months   EE               PAKISTAN                       Low birthweight                   67     168  whz              
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight       355     486  whz              
24 months   GMS-Nepal        NEPAL                          Low birthweight                  131     486  whz              
24 months   IRC              INDIA                          Normal or high birthweight       335     403  whz              
24 months   IRC              INDIA                          Low birthweight                   68     403  whz              
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight      4225    7282  whz              
24 months   JiVitA-3         BANGLADESH                     Low birthweight                 3057    7282  whz              
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight      2944    3997  whz              
24 months   JiVitA-4         BANGLADESH                     Low birthweight                 1053    3997  whz              
24 months   Keneba           GAMBIA                         Normal or high birthweight       905    1057  whz              
24 months   Keneba           GAMBIA                         Low birthweight                  152    1057  whz              
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight       165     210  whz              
24 months   MAL-ED           BANGLADESH                     Low birthweight                   45     210  whz              
24 months   MAL-ED           BRAZIL                         Normal or high birthweight       161     169  whz              
24 months   MAL-ED           BRAZIL                         Low birthweight                    8     169  whz              
24 months   MAL-ED           INDIA                          Normal or high birthweight       185     218  whz              
24 months   MAL-ED           INDIA                          Low birthweight                   33     218  whz              
24 months   MAL-ED           NEPAL                          Normal or high birthweight       203     221  whz              
24 months   MAL-ED           NEPAL                          Low birthweight                   18     221  whz              
24 months   MAL-ED           PERU                           Normal or high birthweight       187     199  whz              
24 months   MAL-ED           PERU                           Low birthweight                   12     199  whz              
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight       224     237  whz              
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                   13     237  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       154     162  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     162  whz              
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight       286     413  whz              
24 months   NIH-Birth        BANGLADESH                     Low birthweight                  127     413  whz              
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight       388     514  whz              
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                  126     514  whz              
24 months   PROBIT           BELARUS                        Normal or high birthweight      3970    3970  whz              
24 months   PROBIT           BELARUS                        Low birthweight                    0    3970  whz              
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight       440     579  whz              
24 months   PROVIDE          BANGLADESH                     Low birthweight                  139     579  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       6  whz              
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight       337     431  whz              
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                   94     431  whz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/71263e4c-135c-467c-9437-7bc32c5ba117/addb7fce-110a-4a8f-8009-9e0ca7da3825/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/71263e4c-135c-467c-9437-7bc32c5ba117/addb7fce-110a-4a8f-8009-9e0ca7da3825/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/71263e4c-135c-467c-9437-7bc32c5ba117/addb7fce-110a-4a8f-8009-9e0ca7da3825/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.2577914   -0.5561351    0.0405523
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.0951587   -2.9136629   -1.2766544
Birth       CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.0585714   -0.9538408    0.8366979
Birth       CMIN             BANGLADESH                     Low birthweight              NA                -2.1460000   -2.9645242   -1.3274758
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.9554489   -1.0569992   -0.8538986
Birth       COHORTS          GUATEMALA                      Low birthweight              NA                -2.5414465   -2.8696203   -2.2132728
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                -0.7524571   -0.7820498   -0.7228645
Birth       COHORTS          INDIA                          Low birthweight              NA                -2.1705984   -2.2330521   -2.1081447
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.6153203   -0.6607905   -0.5698500
Birth       COHORTS          PHILIPPINES                    Low birthweight              NA                -2.3886066   -2.5191575   -2.2580557
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                -0.1066086   -0.3051688    0.0919517
Birth       EE               PAKISTAN                       Low birthweight              NA                -1.0550313   -1.4457163   -0.6643463
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.7783078   -0.8694947   -0.6871210
Birth       GMS-Nepal        NEPAL                          Low birthweight              NA                -2.0708248   -2.2081326   -1.9335169
Birth       IRC              INDIA                          Normal or high birthweight   NA                -0.7616137   -0.9547629   -0.5684645
Birth       IRC              INDIA                          Low birthweight              NA                -2.6436559   -3.0521173   -2.2351945
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.4384868   -0.4578758   -0.4190979
Birth       JiVitA-3         BANGLADESH                     Low birthweight              NA                -1.5653581   -1.5907819   -1.5399344
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.3843930   -0.4403551   -0.3284309
Birth       JiVitA-4         BANGLADESH                     Low birthweight              NA                -1.5239529   -1.5957392   -1.4521667
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                -1.0854386   -1.1498010   -1.0210762
Birth       Keneba           GAMBIA                         Low birthweight              NA                -2.2068868   -2.3505185   -2.0632550
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.7584123   -0.9124746   -0.6043501
Birth       MAL-ED           BANGLADESH                     Low birthweight              NA                -1.7826933   -2.0523660   -1.5130206
Birth       MAL-ED           INDIA                          Normal or high birthweight   NA                -0.8242105   -1.1093730   -0.5390481
Birth       MAL-ED           INDIA                          Low birthweight              NA                -1.5200000   -2.2161675   -0.8238325
Birth       MAL-ED           PERU                           Normal or high birthweight   NA                -0.0008543   -0.1246529    0.1229442
Birth       MAL-ED           PERU                           Low birthweight              NA                -1.1123523   -1.3155038   -0.9092008
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.1398261   -0.3551745    0.0755223
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -1.4060000   -2.0013052   -0.8106948
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.0287702   -1.1312539   -0.9262865
Birth       NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.2106681   -2.3532909   -2.0680454
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.9810789   -1.0685288   -0.8936291
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              NA                -2.2093950   -2.3753969   -2.0433931
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -1.0625949   -1.1449633   -0.9802264
Birth       PROVIDE          BANGLADESH                     Low birthweight              NA                -2.0227206   -2.1384163   -1.9070249
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.3937716   -0.5408873   -0.2466560
Birth       SAS-CompFeed     INDIA                          Low birthweight              NA                -1.8372897   -1.9631357   -1.7114438
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2968462   -0.3217530   -0.2719395
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -2.4733226   -2.5367625   -2.4098828
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4380435   -0.6003405   -0.2757464
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.8962757   -1.3577463   -0.4348050
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2390098    0.1567684    0.3212513
6 months    COHORTS          GUATEMALA                      Low birthweight              NA                -0.1583546   -0.4071112    0.0904020
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.5720660   -0.6030978   -0.5410341
6 months    COHORTS          INDIA                          Low birthweight              NA                -1.1820136   -1.2505507   -1.1134766
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.2607742   -0.3045202   -0.2170281
6 months    COHORTS          PHILIPPINES                    Low birthweight              NA                -0.5830570   -0.7225383   -0.4435756
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.7567771   -0.8942258   -0.6193284
6 months    EE               PAKISTAN                       Low birthweight              NA                -0.8064795   -1.0099623   -0.6029967
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.4773351   -0.5755009   -0.3791692
6 months    GMS-Nepal        NEPAL                          Low birthweight              NA                -0.9014783   -1.0683049   -0.7346518
6 months    IRC              INDIA                          Normal or high birthweight   NA                -0.5527552   -0.6969864   -0.4085241
6 months    IRC              INDIA                          Low birthweight              NA                -0.8323958   -1.2382093   -0.4265823
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.4636639   -0.4904013   -0.4369265
6 months    JiVitA-3         BANGLADESH                     Low birthweight              NA                -0.8231938   -0.8544236   -0.7919641
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.2992128   -0.3501424   -0.2482832
6 months    JiVitA-4         BANGLADESH                     Low birthweight              NA                -0.6131704   -0.6877771   -0.5385637
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1608600   -0.2282921   -0.0934279
6 months    Keneba           GAMBIA                         Low birthweight              NA                -0.4470143   -0.6142435   -0.2797850
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0523903   -0.2052175    0.1004369
6 months    MAL-ED           BANGLADESH                     Low birthweight              NA                -0.3846936   -0.6096635   -0.1597237
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.9969387    0.8290561    1.1648213
6 months    MAL-ED           BRAZIL                         Low birthweight              NA                 0.4288055   -0.4047877    1.2623987
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -0.6562867   -0.7964285   -0.5161449
6 months    MAL-ED           INDIA                          Low birthweight              NA                -0.8922122   -1.2767598   -0.5076645
6 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.1696487    0.0321869    0.3071105
6 months    MAL-ED           NEPAL                          Low birthweight              NA                -0.2160923   -0.7695908    0.3374061
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                 1.0896191    0.9646745    1.2145637
6 months    MAL-ED           PERU                           Low birthweight              NA                 1.3665410    0.6856442    2.0474377
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.5404342    0.3845103    0.6963581
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 1.1841633    0.3973495    1.9709771
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.5889736    0.4286505    0.7492968
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0948148   -0.5053473    0.6949769
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3524134   -0.4574110   -0.2474159
6 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.7249977   -0.9019298   -0.5480657
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.1196888    0.0318399    0.2075378
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              NA                -0.2715772   -0.4453789   -0.0977755
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0860605   -0.1787190    0.0065979
6 months    PROVIDE          BANGLADESH                     Low birthweight              NA                -0.5852094   -0.7612878   -0.4091311
6 months    ResPak           PAKISTAN                       Normal or high birthweight   NA                 0.2481034   -0.2104801    0.7066870
6 months    ResPak           PAKISTAN                       Low birthweight              NA                 0.0410000   -0.8343639    0.9163639
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.5641636   -0.7218236   -0.4065037
6 months    SAS-CompFeed     INDIA                          Low birthweight              NA                -0.9860295   -1.1205413   -0.8515176
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1020071    0.0482093    0.1558048
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.4799820   -0.7438994   -0.2160646
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.3403152    0.3130136    0.3676169
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.0887074    0.0146876    0.1627272
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4518363   -0.5591740   -0.3444986
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -1.2620768   -1.5062026   -1.0179510
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1572755   -0.2257188   -0.0888323
24 months   COHORTS          GUATEMALA                      Low birthweight              NA                -0.9817253   -1.2326420   -0.7308086
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                -0.5035814   -0.5357943   -0.4713685
24 months   COHORTS          INDIA                          Low birthweight              NA                -1.0102159   -1.0744382   -0.9459935
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.5643014   -0.6026410   -0.5259617
24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                -1.0560508   -1.1805890   -0.9315126
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.9037962   -1.0975188   -0.7100736
24 months   EE               PAKISTAN                       Low birthweight              NA                -1.1237119   -1.3467497   -0.9006740
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.0490667   -1.1517829   -0.9463505
24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                -1.3445538   -1.5182379   -1.1708696
24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.6352561   -0.7332948   -0.5372174
24 months   IRC              INDIA                          Low birthweight              NA                -1.2440665   -1.4623332   -1.0257997
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -1.1270218   -1.1599459   -1.0940976
24 months   JiVitA-3         BANGLADESH                     Low birthweight              NA                -1.5536191   -1.5909685   -1.5162696
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -1.1449430   -1.1843139   -1.1055722
24 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                -1.5140366   -1.5821111   -1.4459620
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.7367578   -0.8013943   -0.6721212
24 months   Keneba           GAMBIA                         Low birthweight              NA                -1.1742303   -1.3404094   -1.0080512
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.7221302   -0.8609434   -0.5833169
24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                -1.2263444   -1.4542920   -0.9983969
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.4619462    0.2504494    0.6734429
24 months   MAL-ED           BRAZIL                         Low birthweight              NA                 0.4762500   -0.4169100    1.3694100
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.8688073   -0.9882105   -0.7494040
24 months   MAL-ED           INDIA                          Low birthweight              NA                -1.1937067   -1.5781636   -0.8092498
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.3235868   -0.4384159   -0.2087577
24 months   MAL-ED           NEPAL                          Low birthweight              NA                -0.7126741   -1.1956280   -0.2297203
24 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.1638635    0.0434141    0.2843129
24 months   MAL-ED           PERU                           Low birthweight              NA                -1.3379434   -1.9181627   -0.7577241
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.4240366    0.2990178    0.5490554
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 0.0986396   -0.4283146    0.6255939
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1234416   -0.0309825    0.2778657
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.1100000   -0.6765896    0.4565896
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.7752221   -0.8863057   -0.6641385
24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                -1.1960213   -1.4052728   -0.9867698
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.4781861   -0.5874191   -0.3689532
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                -0.9973427   -1.1715521   -0.8231333
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.7581622   -0.8516386   -0.6646859
24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                -1.3319127   -1.4923416   -1.1714837
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -1.1756028   -1.2871551   -1.0640506
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.2119754   -1.4293614   -0.9945894


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       CMIN             BANGLADESH                     NA                   NA                -0.6078947   -1.4214563    0.2056668
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7778272   -0.7968313   -0.7588232
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
Birth       Keneba           GAMBIA                         NA                   NA                -1.2343618   -1.2966897   -1.1720339
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED           INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       MAL-ED           PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4937083   -0.6464716   -0.3409451
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.2009690    0.1225187    0.2794193
6 months    COHORTS          INDIA                          NA                   NA                -0.6934213   -0.7223635   -0.6644791
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2923874   -0.3342162   -0.2505585
6 months    EE               PAKISTAN                       NA                   NA                -0.7738057   -0.8881828   -0.6594286
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6026850   -0.6889114   -0.5164586
6 months    IRC              INDIA                          NA                   NA                -0.5865133   -0.7228579   -0.4501686
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.6078114   -0.6285877   -0.5870351
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.3785933   -0.4212191   -0.3359676
6 months    Keneba           GAMBIA                         NA                   NA                -0.1980632   -0.2602433   -0.1358831
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1264286   -0.2562001    0.0033429
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED           INDIA                          NA                   NA                -0.6950184   -0.8251168   -0.5649199
6 months    MAL-ED           NEPAL                          NA                   NA                 0.1468195    0.0154553    0.2781837
6 months    MAL-ED           PERU                           NA                   NA                 1.0569321    0.9344468    1.1794174
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5447167    0.3920617    0.6973717
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5650627    0.4090080    0.7211174
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4636760   -0.5549942   -0.3723578
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ResPak           PAKISTAN                       NA                   NA                 0.2176471   -0.1948962    0.6301903
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6671261   -0.8034351   -0.5308171
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0834996    0.0305909    0.1364083
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3088788    0.2831827    0.3345749
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5504808   -0.6531501   -0.4478114
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2281431   -0.2964243   -0.1598619
24 months   COHORTS          INDIA                          NA                   NA                -0.5945219   -0.6240625   -0.5649813
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6076846   -0.6447204   -0.5706489
24 months   EE               PAKISTAN                       NA                   NA                -1.0120238   -1.1588493   -0.8651984
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1336900   -1.2226955   -1.0446844
24 months   IRC              INDIA                          NA                   NA                -0.7385236   -0.8304949   -0.6465522
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.3060382   -1.3311265   -1.2809499
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.2443883   -1.2783802   -1.2103964
24 months   Keneba           GAMBIA                         NA                   NA                -0.7959275   -0.8565476   -0.7353073
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8080238   -0.9295087   -0.6865389
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED           INDIA                          NA                   NA                -0.9353899   -1.0537553   -0.8170246
24 months   MAL-ED           NEPAL                          NA                   NA                -0.3576697   -0.4708099   -0.2445294
24 months   MAL-ED           PERU                           NA                   NA                 0.1137982   -0.0103449    0.2379412
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.4054395    0.2840471    0.5268320
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1119136   -0.0377314    0.2615586
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9069451   -1.0069853   -0.8069049
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1828306   -1.2821673   -1.0834939


### Parameter: ATE


agecat      studyid          country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.8373672   -2.7209480   -0.9537865
Birth       CMIN             BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       CMIN             BANGLADESH                     Low birthweight              Normal or high birthweight    -2.0874286   -3.3004780   -0.8743791
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.5859977   -1.9294541   -1.2425413
Birth       COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -1.4181413   -1.4872510   -1.3490315
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.7732863   -1.9115203   -1.6350523
Birth       EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.9484227   -1.3914156   -0.5054299
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -1.2925169   -1.4573041   -1.1277298
Birth       IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Low birthweight              Normal or high birthweight    -1.8820422   -2.3332840   -1.4308005
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1268713   -1.1568590   -1.0968836
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1395599   -1.2290119   -1.0501079
Birth       Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -1.1214482   -1.2786421   -0.9642543
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -1.0242810   -1.3360392   -0.7125228
Birth       MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.6957895   -1.4480971    0.0565182
Birth       MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.1114980   -1.3499714   -0.8730247
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.2661739   -1.8992326   -0.6331153
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1818979   -1.3574810   -1.0063148
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -1.2283160   -1.4164913   -1.0401408
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9601258   -1.1024469   -0.8178046
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -1.4435181   -1.5809155   -1.3061207
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -2.1764764   -2.2446253   -2.1083274
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.4582322   -0.9485161    0.0320517
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.3973644   -0.6591941   -0.1355347
6 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.6099477   -0.6850441   -0.5348512
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.3222828   -0.4684211   -0.1761444
6 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0497024   -0.2954247    0.1960198
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.4241433   -0.6175364   -0.2307502
6 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.2796406   -0.7116192    0.1523380
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3595299   -0.4001064   -0.3189534
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3139576   -0.4026270   -0.2252883
6 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.2861543   -0.4667700   -0.1055386
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3323033   -0.6048500   -0.0597565
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.5681332   -1.4169947    0.2807283
6 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.2359255   -0.6458188    0.1739678
6 months    MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.3857410   -0.9566453    0.1851633
6 months    MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low birthweight              Normal or high birthweight     0.2769219   -0.4170996    0.9709433
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.6437290   -0.1586610    1.4461191
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.4941588   -1.1153658    0.1270481
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3725843   -0.5784045   -0.1667641
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3912660   -0.5862704   -0.1962617
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4991489   -0.6984452   -0.2998526
6 months    ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -0.2071034   -1.1953144    0.7811075
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.4218658   -0.6125127   -0.2312189
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.5819891   -0.8507744   -0.3132037
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.2516078   -0.3304663   -0.1727494
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.8102405   -1.0774111   -0.5430698
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.8244498   -1.0844967   -0.5644028
24 months   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.5066345   -0.5779656   -0.4353034
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.4917494   -0.6218949   -0.3616040
24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.2199156   -0.5138795    0.0740483
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.2954871   -0.4975485   -0.0934257
24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.6088104   -0.8488584   -0.3687623
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4265973   -0.4759833   -0.3772112
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3690935   -0.4487832   -0.2894039
24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.4374725   -0.6158233   -0.2591217
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5042142   -0.7723546   -0.2360739
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0143038   -0.9035554    0.9321631
24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.3248994   -0.7277902    0.0779913
24 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.3890873   -0.8858446    0.1076700
24 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.5018069   -2.0937645   -0.9098493
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.3253970   -0.8671419    0.2163479
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.2334416   -0.8206984    0.3538153
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4207992   -0.6584957   -0.1831027
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5191566   -0.7236179   -0.3146952
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5737504   -0.7598872   -0.3876137
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0363726   -0.2809461    0.2082010


### Parameter: PAR


agecat      studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.2070341   -0.3625548   -0.0515135
Birth       CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.5493233   -1.0805682   -0.0180784
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1066940   -0.1435973   -0.0697907
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                -0.2322886   -0.2496441   -0.2149330
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1274048   -0.1469766   -0.1078331
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                -0.2266965   -0.3468194   -0.1065736
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.3381352   -0.3999474   -0.2763230
Birth       IRC              INDIA                          Normal or high birthweight   NA                -0.2489694   -0.3374397   -0.1604991
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.3393404   -0.3515409   -0.3271399
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.3042339   -0.3385111   -0.2699566
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1489232   -0.1773412   -0.1205051
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.1834481   -0.2594895   -0.1074067
Birth       MAL-ED           INDIA                          Normal or high birthweight   NA                -0.1082339   -0.2469678    0.0304999
Birth       MAL-ED           PERU                           Normal or high birthweight   NA                -0.0511632   -0.0914370   -0.0108894
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0527572   -0.1053148   -0.0001997
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3211515   -0.3851999   -0.2571032
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.2630724   -0.3182897   -0.2078551
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.2358638   -0.2858648   -0.1858628
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.2762737   -0.3462221   -0.2063253
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2186434   -0.2318735   -0.2054134
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0556649   -0.1146345    0.0033048
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0380408   -0.0628009   -0.0132808
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.1213553   -0.1374595   -0.1052512
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0316132   -0.0458463   -0.0173801
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.0170286   -0.1037277    0.0696704
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1253500   -0.1843519   -0.0663480
6 months    IRC              INDIA                          Normal or high birthweight   NA                -0.0337580   -0.1053445    0.0378285
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.1441475   -0.1607116   -0.1275834
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0793805   -0.1027843   -0.0559768
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0372032   -0.0625647   -0.0118417
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0740383   -0.1347830   -0.0132936
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0248614   -0.0633809    0.0136581
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0387317   -0.0955513    0.0180880
6 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0228292   -0.0639612    0.0183028
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                -0.0326870   -0.0711905    0.0058165
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0042825   -0.0403485    0.0489136
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0239109   -0.0576301    0.0098083
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1112626   -0.1726689   -0.0498562
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0899266   -0.1366403   -0.0432129
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.1130301   -0.1630413   -0.0630189
6 months    ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.0304564   -0.1779205    0.1170078
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.1029625   -0.1534267   -0.0524983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0185075   -0.0280982   -0.0089167
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0314364   -0.0415449   -0.0213279
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0986445   -0.1405860   -0.0567029
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0708675   -0.1002356   -0.0414995
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                -0.0909405   -0.1054653   -0.0764157
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0433833   -0.0561306   -0.0306359
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.1082276   -0.2284756    0.0120204
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0846233   -0.1402418   -0.0290048
24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.1032674   -0.1496188   -0.0569161
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.1790164   -0.2002880   -0.1577448
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0994453   -0.1210588   -0.0778318
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0591697   -0.0859081   -0.0324313
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0858936   -0.1487277   -0.0230596
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0006771   -0.0427743    0.0441285
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0665827   -0.1317448   -0.0014205
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0340829   -0.0764226    0.0082569
24 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0500653   -0.1001345    0.0000039
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0185971   -0.0473574    0.0101633
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0115280   -0.0415623    0.0185063
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1317230   -0.2057635   -0.0576825
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.1321640   -0.1853973   -0.0789308
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.1347048   -0.1828615   -0.0865481
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0072278   -0.0604394    0.0459838
