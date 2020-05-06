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
Birth       CMIN             BANGLADESH                     Normal or high birthweight        13      26  haz              
Birth       CMIN             BANGLADESH                     Low birthweight                   13      26  haz              
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
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight       465     696  haz              
Birth       GMS-Nepal        NEPAL                          Low birthweight                  231     696  haz              
Birth       IRC              INDIA                          Normal or high birthweight       317     383  haz              
Birth       IRC              INDIA                          Low birthweight                   66     383  haz              
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight     12826   22454  haz              
Birth       JiVitA-3         BANGLADESH                     Low birthweight                 9628   22454  haz              
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
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight       412     608  haz              
Birth       NIH-Birth        BANGLADESH                     Low birthweight                  196     608  haz              
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight       560     732  haz              
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                  172     732  haz              
Birth       PROBIT           BELARUS                        Normal or high birthweight     13893   13893  haz              
Birth       PROBIT           BELARUS                        Low birthweight                    0   13893  haz              
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight       402     539  haz              
Birth       PROVIDE          BANGLADESH                     Low birthweight                  137     539  haz              
Birth       ResPak           PAKISTAN                       Normal or high birthweight        34      42  haz              
Birth       ResPak           PAKISTAN                       Low birthweight                    8      42  haz              
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight       914    1252  haz              
Birth       SAS-CompFeed     INDIA                          Low birthweight                  338    1252  haz              
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11929   13830  haz              
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                 1901   13830  haz              
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight       319     361  haz              
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                   42     361  haz              
6 months    CMIN             BANGLADESH                     Normal or high birthweight         8      12  haz              
6 months    CMIN             BANGLADESH                     Low birthweight                    4      12  haz              
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
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight       386     563  haz              
6 months    GMS-Nepal        NEPAL                          Low birthweight                  177     563  haz              
6 months    IRC              INDIA                          Normal or high birthweight       335     401  haz              
6 months    IRC              INDIA                          Low birthweight                   66     401  haz              
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight      8336   14130  haz              
6 months    JiVitA-3         BANGLADESH                     Low birthweight                 5794   14130  haz              
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
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight       356     518  haz              
6 months    NIH-Birth        BANGLADESH                     Low birthweight                  162     518  haz              
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
24 months   CMIN             BANGLADESH                     Normal or high birthweight         7      11  haz              
24 months   CMIN             BANGLADESH                     Low birthweight                    4      11  haz              
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
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight       345     487  haz              
24 months   GMS-Nepal        NEPAL                          Low birthweight                  142     487  haz              
24 months   IRC              INDIA                          Normal or high birthweight       335     403  haz              
24 months   IRC              INDIA                          Low birthweight                   68     403  haz              
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight      4232    7307  haz              
24 months   JiVitA-3         BANGLADESH                     Low birthweight                 3075    7307  haz              
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
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight       278     414  haz              
24 months   NIH-Birth        BANGLADESH                     Low birthweight                  136     414  haz              
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
![](/tmp/ffb08993-fe56-459d-bb22-c23eccd532e8/70717dd8-a716-4099-879b-8f30d008a2b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ffb08993-fe56-459d-bb22-c23eccd532e8/70717dd8-a716-4099-879b-8f30d008a2b1/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ffb08993-fe56-459d-bb22-c23eccd532e8/70717dd8-a716-4099-879b-8f30d008a2b1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.8041289   -1.0271466   -0.5811112
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -1.8993704   -2.1857810   -1.6129597
Birth       CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.9165018   -1.7291575   -0.1038461
Birth       CMIN             BANGLADESH                     Low birthweight              NA                -2.7579897   -3.4934455   -2.0225339
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2770671    0.1947221    0.3594120
Birth       COHORTS          GUATEMALA                      Low birthweight              NA                -1.5334210   -1.8392145   -1.2276274
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                -0.3622927   -0.3891103   -0.3354751
Birth       COHORTS          INDIA                          Low birthweight              NA                -1.8628510   -1.9183578   -1.8073441
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0783360   -0.1141273   -0.0425446
Birth       COHORTS          PHILIPPINES                    Low birthweight              NA                -1.7552064   -1.8926318   -1.6177811
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                -1.4211020   -1.6228908   -1.2193131
Birth       EE               PAKISTAN                       Low birthweight              NA                -2.7313377   -3.0680944   -2.3945810
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.6568634   -0.7369288   -0.5767981
Birth       GMS-Nepal        NEPAL                          Low birthweight              NA                -1.9346979   -2.0580061   -1.8113898
Birth       IRC              INDIA                          Normal or high birthweight   NA                -0.1783286   -0.3461874   -0.0104697
Birth       IRC              INDIA                          Low birthweight              NA                -0.9524244   -1.4023989   -0.5024498
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.9606438   -0.9780126   -0.9432751
Birth       JiVitA-3         BANGLADESH                     Low birthweight              NA                -2.4273313   -2.4499262   -2.4047365
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -1.0181589   -1.0663186   -0.9699992
Birth       JiVitA-4         BANGLADESH                     Low birthweight              NA                -2.4068929   -2.4683191   -2.3454667
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                 0.2198660    0.1554150    0.2843171
Birth       Keneba           GAMBIA                         Low birthweight              NA                -1.0721297   -1.2256409   -0.9186186
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.7862725   -0.9119918   -0.6605533
Birth       MAL-ED           BANGLADESH                     Low birthweight              NA                -2.1968162   -2.4291445   -1.9644880
Birth       MAL-ED           INDIA                          Normal or high birthweight   NA                -1.0030769   -1.2939170   -0.7122369
Birth       MAL-ED           INDIA                          Low birthweight              NA                -2.1812500   -2.8210203   -1.5414797
Birth       MAL-ED           PERU                           Normal or high birthweight   NA                -0.7936198   -0.9049235   -0.6823160
Birth       MAL-ED           PERU                           Low birthweight              NA                -2.5786907   -2.9279552   -2.2294261
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.5171304   -0.6817030   -0.3525578
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -2.2787500   -3.6302840   -0.9272160
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -1.0263559   -1.2219417   -0.8307701
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -3.3342857   -3.9682864   -2.7002851
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.4878814   -0.5779880   -0.3977748
Birth       NIH-Birth        BANGLADESH                     Low birthweight              NA                -1.8605116   -1.9857956   -1.7352276
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.6559219   -0.7302666   -0.5815772
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              NA                -1.7271824   -1.8555370   -1.5988278
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.5814136   -0.6570091   -0.5058181
Birth       PROVIDE          BANGLADESH                     Low birthweight              NA                -1.7842141   -1.8804479   -1.6879803
Birth       ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.5688235   -0.9864406   -0.1512064
Birth       ResPak           PAKISTAN                       Low birthweight              NA                -2.7275000   -2.9693074   -2.4856926
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -1.0312216   -1.1000588   -0.9623844
Birth       SAS-CompFeed     INDIA                          Low birthweight              NA                -2.5064290   -2.6956761   -2.3171818
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.3141651   -0.3340259   -0.2943043
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.6693137   -1.7288016   -1.6098258
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -1.2962752   -1.4474420   -1.1451083
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.4991475   -2.8553861   -2.1429088
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                -1.6924746   -1.7654009   -1.6195484
6 months    COHORTS          GUATEMALA                      Low birthweight              NA                -2.7367514   -3.0234297   -2.4500731
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.7982252   -0.8283380   -0.7681123
6 months    COHORTS          INDIA                          Low birthweight              NA                -1.7926334   -1.8583123   -1.7269546
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -1.0428206   -1.0854830   -1.0001582
6 months    COHORTS          PHILIPPINES                    Low birthweight              NA                -2.0293694   -2.1674604   -1.8912784
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -1.7409428   -1.8745859   -1.6072998
6 months    EE               PAKISTAN                       Low birthweight              NA                -2.7122852   -2.9068582   -2.5177123
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.1157316   -1.2028113   -1.0286519
6 months    GMS-Nepal        NEPAL                          Low birthweight              NA                -1.8558956   -1.9886517   -1.7231395
6 months    IRC              INDIA                          Normal or high birthweight   NA                -1.0680340   -1.2047734   -0.9312945
6 months    IRC              INDIA                          Low birthweight              NA                -1.8978984   -2.2525153   -1.5432816
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.9623750   -0.9890214   -0.9357285
6 months    JiVitA-3         BANGLADESH                     Low birthweight              NA                -1.8664842   -1.8979544   -1.8350140
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -1.1406518   -1.1857503   -1.0955532
6 months    JiVitA-4         BANGLADESH                     Low birthweight              NA                -1.9746988   -2.0514604   -1.8979372
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.7788920   -0.8376994   -0.7200846
6 months    Keneba           GAMBIA                         Low birthweight              NA                -1.6450298   -1.7989351   -1.4911244
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -1.0455511   -1.1713087   -0.9197934
6 months    MAL-ED           BANGLADESH                     Low birthweight              NA                -1.8224811   -2.0685913   -1.5763710
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0824465   -0.0641135    0.2290065
6 months    MAL-ED           BRAZIL                         Low birthweight              NA                -0.5374168   -1.1362551    0.0614215
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -1.1103391   -1.2372592   -0.9834191
6 months    MAL-ED           INDIA                          Low birthweight              NA                -1.5278875   -1.7999472   -1.2558277
6 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.4811301   -0.5949884   -0.3672719
6 months    MAL-ED           NEPAL                          Low birthweight              NA                -1.1180927   -1.5494729   -0.6867125
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                -1.2290399   -1.3332757   -1.1248041
6 months    MAL-ED           PERU                           Low birthweight              NA                -2.2722877   -2.6995446   -1.8450308
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -1.0028056   -1.1301874   -0.8754237
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -1.9759849   -2.4892506   -1.4627192
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -1.2511205   -1.3908548   -1.1113862
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -2.4651852   -2.9676305   -1.9627399
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.1337938   -1.2314470   -1.0361405
6 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.0173508   -2.1810070   -1.8536945
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -1.0000936   -1.0767028   -0.9234843
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              NA                -1.8432477   -1.9839515   -1.7025440
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.9005272   -0.9813308   -0.8197237
6 months    PROVIDE          BANGLADESH                     Low birthweight              NA                -1.7096623   -1.8500349   -1.5692897
6 months    ResPak           PAKISTAN                       Normal or high birthweight   NA                -1.4433908   -2.0510560   -0.8357256
6 months    ResPak           PAKISTAN                       Low birthweight              NA                -3.2410000   -4.1049865   -2.3770135
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -1.1616137   -1.2618404   -1.0613870
6 months    SAS-CompFeed     INDIA                          Low birthweight              NA                -2.1525449   -2.2470364   -2.0580535
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.5103973   -0.5598962   -0.4608983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -1.3940223   -1.6787990   -1.1092456
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.7371610   -0.7632880   -0.7110339
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.7845241   -1.8551257   -1.7139226
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -2.4856440   -2.5931662   -2.3781218
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.9558393   -3.1918502   -2.7198284
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -2.8965319   -2.9812227   -2.8118410
24 months   COHORTS          GUATEMALA                      Low birthweight              NA                -3.5686378   -3.8145364   -3.3227391
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                -1.9751004   -2.0118779   -1.9383230
24 months   COHORTS          INDIA                          Low birthweight              NA                -2.7233048   -2.7972865   -2.6493232
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -2.3455269   -2.3921231   -2.2989306
24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                -3.0858394   -3.2419326   -2.9297462
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -2.4404945   -2.6039358   -2.2770532
24 months   EE               PAKISTAN                       Low birthweight              NA                -2.9871342   -3.2318624   -2.7424059
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.7590021   -1.8543699   -1.6636342
24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                -2.2116548   -2.3808273   -2.0424823
24 months   IRC              INDIA                          Normal or high birthweight   NA                -1.6701711   -1.7697474   -1.5705948
24 months   IRC              INDIA                          Low birthweight              NA                -2.3071079   -2.5318127   -2.0824032
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -1.7817519   -1.8171917   -1.7463122
24 months   JiVitA-3         BANGLADESH                     Low birthweight              NA                -2.3966693   -2.4354466   -2.3578921
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -1.6464926   -1.6897505   -1.6032347
24 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                -2.1272257   -2.1968149   -2.0576365
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -1.4668690   -1.5323248   -1.4014132
24 months   Keneba           GAMBIA                         Low birthweight              NA                -2.0734056   -2.2533576   -1.8934537
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -1.8432861   -1.9750481   -1.7115241
24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                -2.4525516   -2.7619982   -2.1431049
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0113872   -0.1631537    0.1859280
24 months   MAL-ED           BRAZIL                         Low birthweight              NA                -0.1000000   -0.6968023    0.4968023
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -1.8462184   -1.9821891   -1.7102476
24 months   MAL-ED           INDIA                          Low birthweight              NA                -2.0571254   -2.3986978   -1.7155530
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -1.2537408   -1.3777792   -1.1297024
24 months   MAL-ED           NEPAL                          Low birthweight              NA                -1.6022144   -2.0920510   -1.1123777
24 months   MAL-ED           PERU                           Normal or high birthweight   NA                -1.6686821   -1.7834633   -1.5539010
24 months   MAL-ED           PERU                           Low birthweight              NA                -2.9068298   -3.5802920   -2.2333676
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -1.6229142   -1.7606531   -1.4851754
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -1.8209938   -2.5368783   -1.1051093
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -2.5160714   -2.6720371   -2.3601058
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -3.2281250   -3.6659520   -2.7902980
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.9950084   -2.1175773   -1.8724396
24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.7124276   -2.8850439   -2.5398113
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -1.2687884   -1.3579772   -1.1795997
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                -1.9675388   -2.1450027   -1.7900749
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -1.4590727   -1.5516854   -1.3664599
24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                -2.0601776   -2.2202904   -1.9000647
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -1.5230481   -1.5824266   -1.4636696
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -2.1618336   -2.3297881   -1.9938791


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
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.0952415   -1.4579890   -0.7324940
Birth       CMIN             BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       CMIN             BANGLADESH                     Low birthweight              Normal or high birthweight    -1.8414879   -3.0083577   -0.6746182
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.8104880   -2.1272078   -1.4937683
Birth       COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -1.5005583   -1.5622607   -1.4388559
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.6768704   -1.8189268   -1.5348141
Birth       EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -1.3102357   -1.7030599   -0.9174115
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -1.2778345   -1.4255435   -1.1301255
Birth       IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.7740958   -1.2547383   -0.2934533
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4666875   -1.4936910   -1.4396841
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.3887340   -1.4661984   -1.3112696
Birth       Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -1.2919958   -1.4586123   -1.1253793
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4105437   -1.6748388   -1.1462485
Birth       MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -1.1781731   -1.8809490   -0.4753972
Birth       MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.7850709   -2.1522721   -1.4178698
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.7616196   -3.1231364   -0.4001027
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -2.3079298   -2.9714135   -1.6444461
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -1.3726301   -1.5270697   -1.2181906
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -1.0712605   -1.2195877   -0.9229332
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.2028005   -1.3247260   -1.0808751
Birth       ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -2.1586765   -2.6412476   -1.6761053
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -1.4752074   -1.6452725   -1.3051422
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -1.3551487   -1.4177476   -1.2925497
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.2028723   -1.5905152   -0.8152294
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.0442768   -1.3396498   -0.7489038
6 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.9944083   -1.0667196   -0.9220969
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.9865488   -1.1305690   -0.8425287
6 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.9713424   -1.2077504   -0.7349344
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.7401640   -0.8992261   -0.5811019
6 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.8298645   -1.2083231   -0.4514058
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9041092   -0.9417530   -0.8664654
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8340470   -0.9224499   -0.7456441
6 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.8661378   -1.0309107   -0.7013649
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.7769301   -1.0536131   -0.5002471
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.6198633   -1.2368555   -0.0028712
6 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.4175483   -0.7178109   -0.1172858
6 months    MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.6369626   -1.0834455   -0.1904796
6 months    MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.0432478   -1.4840342   -0.6024614
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.9731793   -1.5018584   -0.4445003
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -1.2140647   -1.7355787   -0.6925506
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8835570   -1.0736592   -0.6934548
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8431542   -1.0031899   -0.6831184
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8091351   -0.9713005   -0.6469696
6 months    ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -1.7976092   -2.8538902   -0.7413281
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.9909312   -1.1130949   -0.8687675
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.8836250   -1.1726940   -0.5945560
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -1.0473632   -1.1224643   -0.9722620
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.4701953   -0.7297580   -0.2106327
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.6721059   -0.9320881   -0.4121237
24 months   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.7482044   -0.8305893   -0.6658195
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.7403125   -0.9032440   -0.5773811
24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.5466397   -0.8403516   -0.2529278
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.4526527   -0.6460659   -0.2592396
24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.6369369   -0.8825476   -0.3913261
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6149174   -0.6628077   -0.5670271
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4807331   -0.5600314   -0.4014348
24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.6065367   -0.7971054   -0.4159680
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6092654   -0.9474478   -0.2710830
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.1113872   -0.7331890    0.5104147
24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.2109071   -0.5825979    0.1607838
24 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.3484736   -0.8526264    0.1556792
24 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.2381476   -1.9210619   -0.5552333
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.1980796   -0.9282263    0.5320671
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.7120536   -1.1768306   -0.2472765
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.7174192   -0.9286016   -0.5062368
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6987503   -0.8969960   -0.5005046
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6011049   -0.7858046   -0.4164053
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.6387855   -0.8164273   -0.4611437


### Parameter: PAR


agecat      studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1570668   -0.2569558   -0.0571778
Birth       CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.9646521   -1.7538230   -0.1754811
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1548732   -0.1999241   -0.1098223
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                -0.3075220   -0.3269267   -0.2881173
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1652026   -0.1877635   -0.1426418
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                -0.4397730   -0.5918208   -0.2877252
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.4282946   -0.4963240   -0.3602652
Birth       IRC              INDIA                          Normal or high birthweight   NA                -0.1313059   -0.2185510   -0.0440608
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.6287282   -0.6455247   -0.6119318
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.5051319   -0.5443606   -0.4659033
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1925999   -0.2266623   -0.1585375
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.3318227   -0.4304119   -0.2332335
Birth       MAL-ED           INDIA                          Normal or high birthweight   NA                -0.2005401   -0.3757023   -0.0253779
Birth       MAL-ED           PERU                           Normal or high birthweight   NA                -0.0891699   -0.1425895   -0.0357504
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.1145769   -0.2319816    0.0028279
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1292441   -0.2297616   -0.0287265
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.4431383   -0.5146567   -0.3716199
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.2535726   -0.3017709   -0.2053744
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.3036884   -0.3575544   -0.2498225
Birth       ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.4111765   -0.6864420   -0.1359110
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.4002001   -0.4545982   -0.3458021
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1868010   -0.1984330   -0.1751689
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1205208   -0.1769648   -0.0640767
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0933749   -0.1264872   -0.0602626
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.1957598   -0.2131487   -0.1783710
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0944337   -0.1120432   -0.0768242
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.3390885   -0.4341614   -0.2440157
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.2353223   -0.2930700   -0.1775745
6 months    IRC              INDIA                          Normal or high birthweight   NA                -0.1467873   -0.2160753   -0.0774993
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.3703724   -0.3875336   -0.3532112
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.2102836   -0.2351534   -0.1854139
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1233144   -0.1514195   -0.0952094
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.1638817   -0.2344555   -0.0933079
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0348708   -0.0717392    0.0019977
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0623775   -0.1121742   -0.0125808
6 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0586224   -0.1022805   -0.0149643
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                -0.0793150   -0.1248720   -0.0337581
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0591641   -0.1069556   -0.0113726
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0587451   -0.1039785   -0.0135116
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2754807   -0.3438292   -0.2071322
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.1985848   -0.2437150   -0.1534546
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.1911643   -0.2379807   -0.1443478
6 months    ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.2643543   -0.5313970    0.0026884
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.2416366   -0.2923461   -0.1909272
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0290387   -0.0407238   -0.0173537
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1291782   -0.1409436   -0.1174128
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0610640   -0.0967335   -0.0253946
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0676220   -0.0979360   -0.0373080
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                -0.1378329   -0.1552991   -0.1203666
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0652628   -0.0817115   -0.0488142
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.2294955   -0.3548081   -0.1041830
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1274866   -0.1860171   -0.0689562
24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.1112598   -0.1588719   -0.0636478
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.2579087   -0.2788173   -0.2370001
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.1279438   -0.1496313   -0.1062563
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0878673   -0.1163394   -0.0593952
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.1366901   -0.2174310   -0.0559492
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0052728   -0.0349237    0.0243782
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0088275   -0.0646868    0.0470318
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0303995   -0.0694213    0.0086223
24 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0797936   -0.1358364   -0.0237507
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0242131   -0.0615811    0.0131550
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0351631   -0.0682494   -0.0020769
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2318535   -0.3088591   -0.1548478
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.1724761   -0.2262738   -0.1186785
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.1433495   -0.1928512   -0.0938478
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0793770   -0.1026637   -0.0560903
