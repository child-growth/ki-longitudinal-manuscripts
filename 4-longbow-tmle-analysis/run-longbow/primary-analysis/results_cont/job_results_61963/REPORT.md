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
Birth       CMIN             BANGLADESH                     Normal or high birthweight        13      19  whz              
Birth       CMIN             BANGLADESH                     Low birthweight                    6      19  whz              
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
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight       461     641  whz              
Birth       GMS-Nepal        NEPAL                          Low birthweight                  180     641  whz              
Birth       IRC              INDIA                          Normal or high birthweight       296     343  whz              
Birth       IRC              INDIA                          Low birthweight                   47     343  whz              
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight     12556   18014  whz              
Birth       JiVitA-3         BANGLADESH                     Low birthweight                 5458   18014  whz              
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
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight       410     575  whz              
Birth       NIH-Birth        BANGLADESH                     Low birthweight                  165     575  whz              
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight       554     707  whz              
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                  153     707  whz              
Birth       PROBIT           BELARUS                        Normal or high birthweight     13817   13817  whz              
Birth       PROBIT           BELARUS                        Low birthweight                    0   13817  whz              
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight       401     532  whz              
Birth       PROVIDE          BANGLADESH                     Low birthweight                  131     532  whz              
Birth       ResPak           PAKISTAN                       Normal or high birthweight        33      38  whz              
Birth       ResPak           PAKISTAN                       Low birthweight                    5      38  whz              
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight       894    1103  whz              
Birth       SAS-CompFeed     INDIA                          Low birthweight                  209    1103  whz              
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11614   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                 1303   12917  whz              
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight       317     360  whz              
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                   43     360  whz              
6 months    CMIN             BANGLADESH                     Normal or high birthweight         8      12  whz              
6 months    CMIN             BANGLADESH                     Low birthweight                    4      12  whz              
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
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight       386     563  whz              
6 months    GMS-Nepal        NEPAL                          Low birthweight                  177     563  whz              
6 months    IRC              INDIA                          Normal or high birthweight       334     402  whz              
6 months    IRC              INDIA                          Low birthweight                   68     402  whz              
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight      8315   14105  whz              
6 months    JiVitA-3         BANGLADESH                     Low birthweight                 5790   14105  whz              
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
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight       356     518  whz              
6 months    NIH-Birth        BANGLADESH                     Low birthweight                  162     518  whz              
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
24 months   CMIN             BANGLADESH                     Normal or high birthweight         7      11  whz              
24 months   CMIN             BANGLADESH                     Low birthweight                    4      11  whz              
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
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight       345     486  whz              
24 months   GMS-Nepal        NEPAL                          Low birthweight                  141     486  whz              
24 months   IRC              INDIA                          Normal or high birthweight       335     403  whz              
24 months   IRC              INDIA                          Low birthweight                   68     403  whz              
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight      4216    7282  whz              
24 months   JiVitA-3         BANGLADESH                     Low birthweight                 3066    7282  whz              
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
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight       278     413  whz              
24 months   NIH-Birth        BANGLADESH                     Low birthweight                  135     413  whz              
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/b9c6e940-629a-4c9f-b8e7-676eb0d21082/1a963d7c-61be-482d-b06c-ef09319bc5cd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b9c6e940-629a-4c9f-b8e7-676eb0d21082/1a963d7c-61be-482d-b06c-ef09319bc5cd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b9c6e940-629a-4c9f-b8e7-676eb0d21082/1a963d7c-61be-482d-b06c-ef09319bc5cd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.2570022   -0.5555440    0.0415396
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.1852830   -2.9739907   -1.3965753
Birth       CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.0215385   -0.9825639    0.9394869
Birth       CMIN             BANGLADESH                     Low birthweight              NA                -1.8783333   -2.7193800   -1.0372867
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.9554305   -1.0569006   -0.8539604
Birth       COHORTS          GUATEMALA                      Low birthweight              NA                -2.4610434   -2.8074621   -2.1146246
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                -0.7526235   -0.7822340   -0.7230130
Birth       COHORTS          INDIA                          Low birthweight              NA                -2.1733281   -2.2360806   -2.1105756
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.6149566   -0.6604140   -0.5694993
Birth       COHORTS          PHILIPPINES                    Low birthweight              NA                -2.4028639   -2.5331551   -2.2725727
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                -0.1174566   -0.3150857    0.0801726
Birth       EE               PAKISTAN                       Low birthweight              NA                -1.2126535   -1.6198715   -0.8054355
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.7586517   -0.8531935   -0.6641099
Birth       GMS-Nepal        NEPAL                          Low birthweight              NA                -2.0437175   -2.1728636   -1.9145714
Birth       IRC              INDIA                          Normal or high birthweight   NA                -0.7549057   -0.9483377   -0.5614736
Birth       IRC              INDIA                          Low birthweight              NA                -2.5928260   -3.0537870   -2.1318649
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.4359038   -0.4552525   -0.4165552
Birth       JiVitA-3         BANGLADESH                     Low birthweight              NA                -1.5648127   -1.5903515   -1.5392739
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.3847271   -0.4406540   -0.3288001
Birth       JiVitA-4         BANGLADESH                     Low birthweight              NA                -1.5250515   -1.5970700   -1.4530330
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                -1.0844987   -1.1489664   -1.0200310
Birth       Keneba           GAMBIA                         Low birthweight              NA                -2.2132482   -2.3529725   -2.0735239
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.7627096   -0.9173746   -0.6080447
Birth       MAL-ED           BANGLADESH                     Low birthweight              NA                -1.8993766   -2.1821209   -1.6166323
Birth       MAL-ED           INDIA                          Normal or high birthweight   NA                -0.8242105   -1.1093730   -0.5390481
Birth       MAL-ED           INDIA                          Low birthweight              NA                -1.5200000   -2.2161675   -0.8238325
Birth       MAL-ED           PERU                           Normal or high birthweight   NA                -0.0000368   -0.1235660    0.1234924
Birth       MAL-ED           PERU                           Low birthweight              NA                -1.1189879   -1.3292206   -0.9087552
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.1398261   -0.3551745    0.0755223
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -1.4060000   -2.0013052   -0.8106948
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.0005119   -1.1033621   -0.8976617
Birth       NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.1901118   -2.3300670   -2.0501566
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.9831988   -1.0702983   -0.8960993
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              NA                -2.1943840   -2.3632373   -2.0255307
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -1.0627587   -1.1450986   -0.9804188
Birth       PROVIDE          BANGLADESH                     Low birthweight              NA                -2.0124274   -2.1277954   -1.8970594
Birth       ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.2518182   -0.6726425    0.1690062
Birth       ResPak           PAKISTAN                       Low birthweight              NA                -1.1220000   -2.1586049   -0.0853951
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.3937716   -0.5408873   -0.2466560
Birth       SAS-CompFeed     INDIA                          Low birthweight              NA                -1.8372897   -1.9631357   -1.7114438
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2961146   -0.3209960   -0.2712333
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -2.4792764   -2.5412880   -2.4172648
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4287544   -0.5908227   -0.2666860
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.8230237   -1.2574123   -0.3886351
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2377439    0.1554718    0.3200161
6 months    COHORTS          GUATEMALA                      Low birthweight              NA                -0.1797611   -0.4289584    0.0694361
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.5716002   -0.6026124   -0.5405880
6 months    COHORTS          INDIA                          Low birthweight              NA                -1.1875495   -1.2562167   -1.1188822
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.2614297   -0.3051568   -0.2177026
6 months    COHORTS          PHILIPPINES                    Low birthweight              NA                -0.5923953   -0.7366029   -0.4481876
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.7571614   -0.8949230   -0.6193997
6 months    EE               PAKISTAN                       Low birthweight              NA                -0.8052612   -1.0096693   -0.6008532
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.4719713   -0.5717527   -0.3721900
6 months    GMS-Nepal        NEPAL                          Low birthweight              NA                -0.8814629   -1.0424553   -0.7204704
6 months    IRC              INDIA                          Normal or high birthweight   NA                -0.5405961   -0.6845642   -0.3966280
6 months    IRC              INDIA                          Low birthweight              NA                -0.6616632   -1.0534029   -0.2699236
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.4618297   -0.4885127   -0.4351468
6 months    JiVitA-3         BANGLADESH                     Low birthweight              NA                -0.8215839   -0.8529680   -0.7901997
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.2971124   -0.3479876   -0.2462371
6 months    JiVitA-4         BANGLADESH                     Low birthweight              NA                -0.6138633   -0.6871965   -0.5405301
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1620532   -0.2294916   -0.0946148
6 months    Keneba           GAMBIA                         Low birthweight              NA                -0.4555906   -0.6233257   -0.2878554
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0621818   -0.2163442    0.0919806
6 months    MAL-ED           BANGLADESH                     Low birthweight              NA                -0.3389158   -0.5779506   -0.0998810
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.9967264    0.8287889    1.1646639
6 months    MAL-ED           BRAZIL                         Low birthweight              NA                 0.4593741   -0.2530141    1.1717622
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -0.6513782   -0.7911093   -0.5116470
6 months    MAL-ED           INDIA                          Low birthweight              NA                -0.8959827   -1.2481724   -0.5437930
6 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.1745293    0.0376135    0.3114451
6 months    MAL-ED           NEPAL                          Low birthweight              NA                 0.1676887   -0.3056623    0.6410396
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                 1.0860259    0.9611728    1.2108789
6 months    MAL-ED           PERU                           Low birthweight              NA                 0.6736942   -0.1195552    1.4669436
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.5386894    0.3827127    0.6946660
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 0.4036197   -0.5158363    1.3230757
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.5889736    0.4286505    0.7492968
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0948148   -0.5053473    0.6949769
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3683846   -0.4744234   -0.2623457
6 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.6840131   -0.8569335   -0.5110927
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.1175098    0.0301753    0.2048443
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              NA                -0.2585328   -0.4348874   -0.0821783
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0819851   -0.1739115    0.0099413
6 months    PROVIDE          BANGLADESH                     Low birthweight              NA                -0.5664059   -0.7387307   -0.3940812
6 months    ResPak           PAKISTAN                       Normal or high birthweight   NA                 0.2481034   -0.2104801    0.7066870
6 months    ResPak           PAKISTAN                       Low birthweight              NA                 0.0410000   -0.8343639    0.9163639
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.5641636   -0.7218236   -0.4065037
6 months    SAS-CompFeed     INDIA                          Low birthweight              NA                -0.9860295   -1.1205413   -0.8515176
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1015116    0.0477142    0.1553089
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.4511661   -0.7211605   -0.1811717
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.3404030    0.3130947    0.3677114
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.0894663    0.0153206    0.1636121
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4513048   -0.5586538   -0.3439558
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -1.2352965   -1.4827249   -0.9878681
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1563761   -0.2247981   -0.0879541
24 months   COHORTS          GUATEMALA                      Low birthweight              NA                -0.9388331   -1.1879035   -0.6897627
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                -0.5043894   -0.5366184   -0.4721603
24 months   COHORTS          INDIA                          Low birthweight              NA                -1.0126226   -1.0774202   -0.9478250
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.5647326   -0.6030736   -0.5263916
24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                -1.0549469   -1.1787276   -0.9311663
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.9372787   -1.1309957   -0.7435617
24 months   EE               PAKISTAN                       Low birthweight              NA                -1.2047455   -1.4295064   -0.9799845
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.0378736   -1.1427242   -0.9330231
24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                -1.3410337   -1.5017024   -1.1803650
24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.6348460   -0.7329509   -0.5367411
24 months   IRC              INDIA                          Low birthweight              NA                -1.2585057   -1.4802269   -1.0367845
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -1.1267065   -1.1596087   -1.0938043
24 months   JiVitA-3         BANGLADESH                     Low birthweight              NA                -1.5553073   -1.5923684   -1.5182463
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -1.1442723   -1.1836963   -1.1048484
24 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                -1.5148655   -1.5844921   -1.4452390
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.7371199   -0.8018669   -0.6723729
24 months   Keneba           GAMBIA                         Low birthweight              NA                -1.1535126   -1.3201730   -0.9868521
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.7267591   -0.8652740   -0.5882442
24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                -1.1695952   -1.3980764   -0.9411140
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.4619462    0.2504494    0.6734429
24 months   MAL-ED           BRAZIL                         Low birthweight              NA                 0.4762500   -0.4169100    1.3694100
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.8808316   -1.0007987   -0.7608644
24 months   MAL-ED           INDIA                          Low birthweight              NA                -1.2490697   -1.6481324   -0.8500070
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.3222182   -0.4371155   -0.2073209
24 months   MAL-ED           NEPAL                          Low birthweight              NA                -0.7055069   -1.1896671   -0.2213468
24 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.1696384    0.0489626    0.2903141
24 months   MAL-ED           PERU                           Low birthweight              NA                -0.7866157   -1.3738982   -0.1993332
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.4255184    0.3004494    0.5505875
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 0.5357120    0.0920937    0.9793302
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1234416   -0.0309825    0.2778657
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.1100000   -0.6765896    0.4565896
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.7761029   -0.8888121   -0.6633937
24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                -1.1125862   -1.3123536   -0.9128187
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.4812175   -0.5900754   -0.3723595
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                -0.9865616   -1.1570952   -0.8160279
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.7557872   -0.8493688   -0.6622057
24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                -1.3372122   -1.4958610   -1.1785634
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -1.1734409   -1.2852044   -1.0616774
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.1966804   -1.4196682   -0.9736925


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       CMIN             BANGLADESH                     NA                   NA                -0.6078947   -1.4214563    0.2056668
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611470
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
Birth       ResPak           PAKISTAN                       NA                   NA                -0.3663158   -0.7677415    0.0351099
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
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.9282808   -2.7767929   -1.0797687
Birth       CMIN             BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       CMIN             BANGLADESH                     Low birthweight              Normal or high birthweight    -1.8567949   -3.1338733   -0.5797164
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.5056129   -1.8666925   -1.1445332
Birth       COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -1.4207046   -1.4901013   -1.3513079
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.7879073   -1.9258861   -1.6499284
Birth       EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -1.0951969   -1.5532254   -0.6371685
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -1.2850658   -1.4451633   -1.1249684
Birth       IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Low birthweight              Normal or high birthweight    -1.8379203   -2.3409547   -1.3348858
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1289089   -1.1591335   -1.0986842
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1403244   -1.2298763   -1.0507725
Birth       Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -1.1287495   -1.2825842   -0.9749148
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1366670   -1.4600929   -0.8132411
Birth       MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.6957895   -1.4480971    0.0565182
Birth       MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.1189510   -1.3635138   -0.8743883
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.2661739   -1.8992326   -0.6331153
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1895999   -1.3634327   -1.0157671
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -1.2111852   -1.4019877   -1.0203827
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9496687   -1.0918766   -0.8074609
Birth       ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -0.8701818   -1.9889502    0.2485866
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -1.4435181   -1.5809155   -1.3061207
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -2.1831618   -2.2499799   -2.1163437
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.3942693   -0.8586048    0.0700662
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.4175051   -0.6799369   -0.1550733
6 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.6159492   -0.6911932   -0.5407053
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.3309655   -0.4816991   -0.1802320
6 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0480999   -0.2947949    0.1985951
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.4094915   -0.5988020   -0.2201810
6 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.1210671   -0.5393087    0.2971744
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3597541   -0.4004220   -0.3190863
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3167509   -0.4042453   -0.2292566
6 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.2935374   -0.4742818   -0.1127930
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.2767340   -0.5662741    0.0128062
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.5373523   -1.2704521    0.1957474
6 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.2446045   -0.6236841    0.1344751
6 months    MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.0068406   -0.4996365    0.4859552
6 months    MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.4123316   -1.2173883    0.3927251
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.1350697   -1.0676011    0.7974617
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.4941588   -1.1153658    0.1270481
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3156285   -0.5182693   -0.1129878
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3760427   -0.5728577   -0.1792276
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4844208   -0.6796302   -0.2892114
6 months    ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -0.2071034   -1.1953144    0.7811075
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.4218658   -0.6125127   -0.2312189
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.5526777   -0.8274801   -0.2778752
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.2509367   -0.3299057   -0.1719677
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.7839917   -1.0540358   -0.5139476
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.7824570   -1.0408341   -0.5240799
24 months   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.5082333   -0.5800629   -0.4364036
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.4902143   -0.6196872   -0.3607413
24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.2674668   -0.5637625    0.0288289
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.3031601   -0.4954939   -0.1108263
24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.6236597   -0.8672002   -0.3801192
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4286008   -0.4774835   -0.3797182
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3705932   -0.4515527   -0.2896338
24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.4163926   -0.5949376   -0.2378477
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4428361   -0.7110471   -0.1746251
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0143038   -0.9035554    0.9321631
24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.3682381   -0.7832098    0.0467335
24 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.3832887   -0.8813523    0.1147749
24 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.9562541   -1.5553234   -0.3571848
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.1101935   -0.3523427    0.5727297
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.2334416   -0.8206984    0.3538153
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3364833   -0.5666058   -0.1063607
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5053441   -0.7062567   -0.3044315
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5814250   -0.7660679   -0.3967821
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0232394   -0.2727104    0.2262315


