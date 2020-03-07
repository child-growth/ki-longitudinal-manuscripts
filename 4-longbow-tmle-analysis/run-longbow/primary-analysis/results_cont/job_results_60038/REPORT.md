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

agecat      studyid          country                        enstunt    n_cell       n
----------  ---------------  -----------------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0              75      92
Birth       CMC-V-BCS-2002   INDIA                          1              17      92
Birth       CMIN             BANGLADESH                     0              17      26
Birth       CMIN             BANGLADESH                     1               9      26
Birth       COHORTS          GUATEMALA                      0             802     852
Birth       COHORTS          GUATEMALA                      1              50     852
Birth       COHORTS          INDIA                          0            5848    6640
Birth       COHORTS          INDIA                          1             792    6640
Birth       COHORTS          PHILIPPINES                    0            2863    3050
Birth       COHORTS          PHILIPPINES                    1             187    3050
Birth       CONTENT          PERU                           0               2       2
Birth       CONTENT          PERU                           1               0       2
Birth       EE               PAKISTAN                       0             140     240
Birth       EE               PAKISTAN                       1             100     240
Birth       GMS-Nepal        NEPAL                          0             574     696
Birth       GMS-Nepal        NEPAL                          1             122     696
Birth       IRC              INDIA                          0             343     388
Birth       IRC              INDIA                          1              45     388
Birth       JiVitA-3         BANGLADESH                     0           15068   22455
Birth       JiVitA-3         BANGLADESH                     1            7387   22455
Birth       JiVitA-4         BANGLADESH                     0            1966    2823
Birth       JiVitA-4         BANGLADESH                     1             857    2823
Birth       Keneba           GAMBIA                         0            1460    1543
Birth       Keneba           GAMBIA                         1              83    1543
Birth       MAL-ED           BANGLADESH                     0             187     231
Birth       MAL-ED           BANGLADESH                     1              44     231
Birth       MAL-ED           BRAZIL                         0              56      65
Birth       MAL-ED           BRAZIL                         1               9      65
Birth       MAL-ED           INDIA                          0              37      47
Birth       MAL-ED           INDIA                          1              10      47
Birth       MAL-ED           NEPAL                          0              25      27
Birth       MAL-ED           NEPAL                          1               2      27
Birth       MAL-ED           PERU                           0             207     233
Birth       MAL-ED           PERU                           1              26     233
Birth       MAL-ED           SOUTH AFRICA                   0             113     123
Birth       MAL-ED           SOUTH AFRICA                   1              10     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             102     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              23     125
Birth       NIH-Birth        BANGLADESH                     0             511     608
Birth       NIH-Birth        BANGLADESH                     1              97     608
Birth       NIH-Crypto       BANGLADESH                     0             631     732
Birth       NIH-Crypto       BANGLADESH                     1             101     732
Birth       PROBIT           BELARUS                        0           13859   13893
Birth       PROBIT           BELARUS                        1              34   13893
Birth       PROVIDE          BANGLADESH                     0             491     539
Birth       PROVIDE          BANGLADESH                     1              48     539
Birth       ResPak           PAKISTAN                       0              28      42
Birth       ResPak           PAKISTAN                       1              14      42
Birth       SAS-CompFeed     INDIA                          0             903    1252
Birth       SAS-CompFeed     INDIA                          1             349    1252
Birth       ZVITAMBO         ZIMBABWE                       0           12441   13875
Birth       ZVITAMBO         ZIMBABWE                       1            1434   13875
6 months    CMC-V-BCS-2002   INDIA                          0             294     369
6 months    CMC-V-BCS-2002   INDIA                          1              75     369
6 months    CMIN             BANGLADESH                     0             151     243
6 months    CMIN             BANGLADESH                     1              92     243
6 months    COHORTS          GUATEMALA                      0             809     961
6 months    COHORTS          GUATEMALA                      1             152     961
6 months    COHORTS          INDIA                          0            6048    6860
6 months    COHORTS          INDIA                          1             812    6860
6 months    COHORTS          PHILIPPINES                    0            2552    2708
6 months    COHORTS          PHILIPPINES                    1             156    2708
6 months    CONTENT          PERU                           0             195     215
6 months    CONTENT          PERU                           1              20     215
6 months    EE               PAKISTAN                       0             209     373
6 months    EE               PAKISTAN                       1             164     373
6 months    GMS-Nepal        NEPAL                          0             473     564
6 months    GMS-Nepal        NEPAL                          1              91     564
6 months    Guatemala BSC    GUATEMALA                      0             228     299
6 months    Guatemala BSC    GUATEMALA                      1              71     299
6 months    IRC              INDIA                          0             358     407
6 months    IRC              INDIA                          1              49     407
6 months    JiVitA-3         BANGLADESH                     0           11707   16811
6 months    JiVitA-3         BANGLADESH                     1            5104   16811
6 months    JiVitA-4         BANGLADESH                     0            3475    4831
6 months    JiVitA-4         BANGLADESH                     1            1356    4831
6 months    Keneba           GAMBIA                         0            1892    2089
6 months    Keneba           GAMBIA                         1             197    2089
6 months    LCNI-5           MALAWI                         0             530     839
6 months    LCNI-5           MALAWI                         1             309     839
6 months    MAL-ED           BANGLADESH                     0             202     241
6 months    MAL-ED           BANGLADESH                     1              39     241
6 months    MAL-ED           BRAZIL                         0             184     209
6 months    MAL-ED           BRAZIL                         1              25     209
6 months    MAL-ED           INDIA                          0             198     236
6 months    MAL-ED           INDIA                          1              38     236
6 months    MAL-ED           NEPAL                          0             208     236
6 months    MAL-ED           NEPAL                          1              28     236
6 months    MAL-ED           PERU                           0             239     273
6 months    MAL-ED           PERU                           1              34     273
6 months    MAL-ED           SOUTH AFRICA                   0             227     254
6 months    MAL-ED           SOUTH AFRICA                   1              27     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             208     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              39     247
6 months    NIH-Birth        BANGLADESH                     0             452     537
6 months    NIH-Birth        BANGLADESH                     1              85     537
6 months    NIH-Crypto       BANGLADESH                     0             613     715
6 months    NIH-Crypto       BANGLADESH                     1             102     715
6 months    PROBIT           BELARUS                        0           15644   15760
6 months    PROBIT           BELARUS                        1             116   15760
6 months    PROVIDE          BANGLADESH                     0             543     604
6 months    PROVIDE          BANGLADESH                     1              61     604
6 months    ResPak           PAKISTAN                       0             173     239
6 months    ResPak           PAKISTAN                       1              66     239
6 months    SAS-CompFeed     INDIA                          0             972    1336
6 months    SAS-CompFeed     INDIA                          1             364    1336
6 months    SAS-FoodSuppl    INDIA                          0             232     380
6 months    SAS-FoodSuppl    INDIA                          1             148     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             139    2029
6 months    ZVITAMBO         ZIMBABWE                       0            7795    8669
6 months    ZVITAMBO         ZIMBABWE                       1             874    8669
24 months   CMC-V-BCS-2002   INDIA                          0             294     371
24 months   CMC-V-BCS-2002   INDIA                          1              77     371
24 months   CMIN             BANGLADESH                     0             153     242
24 months   CMIN             BANGLADESH                     1              89     242
24 months   COHORTS          GUATEMALA                      0             740    1070
24 months   COHORTS          GUATEMALA                      1             330    1070
24 months   COHORTS          INDIA                          0            4696    5337
24 months   COHORTS          INDIA                          1             641    5337
24 months   COHORTS          PHILIPPINES                    0            2310    2445
24 months   COHORTS          PHILIPPINES                    1             135    2445
24 months   CONTENT          PERU                           0             147     164
24 months   CONTENT          PERU                           1              17     164
24 months   EE               PAKISTAN                       0             100     167
24 months   EE               PAKISTAN                       1              67     167
24 months   GMS-Nepal        NEPAL                          0             406     488
24 months   GMS-Nepal        NEPAL                          1              82     488
24 months   IRC              INDIA                          0             358     409
24 months   IRC              INDIA                          1              51     409
24 months   JiVitA-3         BANGLADESH                     0            5942    8632
24 months   JiVitA-3         BANGLADESH                     1            2690    8632
24 months   JiVitA-4         BANGLADESH                     0            3396    4752
24 months   JiVitA-4         BANGLADESH                     1            1356    4752
24 months   Keneba           GAMBIA                         0            1549    1725
24 months   Keneba           GAMBIA                         1             176    1725
24 months   LCNI-5           MALAWI                         0             377     579
24 months   LCNI-5           MALAWI                         1             202     579
24 months   MAL-ED           BANGLADESH                     0             179     212
24 months   MAL-ED           BANGLADESH                     1              33     212
24 months   MAL-ED           BRAZIL                         0             150     169
24 months   MAL-ED           BRAZIL                         1              19     169
24 months   MAL-ED           INDIA                          0             191     227
24 months   MAL-ED           INDIA                          1              36     227
24 months   MAL-ED           NEPAL                          0             201     228
24 months   MAL-ED           NEPAL                          1              27     228
24 months   MAL-ED           PERU                           0             174     201
24 months   MAL-ED           PERU                           1              27     201
24 months   MAL-ED           SOUTH AFRICA                   0             214     238
24 months   MAL-ED           SOUTH AFRICA                   1              24     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             181     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              33     214
24 months   NIH-Birth        BANGLADESH                     0             355     429
24 months   NIH-Birth        BANGLADESH                     1              74     429
24 months   NIH-Crypto       BANGLADESH                     0             444     514
24 months   NIH-Crypto       BANGLADESH                     1              70     514
24 months   PROBIT           BELARUS                        0            4022    4035
24 months   PROBIT           BELARUS                        1              13    4035
24 months   PROVIDE          BANGLADESH                     0             518     578
24 months   PROVIDE          BANGLADESH                     1              60     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   ZVITAMBO         ZIMBABWE                       0            1406    1640
24 months   ZVITAMBO         ZIMBABWE                       1             234    1640


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
![](/tmp/981d0c86-e5bf-4f76-a55b-60f499676677/3bdb1d0c-720f-4b64-a455-8f59f755a063/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/981d0c86-e5bf-4f76-a55b-60f499676677/3bdb1d0c-720f-4b64-a455-8f59f755a063/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/981d0c86-e5bf-4f76-a55b-60f499676677/3bdb1d0c-720f-4b64-a455-8f59f755a063/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.5982494   -0.7615979   -0.4349009
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -2.7198714   -3.0496890   -2.3900539
Birth       CMIN             BANGLADESH                     0                    NA                -0.9811765   -1.4828326   -0.4795203
Birth       CMIN             BANGLADESH                     1                    NA                -3.5811111   -4.2641379   -2.8980843
Birth       COHORTS          GUATEMALA                      0                    NA                 0.3061184    0.2342008    0.3780361
Birth       COHORTS          GUATEMALA                      1                    NA                -2.6926915   -2.9143543   -2.4710288
Birth       COHORTS          INDIA                          0                    NA                -0.3939467   -0.4175497   -0.3703437
Birth       COHORTS          INDIA                          1                    NA                -2.7099760   -2.7566339   -2.6633181
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.0879304   -0.1213297   -0.0545311
Birth       COHORTS          PHILIPPINES                    1                    NA                -2.7094972   -2.8110536   -2.6079408
Birth       EE               PAKISTAN                       0                    NA                -0.9135188   -1.0882810   -0.7387565
Birth       EE               PAKISTAN                       1                    NA                -3.1812559   -3.3635038   -2.9990080
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.7483887   -0.8145285   -0.6822488
Birth       GMS-Nepal        NEPAL                          1                    NA                -2.6676237   -2.7833183   -2.5519291
Birth       IRC              INDIA                          0                    NA                 0.0485311   -0.0898296    0.1868919
Birth       IRC              INDIA                          1                    NA                -3.0553619   -3.3778879   -2.7328359
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.9712837   -0.9846039   -0.9579635
Birth       JiVitA-3         BANGLADESH                     1                    NA                -2.8512122   -2.8706572   -2.8317672
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.9839813   -1.0226013   -0.9453612
Birth       JiVitA-4         BANGLADESH                     1                    NA                -2.7586257   -2.8104233   -2.7068280
Birth       Keneba           GAMBIA                         0                    NA                 0.2037727    0.1502168    0.2573285
Birth       Keneba           GAMBIA                         1                    NA                -3.0399048   -3.2783950   -2.8014147
Birth       MAL-ED           BANGLADESH                     0                    NA                -0.7450870   -0.8516801   -0.6384939
Birth       MAL-ED           BANGLADESH                     1                    NA                -2.6918999   -2.8673098   -2.5164900
Birth       MAL-ED           BRAZIL                         0                    NA                -0.3512500   -0.5701451   -0.1323549
Birth       MAL-ED           BRAZIL                         1                    NA                -2.6966667   -2.9574559   -2.4358775
Birth       MAL-ED           INDIA                          0                    NA                -0.7886568   -0.9943790   -0.5829347
Birth       MAL-ED           INDIA                          1                    NA                -2.7586101   -3.1449391   -2.3722812
Birth       MAL-ED           PERU                           0                    NA                -0.6817554   -0.7833075   -0.5802032
Birth       MAL-ED           PERU                           1                    NA                -2.4960147   -2.6593075   -2.3327218
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.4372256   -0.5921735   -0.2822776
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                -2.9507246   -3.7588970   -2.1425523
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.7266567   -0.8666442   -0.5866693
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.0569693   -3.4409264   -2.6730122
Birth       NIH-Birth        BANGLADESH                     0                    NA                -0.6106038   -0.6873048   -0.5339029
Birth       NIH-Birth        BANGLADESH                     1                    NA                -2.6125787   -2.7235659   -2.5015915
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.6576916   -0.7195476   -0.5958357
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -2.4810015   -2.5793949   -2.3826081
Birth       PROBIT           BELARUS                        0                    NA                 1.3205773    1.1598269    1.4813277
Birth       PROBIT           BELARUS                        1                    NA                -2.4122621   -2.4369051   -2.3876190
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.7367157   -0.8055633   -0.6678681
Birth       PROVIDE          BANGLADESH                     1                    NA                -2.3984782   -2.4942454   -2.3027110
Birth       ResPak           PAKISTAN                       0                    NA                -0.2044461   -0.5614798    0.1525876
Birth       ResPak           PAKISTAN                       1                    NA                -2.5758329   -2.8242369   -2.3274290
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.9058411   -0.9443530   -0.8673293
Birth       SAS-CompFeed     INDIA                          1                    NA                -2.7923449   -2.9314773   -2.6532125
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.2360964   -0.2531998   -0.2189931
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                -2.8101736   -2.8515391   -2.7688081
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.2205897   -1.3710971   -1.0700822
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -2.2185386   -2.5346131   -1.9024641
6 months    CMIN             BANGLADESH                     0                    NA                -1.3210507   -1.4629916   -1.1791098
6 months    CMIN             BANGLADESH                     1                    NA                -2.5496697   -2.7497387   -2.3496008
6 months    COHORTS          GUATEMALA                      0                    NA                -1.5951504   -1.6612871   -1.5290137
6 months    COHORTS          GUATEMALA                      1                    NA                -2.9956842   -3.1377132   -2.8536552
6 months    COHORTS          INDIA                          0                    NA                -0.8331625   -0.8601777   -0.8061472
6 months    COHORTS          INDIA                          1                    NA                -2.2275337   -2.3088497   -2.1462178
6 months    COHORTS          PHILIPPINES                    0                    NA                -1.0656699   -1.1074887   -1.0238511
6 months    COHORTS          PHILIPPINES                    1                    NA                -2.3394993   -2.4828373   -2.1961612
6 months    CONTENT          PERU                           0                    NA                -0.1301531   -0.2550490   -0.0052573
6 months    CONTENT          PERU                           1                    NA                -1.6316616   -1.9029559   -1.3603672
6 months    EE               PAKISTAN                       0                    NA                -1.5221559   -1.6455560   -1.3987558
6 months    EE               PAKISTAN                       1                    NA                -2.8009144   -2.9668193   -2.6350095
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.1975592   -1.2755393   -1.1195791
6 months    GMS-Nepal        NEPAL                          1                    NA                -2.1698039   -2.3664036   -1.9732043
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.1778099   -1.2691373   -1.0864824
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -2.7916076   -2.9485695   -2.6346457
6 months    IRC              INDIA                          0                    NA                -1.1046075   -1.2391879   -0.9700271
6 months    IRC              INDIA                          1                    NA                -2.2277095   -2.6093923   -1.8460267
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.9677301   -0.9914356   -0.9440246
6 months    JiVitA-3         BANGLADESH                     1                    NA                -2.1103107   -2.1405821   -2.0800393
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.0089387   -1.0457821   -0.9720953
6 months    JiVitA-4         BANGLADESH                     1                    NA                -2.2036760   -2.2641354   -2.1432167
6 months    Keneba           GAMBIA                         0                    NA                -0.8032629   -0.8506110   -0.7559147
6 months    Keneba           GAMBIA                         1                    NA                -1.8879613   -2.0486188   -1.7273038
6 months    LCNI-5           MALAWI                         0                    NA                -1.0577477   -1.1150065   -1.0004890
6 months    LCNI-5           MALAWI                         1                    NA                -2.6934568   -2.7651208   -2.6217928
6 months    MAL-ED           BANGLADESH                     0                    NA                -1.0110033   -1.1186378   -0.9033687
6 months    MAL-ED           BANGLADESH                     1                    NA                -2.2205139   -2.5287720   -1.9122559
6 months    MAL-ED           BRAZIL                         0                    NA                 0.1087827   -0.0422981    0.2598635
6 months    MAL-ED           BRAZIL                         1                    NA                -0.3786918   -0.8912361    0.1338525
6 months    MAL-ED           INDIA                          0                    NA                -1.0408972   -1.1564526   -0.9253418
6 months    MAL-ED           INDIA                          1                    NA                -2.0777348   -2.3993539   -1.7561156
6 months    MAL-ED           NEPAL                          0                    NA                -0.4245631   -0.5312943   -0.3178320
6 months    MAL-ED           NEPAL                          1                    NA                -1.4225033   -1.7638859   -1.0811206
6 months    MAL-ED           PERU                           0                    NA                -1.1621677   -1.2651303   -1.0592052
6 months    MAL-ED           PERU                           1                    NA                -2.3497396   -2.6187503   -2.0807288
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.9799488   -1.1089764   -0.8509212
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.6972937   -2.1546113   -1.2399761
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1961084   -1.3168685   -1.0753484
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.2948536   -2.5997823   -1.9899250
6 months    NIH-Birth        BANGLADESH                     0                    NA                -1.2214990   -1.3105299   -1.1324681
6 months    NIH-Birth        BANGLADESH                     1                    NA                -2.3508828   -2.5514373   -2.1503283
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -1.0446490   -1.1165584   -0.9727396
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -2.1289185   -2.2913577   -1.9664794
6 months    PROBIT           BELARUS                        0                    NA                 0.1081186    0.0141168    0.2021205
6 months    PROBIT           BELARUS                        1                    NA                -1.3054396   -1.4399290   -1.1709501
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.9956434   -1.0703864   -0.9209003
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.9264204   -2.1565762   -1.6962647
6 months    ResPak           PAKISTAN                       0                    NA                -1.1855178   -1.4255370   -0.9454985
6 months    ResPak           PAKISTAN                       1                    NA                -2.1063171   -2.4698268   -1.7428073
6 months    SAS-CompFeed     INDIA                          0                    NA                -1.0606247   -1.1392424   -0.9820070
6 months    SAS-CompFeed     INDIA                          1                    NA                -2.3009135   -2.3824080   -2.2194190
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -1.2510676   -1.3435457   -1.1585895
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -2.9001309   -3.0413327   -2.7589290
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4619622   -0.5107403   -0.4131841
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.6917050   -1.8802129   -1.5031971
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.7798908   -0.8061211   -0.7536605
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -1.6505023   -1.7349756   -1.5660289
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.4729718   -2.5839980   -2.3619456
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.8691022   -3.0891729   -2.6490315
24 months   CMIN             BANGLADESH                     0                    NA                -2.2683107   -2.4109425   -2.1256790
24 months   CMIN             BANGLADESH                     1                    NA                -2.9349352   -3.1431317   -2.7267386
24 months   COHORTS          GUATEMALA                      0                    NA                -2.7546256   -2.8296735   -2.6795778
24 months   COHORTS          GUATEMALA                      1                    NA                -3.5215678   -3.6227356   -3.4204000
24 months   COHORTS          INDIA                          0                    NA                -2.0064905   -2.0400286   -1.9729525
24 months   COHORTS          INDIA                          1                    NA                -2.9520325   -3.0431690   -2.8608960
24 months   COHORTS          PHILIPPINES                    0                    NA                -2.3644652   -2.4101555   -2.3187749
24 months   COHORTS          PHILIPPINES                    1                    NA                -3.2697534   -3.4440498   -3.0954571
24 months   CONTENT          PERU                           0                    NA                -0.5955936   -0.7489013   -0.4422859
24 months   CONTENT          PERU                           1                    NA                -1.4280089   -2.0394982   -0.8165196
24 months   EE               PAKISTAN                       0                    NA                -2.3961809   -2.5600033   -2.2323585
24 months   EE               PAKISTAN                       1                    NA                -3.0381406   -3.2750783   -2.8012029
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.7921614   -1.8820650   -1.7022579
24 months   GMS-Nepal        NEPAL                          1                    NA                -2.3332128   -2.5486470   -2.1177787
24 months   IRC              INDIA                          0                    NA                -1.7262332   -1.8259519   -1.6265145
24 months   IRC              INDIA                          1                    NA                -2.3078588   -2.5393311   -2.0763866
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.7743986   -1.8040046   -1.7447925
24 months   JiVitA-3         BANGLADESH                     1                    NA                -2.5514891   -2.5937355   -2.5092426
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.5591402   -1.5961383   -1.5221422
24 months   JiVitA-4         BANGLADESH                     1                    NA                -2.3370867   -2.3954695   -2.2787039
24 months   Keneba           GAMBIA                         0                    NA                -1.4967331   -1.5475399   -1.4459264
24 months   Keneba           GAMBIA                         1                    NA                -2.3075688   -2.4729851   -2.1421526
24 months   LCNI-5           MALAWI                         0                    NA                -1.5051108   -1.5908581   -1.4193635
24 months   LCNI-5           MALAWI                         1                    NA                -2.5959400   -2.7159392   -2.4759408
24 months   MAL-ED           BANGLADESH                     0                    NA                -1.8645747   -1.9967147   -1.7324347
24 months   MAL-ED           BANGLADESH                     1                    NA                -2.7956031   -3.0912515   -2.4999547
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0608240   -0.1165454    0.2381934
24 months   MAL-ED           BRAZIL                         1                    NA                -0.4428322   -0.9557597    0.0700953
24 months   MAL-ED           INDIA                          0                    NA                -1.7698656   -1.8976510   -1.6420801
24 months   MAL-ED           INDIA                          1                    NA                -2.4834845   -2.8290832   -2.1378857
24 months   MAL-ED           NEPAL                          0                    NA                -1.2071299   -1.3255876   -1.0886721
24 months   MAL-ED           NEPAL                          1                    NA                -1.9952999   -2.3906245   -1.5999752
24 months   MAL-ED           PERU                           0                    NA                -1.6470739   -1.7673628   -1.5267851
24 months   MAL-ED           PERU                           1                    NA                -2.3545500   -2.7427526   -1.9663474
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -1.6097019   -1.7518248   -1.4675790
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -2.0622425   -2.5832584   -1.5412266
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5489220   -2.6960850   -2.4017590
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.1490548   -3.4364920   -2.8616175
24 months   NIH-Birth        BANGLADESH                     0                    NA                -2.0466344   -2.1514761   -1.9417928
24 months   NIH-Birth        BANGLADESH                     1                    NA                -2.9334043   -3.1795055   -2.6873032
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -1.3364831   -1.4221476   -1.2508186
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -2.0927023   -2.3266013   -1.8588033
24 months   PROBIT           BELARUS                        0                    NA                -0.1421133   -0.4278039    0.1435773
24 months   PROBIT           BELARUS                        1                    NA                -0.6703766   -1.1119139   -0.2288393
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5271459   -1.6118055   -1.4424864
24 months   PROVIDE          BANGLADESH                     1                    NA                -2.2725960   -2.5478008   -1.9973911
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.5242203   -1.5840744   -1.4643661
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -2.1032986   -2.2652791   -1.9413180


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
Birth       CMC-V-BCS-2002   INDIA                          1                    0                 -2.1216220   -2.4947709   -1.7484732
Birth       CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMIN             BANGLADESH                     1                    0                 -2.5999346   -3.4473923   -1.7524770
Birth       COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      1                    0                 -2.9988099   -3.2319566   -2.7656633
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                 -2.3160293   -2.3683312   -2.2637274
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                 -2.6215668   -2.7285142   -2.5146194
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                 -2.2677371   -2.5229331   -2.0125411
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                 -1.9192350   -2.0526555   -1.7858145
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                 -3.1038930   -3.4551256   -2.7526605
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 -1.8799285   -1.9041711   -1.8556858
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 -1.7746444   -1.8400451   -1.7092437
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                 -3.2436775   -3.4882856   -2.9990694
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                 -1.9468129   -2.1525143   -1.7411115
Birth       MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         1                    0                 -2.3454167   -2.6858959   -2.0049374
Birth       MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          1                    0                 -1.9699533   -2.4115430   -1.5283635
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                 -1.8142593   -2.0066248   -1.6218938
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                 -2.5134991   -3.3370714   -1.6899267
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -2.3303126   -2.7406348   -1.9199904
Birth       NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     1                    0                 -2.0019749   -2.1369760   -1.8669738
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 -1.8233099   -1.9396241   -1.7069957
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                 -3.7328394   -3.9064591   -3.5592196
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -1.6617625   -1.7793888   -1.5441363
Birth       ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       1                    0                 -2.3713868   -2.8219475   -1.9208261
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                 -1.8865037   -2.0299099   -1.7430975
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 -2.5740771   -2.6189063   -2.5292479
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.9979489   -1.3471154   -0.6487824
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -1.2286190   -1.4741091   -0.9831289
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                 -1.4005338   -1.5575238   -1.2435439
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -1.3943713   -1.4801435   -1.3085990
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                 -1.2738294   -1.4231013   -1.1245574
6 months    CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           1                    0                 -1.5015084   -1.8000217   -1.2029952
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -1.2787585   -1.4860453   -1.0714718
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 -0.9722448   -1.1837560   -0.7607335
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -1.6137977   -1.7955791   -1.4320164
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -1.1231020   -1.5270194   -0.7191846
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 -1.1425806   -1.1775576   -1.1076036
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -1.1947373   -1.2650117   -1.1244630
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -1.0846984   -1.2518042   -0.9175926
6 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         1                    0                 -1.6357091   -1.7278573   -1.5435608
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 -1.2095107   -1.5364749   -0.8825465
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.4874746   -1.0223245    0.0473753
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                 -1.0368376   -1.3791492   -0.6945259
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -0.9979401   -1.3556037   -0.6402766
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                 -1.1875718   -1.4754828   -0.8996609
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.7173449   -1.1932940   -0.2413958
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.0987452   -1.4268944   -0.7705959
6 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     1                    0                 -1.1293837   -1.3482364   -0.9105311
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -1.0842695   -1.2620145   -0.9065246
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                 -1.4135582   -1.5637654   -1.2633510
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.9307771   -1.1726157   -0.6889384
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                 -0.9207993   -1.3563183   -0.4852803
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -1.2402888   -1.3209161   -1.1596616
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -1.6490632   -1.8180848   -1.4800417
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.2297428   -1.4242241   -1.0352615
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.8706114   -0.9589587   -0.7822642
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.3961304   -0.6424735   -0.1497872
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.6666244   -0.9191212   -0.4141277
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                 -0.7669421   -0.8927699   -0.6411143
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                 -0.9455420   -1.0424017   -0.8486823
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                 -0.9052882   -1.0855420   -0.7250344
24 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           1                    0                 -0.8324153   -1.4620148   -0.2028158
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.6419597   -0.9301530   -0.3537664
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.5410514   -0.7738073   -0.3082955
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.5816256   -0.8335524   -0.3296988
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 -0.7770905   -0.8236256   -0.7305554
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.7779465   -0.8437358   -0.7121572
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.8108357   -0.9837005   -0.6379709
24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         1                    0                 -1.0908292   -1.2389472   -0.9427112
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                 -0.9310284   -1.2546180   -0.6074388
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                 -0.5036562   -1.0458808    0.0385683
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                 -0.7136189   -1.0824920   -0.3447458
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                 -0.7881700   -1.1998919   -0.3764481
24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           1                    0                 -0.7074760   -1.1145110   -0.3004411
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.4525406   -0.9895733    0.0844921
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.6001328   -0.9234827   -0.2767828
24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     1                    0                 -0.8867699   -1.1544849   -0.6190549
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.7562192   -1.0055279   -0.5069104
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                 -0.5282633   -1.0054828   -0.0510438
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.7454500   -1.0326494   -0.4582506
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.5790783   -0.7512986   -0.4068581


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.3629462   -0.5346755   -0.1912169
Birth       CMIN             BANGLADESH                     0                    NA                -0.8999774   -1.4666696   -0.3332851
Birth       COHORTS          GUATEMALA                      0                    NA                -0.1763884   -0.2270165   -0.1257603
Birth       COHORTS          INDIA                          0                    NA                -0.2759494   -0.2951130   -0.2567857
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.1611188   -0.1844647   -0.1377729
Birth       EE               PAKISTAN                       0                    NA                -0.9473562   -1.1320728   -0.7626397
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.3367694   -0.3965938   -0.2769450
Birth       IRC              INDIA                          0                    NA                -0.3565724   -0.4621050   -0.2510398
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.6181311   -0.6337667   -0.6024955
Birth       JiVitA-4         BANGLADESH                     0                    NA                -0.5393096   -0.5787887   -0.4998305
Birth       Keneba           GAMBIA                         0                    NA                -0.1729690   -0.2115341   -0.1344039
Birth       MAL-ED           BANGLADESH                     0                    NA                -0.3730082   -0.4796066   -0.2664099
Birth       MAL-ED           BRAZIL                         0                    NA                -0.3247500   -0.5287356   -0.1207644
Birth       MAL-ED           INDIA                          0                    NA                -0.4149602   -0.6641063   -0.1658141
Birth       MAL-ED           PERU                           0                    NA                -0.2010343   -0.2781609   -0.1239078
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.1944818   -0.3258101   -0.0631534
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4289433   -0.6097228   -0.2481637
Birth       NIH-Birth        BANGLADESH                     0                    NA                -0.3204159   -0.3826846   -0.2581472
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.2518029   -0.3002599   -0.2033459
Birth       PROBIT           BELARUS                        0                    NA                -0.0091356   -0.0149583   -0.0033128
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.1483863   -0.1898811   -0.1068916
Birth       ResPak           PAKISTAN                       0                    NA                -0.7755539   -1.1560243   -0.3950835
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.5255806   -0.5956704   -0.4554907
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.2641760   -0.2780138   -0.2503382
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.2028611   -0.2832097   -0.1225125
6 months    CMIN             BANGLADESH                     0                    NA                -0.4633868   -0.5827972   -0.3439765
6 months    COHORTS          GUATEMALA                      0                    NA                -0.2205832   -0.2617120   -0.1794544
6 months    COHORTS          INDIA                          0                    NA                -0.1636830   -0.1783643   -0.1490017
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0749025   -0.0896321   -0.0601728
6 months    CONTENT          PERU                           0                    NA                -0.1483725   -0.2164886   -0.0802563
6 months    EE               PAKISTAN                       0                    NA                -0.5614009   -0.6732116   -0.4495902
6 months    GMS-Nepal        NEPAL                          0                    NA                -0.1532801   -0.1980402   -0.1085199
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.3840909   -0.4731716   -0.2950102
6 months    IRC              INDIA                          0                    NA                -0.1297987   -0.1886151   -0.0709823
6 months    JiVitA-3         BANGLADESH                     0                    NA                -0.3453631   -0.3592089   -0.3315174
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.3358553   -0.3605262   -0.3111844
6 months    Keneba           GAMBIA                         0                    NA                -0.1008741   -0.1216159   -0.0801322
6 months    LCNI-5           MALAWI                         0                    NA                -0.6024430   -0.6662945   -0.5385914
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.1939898   -0.2709025   -0.1170771
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0612070   -0.1209309   -0.0014831
6 months    MAL-ED           INDIA                          0                    NA                -0.1706282   -0.2424452   -0.0988112
6 months    MAL-ED           NEPAL                          0                    NA                -0.1370188   -0.2008224   -0.0732151
6 months    MAL-ED           PERU                           0                    NA                -0.1614983   -0.2233097   -0.0996869
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0833714   -0.1400352   -0.0267076
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1726365   -0.2431646   -0.1021084
6 months    NIH-Birth        BANGLADESH                     0                    NA                -0.1858830   -0.2358320   -0.1359341
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.1540293   -0.1915380   -0.1165206
6 months    PROBIT           BELARUS                        0                    NA                -0.0101112   -0.0160191   -0.0042034
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0960481   -0.1289217   -0.0631745
6 months    ResPak           PAKISTAN                       0                    NA                -0.2458909   -0.3763597   -0.1154221
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.3412316   -0.3824354   -0.3000278
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.6476166   -0.7525425   -0.5426907
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0814767   -0.0998362   -0.0631173
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0880541   -0.0982703   -0.0778380
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0858961   -0.1384455   -0.0333468
24 months   CMIN             BANGLADESH                     0                    NA                -0.2426397   -0.3446517   -0.1406277
24 months   COHORTS          GUATEMALA                      0                    NA                -0.2377482   -0.2819991   -0.1934973
24 months   COHORTS          INDIA                          0                    NA                -0.1133296   -0.1275605   -0.0990987
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0496493   -0.0624865   -0.0368122
24 months   CONTENT          PERU                           0                    NA                -0.0912662   -0.1600575   -0.0224749
24 months   EE               PAKISTAN                       0                    NA                -0.2738091   -0.4003662   -0.1472521
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0952566   -0.1385952   -0.0519181
24 months   IRC              INDIA                          0                    NA                -0.0725443   -0.1084790   -0.0366096
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.2392495   -0.2557593   -0.2227396
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.2215816   -0.2428674   -0.2002958
24 months   Keneba           GAMBIA                         0                    NA                -0.0807024   -0.1013736   -0.0600313
24 months   LCNI-5           MALAWI                         0                    NA                -0.3810377   -0.4498505   -0.3122250
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.1138215   -0.1759640   -0.0516790
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0547096   -0.1175160    0.0080968
24 months   MAL-ED           INDIA                          0                    NA                -0.1163239   -0.1829234   -0.0497243
24 months   MAL-ED           NEPAL                          0                    NA                -0.1004579   -0.1587638   -0.0421519
24 months   MAL-ED           PERU                           0                    NA                -0.1053970   -0.1701757   -0.0406183
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0353576   -0.0818318    0.0111165
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0966387   -0.1551874   -0.0380901
24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.1724234   -0.2307411   -0.1141058
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.1047815   -0.1455137   -0.0640492
24 months   PROBIT           BELARUS                        0                    NA                -0.0021758   -0.0149058    0.0105541
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0752762   -0.1102153   -0.0403371
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0813499   -0.1075330   -0.0551667
