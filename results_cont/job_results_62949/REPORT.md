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
