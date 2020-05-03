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

**Intervention Variable:** enstunt

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
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        enstunt    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0              75      92  haz              
Birth       CMC-V-BCS-2002   INDIA                          1              17      92  haz              
Birth       CMIN             BANGLADESH                     0              17      26  haz              
Birth       CMIN             BANGLADESH                     1               9      26  haz              
Birth       COHORTS          GUATEMALA                      0             802     852  haz              
Birth       COHORTS          GUATEMALA                      1              50     852  haz              
Birth       COHORTS          INDIA                          0            5848    6640  haz              
Birth       COHORTS          INDIA                          1             792    6640  haz              
Birth       COHORTS          PHILIPPINES                    0            2863    3050  haz              
Birth       COHORTS          PHILIPPINES                    1             187    3050  haz              
Birth       CONTENT          PERU                           0               2       2  haz              
Birth       CONTENT          PERU                           1               0       2  haz              
Birth       EE               PAKISTAN                       0             140     240  haz              
Birth       EE               PAKISTAN                       1             100     240  haz              
Birth       GMS-Nepal        NEPAL                          0             574     696  haz              
Birth       GMS-Nepal        NEPAL                          1             122     696  haz              
Birth       IRC              INDIA                          0             343     388  haz              
Birth       IRC              INDIA                          1              45     388  haz              
Birth       JiVitA-3         BANGLADESH                     0           15068   22455  haz              
Birth       JiVitA-3         BANGLADESH                     1            7387   22455  haz              
Birth       JiVitA-4         BANGLADESH                     0            1966    2823  haz              
Birth       JiVitA-4         BANGLADESH                     1             857    2823  haz              
Birth       Keneba           GAMBIA                         0            1460    1543  haz              
Birth       Keneba           GAMBIA                         1              83    1543  haz              
Birth       MAL-ED           BANGLADESH                     0             187     231  haz              
Birth       MAL-ED           BANGLADESH                     1              44     231  haz              
Birth       MAL-ED           BRAZIL                         0              56      65  haz              
Birth       MAL-ED           BRAZIL                         1               9      65  haz              
Birth       MAL-ED           INDIA                          0              37      47  haz              
Birth       MAL-ED           INDIA                          1              10      47  haz              
Birth       MAL-ED           NEPAL                          0              25      27  haz              
Birth       MAL-ED           NEPAL                          1               2      27  haz              
Birth       MAL-ED           PERU                           0             207     233  haz              
Birth       MAL-ED           PERU                           1              26     233  haz              
Birth       MAL-ED           SOUTH AFRICA                   0             113     123  haz              
Birth       MAL-ED           SOUTH AFRICA                   1              10     123  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             102     125  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              23     125  haz              
Birth       NIH-Birth        BANGLADESH                     0             511     608  haz              
Birth       NIH-Birth        BANGLADESH                     1              97     608  haz              
Birth       NIH-Crypto       BANGLADESH                     0             631     732  haz              
Birth       NIH-Crypto       BANGLADESH                     1             101     732  haz              
Birth       PROBIT           BELARUS                        0           13859   13893  haz              
Birth       PROBIT           BELARUS                        1              34   13893  haz              
Birth       PROVIDE          BANGLADESH                     0             491     539  haz              
Birth       PROVIDE          BANGLADESH                     1              48     539  haz              
Birth       ResPak           PAKISTAN                       0              28      42  haz              
Birth       ResPak           PAKISTAN                       1              14      42  haz              
Birth       SAS-CompFeed     INDIA                          0             903    1252  haz              
Birth       SAS-CompFeed     INDIA                          1             349    1252  haz              
Birth       ZVITAMBO         ZIMBABWE                       0           12441   13875  haz              
Birth       ZVITAMBO         ZIMBABWE                       1            1434   13875  haz              
6 months    CMC-V-BCS-2002   INDIA                          0             294     369  haz              
6 months    CMC-V-BCS-2002   INDIA                          1              75     369  haz              
6 months    CMIN             BANGLADESH                     0             151     243  haz              
6 months    CMIN             BANGLADESH                     1              92     243  haz              
6 months    COHORTS          GUATEMALA                      0             809     961  haz              
6 months    COHORTS          GUATEMALA                      1             152     961  haz              
6 months    COHORTS          INDIA                          0            6048    6860  haz              
6 months    COHORTS          INDIA                          1             812    6860  haz              
6 months    COHORTS          PHILIPPINES                    0            2552    2708  haz              
6 months    COHORTS          PHILIPPINES                    1             156    2708  haz              
6 months    CONTENT          PERU                           0             195     215  haz              
6 months    CONTENT          PERU                           1              20     215  haz              
6 months    EE               PAKISTAN                       0             209     373  haz              
6 months    EE               PAKISTAN                       1             164     373  haz              
6 months    GMS-Nepal        NEPAL                          0             473     564  haz              
6 months    GMS-Nepal        NEPAL                          1              91     564  haz              
6 months    Guatemala BSC    GUATEMALA                      0             228     299  haz              
6 months    Guatemala BSC    GUATEMALA                      1              71     299  haz              
6 months    IRC              INDIA                          0             358     407  haz              
6 months    IRC              INDIA                          1              49     407  haz              
6 months    JiVitA-3         BANGLADESH                     0           11707   16811  haz              
6 months    JiVitA-3         BANGLADESH                     1            5104   16811  haz              
6 months    JiVitA-4         BANGLADESH                     0            3475    4831  haz              
6 months    JiVitA-4         BANGLADESH                     1            1356    4831  haz              
6 months    Keneba           GAMBIA                         0            1892    2089  haz              
6 months    Keneba           GAMBIA                         1             197    2089  haz              
6 months    LCNI-5           MALAWI                         0             530     839  haz              
6 months    LCNI-5           MALAWI                         1             309     839  haz              
6 months    MAL-ED           BANGLADESH                     0             202     241  haz              
6 months    MAL-ED           BANGLADESH                     1              39     241  haz              
6 months    MAL-ED           BRAZIL                         0             184     209  haz              
6 months    MAL-ED           BRAZIL                         1              25     209  haz              
6 months    MAL-ED           INDIA                          0             198     236  haz              
6 months    MAL-ED           INDIA                          1              38     236  haz              
6 months    MAL-ED           NEPAL                          0             208     236  haz              
6 months    MAL-ED           NEPAL                          1              28     236  haz              
6 months    MAL-ED           PERU                           0             239     273  haz              
6 months    MAL-ED           PERU                           1              34     273  haz              
6 months    MAL-ED           SOUTH AFRICA                   0             227     254  haz              
6 months    MAL-ED           SOUTH AFRICA                   1              27     254  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             208     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              39     247  haz              
6 months    NIH-Birth        BANGLADESH                     0             452     537  haz              
6 months    NIH-Birth        BANGLADESH                     1              85     537  haz              
6 months    NIH-Crypto       BANGLADESH                     0             613     715  haz              
6 months    NIH-Crypto       BANGLADESH                     1             102     715  haz              
6 months    PROBIT           BELARUS                        0           15644   15760  haz              
6 months    PROBIT           BELARUS                        1             116   15760  haz              
6 months    PROVIDE          BANGLADESH                     0             543     604  haz              
6 months    PROVIDE          BANGLADESH                     1              61     604  haz              
6 months    ResPak           PAKISTAN                       0             173     239  haz              
6 months    ResPak           PAKISTAN                       1              66     239  haz              
6 months    SAS-CompFeed     INDIA                          0             972    1336  haz              
6 months    SAS-CompFeed     INDIA                          1             364    1336  haz              
6 months    SAS-FoodSuppl    INDIA                          0             232     380  haz              
6 months    SAS-FoodSuppl    INDIA                          1             148     380  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2029  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             139    2029  haz              
6 months    ZVITAMBO         ZIMBABWE                       0            7795    8669  haz              
6 months    ZVITAMBO         ZIMBABWE                       1             874    8669  haz              
24 months   CMC-V-BCS-2002   INDIA                          0             294     371  haz              
24 months   CMC-V-BCS-2002   INDIA                          1              77     371  haz              
24 months   CMIN             BANGLADESH                     0             153     242  haz              
24 months   CMIN             BANGLADESH                     1              89     242  haz              
24 months   COHORTS          GUATEMALA                      0             740    1070  haz              
24 months   COHORTS          GUATEMALA                      1             330    1070  haz              
24 months   COHORTS          INDIA                          0            4696    5337  haz              
24 months   COHORTS          INDIA                          1             641    5337  haz              
24 months   COHORTS          PHILIPPINES                    0            2310    2445  haz              
24 months   COHORTS          PHILIPPINES                    1             135    2445  haz              
24 months   CONTENT          PERU                           0             147     164  haz              
24 months   CONTENT          PERU                           1              17     164  haz              
24 months   EE               PAKISTAN                       0             100     167  haz              
24 months   EE               PAKISTAN                       1              67     167  haz              
24 months   GMS-Nepal        NEPAL                          0             406     488  haz              
24 months   GMS-Nepal        NEPAL                          1              82     488  haz              
24 months   IRC              INDIA                          0             358     409  haz              
24 months   IRC              INDIA                          1              51     409  haz              
24 months   JiVitA-3         BANGLADESH                     0            5942    8632  haz              
24 months   JiVitA-3         BANGLADESH                     1            2690    8632  haz              
24 months   JiVitA-4         BANGLADESH                     0            3396    4752  haz              
24 months   JiVitA-4         BANGLADESH                     1            1356    4752  haz              
24 months   Keneba           GAMBIA                         0            1549    1725  haz              
24 months   Keneba           GAMBIA                         1             176    1725  haz              
24 months   LCNI-5           MALAWI                         0             377     579  haz              
24 months   LCNI-5           MALAWI                         1             202     579  haz              
24 months   MAL-ED           BANGLADESH                     0             179     212  haz              
24 months   MAL-ED           BANGLADESH                     1              33     212  haz              
24 months   MAL-ED           BRAZIL                         0             150     169  haz              
24 months   MAL-ED           BRAZIL                         1              19     169  haz              
24 months   MAL-ED           INDIA                          0             191     227  haz              
24 months   MAL-ED           INDIA                          1              36     227  haz              
24 months   MAL-ED           NEPAL                          0             201     228  haz              
24 months   MAL-ED           NEPAL                          1              27     228  haz              
24 months   MAL-ED           PERU                           0             174     201  haz              
24 months   MAL-ED           PERU                           1              27     201  haz              
24 months   MAL-ED           SOUTH AFRICA                   0             214     238  haz              
24 months   MAL-ED           SOUTH AFRICA                   1              24     238  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             181     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              33     214  haz              
24 months   NIH-Birth        BANGLADESH                     0             355     429  haz              
24 months   NIH-Birth        BANGLADESH                     1              74     429  haz              
24 months   NIH-Crypto       BANGLADESH                     0             444     514  haz              
24 months   NIH-Crypto       BANGLADESH                     1              70     514  haz              
24 months   PROBIT           BELARUS                        0            4022    4035  haz              
24 months   PROBIT           BELARUS                        1              13    4035  haz              
24 months   PROVIDE          BANGLADESH                     0             518     578  haz              
24 months   PROVIDE          BANGLADESH                     1              60     578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6  haz              
24 months   ZVITAMBO         ZIMBABWE                       0            1406    1640  haz              
24 months   ZVITAMBO         ZIMBABWE                       1             234    1640  haz              


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
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/546079c5-83de-4d6e-8e8d-c64433e8b6fb/5d0720a5-8d53-4718-9427-8dfcd90f4e03/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/546079c5-83de-4d6e-8e8d-c64433e8b6fb/5d0720a5-8d53-4718-9427-8dfcd90f4e03/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/546079c5-83de-4d6e-8e8d-c64433e8b6fb/5d0720a5-8d53-4718-9427-8dfcd90f4e03/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.5793051   -0.7429214   -0.4156888
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -2.5030814   -2.8505853   -2.1555775
Birth       CMIN             BANGLADESH                     0                    NA                -0.9811765   -1.4828326   -0.4795203
Birth       CMIN             BANGLADESH                     1                    NA                -3.5811111   -4.2641379   -2.8980843
Birth       COHORTS          GUATEMALA                      0                    NA                 0.3085669    0.2369424    0.3801914
Birth       COHORTS          GUATEMALA                      1                    NA                -2.7247558   -2.9776177   -2.4718939
Birth       COHORTS          INDIA                          0                    NA                -0.3941340   -0.4177401   -0.3705280
Birth       COHORTS          INDIA                          1                    NA                -2.7111454   -2.7580719   -2.6642189
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.0883565   -0.1217389   -0.0549741
Birth       COHORTS          PHILIPPINES                    1                    NA                -2.7032393   -2.8032555   -2.6032232
Birth       EE               PAKISTAN                       0                    NA                -0.9214425   -1.0895564   -0.7533285
Birth       EE               PAKISTAN                       1                    NA                -3.1624429   -3.3492102   -2.9756755
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.7470112   -0.8131444   -0.6808780
Birth       GMS-Nepal        NEPAL                          1                    NA                -2.6773448   -2.7939018   -2.5607879
Birth       IRC              INDIA                          0                    NA                 0.0466557   -0.0915952    0.1849065
Birth       IRC              INDIA                          1                    NA                -3.0479492   -3.3645239   -2.7313744
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.9715210   -0.9848994   -0.9581425
Birth       JiVitA-3         BANGLADESH                     1                    NA                -2.8511834   -2.8707519   -2.8316150
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.9835682   -1.0222514   -0.9448851
Birth       JiVitA-4         BANGLADESH                     1                    NA                -2.7599271   -2.8113936   -2.7084607
Birth       Keneba           GAMBIA                         0                    NA                 0.2043705    0.1508181    0.2579230
Birth       Keneba           GAMBIA                         1                    NA                -3.0263880   -3.2646646   -2.7881115
Birth       MAL-ED           BANGLADESH                     0                    NA                -0.7491692   -0.8554332   -0.6429051
Birth       MAL-ED           BANGLADESH                     1                    NA                -2.6828435   -2.8527077   -2.5129792
Birth       MAL-ED           BRAZIL                         0                    NA                -0.3512500   -0.5701451   -0.1323549
Birth       MAL-ED           BRAZIL                         1                    NA                -2.6966667   -2.9574559   -2.4358775
Birth       MAL-ED           INDIA                          0                    NA                -0.8041651   -1.0093709   -0.5989592
Birth       MAL-ED           INDIA                          1                    NA                -2.8947490   -3.4189587   -2.3705393
Birth       MAL-ED           PERU                           0                    NA                -0.6797502   -0.7815448   -0.5779557
Birth       MAL-ED           PERU                           1                    NA                -2.4904347   -2.6427085   -2.3381610
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.4405942   -0.5954719   -0.2857166
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -3.0866404   -3.9105286   -2.2627522
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.7177953   -0.8566991   -0.5788916
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.0119033   -3.4456751   -2.5781315
Birth       NIH-Birth        BANGLADESH                     0                    NA                -0.6108540   -0.6875177   -0.5341902
Birth       NIH-Birth        BANGLADESH                     1                    NA                -2.5942574   -2.7074826   -2.4810322
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.6580957   -0.7199736   -0.5962178
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -2.4792697   -2.5772741   -2.3812653
Birth       PROBIT           BELARUS                        0                    NA                 1.3205448    1.1597840    1.4813056
Birth       PROBIT           BELARUS                        1                    NA                -2.3988881   -2.4225435   -2.3752327
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.7366674   -0.8055215   -0.6678133
Birth       PROVIDE          BANGLADESH                     1                    NA                -2.3965981   -2.4911297   -2.3020666
Birth       ResPak           PAKISTAN                       0                    NA                -0.2275071   -0.5670778    0.1120635
Birth       ResPak           PAKISTAN                       1                    NA                -2.6010741   -2.8449638   -2.3571845
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.9058411   -0.9443530   -0.8673293
Birth       SAS-CompFeed     INDIA                          1                    NA                -2.7923449   -2.9314773   -2.6532125
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.2363201   -0.2534166   -0.2192236
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -2.8048342   -2.8461305   -2.7635378
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.2214908   -1.3724184   -1.0705632
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -2.2125212   -2.5246427   -1.9003997
6 months    CMIN             BANGLADESH                     0                    NA                -1.3223472   -1.4647290   -1.1799655
6 months    CMIN             BANGLADESH                     1                    NA                -2.5456859   -2.7464297   -2.3449422
6 months    COHORTS          GUATEMALA                      0                    NA                -1.5945398   -1.6605374   -1.5285422
6 months    COHORTS          GUATEMALA                      1                    NA                -2.9877250   -3.1279296   -2.8475204
6 months    COHORTS          INDIA                          0                    NA                -0.8323740   -0.8593693   -0.8053788
6 months    COHORTS          INDIA                          1                    NA                -2.2254564   -2.3061789   -2.1447340
6 months    COHORTS          PHILIPPINES                    0                    NA                -1.0673107   -1.1090686   -1.0255527
6 months    COHORTS          PHILIPPINES                    1                    NA                -2.2982927   -2.4424603   -2.1541252
6 months    CONTENT          PERU                           0                    NA                -0.1309073   -0.2556702   -0.0061445
6 months    CONTENT          PERU                           1                    NA                -1.7445592   -2.0368234   -1.4522950
6 months    EE               PAKISTAN                       0                    NA                -1.5295119   -1.6528600   -1.4061638
6 months    EE               PAKISTAN                       1                    NA                -2.8136018   -2.9791398   -2.6480638
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.1964261   -1.2742066   -1.1186456
6 months    GMS-Nepal        NEPAL                          1                    NA                -2.1532016   -2.3498547   -1.9565485
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.1764472   -1.2677873   -1.0851071
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -2.7802082   -2.9385453   -2.6218710
6 months    IRC              INDIA                          0                    NA                -1.1031947   -1.2381147   -0.9682748
6 months    IRC              INDIA                          1                    NA                -1.9772632   -2.3687387   -1.5857876
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.9680585   -0.9916908   -0.9444263
6 months    JiVitA-3         BANGLADESH                     1                    NA                -2.1120564   -2.1422022   -2.0819107
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.0084191   -1.0452961   -0.9715421
6 months    JiVitA-4         BANGLADESH                     1                    NA                -2.2044216   -2.2651571   -2.1436861
6 months    Keneba           GAMBIA                         0                    NA                -0.8040916   -0.8514702   -0.7567130
6 months    Keneba           GAMBIA                         1                    NA                -1.9156510   -2.0821652   -1.7491368
6 months    LCNI-5           MALAWI                         0                    NA                -1.0589648   -1.1159981   -1.0019316
6 months    LCNI-5           MALAWI                         1                    NA                -2.6836024   -2.7538754   -2.6133293
6 months    MAL-ED           BANGLADESH                     0                    NA                -1.0108835   -1.1187781   -0.9029889
6 months    MAL-ED           BANGLADESH                     1                    NA                -2.1563921   -2.4741494   -1.8386347
6 months    MAL-ED           BRAZIL                         0                    NA                 0.1090717   -0.0420697    0.2602132
6 months    MAL-ED           BRAZIL                         1                    NA                -0.2347544   -0.7429856    0.2734768
6 months    MAL-ED           INDIA                          0                    NA                -1.0423114   -1.1578964   -0.9267263
6 months    MAL-ED           INDIA                          1                    NA                -2.0919572   -2.3981873   -1.7857271
6 months    MAL-ED           NEPAL                          0                    NA                -0.4289864   -0.5359940   -0.3219788
6 months    MAL-ED           NEPAL                          1                    NA                -1.6486060   -2.0076506   -1.2895615
6 months    MAL-ED           PERU                           0                    NA                -1.1646421   -1.2674799   -1.0618044
6 months    MAL-ED           PERU                           1                    NA                -2.4281436   -2.6994518   -2.1568353
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.9805410   -1.1096095   -0.8514725
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.8111486   -2.2441292   -1.3781679
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1974337   -1.3176373   -1.0772301
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.2794894   -2.5842793   -1.9746996
6 months    NIH-Birth        BANGLADESH                     0                    NA                -1.2267998   -1.3158505   -1.1377491
6 months    NIH-Birth        BANGLADESH                     1                    NA                -2.4007587   -2.6010058   -2.2005116
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -1.0445104   -1.1165006   -0.9725201
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -2.1239793   -2.2854754   -1.9624832
6 months    PROBIT           BELARUS                        0                    NA                 0.1080642    0.0139921    0.2021362
6 months    PROBIT           BELARUS                        1                    NA                -1.2529815   -1.3889226   -1.1170403
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.9953700   -1.0700848   -0.9206552
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.9428661   -2.1603633   -1.7253689
6 months    ResPak           PAKISTAN                       0                    NA                -1.1749397   -1.4147457   -0.9351337
6 months    ResPak           PAKISTAN                       1                    NA                -2.1139598   -2.4792486   -1.7486709
6 months    SAS-CompFeed     INDIA                          0                    NA                -1.0606247   -1.1392424   -0.9820070
6 months    SAS-CompFeed     INDIA                          1                    NA                -2.3009135   -2.3824080   -2.2194190
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -1.2515347   -1.3442726   -1.1587968
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -2.9084499   -3.0499262   -2.7669737
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4621228   -0.5108821   -0.4133634
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.6805576   -1.8740010   -1.4871142
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.7804053   -0.8066608   -0.7541497
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -1.6471397   -1.7320826   -1.5621968
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.4722744   -2.5829095   -2.3616393
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.8583859   -3.0796987   -2.6370731
24 months   CMIN             BANGLADESH                     0                    NA                -2.2694188   -2.4127952   -2.1260424
24 months   CMIN             BANGLADESH                     1                    NA                -2.9321137   -3.1413618   -2.7228656
24 months   COHORTS          GUATEMALA                      0                    NA                -2.7555463   -2.8306209   -2.6804717
24 months   COHORTS          GUATEMALA                      1                    NA                -3.5257966   -3.6274578   -3.4241354
24 months   COHORTS          INDIA                          0                    NA                -2.0065411   -2.0400822   -1.9730001
24 months   COHORTS          INDIA                          1                    NA                -2.9527295   -3.0435865   -2.8618726
24 months   COHORTS          PHILIPPINES                    0                    NA                -2.3650114   -2.4106679   -2.3193549
24 months   COHORTS          PHILIPPINES                    1                    NA                -3.2732538   -3.4467679   -3.0997397
24 months   CONTENT          PERU                           0                    NA                -0.5949593   -0.7484528   -0.4414658
24 months   CONTENT          PERU                           1                    NA                -1.4758775   -2.0302712   -0.9214837
24 months   EE               PAKISTAN                       0                    NA                -2.4145563   -2.5774615   -2.2516511
24 months   EE               PAKISTAN                       1                    NA                -3.0697137   -3.3074453   -2.8319821
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.7927188   -1.8827851   -1.7026525
24 months   GMS-Nepal        NEPAL                          1                    NA                -2.3491280   -2.5686505   -2.1296056
24 months   IRC              INDIA                          0                    NA                -1.7273135   -1.8271052   -1.6275218
24 months   IRC              INDIA                          1                    NA                -2.3809637   -2.6089131   -2.1530142
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.7737122   -1.8032309   -1.7441935
24 months   JiVitA-3         BANGLADESH                     1                    NA                -2.5513662   -2.5932720   -2.5094604
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.5591187   -1.5961176   -1.5221198
24 months   JiVitA-4         BANGLADESH                     1                    NA                -2.3353070   -2.3943579   -2.2762562
24 months   Keneba           GAMBIA                         0                    NA                -1.4953092   -1.5460895   -1.4445289
24 months   Keneba           GAMBIA                         1                    NA                -2.3186430   -2.4858102   -2.1514758
24 months   LCNI-5           MALAWI                         0                    NA                -1.4991819   -1.5843048   -1.4140590
24 months   LCNI-5           MALAWI                         1                    NA                -2.5954449   -2.7146740   -2.4762157
24 months   MAL-ED           BANGLADESH                     0                    NA                -1.8611157   -1.9929239   -1.7293075
24 months   MAL-ED           BANGLADESH                     1                    NA                -2.6162230   -2.9323116   -2.3001345
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0578544   -0.1195147    0.2352235
24 months   MAL-ED           BRAZIL                         1                    NA                -0.4428802   -0.9158844    0.0301240
24 months   MAL-ED           INDIA                          0                    NA                -1.7726373   -1.9004847   -1.6447898
24 months   MAL-ED           INDIA                          1                    NA                -2.5280156   -2.8707270   -2.1853042
24 months   MAL-ED           NEPAL                          0                    NA                -1.2035833   -1.3221782   -1.0849883
24 months   MAL-ED           NEPAL                          1                    NA                -2.1184731   -2.5036241   -1.7333222
24 months   MAL-ED           PERU                           0                    NA                -1.6481992   -1.7682644   -1.5281339
24 months   MAL-ED           PERU                           1                    NA                -2.4215122   -2.7891183   -2.0539061
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -1.6087204   -1.7505300   -1.4669108
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -2.0969608   -2.6131738   -1.5807478
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5519926   -2.6991880   -2.4047971
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.1194074   -3.4128507   -2.8259640
24 months   NIH-Birth        BANGLADESH                     0                    NA                -2.0490318   -2.1538646   -1.9441990
24 months   NIH-Birth        BANGLADESH                     1                    NA                -3.0607780   -3.3105940   -2.8109620
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -1.3364281   -1.4220820   -1.2507741
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -2.1134843   -2.3492661   -1.8777025
24 months   PROBIT           BELARUS                        0                    NA                -0.1421516   -0.4278241    0.1435209
24 months   PROBIT           BELARUS                        1                    NA                -0.6660672   -1.0804798   -0.2516545
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5283552   -1.6129795   -1.4437310
24 months   PROVIDE          BANGLADESH                     1                    NA                -2.3323550   -2.6111426   -2.0535675
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.5197975   -1.5795992   -1.4599958
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -2.1208150   -2.2819547   -1.9596752


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       CMIN             BANGLADESH                     NA                   NA                -1.8811538   -2.5124807   -1.2498270
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       COHORTS          INDIA                          NA                   NA                -0.6698961   -0.6980556   -0.6417365
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5894148   -1.6086362   -1.5701935
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
Birth       Keneba           GAMBIA                         NA                   NA                 0.0308036   -0.0328378    0.0944451
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED           BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED           INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED           PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        NA                   NA                 1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ResPak           PAKISTAN                       NA                   NA                -0.9800000   -1.4086438   -0.5513562
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5002724   -0.5208163   -0.4797285
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    COHORTS          INDIA                          NA                   NA                -0.9968455   -1.0246180   -0.9690730
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    CONTENT          PERU                           NA                   NA                -0.2785256   -0.4098735   -0.1471776
6 months    EE               PAKISTAN                       NA                   NA                -2.0835567   -2.2027557   -1.9643578
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
6 months    Keneba           GAMBIA                         NA                   NA                -0.9041369   -0.9513363   -0.8569376
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6601907   -1.7297701   -1.5906113
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.0980074    0.0062724    0.1897424
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ResPak           PAKISTAN                       NA                   NA                -1.4314086   -1.6374838   -1.2253335
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5434389   -0.5924056   -0.4944722
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8679450   -0.8935071   -0.8423828
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9923738   -3.0565851   -2.9281626
24 months   COHORTS          INDIA                          NA                   NA                -2.1198201   -2.1524299   -2.0872104
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   CONTENT          PERU                           NA                   NA                -0.6868598   -0.8388476   -0.5348719
24 months   EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0136481   -2.0413552   -1.9859409
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7807218   -1.8162478   -1.7451958
24 months   Keneba           GAMBIA                         NA                   NA                -1.5774356   -1.6272400   -1.5276311
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8861485   -1.9671802   -1.8051169
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED           NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6055701   -1.6625562   -1.5485840


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          1                    0                 -1.9237763   -2.3093845   -1.5381681
Birth       CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMIN             BANGLADESH                     1                    0                 -2.5999346   -3.4473923   -1.7524770
Birth       COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      1                    0                 -3.0333227   -3.2961853   -2.7704602
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                 -2.3170113   -2.3695637   -2.2644590
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                 -2.6148828   -2.7203635   -2.5094021
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                 -2.2410004   -2.4953291   -1.9866718
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                 -1.9303336   -2.0642938   -1.7963735
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                 -3.0946048   -3.4398245   -2.7493852
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 -1.8796625   -1.9041743   -1.8551507
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 -1.7763589   -1.8415644   -1.7111534
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                 -3.2307586   -3.4750468   -2.9864704
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                 -1.9336743   -2.1344944   -1.7328542
Birth       MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         1                    0                 -2.3454167   -2.6858959   -2.0049374
Birth       MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          1                    0                 -2.0905840   -2.6630727   -1.5180952
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                 -1.8106845   -1.9933023   -1.6280667
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                 -2.6460461   -3.4846221   -1.8074702
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -2.2941080   -2.7500397   -1.8381763
Birth       NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     1                    0                 -1.9834035   -2.1202360   -1.8465709
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 -1.8211739   -1.9372322   -1.7051157
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                 -3.7194329   -3.8927721   -3.5460937
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -1.6599307   -1.7765861   -1.5432753
Birth       ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       1                    0                 -2.3735670   -2.8152829   -1.9318511
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                 -1.8865037   -2.0299099   -1.7430975
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 -2.5685141   -2.6132790   -2.5237492
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.9910304   -1.3367689   -0.6452919
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -1.2233387   -1.4705380   -0.9761394
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                 -1.3931852   -1.5482836   -1.2380868
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -1.3930824   -1.4781859   -1.3079789
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                 -1.2309821   -1.3807732   -1.0811910
6 months    CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           1                    0                 -1.6136519   -1.9319114   -1.2953923
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -1.2840899   -1.4909421   -1.0772377
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 -0.9567755   -1.1679916   -0.7455594
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -1.6037609   -1.7868937   -1.4206282
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.8740684   -1.2868007   -0.4613362
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -1.1439979   -1.1787480   -1.1092478
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -1.1960025   -1.2664753   -1.1255297
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -1.1115594   -1.2843669   -0.9387519
6 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         1                    0                 -1.6246376   -1.7159268   -1.5333483
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 -1.1455086   -1.4816134   -0.8094037
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.3438261   -0.8774377    0.1897854
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                 -1.0496458   -1.3770006   -0.7222911
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -1.2196196   -1.5942100   -0.8450292
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                 -1.2635014   -1.5540134   -0.9729895
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.8306076   -1.2824627   -0.3787525
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.0820557   -1.4104640   -0.7536474
6 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     1                    0                 -1.1739589   -1.3930473   -0.9548705
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -1.0794689   -1.2563199   -0.9026179
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -1.3610456   -1.5136819   -1.2084093
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.9474961   -1.1774225   -0.7175697
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                 -0.9390200   -1.3775665   -0.5004736
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -1.2402888   -1.3209161   -1.1596616
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -1.6569152   -1.8263713   -1.4874591
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.2184349   -1.4177317   -1.0191380
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.8667344   -0.9555322   -0.7779365
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.3861115   -0.6334610   -0.1387620
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.6626949   -0.9171144   -0.4082753
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                 -0.7702503   -0.8965519   -0.6439487
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                 -0.9461884   -1.0427997   -0.8495772
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                 -0.9082424   -1.0876987   -0.7287861
24 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           1                    0                 -0.8809182   -1.4560773   -0.3057590
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.6551574   -0.9445403   -0.3657744
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.5564092   -0.7933166   -0.3195018
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.6536502   -0.9033509   -0.4039494
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.7776540   -0.8236422   -0.7316658
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.7761883   -0.8426875   -0.7096891
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.8233338   -0.9978681   -0.6487996
24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         1                    0                 -1.0962630   -1.2430497   -0.9494762
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                 -0.7551073   -1.0966186   -0.4135960
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                 -0.5007347   -1.0043652    0.0028959
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                 -0.7553783   -1.1219516   -0.3888050
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                 -0.9148899   -1.3186778   -0.5111019
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                 -0.7733130   -1.1602410   -0.3863851
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.4882404   -1.0219247    0.0454440
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.5674148   -0.8968711   -0.2379585
24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     1                    0                 -1.0117462   -1.2821333   -0.7413591
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.7770562   -1.0277136   -0.5263988
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                 -0.5239156   -0.9750365   -0.0727947
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.8039998   -1.0944176   -0.5135820
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.6010175   -0.7723079   -0.4297271


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.3818905   -0.5603414   -0.2034397
Birth       CMIN             BANGLADESH                     0                    NA                -0.8999774   -1.4666696   -0.3332851
Birth       COHORTS          GUATEMALA                      0                    NA                -0.1788369   -0.2290673   -0.1286065
Birth       COHORTS          INDIA                          0                    NA                -0.2757620   -0.2949193   -0.2566047
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.1606927   -0.1840542   -0.1373312
Birth       EE               PAKISTAN                       0                    NA                -0.9394325   -1.1224424   -0.7564227
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.3381469   -0.3978050   -0.2784888
Birth       IRC              INDIA                          0                    NA                -0.3546969   -0.4600194   -0.2493744
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.6178939   -0.6335870   -0.6022007
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.5397226   -0.5792679   -0.5001772
Birth       Keneba           GAMBIA                         0                    NA                -0.1735669   -0.2121977   -0.1349361
Birth       MAL-ED           BANGLADESH                     0                    NA                -0.3689261   -0.4746802   -0.2631720
Birth       MAL-ED           BRAZIL                         0                    NA                -0.3247500   -0.5287356   -0.1207644
Birth       MAL-ED           INDIA                          0                    NA                -0.3994520   -0.6581106   -0.1407933
Birth       MAL-ED           PERU                           0                    NA                -0.2030395   -0.2802253   -0.1258536
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.1911131   -0.3217518   -0.0604743
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4378047   -0.6186261   -0.2569832
Birth       NIH-Birth        BANGLADESH                     0                    NA                -0.3201658   -0.3824477   -0.2578839
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.2513988   -0.2998745   -0.2029231
Birth       PROBIT           BELARUS                        0                    NA                -0.0091031   -0.0149571   -0.0032491
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.1484346   -0.1900168   -0.1068524
Birth       ResPak           PAKISTAN                       0                    NA                -0.7524929   -1.1165420   -0.3884437
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.5255806   -0.5956704   -0.4554907
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.2639524   -0.2777925   -0.2501122
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.2019600   -0.2823387   -0.1215812
6 months    CMIN             BANGLADESH                     0                    NA                -0.4620904   -0.5820773   -0.3421034
6 months    COHORTS          GUATEMALA                      0                    NA                -0.2211938   -0.2621789   -0.1802088
6 months    COHORTS          INDIA                          0                    NA                -0.1644714   -0.1790971   -0.1498457
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0732617   -0.0877112   -0.0588122
6 months    CONTENT          PERU                           0                    NA                -0.1476182   -0.2155046   -0.0797319
6 months    EE               PAKISTAN                       0                    NA                -0.5540449   -0.6653050   -0.4427847
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.1544131   -0.1991269   -0.1096994
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.3854536   -0.4747948   -0.2961123
6 months    IRC              INDIA                          0                    NA                -0.1312115   -0.1905637   -0.0718593
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.3450347   -0.3587448   -0.3313246
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.3363750   -0.3610249   -0.3117250
6 months    Keneba           GAMBIA                         0                    NA                -0.1000454   -0.1208741   -0.0792166
6 months    LCNI-5           MALAWI                         0                    NA                -0.6012259   -0.6654908   -0.5369609
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.1941096   -0.2711750   -0.1170442
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0614960   -0.1223751   -0.0006169
6 months    MAL-ED           INDIA                          0                    NA                -0.1692140   -0.2409231   -0.0975050
6 months    MAL-ED           NEPAL                          0                    NA                -0.1325955   -0.1951707   -0.0700202
6 months    MAL-ED           PERU                           0                    NA                -0.1590239   -0.2203223   -0.0977256
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0827792   -0.1384697   -0.0270887
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1713112   -0.2417375   -0.1008849
6 months    NIH-Birth        BANGLADESH                     0                    NA                -0.1805822   -0.2299050   -0.1312594
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.1541680   -0.1917114   -0.1166245
6 months    PROBIT           BELARUS                        0                    NA                -0.0100568   -0.0160507   -0.0040628
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0963215   -0.1293211   -0.0633220
6 months    ResPak           PAKISTAN                       0                    NA                -0.2564689   -0.3889628   -0.1239751
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.3412316   -0.3824354   -0.3000278
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.6471495   -0.7520959   -0.5422031
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0813161   -0.0996913   -0.0629410
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0875397   -0.0977532   -0.0773262
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0865935   -0.1391739   -0.0340132
24 months   CMIN             BANGLADESH                     0                    NA                -0.2415316   -0.3443084   -0.1387548
24 months   COHORTS          GUATEMALA                      0                    NA                -0.2368275   -0.2810346   -0.1926205
24 months   COHORTS          INDIA                          0                    NA                -0.1132790   -0.1275122   -0.0990458
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0491031   -0.0619066   -0.0362996
24 months   CONTENT          PERU                           0                    NA                -0.0919005   -0.1602077   -0.0235933
24 months   EE               PAKISTAN                       0                    NA                -0.2554337   -0.3804782   -0.1303892
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0946992   -0.1381910   -0.0512074
24 months   IRC              INDIA                          0                    NA                -0.0714640   -0.1076359   -0.0352921
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.2399359   -0.2563479   -0.2235239
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.2216031   -0.2431142   -0.2000920
24 months   Keneba           GAMBIA                         0                    NA                -0.0821264   -0.1027969   -0.0614560
24 months   LCNI-5           MALAWI                         0                    NA                -0.3869666   -0.4552814   -0.3186518
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.1172805   -0.1792101   -0.0553509
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0517400   -0.1135506    0.0100705
24 months   MAL-ED           INDIA                          0                    NA                -0.1135522   -0.1804040   -0.0467003
24 months   MAL-ED           NEPAL                          0                    NA                -0.1040045   -0.1642482   -0.0437607
24 months   MAL-ED           PERU                           0                    NA                -0.1042718   -0.1685778   -0.0399658
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0363391   -0.0839222    0.0112440
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0935682   -0.1519684   -0.0351680
24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.1700261   -0.2275029   -0.1125492
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.1048365   -0.1453991   -0.0642739
24 months   PROBIT           BELARUS                        0                    NA                -0.0021376   -0.0148924    0.0106173
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0740669   -0.1087268   -0.0394071
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0857726   -0.1121943   -0.0593510
