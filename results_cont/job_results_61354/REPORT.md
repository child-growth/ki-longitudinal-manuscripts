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
![](/tmp/edc16a26-bfd0-45ae-86e6-b0623d651943/9c58a13e-c6d5-4ebd-a79d-993e12d58760/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/edc16a26-bfd0-45ae-86e6-b0623d651943/9c58a13e-c6d5-4ebd-a79d-993e12d58760/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/edc16a26-bfd0-45ae-86e6-b0623d651943/9c58a13e-c6d5-4ebd-a79d-993e12d58760/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.5814017   -0.7440695   -0.4187338
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -2.3771974   -2.7392044   -2.0151905
Birth       CMIN             BANGLADESH                     0                    NA                -0.9811765   -1.4828326   -0.4795203
Birth       CMIN             BANGLADESH                     1                    NA                -3.5811111   -4.2641379   -2.8980843
Birth       COHORTS          GUATEMALA                      0                    NA                 0.3067655    0.2349537    0.3785773
Birth       COHORTS          GUATEMALA                      1                    NA                -2.6934383   -2.9178958   -2.4689808
Birth       COHORTS          INDIA                          0                    NA                -0.3939847   -0.4175860   -0.3703834
Birth       COHORTS          INDIA                          1                    NA                -2.7124085   -2.7598166   -2.6650004
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.0882512   -0.1216508   -0.0548516
Birth       COHORTS          PHILIPPINES                    1                    NA                -2.7087893   -2.8102398   -2.6073388
Birth       EE               PAKISTAN                       0                    NA                -0.9193109   -1.0763752   -0.7622465
Birth       EE               PAKISTAN                       1                    NA                -3.1795437   -3.3605022   -2.9985853
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.7476214   -0.8138427   -0.6814000
Birth       GMS-Nepal        NEPAL                          1                    NA                -2.6720804   -2.7884111   -2.5557498
Birth       IRC              INDIA                          0                    NA                 0.0476244   -0.0905455    0.1857943
Birth       IRC              INDIA                          1                    NA                -3.0337099   -3.3509414   -2.7164784
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.9723342   -0.9856818   -0.9589866
Birth       JiVitA-3         BANGLADESH                     1                    NA                -2.8502081   -2.8698165   -2.8305996
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.9840729   -1.0227532   -0.9453927
Birth       JiVitA-4         BANGLADESH                     1                    NA                -2.7584531   -2.8097459   -2.7071603
Birth       Keneba           GAMBIA                         0                    NA                 0.2037164    0.1501824    0.2572503
Birth       Keneba           GAMBIA                         1                    NA                -3.0424301   -3.2800395   -2.8048208
Birth       MAL-ED           BANGLADESH                     0                    NA                -0.7495001   -0.8563692   -0.6426311
Birth       MAL-ED           BANGLADESH                     1                    NA                -2.7702238   -2.9507781   -2.5896695
Birth       MAL-ED           BRAZIL                         0                    NA                -0.3512500   -0.5701451   -0.1323549
Birth       MAL-ED           BRAZIL                         1                    NA                -2.6966667   -2.9574559   -2.4358775
Birth       MAL-ED           INDIA                          0                    NA                -0.8063977   -1.0163527   -0.5964426
Birth       MAL-ED           INDIA                          1                    NA                -3.0818870   -3.6588286   -2.5049454
Birth       MAL-ED           PERU                           0                    NA                -0.6783912   -0.7799202   -0.5768621
Birth       MAL-ED           PERU                           1                    NA                -2.5003160   -2.6883669   -2.3122652
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.4298099   -0.5850853   -0.2745345
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -2.0363280   -2.7896497   -1.2830062
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.7267963   -0.8667004   -0.5868923
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.0732364   -3.4909903   -2.6554824
Birth       NIH-Birth        BANGLADESH                     0                    NA                -0.6103577   -0.6869799   -0.5337354
Birth       NIH-Birth        BANGLADESH                     1                    NA                -2.5949364   -2.7056567   -2.4842161
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.6578760   -0.7196879   -0.5960641
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -2.4723339   -2.5748797   -2.3697881
Birth       PROBIT           BELARUS                        0                    NA                 1.3205337    1.1598595    1.4812080
Birth       PROBIT           BELARUS                        1                    NA                -2.3988110   -2.4218993   -2.3757227
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.7361690   -0.8050943   -0.6672437
Birth       PROVIDE          BANGLADESH                     1                    NA                -2.3998644   -2.4962693   -2.3034595
Birth       ResPak           PAKISTAN                       0                    NA                -0.2310723   -0.5783434    0.1161988
Birth       ResPak           PAKISTAN                       1                    NA                -2.5430532   -2.8296174   -2.2564891
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.9058411   -0.9443530   -0.8673293
Birth       SAS-CompFeed     INDIA                          1                    NA                -2.7923449   -2.9314773   -2.6532125
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.2361800   -0.2532711   -0.2190888
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -2.8079120   -2.8492480   -2.7665761
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.2211919   -1.3718552   -1.0705286
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -2.2176593   -2.5326992   -1.9026195
6 months    CMIN             BANGLADESH                     0                    NA                -1.3223680   -1.4651325   -1.1796034
6 months    CMIN             BANGLADESH                     1                    NA                -2.5348868   -2.7375520   -2.3322217
6 months    COHORTS          GUATEMALA                      0                    NA                -1.5941777   -1.6601062   -1.5282492
6 months    COHORTS          GUATEMALA                      1                    NA                -2.9955744   -3.1358900   -2.8552587
6 months    COHORTS          INDIA                          0                    NA                -0.8319927   -0.8589954   -0.8049899
6 months    COHORTS          INDIA                          1                    NA                -2.2288186   -2.3094844   -2.1481529
6 months    COHORTS          PHILIPPINES                    0                    NA                -1.0681349   -1.1099380   -1.0263319
6 months    COHORTS          PHILIPPINES                    1                    NA                -2.3122874   -2.4593615   -2.1652133
6 months    CONTENT          PERU                           0                    NA                -0.1323888   -0.2573236   -0.0074540
6 months    CONTENT          PERU                           1                    NA                -1.6943789   -1.9787970   -1.4099608
6 months    EE               PAKISTAN                       0                    NA                -1.5242484   -1.6477898   -1.4007070
6 months    EE               PAKISTAN                       1                    NA                -2.8065985   -2.9726498   -2.6405472
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.1950177   -1.2729912   -1.1170442
6 months    GMS-Nepal        NEPAL                          1                    NA                -2.1171350   -2.3162442   -1.9180257
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.1749427   -1.2662040   -1.0836815
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -2.7791573   -2.9371431   -2.6211715
6 months    IRC              INDIA                          0                    NA                -1.1041719   -1.2387145   -0.9696294
6 months    IRC              INDIA                          1                    NA                -2.2285335   -2.6041334   -1.8529336
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.9662682   -0.9899728   -0.9425637
6 months    JiVitA-3         BANGLADESH                     1                    NA                -2.1091666   -2.1389192   -2.0794140
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.0092671   -1.0461362   -0.9723979
6 months    JiVitA-4         BANGLADESH                     1                    NA                -2.2011988   -2.2623541   -2.1400434
6 months    Keneba           GAMBIA                         0                    NA                -0.8050911   -0.8523660   -0.7578161
6 months    Keneba           GAMBIA                         1                    NA                -1.9112317   -2.0784063   -1.7440572
6 months    LCNI-5           MALAWI                         0                    NA                -1.0581947   -1.1153778   -1.0010115
6 months    LCNI-5           MALAWI                         1                    NA                -2.6875520   -2.7577902   -2.6173138
6 months    MAL-ED           BANGLADESH                     0                    NA                -1.0159711   -1.1234645   -0.9084777
6 months    MAL-ED           BANGLADESH                     1                    NA                -2.3014768   -2.6090370   -1.9939166
6 months    MAL-ED           BRAZIL                         0                    NA                 0.1097267   -0.0411785    0.2606319
6 months    MAL-ED           BRAZIL                         1                    NA                -0.2529820   -0.7719355    0.2659716
6 months    MAL-ED           INDIA                          0                    NA                -1.0423416   -1.1577815   -0.9269018
6 months    MAL-ED           INDIA                          1                    NA                -2.0903041   -2.4057313   -1.7748770
6 months    MAL-ED           NEPAL                          0                    NA                -0.4266120   -0.5334349   -0.3197890
6 months    MAL-ED           NEPAL                          1                    NA                -1.4518268   -1.7916092   -1.1120443
6 months    MAL-ED           PERU                           0                    NA                -1.1666239   -1.2693805   -1.0638673
6 months    MAL-ED           PERU                           1                    NA                -2.4603314   -2.7041496   -2.2165133
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.9829598   -1.1123722   -0.8535474
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.8378817   -2.2788489   -1.3969146
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1991630   -1.3200045   -1.0783216
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.3404064   -2.6395206   -2.0412922
6 months    NIH-Birth        BANGLADESH                     0                    NA                -1.2280776   -1.3171603   -1.1389949
6 months    NIH-Birth        BANGLADESH                     1                    NA                -2.4018182   -2.5993809   -2.2042556
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -1.0452888   -1.1171881   -0.9733896
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -2.1207452   -2.2821905   -1.9592999
6 months    PROBIT           BELARUS                        0                    NA                 0.1081497    0.0141227    0.2021768
6 months    PROBIT           BELARUS                        1                    NA                -1.2989625   -1.4359912   -1.1619339
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.9957531   -1.0705266   -0.9209797
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.9657571   -2.1903219   -1.7411923
6 months    ResPak           PAKISTAN                       0                    NA                -1.1706900   -1.4106766   -0.9307033
6 months    ResPak           PAKISTAN                       1                    NA                -2.0929294   -2.4533515   -1.7325073
6 months    SAS-CompFeed     INDIA                          0                    NA                -1.0606247   -1.1392424   -0.9820070
6 months    SAS-CompFeed     INDIA                          1                    NA                -2.3009135   -2.3824080   -2.2194190
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -1.2557468   -1.3482955   -1.1631980
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -2.9196291   -3.0607783   -2.7784798
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4615403   -0.5103118   -0.4127688
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.6871365   -1.8754472   -1.4988258
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.7805111   -0.8067563   -0.7542658
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -1.6510874   -1.7345907   -1.5675840
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.4752154   -2.5865258   -2.3639050
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.8572826   -3.0851557   -2.6294094
24 months   CMIN             BANGLADESH                     0                    NA                -2.2665644   -2.4095128   -2.1236161
24 months   CMIN             BANGLADESH                     1                    NA                -2.9215880   -3.1294871   -2.7136888
24 months   COHORTS          GUATEMALA                      0                    NA                -2.7567825   -2.8320813   -2.6814836
24 months   COHORTS          GUATEMALA                      1                    NA                -3.5194229   -3.6201291   -3.4187167
24 months   COHORTS          INDIA                          0                    NA                -2.0062397   -2.0397819   -1.9726974
24 months   COHORTS          INDIA                          1                    NA                -2.9533013   -3.0441942   -2.8624085
24 months   COHORTS          PHILIPPINES                    0                    NA                -2.3644917   -2.4101768   -2.3188065
24 months   COHORTS          PHILIPPINES                    1                    NA                -3.2920060   -3.4646342   -3.1193779
24 months   CONTENT          PERU                           0                    NA                -0.5948207   -0.7486260   -0.4410155
24 months   CONTENT          PERU                           1                    NA                -1.4742458   -2.0295121   -0.9189796
24 months   EE               PAKISTAN                       0                    NA                -2.4060798   -2.5694882   -2.2426714
24 months   EE               PAKISTAN                       1                    NA                -3.0432104   -3.2806299   -2.8057910
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.7933070   -1.8833202   -1.7032938
24 months   GMS-Nepal        NEPAL                          1                    NA                -2.3505450   -2.5684891   -2.1326008
24 months   IRC              INDIA                          0                    NA                -1.7254253   -1.8253264   -1.6255242
24 months   IRC              INDIA                          1                    NA                -2.2549335   -2.4915003   -2.0183667
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.7739953   -1.8036019   -1.7443886
24 months   JiVitA-3         BANGLADESH                     1                    NA                -2.5493583   -2.5910423   -2.5076743
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.5586987   -1.5955866   -1.5218108
24 months   JiVitA-4         BANGLADESH                     1                    NA                -2.3383911   -2.3970222   -2.2797600
24 months   Keneba           GAMBIA                         0                    NA                -1.4956885   -1.5464418   -1.4449352
24 months   Keneba           GAMBIA                         1                    NA                -2.3040874   -2.4701506   -2.1380242
24 months   LCNI-5           MALAWI                         0                    NA                -1.5016498   -1.5864800   -1.4168196
24 months   LCNI-5           MALAWI                         1                    NA                -2.5984912   -2.7158067   -2.4811757
24 months   MAL-ED           BANGLADESH                     0                    NA                -1.8642251   -1.9963437   -1.7321064
24 months   MAL-ED           BANGLADESH                     1                    NA                -2.6450056   -2.9672265   -2.3227848
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0622039   -0.1160387    0.2404465
24 months   MAL-ED           BRAZIL                         1                    NA                -0.5020898   -0.9513886   -0.0527910
24 months   MAL-ED           INDIA                          0                    NA                -1.7735272   -1.9010334   -1.6460209
24 months   MAL-ED           INDIA                          1                    NA                -2.4801834   -2.8252787   -2.1350881
24 months   MAL-ED           NEPAL                          0                    NA                -1.2025812   -1.3209758   -1.0841867
24 months   MAL-ED           NEPAL                          1                    NA                -1.9905318   -2.3891727   -1.5918910
24 months   MAL-ED           PERU                           0                    NA                -1.6488101   -1.7685757   -1.5290445
24 months   MAL-ED           PERU                           1                    NA                -2.4155878   -2.8062926   -2.0248830
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -1.6048569   -1.7465597   -1.4631542
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -2.0168699   -2.5601246   -1.4736152
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5495699   -2.6967122   -2.4024277
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.1342618   -3.4067993   -2.8617243
24 months   NIH-Birth        BANGLADESH                     0                    NA                -2.0505867   -2.1554125   -1.9457608
24 months   NIH-Birth        BANGLADESH                     1                    NA                -3.0307094   -3.2830758   -2.7783430
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -1.3360095   -1.4216702   -1.2503488
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -2.1098171   -2.3480848   -1.8715494
24 months   PROBIT           BELARUS                        0                    NA                -0.1421431   -0.4278127    0.1435265
24 months   PROBIT           BELARUS                        1                    NA                -0.7104049   -1.1342980   -0.2865118
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5264803   -1.6111299   -1.4418308
24 months   PROVIDE          BANGLADESH                     1                    NA                -2.2466117   -2.5268872   -1.9663363
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.5211780   -1.5810373   -1.4613187
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -2.0988419   -2.2602918   -1.9373921


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
Birth       CMC-V-BCS-2002   INDIA                          1                    0                 -1.7957957   -2.1969030   -1.3946885
Birth       CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMIN             BANGLADESH                     1                    0                 -2.5999346   -3.4473923   -1.7524770
Birth       COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      1                    0                 -3.0002038   -3.2359974   -2.7644101
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                 -2.3184238   -2.3714040   -2.2654436
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                 -2.6205381   -2.7273837   -2.5136924
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                 -2.2602329   -2.5023372   -2.0181286
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                 -1.9244591   -2.0584105   -1.7905076
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                 -3.0813343   -3.4274418   -2.7352268
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 -1.8778739   -1.9022695   -1.8534783
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 -1.7743801   -1.8394654   -1.7092948
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                 -3.2461465   -3.4899237   -3.0023693
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                 -2.0207237   -2.2322018   -1.8092456
Birth       MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         1                    0                 -2.3454167   -2.6858959   -2.0049374
Birth       MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          1                    0                 -2.2754894   -2.8944417   -1.6565370
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                 -1.8219249   -2.0355260   -1.6083237
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                 -1.6065181   -2.3767569   -0.8362793
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -2.3464400   -2.7887607   -1.9041194
Birth       NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     1                    0                 -1.9845787   -2.1194832   -1.8496742
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 -1.8144579   -1.9344036   -1.6945122
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                 -3.7193447   -3.8906301   -3.5480594
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -1.6636954   -1.7818777   -1.5455130
Birth       ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       1                    0                 -2.3119810   -2.7865021   -1.8374598
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                 -1.8865037   -2.0299099   -1.7430975
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 -2.5717321   -2.6165301   -2.5269341
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.9964674   -1.3450546   -0.6478802
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -1.2125189   -1.4616555   -0.9633823
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                 -1.4013967   -1.5565594   -1.2462340
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -1.3968260   -1.4819470   -1.3117049
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                 -1.2441524   -1.3967129   -1.0915920
6 months    CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           1                    0                 -1.5619901   -1.8733422   -1.2506380
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -1.2823501   -1.4896818   -1.0750184
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 -0.9221173   -1.1358728   -0.7083618
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -1.6042146   -1.7867354   -1.4216937
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -1.1243616   -1.5213588   -0.7273644
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -1.1428984   -1.1774405   -1.1083562
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -1.1919317   -1.2629078   -1.1209556
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -1.1061407   -1.2797289   -0.9325524
6 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         1                    0                 -1.6293573   -1.7204843   -1.5382303
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 -1.2855057   -1.6133039   -0.9577075
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.3627086   -0.9049903    0.1795730
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                 -1.0479625   -1.3847474   -0.7111776
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -1.0252148   -1.3816301   -0.6687995
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                 -1.2937075   -1.5580014   -1.0294137
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.8549220   -1.3159030   -0.3939409
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.1412434   -1.4642134   -0.8182733
6 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     1                    0                 -1.1737406   -1.3900927   -0.9573886
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -1.0754564   -1.2522998   -0.8986129
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -1.4071123   -1.5587683   -1.2554562
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.9700040   -1.2067878   -0.7332202
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                 -0.9222394   -1.3553979   -0.4890809
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -1.2402888   -1.3209161   -1.1596616
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -1.6638823   -1.8328311   -1.4949335
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.2255962   -1.4198779   -1.0313144
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.8705763   -0.9580191   -0.7831334
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.3820672   -0.6359130   -0.1282213
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.6550235   -0.9069795   -0.4030676
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                 -0.7626405   -0.8883150   -0.6369659
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                 -0.9470617   -1.0437153   -0.8504080
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                 -0.9275144   -1.1061971   -0.7488316
24 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           1                    0                 -0.8794251   -1.4557757   -0.3030745
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.6371307   -0.9261058   -0.3481556
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.5572380   -0.7922723   -0.3222036
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.5295082   -0.7861651   -0.2728513
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.7753630   -0.8215488   -0.7291772
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.7796924   -0.8457559   -0.7136289
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.8083989   -0.9817881   -0.6350096
24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         1                    0                 -1.0968414   -1.2419019   -0.9517808
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                 -0.7807806   -1.1281596   -0.4334015
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                 -0.5642937   -1.0459100   -0.0826774
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                 -0.7066562   -1.0748371   -0.3384754
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                 -0.7879506   -1.2028503   -0.3730509
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                 -0.7667777   -1.1758303   -0.3577251
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.4120130   -0.9698263    0.1458004
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.5846919   -0.8950525   -0.2743313
24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     1                    0                 -0.9801227   -1.2529224   -0.7073231
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.7738076   -1.0268302   -0.5207850
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                 -0.5682618   -1.0248461   -0.1116775
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.7201314   -1.0122118   -0.4280510
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.5776640   -0.7494561   -0.4058719


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.3797940   -0.5581918   -0.2013962
Birth       CMIN             BANGLADESH                     0                    NA                -0.8999774   -1.4666696   -0.3332851
Birth       COHORTS          GUATEMALA                      0                    NA                -0.1770354   -0.2275708   -0.1265000
Birth       COHORTS          INDIA                          0                    NA                -0.2759114   -0.2950704   -0.2567524
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.1607980   -0.1841447   -0.1374512
Birth       EE               PAKISTAN                       0                    NA                -0.9415641   -1.1176237   -0.7655046
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.3375367   -0.3973953   -0.2776781
Birth       IRC              INDIA                          0                    NA                -0.3556656   -0.4612240   -0.2501073
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.6170807   -0.6327901   -0.6013712
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.5392179   -0.5787600   -0.4996758
Birth       Keneba           GAMBIA                         0                    NA                -0.1729127   -0.2115199   -0.1343056
Birth       MAL-ED           BANGLADESH                     0                    NA                -0.3685951   -0.4733333   -0.2638569
Birth       MAL-ED           BRAZIL                         0                    NA                -0.3247500   -0.5287356   -0.1207644
Birth       MAL-ED           INDIA                          0                    NA                -0.3972194   -0.6585166   -0.1359221
Birth       MAL-ED           PERU                           0                    NA                -0.2043985   -0.2827458   -0.1260513
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.2018974   -0.3379014   -0.0658935
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4288037   -0.6091529   -0.2484544
Birth       NIH-Birth        BANGLADESH                     0                    NA                -0.3206621   -0.3830219   -0.2583022
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.2516185   -0.3000069   -0.2032301
Birth       PROBIT           BELARUS                        0                    NA                -0.0090920   -0.0148893   -0.0032947
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.1489330   -0.1905338   -0.1073323
Birth       ResPak           PAKISTAN                       0                    NA                -0.7489277   -1.1245390   -0.3733164
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.5255806   -0.5956704   -0.4554907
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.2640925   -0.2779303   -0.2502546
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.2022588   -0.2829205   -0.1215972
6 months    CMIN             BANGLADESH                     0                    NA                -0.4620696   -0.5823780   -0.3417612
6 months    COHORTS          GUATEMALA                      0                    NA                -0.2215559   -0.2623728   -0.1807391
6 months    COHORTS          INDIA                          0                    NA                -0.1648528   -0.1795050   -0.1502005
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0724374   -0.0867909   -0.0580839
6 months    CONTENT          PERU                           0                    NA                -0.1461368   -0.2137955   -0.0784780
6 months    EE               PAKISTAN                       0                    NA                -0.5593084   -0.6709705   -0.4476463
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.1558216   -0.2009175   -0.1107256
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.3869580   -0.4764572   -0.2974589
6 months    IRC              INDIA                          0                    NA                -0.1302343   -0.1884887   -0.0719798
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.3468250   -0.3605630   -0.3330870
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.3355270   -0.3602249   -0.3108290
6 months    Keneba           GAMBIA                         0                    NA                -0.0990459   -0.1198310   -0.0782607
6 months    LCNI-5           MALAWI                         0                    NA                -0.6019960   -0.6660684   -0.5379237
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.1890220   -0.2653387   -0.1127053
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0621509   -0.1227730   -0.0015288
6 months    MAL-ED           INDIA                          0                    NA                -0.1691838   -0.2409421   -0.0974254
6 months    MAL-ED           NEPAL                          0                    NA                -0.1349700   -0.1982142   -0.0717257
6 months    MAL-ED           PERU                           0                    NA                -0.1570421   -0.2184512   -0.0956330
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0803604   -0.1367349   -0.0239860
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1695819   -0.2396755   -0.0994883
6 months    NIH-Birth        BANGLADESH                     0                    NA                -0.1793045   -0.2286576   -0.1299514
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.1533895   -0.1909240   -0.1158550
6 months    PROBIT           BELARUS                        0                    NA                -0.0101423   -0.0160575   -0.0042272
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0959384   -0.1288821   -0.0629946
6 months    ResPak           PAKISTAN                       0                    NA                -0.2607187   -0.3935345   -0.1279029
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.3412316   -0.3824354   -0.3000278
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.6429375   -0.7473484   -0.5385265
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0818986   -0.1002539   -0.0635432
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0874339   -0.0976521   -0.0772157
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0836525   -0.1361211   -0.0311839
24 months   CMIN             BANGLADESH                     0                    NA                -0.2443860   -0.3465136   -0.1422584
24 months   COHORTS          GUATEMALA                      0                    NA                -0.2355914   -0.2799776   -0.1912051
24 months   COHORTS          INDIA                          0                    NA                -0.1135805   -0.1278312   -0.0993297
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0496229   -0.0624688   -0.0367770
24 months   CONTENT          PERU                           0                    NA                -0.0920390   -0.1610176   -0.0230604
24 months   EE               PAKISTAN                       0                    NA                -0.2639103   -0.3895288   -0.1382917
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0941110   -0.1373456   -0.0508765
24 months   IRC              INDIA                          0                    NA                -0.0733522   -0.1093719   -0.0373325
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.2396528   -0.2560689   -0.2232367
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.2220231   -0.2433434   -0.2007028
24 months   Keneba           GAMBIA                         0                    NA                -0.0817471   -0.1024433   -0.0610508
24 months   LCNI-5           MALAWI                         0                    NA                -0.3844987   -0.4520275   -0.3169699
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.1141712   -0.1764384   -0.0519039
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0560895   -0.1181180    0.0059390
24 months   MAL-ED           INDIA                          0                    NA                -0.1126623   -0.1793112   -0.0460133
24 months   MAL-ED           NEPAL                          0                    NA                -0.1050065   -0.1642795   -0.0457334
24 months   MAL-ED           PERU                           0                    NA                -0.1036609   -0.1679185   -0.0394032
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0402026   -0.0860164    0.0056112
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0959908   -0.1546631   -0.0373186
24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.1684712   -0.2260895   -0.1108530
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.1052551   -0.1458861   -0.0646241
24 months   PROBIT           BELARUS                        0                    NA                -0.0021461   -0.0148355    0.0105434
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0759418   -0.1109237   -0.0409600
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0843922   -0.1108724   -0.0579119
