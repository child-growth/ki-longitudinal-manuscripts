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




# Results Detail

## Results Plots
![](/tmp/2987df9b-bec8-45d6-955c-4101a5750059/541dc543-5ef2-4602-8390-1765474d93ce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2987df9b-bec8-45d6-955c-4101a5750059/541dc543-5ef2-4602-8390-1765474d93ce/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2987df9b-bec8-45d6-955c-4101a5750059/541dc543-5ef2-4602-8390-1765474d93ce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.4656878   -1.0672916    0.1359159
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.2772346   -0.9607476    0.4062784
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.4878171   -1.0319524    0.0563183
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.0747761   -0.5932283    0.4436760
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                -1.0197537   -1.1944610   -0.8450465
Birth       COHORTS          GUATEMALA                      Wealth Q1            NA                -1.2383507   -1.4359722   -1.0407292
Birth       COHORTS          GUATEMALA                      Wealth Q2            NA                -0.9945082   -1.2049419   -0.7840745
Birth       COHORTS          GUATEMALA                      Wealth Q3            NA                -1.0116901   -1.2121635   -0.8112167
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.8061435   -0.8908005   -0.7214866
Birth       COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7718062   -0.8717489   -0.6718635
Birth       COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6984784   -0.8062604   -0.5906965
Birth       COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.7106961   -0.7901245   -0.6312677
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.1033142   -1.2604557   -0.9461728
Birth       GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1293362   -1.2842439   -0.9744285
Birth       GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.1102951   -1.2750019   -0.9455882
Birth       GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.1379460   -1.3147048   -0.9611872
Birth       IRC              INDIA                          Wealth Q4            NA                -0.8620998   -1.1409076   -0.5832920
Birth       IRC              INDIA                          Wealth Q1            NA                -1.3432213   -1.6571809   -1.0292617
Birth       IRC              INDIA                          Wealth Q2            NA                -0.9359299   -1.3004806   -0.5713793
Birth       IRC              INDIA                          Wealth Q3            NA                -0.8582629   -1.1865840   -0.5299417
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.7805050   -0.8331197   -0.7278904
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            NA                -0.8252349   -0.8658207   -0.7846492
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            NA                -0.7824106   -0.8183676   -0.7464536
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            NA                -0.7795197   -0.8124159   -0.7466236
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.7201226   -0.8221779   -0.6180672
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            NA                -0.7101528   -0.8265815   -0.5937241
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            NA                -0.6985047   -0.8124009   -0.5846086
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            NA                -0.6948592   -0.8207532   -0.5689651
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.9810121   -1.2254444   -0.7365797
Birth       MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.8004705   -1.1047683   -0.4961727
Birth       MAL-ED           BANGLADESH                     Wealth Q2            NA                -1.1598026   -1.4592186   -0.8603867
Birth       MAL-ED           BANGLADESH                     Wealth Q3            NA                -1.0308748   -1.3831535   -0.6785962
Birth       MAL-ED           BRAZIL                         Wealth Q4            NA                 0.3724353   -0.6614068    1.4062774
Birth       MAL-ED           BRAZIL                         Wealth Q1            NA                 0.2347302   -0.4254340    0.8948944
Birth       MAL-ED           BRAZIL                         Wealth Q2            NA                 0.7061266    0.2492039    1.1630493
Birth       MAL-ED           BRAZIL                         Wealth Q3            NA                 0.6326108   -0.0998500    1.3650715
Birth       MAL-ED           INDIA                          Wealth Q4            NA                -0.6625000   -1.2946579   -0.0303421
Birth       MAL-ED           INDIA                          Wealth Q1            NA                -0.7753846   -1.2462747   -0.3044945
Birth       MAL-ED           INDIA                          Wealth Q2            NA                -1.2233333   -1.8175527   -0.6291139
Birth       MAL-ED           INDIA                          Wealth Q3            NA                -1.1588889   -1.7968865   -0.5208913
Birth       MAL-ED           PERU                           Wealth Q4            NA                 0.0358405   -0.1934416    0.2651227
Birth       MAL-ED           PERU                           Wealth Q1            NA                -0.1215149   -0.3739638    0.1309339
Birth       MAL-ED           PERU                           Wealth Q2            NA                 0.1018510   -0.1530330    0.3567351
Birth       MAL-ED           PERU                           Wealth Q3            NA                -0.1172980   -0.4142329    0.1796369
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.2701990   -0.1861985    0.7265965
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -0.4208735   -0.8933032    0.0515561
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -0.0276733   -0.5240174    0.4686708
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -0.3258207   -0.8360438    0.1844024
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.7995257    0.3643332    1.2347182
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.8457161    0.5068221    1.1846102
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.8552469    0.4300813    1.2804125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.6570146    0.2749662    1.0390629
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                -1.2397234   -1.3774073   -1.1020395
Birth       PROVIDE          BANGLADESH                     Wealth Q1            NA                -1.3671490   -1.5161493   -1.2181488
Birth       PROVIDE          BANGLADESH                     Wealth Q2            NA                -1.2455612   -1.3839045   -1.1072179
Birth       PROVIDE          BANGLADESH                     Wealth Q3            NA                -1.3588178   -1.5158444   -1.2017913
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0124590   -0.3193476    0.3442657
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.8967973   -1.1730230   -0.6205716
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.7512555   -1.0348594   -0.4676517
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.4150527   -0.6962762   -0.1338292
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2962148    0.1786700    0.4137595
6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                 0.2503100    0.0945681    0.4060518
6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                 0.0963022   -0.0594882    0.2520926
6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                 0.0724891   -0.0915779    0.2365561
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1958402   -0.2721195   -0.1195610
6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.4453085   -0.5392070   -0.3514100
6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.2741506   -0.3776389   -0.1706622
6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2834098   -0.3558873   -0.2109323
6 months    CONTENT          PERU                           Wealth Q4            NA                 1.1693387    0.9410347    1.3976426
6 months    CONTENT          PERU                           Wealth Q1            NA                 0.8791849    0.6342645    1.1241054
6 months    CONTENT          PERU                           Wealth Q2            NA                 0.9483238    0.6993020    1.1973456
6 months    CONTENT          PERU                           Wealth Q3            NA                 1.0862696    0.8672151    1.3053241
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.5563969   -0.7118611   -0.4009327
6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.6435113   -0.8079799   -0.4790427
6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.6106945   -0.7783622   -0.4430269
6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.6018543   -0.7947422   -0.4089664
6 months    IRC              INDIA                          Wealth Q4            NA                -0.6372361   -0.9168105   -0.3576616
6 months    IRC              INDIA                          Wealth Q1            NA                -0.4994995   -0.7285254   -0.2704736
6 months    IRC              INDIA                          Wealth Q2            NA                -0.4717946   -0.7627861   -0.1808030
6 months    IRC              INDIA                          Wealth Q3            NA                -0.7901307   -1.0783357   -0.5019258
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.5521416   -0.5960050   -0.5082783
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                -0.6822418   -0.7315228   -0.6329608
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                -0.6479036   -0.6901021   -0.6057051
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                -0.5612904   -0.6008558   -0.5217250
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.2945280   -0.3748638   -0.2141923
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                -0.5371111   -0.6063000   -0.4679223
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                -0.4207027   -0.4955797   -0.3458257
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                -0.3755025   -0.4535670   -0.2974379
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                 0.5471852    0.4177147    0.6766558
6 months    LCNI-5           MALAWI                         Wealth Q1            NA                 0.3450967    0.1857645    0.5044288
6 months    LCNI-5           MALAWI                         Wealth Q2            NA                 0.3607864    0.2231222    0.4984506
6 months    LCNI-5           MALAWI                         Wealth Q3            NA                 0.5264076    0.3761802    0.6766350
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0983285   -0.3488094    0.1521524
6 months    MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.0803834   -0.3319402    0.1711734
6 months    MAL-ED           BANGLADESH                     Wealth Q2            NA                -0.1931104   -0.4800473    0.0938266
6 months    MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.1894363   -0.4332790    0.0544064
6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.6567017    0.3157440    0.9976595
6 months    MAL-ED           BRAZIL                         Wealth Q1            NA                 0.8831646    0.5813254    1.1850038
6 months    MAL-ED           BRAZIL                         Wealth Q2            NA                 1.0476678    0.6959532    1.3993825
6 months    MAL-ED           BRAZIL                         Wealth Q3            NA                 1.0894215    0.7665420    1.4123009
6 months    MAL-ED           INDIA                          Wealth Q4            NA                -0.6586471   -0.9019500   -0.4153442
6 months    MAL-ED           INDIA                          Wealth Q1            NA                -0.7708721   -1.0538553   -0.4878888
6 months    MAL-ED           INDIA                          Wealth Q2            NA                -0.7762422   -1.0346146   -0.5178699
6 months    MAL-ED           INDIA                          Wealth Q3            NA                -0.6017977   -0.8409531   -0.3626422
6 months    MAL-ED           NEPAL                          Wealth Q4            NA                 0.1894635   -0.0957251    0.4746521
6 months    MAL-ED           NEPAL                          Wealth Q1            NA                 0.0746989   -0.1828426    0.3322404
6 months    MAL-ED           NEPAL                          Wealth Q2            NA                 0.0899343   -0.1295449    0.3094136
6 months    MAL-ED           NEPAL                          Wealth Q3            NA                 0.0732589   -0.2341760    0.3806938
6 months    MAL-ED           PERU                           Wealth Q4            NA                 0.9834641    0.7237634    1.2431648
6 months    MAL-ED           PERU                           Wealth Q1            NA                 1.2595234    1.0413861    1.4776607
6 months    MAL-ED           PERU                           Wealth Q2            NA                 1.0105196    0.7941902    1.2268489
6 months    MAL-ED           PERU                           Wealth Q3            NA                 0.9556711    0.6719762    1.2393660
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.7715625    0.4479241    1.0952010
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                 0.4091187    0.0808257    0.7374116
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                 0.4679272    0.1976895    0.7381649
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                 0.5095493    0.2176919    0.8014067
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.6268677    0.3861739    0.8675615
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.6003821    0.3587434    0.8420208
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.5254194    0.2583855    0.7924533
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.4454976    0.1412059    0.7497894
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.2438190   -0.4016622   -0.0859757
6 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.1895080   -0.3402362   -0.0387797
6 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.0804325   -0.2609709    0.1001060
6 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.2722706   -0.4380657   -0.1064755
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1001934   -0.0068550    0.2072418
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0533754   -0.0488554    0.1556062
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.1086310   -0.0071225    0.2243846
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.0755230   -0.0277570    0.1788031
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3207593   -0.5295785   -0.1119401
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.6211555   -0.8052866   -0.4370244
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.6648584   -0.8507450   -0.4789718
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.5983232   -0.8261560   -0.3704903
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1878084   -0.2777950   -0.0978218
24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                -0.4040598   -0.5239429   -0.2841766
24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                -0.3442009   -0.4617658   -0.2266359
24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                -0.2863128   -0.4157461   -0.1568794
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.5052866   -0.5704899   -0.4400833
24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7264495   -0.8095151   -0.6433838
24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6220561   -0.7117654   -0.5323468
24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.6513629   -0.7145437   -0.5881822
24 months   CONTENT          PERU                           Wealth Q4            NA                 0.5822133    0.2925759    0.8718508
24 months   CONTENT          PERU                           Wealth Q1            NA                 0.5042961    0.2693200    0.7392722
24 months   CONTENT          PERU                           Wealth Q2            NA                 0.6224364    0.2997934    0.9450795
24 months   CONTENT          PERU                           Wealth Q3            NA                 0.7611583    0.5024183    1.0198983
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0948168   -1.2823766   -0.9072569
24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1669445   -1.3416386   -0.9922504
24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.1989325   -1.3761753   -1.0216896
24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.0620851   -1.2412346   -0.8829356
24 months   IRC              INDIA                          Wealth Q4            NA                -0.7175396   -0.9153968   -0.5196823
24 months   IRC              INDIA                          Wealth Q1            NA                -0.8514605   -1.0047773   -0.6981436
24 months   IRC              INDIA                          Wealth Q2            NA                -0.7603576   -0.9434452   -0.5772700
24 months   IRC              INDIA                          Wealth Q3            NA                -0.6463201   -0.8386941   -0.4539461
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -1.2811596   -1.3377843   -1.2245349
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                -1.3323399   -1.3841254   -1.2805544
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                -1.3249969   -1.3795996   -1.2703942
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                -1.2805616   -1.3330920   -1.2280313
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -1.2143762   -1.2890862   -1.1396662
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                -1.3178212   -1.3792151   -1.2564272
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                -1.2322791   -1.2956394   -1.1689188
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                -1.2180146   -1.2881265   -1.1479026
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0167890   -0.1403923    0.1739702
24 months   LCNI-5           MALAWI                         Wealth Q1            NA                -0.1311368   -0.3002851    0.0380115
24 months   LCNI-5           MALAWI                         Wealth Q2            NA                -0.0805872   -0.2484951    0.0873206
24 months   LCNI-5           MALAWI                         Wealth Q3            NA                -0.0072968   -0.1671058    0.1525122
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.8973519   -1.1426701   -0.6520336
24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.5743775   -0.9293922   -0.2193629
24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                -0.8519379   -1.0636172   -0.6402586
24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.8530997   -1.0796715   -0.6265279
24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.3455740   -0.0278944    0.7190423
24 months   MAL-ED           BRAZIL                         Wealth Q1            NA                 0.1275138   -0.3068929    0.5619205
24 months   MAL-ED           BRAZIL                         Wealth Q2            NA                 0.6852094    0.2458366    1.1245823
24 months   MAL-ED           BRAZIL                         Wealth Q3            NA                 0.5463758    0.1339275    0.9588242
24 months   MAL-ED           INDIA                          Wealth Q4            NA                -1.0008682   -1.2438983   -0.7578381
24 months   MAL-ED           INDIA                          Wealth Q1            NA                -0.9257516   -1.1950322   -0.6564710
24 months   MAL-ED           INDIA                          Wealth Q2            NA                -1.0199426   -1.2459987   -0.7938864
24 months   MAL-ED           INDIA                          Wealth Q3            NA                -0.8408610   -1.0442708   -0.6374511
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.0934895   -0.3561840    0.1692050
24 months   MAL-ED           NEPAL                          Wealth Q1            NA                -0.5847019   -0.7845441   -0.3848598
24 months   MAL-ED           NEPAL                          Wealth Q2            NA                -0.4480558   -0.6563896   -0.2397220
24 months   MAL-ED           NEPAL                          Wealth Q3            NA                -0.3736276   -0.6309436   -0.1163116
24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0930145   -0.1037965    0.2898256
24 months   MAL-ED           PERU                           Wealth Q1            NA                 0.1755842   -0.0981885    0.4493569
24 months   MAL-ED           PERU                           Wealth Q2            NA                 0.2251833   -0.0393571    0.4897238
24 months   MAL-ED           PERU                           Wealth Q3            NA                 0.1331099   -0.1152823    0.3815022
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.5960277    0.3551849    0.8368706
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                 0.5032384    0.2808158    0.7256610
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                 0.1731043   -0.0694581    0.4156667
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                 0.3896117    0.1526246    0.6265989
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2225928   -0.0064995    0.4516851
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0393764   -0.3001769    0.3789297
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.0582930   -0.1888281    0.3054141
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1396646   -0.3836505    0.1043214
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -1.1011105   -1.2516662   -0.9505548
24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.8166245   -0.9783005   -0.6549485
24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.7393863   -0.8980521   -0.5807204
24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.9804443   -1.1378553   -0.8230333


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
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.1884533   -0.7205283    1.0974348
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0221292   -0.8373733    0.7931148
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.3909117   -0.4063840    1.1882075
Birth       COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2185970   -0.4739813    0.0367874
Birth       COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0252455   -0.2400514    0.2905424
Birth       COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4          0.0080636   -0.2484847    0.2646120
Birth       COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4          0.0343373   -0.0947188    0.1633935
Birth       COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4          0.1076651   -0.0276419    0.2429721
Birth       COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4          0.0954474   -0.0185149    0.2094097
Birth       GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0260220   -0.2397307    0.1876868
Birth       GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0069808   -0.2275284    0.2135668
Birth       GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0346318   -0.2643138    0.1950503
Birth       IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Wealth Q1            Wealth Q4         -0.4811215   -0.8779922   -0.0842507
Birth       IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0738301   -0.5086379    0.3609777
Birth       IRC              INDIA                          Wealth Q3            Wealth Q4          0.0038370   -0.4008052    0.4084791
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0447299   -0.1073319    0.0178721
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0019056   -0.0635818    0.0597707
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4          0.0009853   -0.0578484    0.0598190
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4          0.0099698   -0.1418789    0.1618185
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4          0.0216178   -0.1303213    0.1735569
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4          0.0252634   -0.1353175    0.1858443
Birth       MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.1805416   -0.2107217    0.5718049
Birth       MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.1787906   -0.5660499    0.2084687
Birth       MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0498628   -0.4789471    0.3792216
Birth       MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.1377051   -1.3696558    1.0942457
Birth       MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.3336913   -0.7995297    1.4669122
Birth       MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.2601755   -1.0114970    1.5318480
Birth       MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.1128846   -0.9011492    0.6753800
Birth       MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.5608333   -1.4284279    0.3067612
Birth       MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.4963889   -1.3945340    0.4017562
Birth       MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.1573555   -0.4985523    0.1838413
Birth       MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0660105   -0.2754400    0.4074610
Birth       MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.1531385   -0.5277810    0.2215040
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.6910725   -1.3495873   -0.0325578
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.2978723   -0.9741065    0.3783619
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.5960197   -1.2832099    0.0911705
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0461904   -0.4987350    0.5911158
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0557211   -0.5484004    0.6598427
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.1425112   -0.7148222    0.4297998
Birth       PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1274257   -0.3241644    0.0693131
Birth       PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         -0.0058378   -0.1946599    0.1829842
Birth       PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.1190944   -0.3214588    0.0832700
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.9092563   -1.3402083   -0.4783044
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.7637146   -1.1995199   -0.3279092
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.4275118   -0.8617021    0.0066786
6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0459048   -0.2406415    0.1488319
6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1999126   -0.3944521   -0.0053731
6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.2237257   -0.4245252   -0.0229262
6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2494682   -0.3700942   -0.1288422
6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0783103   -0.2064834    0.0498627
6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0875696   -0.1922845    0.0171453
6 months    CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2901537   -0.6261283    0.0458209
6 months    CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.2210149   -0.5616814    0.1196516
6 months    CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0830691   -0.4005956    0.2344575
6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0871144   -0.3123256    0.1380967
6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0542977   -0.2810166    0.1724213
6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0454574   -0.2914154    0.2005007
6 months    IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Wealth Q1            Wealth Q4          0.1377366   -0.2231260    0.4985992
6 months    IRC              INDIA                          Wealth Q2            Wealth Q4          0.1654415   -0.2387467    0.5696298
6 months    IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1528946   -0.5559108    0.2501215
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1301002   -0.1942612   -0.0659391
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0957620   -0.1544907   -0.0370333
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0091488   -0.0682964    0.0499989
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.2425831   -0.3480299   -0.1371363
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1261747   -0.2338650   -0.0184844
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0809745   -0.1890738    0.0271249
6 months    LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.2020886   -0.4073058    0.0031287
6 months    LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.1863988   -0.3758272    0.0030296
6 months    LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0207776   -0.2188586    0.1773033
6 months    MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.0179451   -0.3383331    0.3742233
6 months    MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0947819   -0.4751370    0.2855733
6 months    MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0911078   -0.4393326    0.2571170
6 months    MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4          0.2264629   -0.2292541    0.6821798
6 months    MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.3909661   -0.1024841    0.8844163
6 months    MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.4327197   -0.0327988    0.8982383
6 months    MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.1122250   -0.4853257    0.2608757
6 months    MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.1175952   -0.4729393    0.2377489
6 months    MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0568494   -0.2849775    0.3986763
6 months    MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.1147646   -0.4974254    0.2678962
6 months    MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.0995292   -0.4584865    0.2594281
6 months    MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.1162046   -0.5341802    0.3017710
6 months    MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.2760593   -0.0614915    0.6136101
6 months    MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0270554   -0.3085369    0.3626478
6 months    MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0277930   -0.4113186    0.3557326
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.3624439   -0.8239232    0.0990355
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3036354   -0.7257112    0.1184404
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2620133   -0.6994030    0.1753765
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0264856   -0.3676644    0.3146933
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.1014483   -0.4614202    0.2585236
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.1813700   -0.5695544    0.2068143
6 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0543110   -0.1630952    0.2717172
6 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.1633865   -0.0754090    0.4021819
6 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0284517   -0.2564571    0.1995538
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0468180   -0.1945257    0.1008897
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0084376   -0.1490483    0.1659236
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0246704   -0.1734396    0.1240988
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.3003962   -0.5792660   -0.0215265
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.3440991   -0.6235484   -0.0646498
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.2775639   -0.5870531    0.0319253
24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2162514   -0.3663098   -0.0661930
24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1563925   -0.3045151   -0.0082699
24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0985044   -0.2561888    0.0591800
24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2211629   -0.3258241   -0.1165017
24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1167695   -0.2270582   -0.0064808
24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.1460763   -0.2359745   -0.0561782
24 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0779172   -0.4517816    0.2959471
24 months   CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0402231   -0.3944406    0.4748868
24 months   CONTENT          PERU                           Wealth Q3            Wealth Q4          0.1789450   -0.2098052    0.5676952
24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0721277   -0.3284873    0.1842319
24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.1041157   -0.3621483    0.1539169
24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0327317   -0.2266655    0.2921289
24 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.1339209   -0.3845312    0.1166894
24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0428180   -0.3126450    0.2270089
24 months   IRC              INDIA                          Wealth Q3            Wealth Q4          0.0712195   -0.2049084    0.3473473
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0511803   -0.1249714    0.0226108
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0438373   -0.1217760    0.0341013
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4          0.0005980   -0.0773444    0.0785403
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1034449   -0.1990200   -0.0078699
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0179029   -0.1108101    0.0750043
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0036383   -0.1048668    0.0975901
24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1479258   -0.3768805    0.0810289
24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0973762   -0.3265764    0.1318239
24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0240858   -0.2467013    0.1985298
24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.3229743   -0.1091431    0.7550917
24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4          0.0454140   -0.2759729    0.3668008
24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4          0.0442521   -0.2914109    0.3799152
24 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.2180602   -0.7983528    0.3622325
24 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.3396355   -0.2364365    0.9157074
24 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.2008019   -0.3531256    0.7547294
24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4          0.0751166   -0.2882283    0.4384614
24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0190744   -0.3513465    0.3131978
24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.1600072   -0.1569710    0.4769855
24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.4912125   -0.8225960   -0.1598290
24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.3545663   -0.6902962   -0.0188364
24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.2801381   -0.6489066    0.0886303
24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0825696   -0.2486996    0.4138388
24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.1321688   -0.1976581    0.4619957
24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0400954   -0.2755785    0.3557692
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0927894   -0.4202473    0.2346686
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.4229235   -0.7639764   -0.0818706
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2064160   -0.5424528    0.1296208
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.1832164   -0.5923177    0.2258848
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.1642998   -0.5006675    0.1720680
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.3622573   -0.6975409   -0.0269738
24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.2844860    0.0650830    0.5038889
24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.3617242    0.1435921    0.5798564
24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.1206662   -0.0960206    0.3373531


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0008623   -0.4300990    0.4318235
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0375302   -0.1681602    0.0930997
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0638523   -0.0070274    0.1347321
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0131288   -0.1474298    0.1211722
Birth       IRC              INDIA                          Wealth Q4            NA                -0.1484832   -0.3941580    0.0971915
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0027947   -0.0445207    0.0501101
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0318728   -0.0589249    0.1226704
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0081762   -0.2140398    0.2303923
Birth       MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0919507   -0.8383430    1.0222444
Birth       MAL-ED           INDIA                          Wealth Q4            NA                -0.2816026   -0.8500282    0.2868230
Birth       MAL-ED           PERU                           Wealth Q4            NA                -0.0826501   -0.2888972    0.1235971
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.4431464   -0.8856929   -0.0005998
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0357757   -0.4240737    0.3525222
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0587353   -0.1771043    0.0596337
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.5151356   -0.7905315   -0.2397398
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1047677   -0.1989886   -0.0105468
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0980031   -0.1647563   -0.0312498
6 months    CONTENT          PERU                           Wealth Q4            NA                -0.1049108   -0.3083643    0.0985428
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0474447   -0.1857661    0.0908766
6 months    IRC              INDIA                          Wealth Q4            NA                 0.0383064   -0.2045053    0.2811180
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0411085   -0.0806971   -0.0015200
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0956315   -0.1690264   -0.0222366
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                -0.1054205   -0.2196642    0.0088231
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0350048   -0.2445852    0.1745755
6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.3153756    0.0219637    0.6087876
6 months    MAL-ED           INDIA                          Wealth Q4            NA                -0.0516402   -0.2667889    0.1635085
6 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.0790327   -0.3221358    0.1640704
6 months    MAL-ED           PERU                           Wealth Q4            NA                 0.0677458   -0.1534494    0.2889409
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.2311275   -0.5135480    0.0512931
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0906464   -0.3048249    0.1235322
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0447283   -0.0993756    0.1888322
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0200254   -0.1133384    0.0732876
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2363913   -0.4146184   -0.0581642
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0913312   -0.1616884   -0.0209740
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1046726   -0.1607504   -0.0485948
24 months   CONTENT          PERU                           Wealth Q4            NA                 0.0080306   -0.2400053    0.2560664
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0414940   -0.2020077    0.1190198
24 months   IRC              INDIA                          Wealth Q4            NA                -0.0282754   -0.1973173    0.1407664
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0161490   -0.0692217    0.0369237
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0088014   -0.0760634    0.0584607
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.0645757   -0.1967315    0.0675801
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0780594   -0.1228489    0.2789677
24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.1170493   -0.1973237    0.4314224
24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0492162   -0.1559009    0.2543333
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.2814228   -0.5077350   -0.0551106
24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0181836   -0.1501299    0.1864971
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.1869976   -0.3921308    0.0181355
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1677953   -0.3638425    0.0282519
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.2082435    0.0682239    0.3482630
