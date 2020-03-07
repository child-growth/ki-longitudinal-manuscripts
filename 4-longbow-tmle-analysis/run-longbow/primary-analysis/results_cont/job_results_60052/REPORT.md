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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

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




# Results Detail

## Results Plots
![](/tmp/a060433a-5577-429e-9c03-36fcae20165e/dd2d8f03-6278-44af-a39d-2ff0eff78275/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a060433a-5577-429e-9c03-36fcae20165e/dd2d8f03-6278-44af-a39d-2ff0eff78275/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a060433a-5577-429e-9c03-36fcae20165e/dd2d8f03-6278-44af-a39d-2ff0eff78275/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.9817992   -1.3323827   -0.6312158
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.3950497   -1.0292636    0.2391642
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.6409380   -1.1393372   -0.1425388
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.1631480   -1.5758593   -0.7504367
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2207720    0.0801558    0.3613882
Birth       COHORTS          GUATEMALA                      Wealth Q1            NA                 0.0755879   -0.0950231    0.2461990
Birth       COHORTS          GUATEMALA                      Wealth Q2            NA                 0.0772731   -0.1292978    0.2838440
Birth       COHORTS          GUATEMALA                      Wealth Q3            NA                 0.1518373   -0.0307768    0.3344515
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1423735   -0.2123269   -0.0724200
Birth       COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.3110423   -0.3954601   -0.2266245
Birth       COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.2872390   -0.3891379   -0.1853401
Birth       COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2827509   -0.3524363   -0.2130654
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0313882   -1.1892963   -0.8734801
Birth       GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1973583   -1.3410259   -1.0536907
Birth       GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.0472445   -1.2036979   -0.8907911
Birth       GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.0779451   -1.2374423   -0.9184479
Birth       IRC              INDIA                          Wealth Q4            NA                -0.2592279   -0.5738767    0.0554209
Birth       IRC              INDIA                          Wealth Q1            NA                -0.1784604   -0.4542038    0.0972830
Birth       IRC              INDIA                          Wealth Q2            NA                -0.4022026   -0.6940198   -0.1103855
Birth       IRC              INDIA                          Wealth Q3            NA                -0.4101653   -0.6652605   -0.1550701
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -1.5718308   -1.6182183   -1.5254432
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            NA                -1.6528299   -1.6881404   -1.6175194
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            NA                -1.6022785   -1.6361347   -1.5684224
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            NA                -1.5869393   -1.6203499   -1.5535286
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                -1.4823989   -1.5922339   -1.3725639
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            NA                -1.5500311   -1.6449224   -1.4551397
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            NA                -1.5329834   -1.6532307   -1.4127361
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            NA                -1.5091598   -1.6296034   -1.3887161
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.7663769   -0.9963325   -0.5364213
Birth       MAL-ED           BANGLADESH                     Wealth Q1            NA                -1.3312089   -1.6199638   -1.0424541
Birth       MAL-ED           BANGLADESH                     Wealth Q2            NA                -1.2126820   -1.5206343   -0.9047297
Birth       MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.9086692   -1.1765817   -0.6407566
Birth       MAL-ED           BRAZIL                         Wealth Q4            NA                -0.6800143   -1.5886864    0.2286577
Birth       MAL-ED           BRAZIL                         Wealth Q1            NA                -0.8906669   -1.4217228   -0.3596109
Birth       MAL-ED           BRAZIL                         Wealth Q2            NA                -0.6045468   -1.0949687   -0.1141249
Birth       MAL-ED           BRAZIL                         Wealth Q3            NA                -0.3640603   -1.2009151    0.4727946
Birth       MAL-ED           INDIA                          Wealth Q4            NA                -1.0537500   -1.5024873   -0.6050127
Birth       MAL-ED           INDIA                          Wealth Q1            NA                -1.1307143   -1.7957911   -0.4656374
Birth       MAL-ED           INDIA                          Wealth Q2            NA                -1.4622222   -2.0687425   -0.8557019
Birth       MAL-ED           INDIA                          Wealth Q3            NA                -1.2070000   -1.8208171   -0.5931829
Birth       MAL-ED           PERU                           Wealth Q4            NA                -1.0003798   -1.2155209   -0.7852387
Birth       MAL-ED           PERU                           Wealth Q1            NA                -0.7856730   -0.9730180   -0.5983280
Birth       MAL-ED           PERU                           Wealth Q2            NA                -0.9712561   -1.1869542   -0.7555580
Birth       MAL-ED           PERU                           Wealth Q3            NA                -0.9145882   -1.1403944   -0.6887820
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.4842629   -0.8412765   -0.1272494
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -0.6962765   -1.1179459   -0.2746071
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -0.5546719   -0.9311634   -0.1781804
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -0.3783613   -0.8020424    0.0453197
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -1.3546000   -1.8479574   -0.8612426
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -1.1896485   -1.6313408   -0.7479562
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -1.0436460   -1.5390172   -0.5482747
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.9145195   -1.2804636   -0.5485755
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.9760784   -1.0866372   -0.8655197
Birth       PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.8911695   -1.0251981   -0.7571409
Birth       PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.8163214   -0.9403856   -0.6922572
Birth       PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.8499039   -0.9916473   -0.7081604
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -1.7669751   -2.0393063   -1.4946439
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -1.0371638   -1.2878845   -0.7864431
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -1.4212338   -1.7035520   -1.1389156
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -1.4204388   -1.7137231   -1.1271545
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -1.6825488   -1.7880086   -1.5770889
6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                -1.9300766   -2.0828554   -1.7772979
6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                -1.8985607   -2.0497971   -1.7473244
6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                -1.8169413   -1.9832931   -1.6505894
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.9694813   -1.0512606   -0.8877021
6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                -1.2407512   -1.3405388   -1.1409636
6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                -1.1547247   -1.2576717   -1.0517777
6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                -1.2289792   -1.3012365   -1.1567220
6 months    CONTENT          PERU                           Wealth Q4            NA                -0.2528703   -0.5012308   -0.0045097
6 months    CONTENT          PERU                           Wealth Q1            NA                -0.3348821   -0.5895664   -0.0801978
6 months    CONTENT          PERU                           Wealth Q2            NA                -0.3746406   -0.6752808   -0.0740005
6 months    CONTENT          PERU                           Wealth Q3            NA                -0.2431833   -0.5357595    0.0493929
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.3196393   -1.4634236   -1.1758549
6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.4417260   -1.5970700   -1.2863819
6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.3250506   -1.4922760   -1.1578253
6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.3140005   -1.4679281   -1.1600728
6 months    IRC              INDIA                          Wealth Q4            NA                -1.0448912   -1.3260189   -0.7637636
6 months    IRC              INDIA                          Wealth Q1            NA                -1.4119939   -1.6558938   -1.1680939
6 months    IRC              INDIA                          Wealth Q2            NA                -1.4023699   -1.6461360   -1.1586039
6 months    IRC              INDIA                          Wealth Q3            NA                -1.0267915   -1.2841942   -0.7693888
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -1.2778291   -1.3308128   -1.2248455
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                -1.4406099   -1.4884454   -1.3927745
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                -1.3681984   -1.4125757   -1.3238211
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                -1.3061075   -1.3481883   -1.2640267
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -1.2588985   -1.3451845   -1.1726126
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                -1.4869162   -1.5513874   -1.4224450
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                -1.4083984   -1.4853439   -1.3314529
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                -1.2974254   -1.3794533   -1.2153976
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                -1.6063856   -1.7354430   -1.4773283
6 months    LCNI-5           MALAWI                         Wealth Q1            NA                -1.6158188   -1.7696315   -1.4620060
6 months    LCNI-5           MALAWI                         Wealth Q2            NA                -1.7181466   -1.8552291   -1.5810640
6 months    LCNI-5           MALAWI                         Wealth Q3            NA                -1.6324476   -1.7586392   -1.5062560
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.9381669   -1.1607618   -0.7155721
6 months    MAL-ED           BANGLADESH                     Wealth Q1            NA                -1.3255808   -1.5901292   -1.0610323
6 months    MAL-ED           BANGLADESH                     Wealth Q2            NA                -1.3746099   -1.5957858   -1.1534340
6 months    MAL-ED           BANGLADESH                     Wealth Q3            NA                -1.2177190   -1.4471040   -0.9883340
6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0278180   -0.2256970    0.2813329
6 months    MAL-ED           BRAZIL                         Wealth Q1            NA                 0.0285830   -0.2546977    0.3118637
6 months    MAL-ED           BRAZIL                         Wealth Q2            NA                 0.1732276   -0.1201772    0.4666324
6 months    MAL-ED           BRAZIL                         Wealth Q3            NA                 0.0495261   -0.2754984    0.3745506
6 months    MAL-ED           INDIA                          Wealth Q4            NA                -1.1985857   -1.3647199   -1.0324515
6 months    MAL-ED           INDIA                          Wealth Q1            NA                -1.3343128   -1.6129806   -1.0556449
6 months    MAL-ED           INDIA                          Wealth Q2            NA                -1.2236668   -1.5036074   -0.9437261
6 months    MAL-ED           INDIA                          Wealth Q3            NA                -1.0767908   -1.3022253   -0.8513562
6 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.4018844   -0.6128714   -0.1908974
6 months    MAL-ED           NEPAL                          Wealth Q1            NA                -0.5258827   -0.7929140   -0.2588513
6 months    MAL-ED           NEPAL                          Wealth Q2            NA                -0.3887538   -0.6060849   -0.1714226
6 months    MAL-ED           NEPAL                          Wealth Q3            NA                -0.7948260   -1.0054089   -0.5842431
6 months    MAL-ED           PERU                           Wealth Q4            NA                -1.2622376   -1.4961518   -1.0283235
6 months    MAL-ED           PERU                           Wealth Q1            NA                -1.2064893   -1.4428294   -0.9701492
6 months    MAL-ED           PERU                           Wealth Q2            NA                -1.4167367   -1.6114532   -1.2220202
6 months    MAL-ED           PERU                           Wealth Q3            NA                -1.4580230   -1.6841025   -1.2319435
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.8737289   -1.1606248   -0.5868330
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -1.1006554   -1.3807223   -0.8205886
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -1.1830000   -1.4207963   -0.9452037
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -1.0264299   -1.2542221   -0.7986377
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -1.4691399   -1.6864574   -1.2518224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -1.3095416   -1.5609985   -1.0580847
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -1.3590395   -1.5978167   -1.1202624
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -1.2947035   -1.5606049   -1.0288021
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -1.3657959   -1.5319287   -1.1996630
6 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                -1.0279589   -1.1715056   -0.8844121
6 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.9536952   -1.0947844   -0.8126061
6 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                -1.1471733   -1.2965679   -0.9977787
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.7080723   -0.8041230   -0.6120216
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.4078763   -0.4945784   -0.3211742
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -0.5514012   -0.6607794   -0.4420229
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.5170993   -0.6043134   -0.4298852
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -2.6124199   -2.8109570   -2.4138827
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -2.5182305   -2.7046961   -2.3317649
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -2.6172781   -2.8131508   -2.4214054
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -2.5009599   -2.7162252   -2.2856946
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -2.8063254   -2.9037359   -2.7089150
24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                -3.0958600   -3.2477151   -2.9440048
24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                -3.0544742   -3.2001242   -2.9088242
24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                -3.1392465   -3.2889565   -2.9895366
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -2.0703667   -2.1522784   -1.9884551
24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                -2.6423210   -2.7451192   -2.5395229
24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                -2.5039773   -2.6199845   -2.3879702
24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                -2.5225290   -2.5988734   -2.4461845
24 months   CONTENT          PERU                           Wealth Q4            NA                -0.5343644   -0.8205449   -0.2481838
24 months   CONTENT          PERU                           Wealth Q1            NA                -0.7527178   -1.0711926   -0.4342429
24 months   CONTENT          PERU                           Wealth Q2            NA                -0.6352337   -0.9806567   -0.2898107
24 months   CONTENT          PERU                           Wealth Q3            NA                -0.7292006   -1.0219488   -0.4364524
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.8361304   -1.9906733   -1.6815875
24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                -2.0483801   -2.2285360   -1.8682242
24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.9198427   -2.0890581   -1.7506272
24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.7366688   -1.9074595   -1.5658780
24 months   IRC              INDIA                          Wealth Q4            NA                -1.5316212   -1.7219463   -1.3412962
24 months   IRC              INDIA                          Wealth Q1            NA                -1.9595137   -2.1476891   -1.7713382
24 months   IRC              INDIA                          Wealth Q2            NA                -1.9037762   -2.0876519   -1.7199006
24 months   IRC              INDIA                          Wealth Q3            NA                -1.7925611   -1.9696249   -1.6154973
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -1.9022512   -1.9649704   -1.8395319
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                -2.1005812   -2.1577220   -2.0434405
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                -2.0757912   -2.1242481   -2.0273343
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                -2.0266725   -2.0799757   -1.9733692
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -1.6847903   -1.7612052   -1.6083754
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                -1.9746811   -2.0358668   -1.9134954
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                -1.8493388   -1.9212363   -1.7774414
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                -1.7407801   -1.8106252   -1.6709350
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                -1.7528938   -1.9071607   -1.5986269
24 months   LCNI-5           MALAWI                         Wealth Q1            NA                -1.8802736   -2.0690656   -1.6914817
24 months   LCNI-5           MALAWI                         Wealth Q2            NA                -2.0565538   -2.2192882   -1.8938195
24 months   LCNI-5           MALAWI                         Wealth Q3            NA                -1.8153560   -1.9713010   -1.6594111
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -1.6695672   -1.9125551   -1.4265794
24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                -2.0119366   -2.3611430   -1.6627302
24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                -2.2618858   -2.5008668   -2.0229047
24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                -1.9811621   -2.1876112   -1.7747130
24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.1023136   -0.2041055    0.4087328
24 months   MAL-ED           BRAZIL                         Wealth Q1            NA                -0.1604230   -0.5420759    0.2212299
24 months   MAL-ED           BRAZIL                         Wealth Q2            NA                -0.0608525   -0.4467228    0.3250177
24 months   MAL-ED           BRAZIL                         Wealth Q3            NA                -0.0086759   -0.3130195    0.2956676
24 months   MAL-ED           INDIA                          Wealth Q4            NA                -1.8755333   -2.0870217   -1.6640450
24 months   MAL-ED           INDIA                          Wealth Q1            NA                -2.0539416   -2.3088900   -1.7989931
24 months   MAL-ED           INDIA                          Wealth Q2            NA                -1.8212617   -2.1031254   -1.5393979
24 months   MAL-ED           INDIA                          Wealth Q3            NA                -1.8137536   -2.0416178   -1.5858894
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -1.2026644   -1.4583223   -0.9470066
24 months   MAL-ED           NEPAL                          Wealth Q1            NA                -1.1662750   -1.4194994   -0.9130507
24 months   MAL-ED           NEPAL                          Wealth Q2            NA                -1.1842917   -1.4453898   -0.9231936
24 months   MAL-ED           NEPAL                          Wealth Q3            NA                -1.7013031   -1.9171261   -1.4854801
24 months   MAL-ED           PERU                           Wealth Q4            NA                -1.7169180   -1.9334375   -1.5003985
24 months   MAL-ED           PERU                           Wealth Q1            NA                -1.5522185   -1.8172067   -1.2872304
24 months   MAL-ED           PERU                           Wealth Q2            NA                -1.9077870   -2.1488157   -1.6667583
24 months   MAL-ED           PERU                           Wealth Q3            NA                -1.7638261   -2.0193750   -1.5082772
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -1.1412498   -1.3847885   -0.8977111
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -1.7675031   -2.0865945   -1.4484116
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -1.8345126   -2.1188337   -1.5501914
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -1.8249887   -2.0476247   -1.6023527
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -2.6860722   -2.9127128   -2.4594315
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -2.2934652   -2.6843842   -1.9025461
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                -2.7224146   -2.9852573   -2.4595718
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -2.7536641   -3.0114516   -2.4958765
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -2.0234534   -2.1693563   -1.8775504
24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                -1.4345904   -1.6015535   -1.2676273
24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                -1.4105474   -1.5628008   -1.2582940
24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                -1.7099461   -1.8712325   -1.5486598


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
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.5867495   -0.1334117    1.3069107
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.3408612   -0.2687294    0.9504518
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.1813488   -0.7339001    0.3712026
Birth       COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.1451841   -0.3663943    0.0760260
Birth       COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1434990   -0.3935035    0.1065056
Birth       COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0689347   -0.2996048    0.1617353
Birth       COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.1686688   -0.2763738   -0.0609638
Birth       COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1448656   -0.2665191   -0.0232120
Birth       COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.1403774   -0.2369103   -0.0438445
Birth       GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1659701   -0.3754707    0.0435306
Birth       GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0158563   -0.2331057    0.2013931
Birth       GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0465569   -0.2669566    0.1738429
Birth       IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Wealth Q1            Wealth Q4          0.0807675   -0.3171535    0.4786886
Birth       IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1429747   -0.5502909    0.2643414
Birth       IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1509374   -0.5344478    0.2325731
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0809991   -0.1348362   -0.0271621
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0304478   -0.0824119    0.0215163
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0151085   -0.0672721    0.0370551
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0676322   -0.2131331    0.0778687
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0505845   -0.2140529    0.1128838
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0267609   -0.1894410    0.1359192
Birth       MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.5648321   -0.9349429   -0.1947213
Birth       MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.4463051   -0.8314525   -0.0611578
Birth       MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.1422923   -0.4955693    0.2109847
Birth       MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.2106525   -1.2827414    0.8614363
Birth       MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.0754675   -0.9669523    1.1178873
Birth       MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.3159541   -0.9271183    1.5590265
Birth       MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.0769643   -0.8792687    0.7253402
Birth       MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.4084722   -1.1629469    0.3460025
Birth       MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.1532500   -0.9136030    0.6071030
Birth       MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.2147068   -0.0516181    0.4810318
Birth       MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0291237   -0.2552117    0.3134592
Birth       MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0857917   -0.2046635    0.3762468
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2120136   -0.7676947    0.3436675
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0704090   -0.5910516    0.4502337
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4          0.1059016   -0.4493105    0.6611137
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1649515   -0.4991705    0.8290735
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.3109540   -0.3857278    1.0076359
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.4400805   -0.1804873    1.0606482
Birth       PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0849089   -0.0776353    0.2474532
Birth       PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.1597571    0.0040190    0.3154951
Birth       PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.1261746   -0.0425500    0.2948992
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.7298113    0.3612710    1.0983517
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4          0.3457413   -0.0460198    0.7375025
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.3465363   -0.0534651    0.7465376
6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2475278   -0.4333674   -0.0616883
6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2160120   -0.4006675   -0.0313564
6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.1343925   -0.3316310    0.0628459
6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2712699   -0.4002043   -0.1423355
6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1852434   -0.3165918   -0.0538950
6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.2594979   -0.3685610   -0.1504348
6 months    CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0820119   -0.4366700    0.2726462
6 months    CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.1217704   -0.5100031    0.2664624
6 months    CONTENT          PERU                           Wealth Q3            Wealth Q4          0.0096869   -0.3809316    0.4003054
6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1220867   -0.3326738    0.0885003
6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0054114   -0.2247706    0.2139479
6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0056388   -0.2036999    0.2149775
6 months    IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Wealth Q1            Wealth Q4         -0.3671026   -0.7364365    0.0022313
6 months    IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3574787   -0.7267808    0.0118234
6 months    IRC              INDIA                          Wealth Q3            Wealth Q4          0.0180998   -0.3611089    0.3973084
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1627808   -0.2335891   -0.0919725
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0903693   -0.1556512   -0.0250873
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0282783   -0.0919567    0.0354000
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.2280177   -0.3328449   -0.1231904
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1494998   -0.2601538   -0.0388459
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0385269   -0.1560460    0.0789922
6 months    LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.0094331   -0.2096487    0.1907824
6 months    LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.1117610   -0.2994535    0.0759315
6 months    LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0260620   -0.2058867    0.1537628
6 months    MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.3874138   -0.7343766   -0.0404511
6 months    MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.4364429   -0.7508599   -0.1220260
6 months    MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.2795520   -0.5989849    0.0398808
6 months    MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4          0.0007650   -0.3791102    0.3806402
6 months    MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.1454096   -0.2424507    0.5332700
6 months    MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.0217081   -0.3898364    0.4332527
6 months    MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.1357270   -0.4611336    0.1896795
6 months    MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0250810   -0.3502409    0.3000788
6 months    MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.1217950   -0.1588427    0.4024327
6 months    MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.1239983   -0.4670684    0.2190718
6 months    MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0131307   -0.2915398    0.3178011
6 months    MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.3929416   -0.6923440   -0.0935392
6 months    MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0557483   -0.2774352    0.3889318
6 months    MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.1544991   -0.4595837    0.1505855
6 months    MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.1957854   -0.5210754    0.1295047
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.2269265   -0.6287685    0.1749155
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3092711   -0.6817727    0.0632305
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.1527010   -0.5191652    0.2137632
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1595983   -0.1715354    0.4907320
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1101003   -0.2116102    0.4318109
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1744364   -0.1674214    0.5162942
6 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.3378370    0.1173809    0.5582931
6 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.4121006    0.1934481    0.6307532
6 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.2186226   -0.0049735    0.4422186
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.3001960    0.1730400    0.4273520
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1566711    0.0131200    0.3002222
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4          0.1909730    0.0631746    0.3187714
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0941894   -0.1779540    0.3663327
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0048582   -0.2839347    0.2742182
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.1114599   -0.1814434    0.4043633
24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2895345   -0.4697916   -0.1092775
24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.2481488   -0.4230585   -0.0732390
24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.3329211   -0.5113774   -0.1544648
24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.5719543   -0.7037139   -0.4401948
24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.4336106   -0.5758662   -0.2913550
24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.4521623   -0.5645553   -0.3397692
24 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2183534   -0.6480399    0.2113331
24 months   CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.1008693   -0.5482670    0.3465283
24 months   CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.1948362   -0.6053254    0.2156530
24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.2122497   -0.4482080    0.0237086
24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0837123   -0.3110985    0.1436739
24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0994616   -0.1288490    0.3277722
24 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.4278924   -0.6955208   -0.1602641
24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         -0.3721550   -0.6355725   -0.1087376
24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         -0.2609399   -0.5198778   -0.0020020
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1983301   -0.2793591   -0.1173010
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1735400   -0.2499166   -0.0971635
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.1244213   -0.2040593   -0.0447833
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.2898908   -0.3864970   -0.1932846
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1645485   -0.2613681   -0.0677290
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0559898   -0.1532860    0.0413064
24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1273798   -0.3712054    0.1164458
24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.3036600   -0.5277161   -0.0796039
24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0624622   -0.2825029    0.1575785
24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         -0.3423694   -0.7689333    0.0841945
24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.5923186   -0.9356746   -0.2489625
24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.3115949   -0.6305717    0.0073819
24 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.2627366   -0.7522011    0.2267279
24 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         -0.1631661   -0.6581387    0.3318064
24 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         -0.1109896   -0.5448328    0.3228537
24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.1784082   -0.5071877    0.1503713
24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0542717   -0.2964728    0.4050162
24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0617797   -0.2487424    0.3723018
24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4          0.0363894   -0.3236419    0.3964207
24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4          0.0183727   -0.3472130    0.3839584
24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.4986387   -0.8337971   -0.1634802
24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.1646995   -0.1766155    0.5060144
24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         -0.1908690   -0.5150011    0.1332632
24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0469081   -0.3828104    0.2889942
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.6262533   -1.0284706   -0.2240360
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.6932628   -1.0688177   -0.3177078
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.6837389   -1.0156440   -0.3518338
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.3926070   -0.0589825    0.8441964
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.0363424   -0.3840984    0.3114135
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0675919   -0.4102841    0.2751003
24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.5888630    0.3684627    0.8092632
24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.6129060    0.4031003    0.8227116
24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.3135072    0.0967601    0.5302544


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0206036   -0.2797274    0.3209345
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0754779   -0.1900909    0.0391350
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1067771   -0.1667827   -0.0467715
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0537698   -0.1870466    0.0795069
Birth       IRC              INDIA                          Wealth Q4            NA                -0.0488133   -0.3040278    0.2064011
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0178786   -0.0580143    0.0222571
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0412146   -0.1395880    0.0571588
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.2866748   -0.4972605   -0.0760890
Birth       MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0163190   -0.8607800    0.8281420
Birth       MAL-ED           INDIA                          Wealth Q4            NA                -0.1533232   -0.6267868    0.3201405
Birth       MAL-ED           PERU                           Wealth Q4            NA                 0.0862403   -0.0912963    0.2637769
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0681329   -0.4249632    0.2886974
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2321000   -0.2076469    0.6718469
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0909764   -0.0065080    0.1884608
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3435243    0.1064152    0.5806335
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1286837   -0.2179087   -0.0394586
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1710911   -0.2413895   -0.1007926
6 months    CONTENT          PERU                           Wealth Q4            NA                -0.0256553   -0.2501851    0.1988745
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0312000   -0.1590767    0.0966767
6 months    IRC              INDIA                          Wealth Q4            NA                -0.1895150   -0.4273954    0.0483654
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0353798   -0.0813923    0.0106327
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0851491   -0.1611555   -0.0091428
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                -0.0363105   -0.1475246    0.0749037
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.2645136   -0.4612131   -0.0678141
6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0197578   -0.2100144    0.2495300
6 months    MAL-ED           INDIA                          Wealth Q4            NA                -0.0084781   -0.1770232    0.1600670
6 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.1596975   -0.3467220    0.0273270
6 months    MAL-ED           PERU                           Wealth Q4            NA                -0.0626173   -0.2636972    0.1384626
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.1810636   -0.4271708    0.0650436
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1003949   -0.0935534    0.2943433
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.2741044    0.1241385    0.4240702
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1638491    0.0816811    0.2460171
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0535519   -0.1178831    0.2249869
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1830176   -0.2628965   -0.1031387
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.3437478   -0.4155597   -0.2719358
24 months   CONTENT          PERU                           Wealth Q4            NA                -0.1524954   -0.4062438    0.1012530
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0512876   -0.1876228    0.0850476
24 months   IRC              INDIA                          Wealth Q4            NA                -0.2671563   -0.4322347   -0.1020779
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.1113079   -0.1674374   -0.0551785
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0955805   -0.1613241   -0.0298368
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.1293710   -0.2614796    0.0027376
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.3088290   -0.5156751   -0.1019829
24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0961992   -0.3537482    0.1613498
24 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0106561   -0.2034729    0.1821607
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.1049233   -0.3209910    0.1111444
24 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0355530   -0.2143269    0.1432210
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.5038097   -0.7198261   -0.2877933
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0405114   -0.1592473    0.2402701
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.4210312    0.2807615    0.5613010
