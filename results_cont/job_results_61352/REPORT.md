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
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight        81      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                   11      92  haz              
Birth       CMIN             BANGLADESH                     Normal or high birthweight        14      26  haz              
Birth       CMIN             BANGLADESH                     Low birthweight                   12      26  haz              
Birth       COHORTS          GUATEMALA                      Normal or high birthweight       717     784  haz              
Birth       COHORTS          GUATEMALA                      Low birthweight                   67     784  haz              
Birth       COHORTS          INDIA                          Normal or high birthweight      5268    6638  haz              
Birth       COHORTS          INDIA                          Low birthweight                 1370    6638  haz              
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight      2709    3004  haz              
Birth       COHORTS          PHILIPPINES                    Low birthweight                  295    3004  haz              
Birth       CONTENT          PERU                           Normal or high birthweight         2       2  haz              
Birth       CONTENT          PERU                           Low birthweight                    0       2  haz              
Birth       EE               PAKISTAN                       Normal or high birthweight       160     240  haz              
Birth       EE               PAKISTAN                       Low birthweight                   80     240  haz              
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight       476     696  haz              
Birth       GMS-Nepal        NEPAL                          Low birthweight                  220     696  haz              
Birth       IRC              INDIA                          Normal or high birthweight       317     383  haz              
Birth       IRC              INDIA                          Low birthweight                   66     383  haz              
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight     12858   22454  haz              
Birth       JiVitA-3         BANGLADESH                     Low birthweight                 9596   22454  haz              
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight      1799    2823  haz              
Birth       JiVitA-4         BANGLADESH                     Low birthweight                 1024    2823  haz              
Birth       Keneba           GAMBIA                         Normal or high birthweight      1308    1529  haz              
Birth       Keneba           GAMBIA                         Low birthweight                  221    1529  haz              
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight       177     231  haz              
Birth       MAL-ED           BANGLADESH                     Low birthweight                   54     231  haz              
Birth       MAL-ED           BRAZIL                         Normal or high birthweight        61      65  haz              
Birth       MAL-ED           BRAZIL                         Low birthweight                    4      65  haz              
Birth       MAL-ED           INDIA                          Normal or high birthweight        39      47  haz              
Birth       MAL-ED           INDIA                          Low birthweight                    8      47  haz              
Birth       MAL-ED           NEPAL                          Normal or high birthweight        24      27  haz              
Birth       MAL-ED           NEPAL                          Low birthweight                    3      27  haz              
Birth       MAL-ED           PERU                           Normal or high birthweight       221     233  haz              
Birth       MAL-ED           PERU                           Low birthweight                   12     233  haz              
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight       115     123  haz              
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                    8     123  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       118     125  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    7     125  haz              
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight       423     608  haz              
Birth       NIH-Birth        BANGLADESH                     Low birthweight                  185     608  haz              
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight       560     732  haz              
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                  172     732  haz              
Birth       PROBIT           BELARUS                        Normal or high birthweight     13893   13893  haz              
Birth       PROBIT           BELARUS                        Low birthweight                    0   13893  haz              
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight       402     539  haz              
Birth       PROVIDE          BANGLADESH                     Low birthweight                  137     539  haz              
Birth       ResPak           PAKISTAN                       Normal or high birthweight        35      42  haz              
Birth       ResPak           PAKISTAN                       Low birthweight                    7      42  haz              
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight       914    1252  haz              
Birth       SAS-CompFeed     INDIA                          Low birthweight                  338    1252  haz              
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11929   13830  haz              
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                 1901   13830  haz              
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight       319     361  haz              
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                   42     361  haz              
6 months    CMIN             BANGLADESH                     Normal or high birthweight         9      12  haz              
6 months    CMIN             BANGLADESH                     Low birthweight                    3      12  haz              
6 months    COHORTS          GUATEMALA                      Normal or high birthweight       703     771  haz              
6 months    COHORTS          GUATEMALA                      Low birthweight                   68     771  haz              
6 months    COHORTS          INDIA                          Normal or high birthweight      5005    6261  haz              
6 months    COHORTS          INDIA                          Low birthweight                 1256    6261  haz              
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight      2418    2666  haz              
6 months    COHORTS          PHILIPPINES                    Low birthweight                  248    2666  haz              
6 months    CONTENT          PERU                           Normal or high birthweight         2       2  haz              
6 months    CONTENT          PERU                           Low birthweight                    0       2  haz              
6 months    EE               PAKISTAN                       Normal or high birthweight       242     372  haz              
6 months    EE               PAKISTAN                       Low birthweight                  130     372  haz              
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight       397     563  haz              
6 months    GMS-Nepal        NEPAL                          Low birthweight                  166     563  haz              
6 months    IRC              INDIA                          Normal or high birthweight       335     401  haz              
6 months    IRC              INDIA                          Low birthweight                   66     401  haz              
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight      8359   14130  haz              
6 months    JiVitA-3         BANGLADESH                     Low birthweight                 5771   14130  haz              
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight      3004    4041  haz              
6 months    JiVitA-4         BANGLADESH                     Low birthweight                 1037    4041  haz              
6 months    Keneba           GAMBIA                         Normal or high birthweight      1146    1334  haz              
6 months    Keneba           GAMBIA                         Low birthweight                  188    1334  haz              
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight       188     238  haz              
6 months    MAL-ED           BANGLADESH                     Low birthweight                   50     238  haz              
6 months    MAL-ED           BRAZIL                         Normal or high birthweight       199     209  haz              
6 months    MAL-ED           BRAZIL                         Low birthweight                   10     209  haz              
6 months    MAL-ED           INDIA                          Normal or high birthweight       193     227  haz              
6 months    MAL-ED           INDIA                          Low birthweight                   34     227  haz              
6 months    MAL-ED           NEPAL                          Normal or high birthweight       210     229  haz              
6 months    MAL-ED           NEPAL                          Low birthweight                   19     229  haz              
6 months    MAL-ED           PERU                           Normal or high birthweight       254     270  haz              
6 months    MAL-ED           PERU                           Low birthweight                   16     270  haz              
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight       238     253  haz              
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                   15     253  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       177     186  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    9     186  haz              
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight       367     518  haz              
6 months    NIH-Birth        BANGLADESH                     Low birthweight                  151     518  haz              
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight       545     715  haz              
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                  170     715  haz              
6 months    PROBIT           BELARUS                        Normal or high birthweight     15760   15760  haz              
6 months    PROBIT           BELARUS                        Low birthweight                    0   15760  haz              
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight       461     604  haz              
6 months    PROVIDE          BANGLADESH                     Low birthweight                  143     604  haz              
6 months    ResPak           PAKISTAN                       Normal or high birthweight        29      34  haz              
6 months    ResPak           PAKISTAN                       Low birthweight                    5      34  haz              
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight      1003    1326  haz              
6 months    SAS-CompFeed     INDIA                          Low birthweight                  323    1326  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1944    2011  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   67    2011  haz              
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7566    8636  haz              
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                 1070    8636  haz              
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight       320     363  haz              
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                   43     363  haz              
24 months   CMIN             BANGLADESH                     Normal or high birthweight         8      11  haz              
24 months   CMIN             BANGLADESH                     Low birthweight                    3      11  haz              
24 months   COHORTS          GUATEMALA                      Normal or high birthweight       589     650  haz              
24 months   COHORTS          GUATEMALA                      Low birthweight                   61     650  haz              
24 months   COHORTS          INDIA                          Normal or high birthweight      3949    4858  haz              
24 months   COHORTS          INDIA                          Low birthweight                  909    4858  haz              
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight      2194    2406  haz              
24 months   COHORTS          PHILIPPINES                    Low birthweight                  212    2406  haz              
24 months   CONTENT          PERU                           Normal or high birthweight         2       2  haz              
24 months   CONTENT          PERU                           Low birthweight                    0       2  haz              
24 months   EE               PAKISTAN                       Normal or high birthweight       100     167  haz              
24 months   EE               PAKISTAN                       Low birthweight                   67     167  haz              
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight       355     487  haz              
24 months   GMS-Nepal        NEPAL                          Low birthweight                  132     487  haz              
24 months   IRC              INDIA                          Normal or high birthweight       335     403  haz              
24 months   IRC              INDIA                          Low birthweight                   68     403  haz              
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight      4241    7307  haz              
24 months   JiVitA-3         BANGLADESH                     Low birthweight                 3066    7307  haz              
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight      2955    4010  haz              
24 months   JiVitA-4         BANGLADESH                     Low birthweight                 1055    4010  haz              
24 months   Keneba           GAMBIA                         Normal or high birthweight       905    1056  haz              
24 months   Keneba           GAMBIA                         Low birthweight                  151    1056  haz              
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight       165     210  haz              
24 months   MAL-ED           BANGLADESH                     Low birthweight                   45     210  haz              
24 months   MAL-ED           BRAZIL                         Normal or high birthweight       161     169  haz              
24 months   MAL-ED           BRAZIL                         Low birthweight                    8     169  haz              
24 months   MAL-ED           INDIA                          Normal or high birthweight       185     218  haz              
24 months   MAL-ED           INDIA                          Low birthweight                   33     218  haz              
24 months   MAL-ED           NEPAL                          Normal or high birthweight       203     221  haz              
24 months   MAL-ED           NEPAL                          Low birthweight                   18     221  haz              
24 months   MAL-ED           PERU                           Normal or high birthweight       187     199  haz              
24 months   MAL-ED           PERU                           Low birthweight                   12     199  haz              
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight       224     237  haz              
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                   13     237  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       154     162  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     162  haz              
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight       287     414  haz              
24 months   NIH-Birth        BANGLADESH                     Low birthweight                  127     414  haz              
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight       388     514  haz              
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                  126     514  haz              
24 months   PROBIT           BELARUS                        Normal or high birthweight      4035    4035  haz              
24 months   PROBIT           BELARUS                        Low birthweight                    0    4035  haz              
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight       439     578  haz              
24 months   PROVIDE          BANGLADESH                     Low birthweight                  139     578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       6  haz              
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1442    1635  haz              
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                  193    1635  haz              


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
![](/tmp/584b34da-e246-40c4-b4dd-7d5813e3c9e8/3334fc01-22a3-4774-a7d5-a33a809b779c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/584b34da-e246-40c4-b4dd-7d5813e3c9e8/3334fc01-22a3-4774-a7d5-a33a809b779c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/584b34da-e246-40c4-b4dd-7d5813e3c9e8/3334fc01-22a3-4774-a7d5-a33a809b779c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.8146702   -1.0384721   -0.5908682
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.0777700   -2.4347127   -1.7208274
Birth       CMIN             BANGLADESH                     Normal or high birthweight   NA                -1.0787109   -1.9425221   -0.2148996
Birth       CMIN             BANGLADESH                     Low birthweight              NA                -2.6272236   -3.6117592   -1.6426881
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2798852    0.1976512    0.3621192
Birth       COHORTS          GUATEMALA                      Low birthweight              NA                -1.4139689   -1.7125788   -1.1153589
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                -0.3611898   -0.3880192   -0.3343604
Birth       COHORTS          INDIA                          Low birthweight              NA                -1.8628421   -1.9180021   -1.8076821
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0784699   -0.1142646   -0.0426752
Birth       COHORTS          PHILIPPINES                    Low birthweight              NA                -1.7656597   -1.9040676   -1.6272518
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                -1.4393750   -1.6401971   -1.2385530
Birth       EE               PAKISTAN                       Low birthweight              NA                -2.7183865   -3.0515806   -2.3851924
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.6756671   -0.7542007   -0.5971336
Birth       GMS-Nepal        NEPAL                          Low birthweight              NA                -1.9685034   -2.0934584   -1.8435483
Birth       IRC              INDIA                          Normal or high birthweight   NA                -0.1813138   -0.3491141   -0.0135135
Birth       IRC              INDIA                          Low birthweight              NA                -1.0810817   -1.5400934   -0.6220699
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.9617897   -0.9791713   -0.9444080
Birth       JiVitA-3         BANGLADESH                     Low birthweight              NA                -2.4310404   -2.4535389   -2.4085420
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -1.0189015   -1.0671750   -0.9706280
Birth       JiVitA-4         BANGLADESH                     Low birthweight              NA                -2.4067300   -2.4681873   -2.3452726
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                 0.2207298    0.1563943    0.2850654
Birth       Keneba           GAMBIA                         Low birthweight              NA                -1.0878135   -1.2394510   -0.9361760
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.7868680   -0.9126192   -0.6611167
Birth       MAL-ED           BANGLADESH                     Low birthweight              NA                -2.2168488   -2.4532425   -1.9804550
Birth       MAL-ED           INDIA                          Normal or high birthweight   NA                -1.0030769   -1.2939170   -0.7122369
Birth       MAL-ED           INDIA                          Low birthweight              NA                -2.1812500   -2.8210203   -1.5414797
Birth       MAL-ED           PERU                           Normal or high birthweight   NA                -0.7932131   -0.9043047   -0.6821215
Birth       MAL-ED           PERU                           Low birthweight              NA                -2.6245411   -3.0486470   -2.2004351
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.5171304   -0.6817030   -0.3525578
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -2.2787500   -3.6302840   -0.9272160
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -1.0263559   -1.2219417   -0.8307701
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -3.3342857   -3.9682864   -2.7002851
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.5081427   -0.5965448   -0.4197407
Birth       NIH-Birth        BANGLADESH                     Low birthweight              NA                -1.9184644   -2.0444620   -1.7924669
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.6607213   -0.7350011   -0.5864416
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              NA                -1.7159380   -1.8436448   -1.5882313
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.5833921   -0.6589269   -0.5078573
Birth       PROVIDE          BANGLADESH                     Low birthweight              NA                -1.7679660   -1.8626074   -1.6733245
Birth       ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.6417143   -1.0717036   -0.2117250
Birth       ResPak           PAKISTAN                       Low birthweight              NA                -2.6714286   -2.9208890   -2.4219682
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -1.0312216   -1.1000588   -0.9623844
Birth       SAS-CompFeed     INDIA                          Low birthweight              NA                -2.5064290   -2.6956761   -2.3171818
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.3139163   -0.3337864   -0.2940461
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.6701323   -1.7293982   -1.6108664
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -1.2935127   -1.4447995   -1.1422260
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.3325117   -2.6877114   -1.9773120
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                -1.6927361   -1.7656683   -1.6198038
6 months    COHORTS          GUATEMALA                      Low birthweight              NA                -2.7377424   -3.0263296   -2.4491552
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.7985502   -0.8286591   -0.7684413
6 months    COHORTS          INDIA                          Low birthweight              NA                -1.7865152   -1.8519890   -1.7210415
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -1.0436971   -1.0864683   -1.0009258
6 months    COHORTS          PHILIPPINES                    Low birthweight              NA                -2.0461064   -2.1886825   -1.9035303
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -1.7404534   -1.8739010   -1.6070059
6 months    EE               PAKISTAN                       Low birthweight              NA                -2.7082097   -2.9016985   -2.5147209
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.1242848   -1.2099542   -1.0386154
6 months    GMS-Nepal        NEPAL                          Low birthweight              NA                -1.8950840   -2.0333000   -1.7568680
6 months    IRC              INDIA                          Normal or high birthweight   NA                -1.0709982   -1.2078940   -0.9341025
6 months    IRC              INDIA                          Low birthweight              NA                -2.0007305   -2.3579265   -1.6435346
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.9623537   -0.9889019   -0.9358055
6 months    JiVitA-3         BANGLADESH                     Low birthweight              NA                -1.8674703   -1.8988035   -1.8361371
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -1.1400918   -1.1851314   -1.0950522
6 months    JiVitA-4         BANGLADESH                     Low birthweight              NA                -1.9717838   -2.0489013   -1.8946664
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.7791864   -0.8379214   -0.7204514
6 months    Keneba           GAMBIA                         Low birthweight              NA                -1.6370371   -1.7913407   -1.4827336
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -1.0484822   -1.1754539   -0.9215106
6 months    MAL-ED           BANGLADESH                     Low birthweight              NA                -1.8132561   -2.0647801   -1.5617322
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0807063   -0.0655573    0.2269698
6 months    MAL-ED           BRAZIL                         Low birthweight              NA                -0.6053978   -1.2980790    0.0872834
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -1.1087930   -1.2357920   -0.9817939
6 months    MAL-ED           INDIA                          Low birthweight              NA                -1.5107992   -1.7876550   -1.2339433
6 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.4833580   -0.5971879   -0.3695281
6 months    MAL-ED           NEPAL                          Low birthweight              NA                -1.3378269   -1.7614396   -0.9142142
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                -1.2316852   -1.3359318   -1.1274385
6 months    MAL-ED           PERU                           Low birthweight              NA                -2.8471951   -3.1850537   -2.5093365
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -1.0041441   -1.1317852   -0.8765029
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -2.4561976   -3.0118537   -1.9005414
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -1.2511205   -1.3908548   -1.1113862
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -2.4651852   -2.9676305   -1.9627399
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.1513425   -1.2497562   -1.0529287
6 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.0579133   -2.2185214   -1.8973052
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -1.0023935   -1.0792517   -0.9255352
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              NA                -1.8399214   -1.9796889   -1.7001538
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.8992267   -0.9797708   -0.8186826
6 months    PROVIDE          BANGLADESH                     Low birthweight              NA                -1.7098792   -1.8466009   -1.5731575
6 months    ResPak           PAKISTAN                       Normal or high birthweight   NA                -1.4433908   -2.0510560   -0.8357256
6 months    ResPak           PAKISTAN                       Low birthweight              NA                -3.2410000   -4.1049865   -2.3770135
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -1.1616137   -1.2618404   -1.0613870
6 months    SAS-CompFeed     INDIA                          Low birthweight              NA                -2.1525449   -2.2470364   -2.0580535
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.5106397   -0.5601465   -0.4611329
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -1.4069211   -1.6962406   -1.1176016
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.7366780   -0.7628051   -0.7105508
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.7835384   -1.8540222   -1.7130545
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -2.4886588   -2.5959967   -2.3813208
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.9774711   -3.2346306   -2.7203116
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -2.8962388   -2.9810215   -2.8114561
24 months   COHORTS          GUATEMALA                      Low birthweight              NA                -3.5635119   -3.8127287   -3.3142951
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                -1.9737649   -2.0106118   -1.9369180
24 months   COHORTS          INDIA                          Low birthweight              NA                -2.7237552   -2.7976469   -2.6498635
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -2.3458017   -2.3923858   -2.2992176
24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                -3.0819280   -3.2381737   -2.9256823
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -2.4478400   -2.6106156   -2.2850645
24 months   EE               PAKISTAN                       Low birthweight              NA                -2.9917935   -3.2343578   -2.7492292
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.7615708   -1.8565305   -1.6666111
24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                -2.2287348   -2.4063308   -2.0511387
24 months   IRC              INDIA                          Normal or high birthweight   NA                -1.6733216   -1.7728285   -1.5738146
24 months   IRC              INDIA                          Low birthweight              NA                -2.3075012   -2.5295315   -2.0854709
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -1.7776948   -1.8131944   -1.7421953
24 months   JiVitA-3         BANGLADESH                     Low birthweight              NA                -2.3982947   -2.4370457   -2.3595438
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -1.6460006   -1.6891345   -1.6028666
24 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                -2.1251300   -2.1939481   -2.0563119
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -1.4673794   -1.5327296   -1.4020292
24 months   Keneba           GAMBIA                         Low birthweight              NA                -2.0377431   -2.2177213   -1.8577649
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -1.8419741   -1.9746554   -1.7092927
24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                -2.4828872   -2.7787527   -2.1870216
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0113872   -0.1631537    0.1859280
24 months   MAL-ED           BRAZIL                         Low birthweight              NA                -0.1000000   -0.6968023    0.4968023
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -1.8426430   -1.9777940   -1.7074919
24 months   MAL-ED           INDIA                          Low birthweight              NA                -1.9642630   -2.2865728   -1.6419532
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -1.2516196   -1.3754350   -1.1278042
24 months   MAL-ED           NEPAL                          Low birthweight              NA                -1.5833292   -2.0479082   -1.1187501
24 months   MAL-ED           PERU                           Normal or high birthweight   NA                -1.6699684   -1.7847370   -1.5551998
24 months   MAL-ED           PERU                           Low birthweight              NA                -2.9582295   -3.5418775   -2.3745815
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -1.6234249   -1.7610687   -1.4857812
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -2.0002409   -2.7615277   -1.2389540
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -2.5160714   -2.6720371   -2.3601058
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -3.2281250   -3.6659520   -2.7902980
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.9959738   -2.1160661   -1.8758814
24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.7597474   -2.9369096   -2.5825852
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -1.2654550   -1.3544890   -1.1764211
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                -1.9543579   -2.1370590   -1.7716568
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -1.4625239   -1.5550214   -1.3700263
24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                -2.0652342   -2.2276345   -1.9028340
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -1.5238691   -1.5833065   -1.4644316
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -2.1753343   -2.3433243   -2.0073443


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       CMIN             BANGLADESH                     NA                   NA                -1.8811538   -2.5124807   -1.2498270
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1221939    0.0348987    0.2094890
Birth       COHORTS          INDIA                          NA                   NA                -0.6698147   -0.6979800   -0.6416494
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2435386   -0.2827491   -0.2043282
Birth       EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          NA                   NA                -0.3096345   -0.4709405   -0.1483285
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5893720   -1.6085904   -1.5701537
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
Birth       Keneba           GAMBIA                         NA                   NA                 0.0272662   -0.0366578    0.0911901
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED           INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED           PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ResPak           PAKISTAN                       NA                   NA                -0.9800000   -1.4086438   -0.5513562
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5009660   -0.5215391   -0.4803930
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4167959   -1.5608725   -1.2727194
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.7858495   -1.8598889   -1.7118102
6 months    COHORTS          INDIA                          NA                   NA                -0.9939850   -1.0230017   -0.9649683
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1372543   -1.1796249   -1.0948837
6 months    EE               PAKISTAN                       NA                   NA                -2.0800314   -2.1993502   -1.9607126
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3510539   -1.4294158   -1.2726919
6 months    IRC              INDIA                          NA                   NA                -1.2148213   -1.3469493   -1.0826933
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3327473   -1.3568007   -1.3086940
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.3509354   -1.3927945   -1.3090764
6 months    Keneba           GAMBIA                         NA                   NA                -0.9022065   -0.9593933   -0.8450196
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2094328   -1.3276892   -1.0911764
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          NA                   NA                -1.1727166   -1.2902312   -1.0552020
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5397525   -0.6522623   -0.4272428
6 months    MAL-ED           PERU                           NA                   NA                -1.3083549   -1.4159952   -1.2007147
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0619697   -1.1900452   -0.9338942
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3098656   -1.4501587   -1.1695725
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4092745   -1.5003907   -1.3181582
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ResPak           PAKISTAN                       NA                   NA                -1.7077451   -2.2839081   -1.1315821
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4032504   -1.4822018   -1.3242989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5394360   -0.5886359   -0.4902361
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8663392   -0.8919231   -0.8407552
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5467080   -2.6470149   -2.4464010
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9641538   -3.0462906   -2.8820170
24 months   COHORTS          INDIA                          NA                   NA                -2.1129333   -2.1469655   -2.0789011
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4107897   -2.4561358   -2.3654436
24 months   EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8864887   -1.9720856   -1.8008918
24 months   IRC              INDIA                          NA                   NA                -1.7814309   -1.8749526   -1.6879093
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0396606   -2.0692906   -2.0100306
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7744364   -1.8128124   -1.7360604
24 months   Keneba           GAMBIA                         NA                   NA                -1.5547363   -1.6172161   -1.4922564
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9799762   -2.1065965   -1.8533558
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          NA                   NA                -1.8550459   -1.9795611   -1.7305306
24 months   MAL-ED           NEPAL                          NA                   NA                -1.2841403   -1.4044291   -1.1638514
24 months   MAL-ED           PERU                           NA                   NA                -1.7484757   -1.8697456   -1.6272058
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6471273   -1.7822999   -1.5119547
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5512346   -2.7029497   -2.3995194
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2268619   -2.3322626   -2.1214612
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6024251   -1.6594303   -1.5454198


### Parameter: ATE


agecat      studyid          country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.2630999   -1.6854584   -0.8407413
Birth       CMIN             BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       CMIN             BANGLADESH                     Low birthweight              Normal or high birthweight    -1.5485128   -2.8533641   -0.2436615
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.6938541   -2.0033905   -1.3843177
Birth       COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -1.5016523   -1.5630287   -1.4402759
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.6871898   -1.8302035   -1.5441761
Birth       EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -1.2790115   -1.6684404   -0.8895825
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -1.2928362   -1.4409078   -1.1447646
Birth       IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.8997679   -1.3899532   -0.4095826
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4692508   -1.4963116   -1.4421899
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.3878285   -1.4654549   -1.3102021
Birth       Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -1.3085433   -1.4732935   -1.1437932
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4299808   -1.6984948   -1.1614668
Birth       MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -1.1781731   -1.8809490   -0.4753972
Birth       MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.8313280   -2.2698411   -1.3928149
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.7616196   -3.1231364   -0.4001027
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -2.3079298   -2.9714135   -1.6444461
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4103217   -1.5643185   -1.2563249
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -1.0552167   -1.2031772   -0.9072562
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1845739   -1.3054735   -1.0636742
Birth       ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -2.0297143   -2.5268273   -1.5326013
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -1.4752074   -1.6452725   -1.3051422
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -1.3562160   -1.4186051   -1.2938269
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.0389990   -1.4250315   -0.6529664
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.0450063   -1.3427198   -0.7472929
6 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.9879650   -1.0600316   -0.9158984
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.0024093   -1.1512810   -0.8535376
6 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.9677562   -1.2031479   -0.7323646
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.7707992   -0.9334530   -0.6081453
6 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.9297323   -1.3105312   -0.5489334
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9051166   -0.9425812   -0.8676519
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8316920   -0.9203370   -0.7430470
6 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.8578507   -1.0230026   -0.6926989
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.7647739   -1.0474293   -0.4821185
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.6861041   -1.3975994    0.0253912
6 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.4020062   -0.7074588   -0.0965535
6 months    MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.8544689   -1.2945610   -0.4143768
6 months    MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.6155099   -1.9688688   -1.2621511
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.4520535   -2.0242493   -0.8798578
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -1.2140647   -1.7355787   -0.6925506
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9065709   -1.0947160   -0.7184257
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8375279   -0.9969902   -0.6780656
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8106525   -0.9694421   -0.6518628
6 months    ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -1.7976092   -2.8538902   -0.7413281
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.9909312   -1.1130949   -0.8687675
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.8962814   -1.1896957   -0.6028671
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -1.0468604   -1.1218645   -0.9718563
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.4888123   -0.7677005   -0.2099242
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.6672731   -0.9300115   -0.4045348
24 months   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.7499903   -0.8324930   -0.6674876
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.7361263   -0.8991727   -0.5730798
24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.5439535   -0.8362022   -0.2517048
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.4671640   -0.6681366   -0.2661914
24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.6341796   -0.8773810   -0.3909782
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6205999   -0.6683845   -0.5728154
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4791294   -0.5576339   -0.4006249
24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.5703637   -0.7599395   -0.3807879
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6409131   -0.9672631   -0.3145631
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.1113872   -0.7331890    0.5104147
24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.1216200   -0.4713718    0.2281318
24 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.3317095   -0.8128688    0.1494497
24 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.2882611   -1.8824249   -0.6940972
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.3768159   -1.1507745    0.3971427
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.7120536   -1.1768306   -0.2472765
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.7637736   -0.9781832   -0.5493640
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6889029   -0.8921591   -0.4856467
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6027104   -0.7895402   -0.4158805
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.6514652   -0.8293367   -0.4735937


### Parameter: PAR


agecat      studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1465255   -0.2408799   -0.0521711
Birth       CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.8024430   -1.5973496   -0.0075364
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1576913   -0.2028927   -0.1124899
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                -0.3086249   -0.3280592   -0.2891906
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1650687   -0.1875733   -0.1425642
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                -0.4215000   -0.5708968   -0.2721032
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.4094909   -0.4754694   -0.3435124
Birth       IRC              INDIA                          Normal or high birthweight   NA                -0.1283207   -0.2159143   -0.0407270
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.6275824   -0.6444081   -0.6107567
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.5043894   -0.5436970   -0.4650818
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1934636   -0.2275778   -0.1593495
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.3312273   -0.4296508   -0.2328037
Birth       MAL-ED           INDIA                          Normal or high birthweight   NA                -0.2005401   -0.3757023   -0.0253779
Birth       MAL-ED           PERU                           Normal or high birthweight   NA                -0.0895766   -0.1431504   -0.0360029
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.1145769   -0.2319816    0.0028279
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1292441   -0.2297616   -0.0287265
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.4228770   -0.4924953   -0.3532587
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.2487732   -0.2977379   -0.1998085
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.3017100   -0.3557124   -0.2477075
Birth       ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.3382857   -0.5842023   -0.0923692
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.4002001   -0.4545982   -0.3458021
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1870497   -0.1986798   -0.1754196
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1232832   -0.1800009   -0.0665655
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0931135   -0.1263833   -0.0598436
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.1954348   -0.2128021   -0.1780675
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0935573   -0.1112354   -0.0758792
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.3395779   -0.4342660   -0.2448898
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.2267690   -0.2828872   -0.1706508
6 months    IRC              INDIA                          Normal or high birthweight   NA                -0.1438231   -0.2124957   -0.0751505
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.3703936   -0.3874287   -0.3533585
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.2108436   -0.2357407   -0.1859465
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1230200   -0.1512358   -0.0948043
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.1609506   -0.2322881   -0.0896130
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0331305   -0.0712229    0.0049618
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0639236   -0.1144839   -0.0133633
6 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0563945   -0.0995878   -0.0132012
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                -0.0766698   -0.1215674   -0.0317721
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0578256   -0.1052633   -0.0103879
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0587451   -0.1039785   -0.0135116
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2579320   -0.3228052   -0.1930588
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.1962848   -0.2415110   -0.1510586
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.1924648   -0.2390891   -0.1458404
6 months    ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.2643543   -0.5313970    0.0026884
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.2416366   -0.2923461   -0.1909272
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0287963   -0.0403341   -0.0172585
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1296612   -0.1414534   -0.1178690
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0580492   -0.0933777   -0.0227207
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0679151   -0.0983483   -0.0374819
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                -0.1391684   -0.1567416   -0.1215951
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0649880   -0.0814197   -0.0485562
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.2221500   -0.3465777   -0.0977223
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1249179   -0.1809279   -0.0689080
24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.1081094   -0.1554079   -0.0608109
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.2619658   -0.2829101   -0.2410214
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.1284358   -0.1502322   -0.1066394
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0873569   -0.1152045   -0.0595093
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.1380021   -0.2206157   -0.0553885
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0052728   -0.0349237    0.0243782
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0124029   -0.0650323    0.0402264
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0325206   -0.0729554    0.0079141
24 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0785073   -0.1340320   -0.0229825
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0237023   -0.0609937    0.0135891
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0351631   -0.0682494   -0.0020769
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2308881   -0.3052032   -0.1565731
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.1758096   -0.2305990   -0.1210201
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.1398983   -0.1893995   -0.0903971
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0785560   -0.1018401   -0.0552719