### Parameter: PAR


agecat      studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.2078234   -0.3586918   -0.0569550
Birth       CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.5863563   -1.1534716   -0.0192409
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1067124   -0.1437291   -0.0696956
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                -0.2321222   -0.2495108   -0.2147335
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1277684   -0.1473270   -0.1082099
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                -0.2158485   -0.3329683   -0.0987287
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.3577914   -0.4230102   -0.2925725
Birth       IRC              INDIA                          Normal or high birthweight   NA                -0.2556774   -0.3474415   -0.1639133
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.3419234   -0.3540946   -0.3297522
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.3038998   -0.3381290   -0.2696707
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1498631   -0.1785513   -0.1211748
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.1791508   -0.2545989   -0.1037028
Birth       MAL-ED           INDIA                          Normal or high birthweight   NA                -0.1082339   -0.2469678    0.0304999
Birth       MAL-ED           PERU                           Normal or high birthweight   NA                -0.0519807   -0.0922770   -0.0116845
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0527572   -0.1053148   -0.0001997
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3494099   -0.4166309   -0.2821888
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.2609525   -0.3162734   -0.2056316
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.2357000   -0.2863566   -0.1850434
Birth       ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.1144976   -0.2895774    0.0605821
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.2762737   -0.3462221   -0.2063253
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2193750   -0.2325673   -0.2061828
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0649540   -0.1236241   -0.0062838
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0367749   -0.0615203   -0.0120296
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.1218211   -0.1379502   -0.1056919
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0309577   -0.0452284   -0.0166869
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.0166443   -0.1035144    0.0702257
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1307137   -0.1914415   -0.0699859
6 months    IRC              INDIA                          Normal or high birthweight   NA                -0.0459172   -0.1181793    0.0263450
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.1459817   -0.1625257   -0.1294376
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0814810   -0.1049469   -0.0580150
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0360100   -0.0612210   -0.0107991
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0642467   -0.1281424   -0.0003511
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0246490   -0.0631973    0.0138992
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0436402   -0.1012482    0.0139678
6 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0277098   -0.0695845    0.0141649
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                -0.0290938   -0.0669958    0.0088082
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0060273   -0.0378831    0.0499377
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0239109   -0.0576301    0.0098083
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0952914   -0.1595475   -0.0310354
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0877476   -0.1341469   -0.0413482
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.1171055   -0.1665866   -0.0676245
6 months    ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.0304564   -0.1779205    0.1170078
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.1029625   -0.1534267   -0.0524983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0180120   -0.0275833   -0.0084407
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0315242   -0.0416328   -0.0214157
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0991760   -0.1412512   -0.0571007
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0717669   -0.1011935   -0.0423404
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                -0.0901325   -0.1046710   -0.0755940
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0429520   -0.0557198   -0.0301842
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0747451   -0.1946608    0.0451706
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0958164   -0.1537601   -0.0378726
24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.1036776   -0.1502310   -0.0571242
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.1793317   -0.2005106   -0.1581527
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.1001160   -0.1219088   -0.0783231
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0588075   -0.0853950   -0.0322201
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0812647   -0.1443278   -0.0182017
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0006771   -0.0427743    0.0441285
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0545584   -0.1163829    0.0072662
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0354514   -0.0781961    0.0072932
24 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0558402   -0.1072493   -0.0044311
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0200789   -0.0494435    0.0092857
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0115280   -0.0415623    0.0185063
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1308422   -0.2077342   -0.0539503
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.1291327   -0.1824083   -0.0758572
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.1370798   -0.1854238   -0.0887358
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0093897   -0.0628236    0.0440442
