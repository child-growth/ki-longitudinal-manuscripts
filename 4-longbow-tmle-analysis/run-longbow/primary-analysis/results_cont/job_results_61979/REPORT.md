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

agecat      studyid          country                        hhwealth_quart    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4             32      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1             13      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2             19      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3             22      86  whz              
Birth       COHORTS          GUATEMALA                      Wealth Q4            258     729  whz              
Birth       COHORTS          GUATEMALA                      Wealth Q1            144     729  whz              
Birth       COHORTS          GUATEMALA                      Wealth Q2            141     729  whz              
Birth       COHORTS          GUATEMALA                      Wealth Q3            186     729  whz              
Birth       COHORTS          PHILIPPINES                    Wealth Q4            815    2898  whz              
Birth       COHORTS          PHILIPPINES                    Wealth Q1            647    2898  whz              
Birth       COHORTS          PHILIPPINES                    Wealth Q2            506    2898  whz              
Birth       COHORTS          PHILIPPINES                    Wealth Q3            930    2898  whz              
Birth       CONTENT          PERU                           Wealth Q4              0       2  whz              
Birth       CONTENT          PERU                           Wealth Q1              0       2  whz              
Birth       CONTENT          PERU                           Wealth Q2              1       2  whz              
Birth       CONTENT          PERU                           Wealth Q3              1       2  whz              
Birth       GMS-Nepal        NEPAL                          Wealth Q4            161     641  whz              
Birth       GMS-Nepal        NEPAL                          Wealth Q1            164     641  whz              
Birth       GMS-Nepal        NEPAL                          Wealth Q2            160     641  whz              
Birth       GMS-Nepal        NEPAL                          Wealth Q3            156     641  whz              
Birth       IRC              INDIA                          Wealth Q4             79     343  whz              
Birth       IRC              INDIA                          Wealth Q1             90     343  whz              
Birth       IRC              INDIA                          Wealth Q2             83     343  whz              
Birth       IRC              INDIA                          Wealth Q3             91     343  whz              
Birth       JiVitA-3         BANGLADESH                     Wealth Q4           4505   17994  whz              
Birth       JiVitA-3         BANGLADESH                     Wealth Q1           4435   17994  whz              
Birth       JiVitA-3         BANGLADESH                     Wealth Q2           4476   17994  whz              
Birth       JiVitA-3         BANGLADESH                     Wealth Q3           4578   17994  whz              
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            572    2394  whz              
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            560    2394  whz              
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            617    2394  whz              
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            645    2394  whz              
Birth       MAL-ED           BANGLADESH                     Wealth Q4             56     201  whz              
Birth       MAL-ED           BANGLADESH                     Wealth Q1             48     201  whz              
Birth       MAL-ED           BANGLADESH                     Wealth Q2             46     201  whz              
Birth       MAL-ED           BANGLADESH                     Wealth Q3             51     201  whz              
Birth       MAL-ED           BRAZIL                         Wealth Q4             10      57  whz              
Birth       MAL-ED           BRAZIL                         Wealth Q1             20      57  whz              
Birth       MAL-ED           BRAZIL                         Wealth Q2             16      57  whz              
Birth       MAL-ED           BRAZIL                         Wealth Q3             11      57  whz              
Birth       MAL-ED           INDIA                          Wealth Q4              8      39  whz              
Birth       MAL-ED           INDIA                          Wealth Q1             13      39  whz              
Birth       MAL-ED           INDIA                          Wealth Q2              9      39  whz              
Birth       MAL-ED           INDIA                          Wealth Q3              9      39  whz              
Birth       MAL-ED           NEPAL                          Wealth Q4              6      25  whz              
Birth       MAL-ED           NEPAL                          Wealth Q1              8      25  whz              
Birth       MAL-ED           NEPAL                          Wealth Q2              3      25  whz              
Birth       MAL-ED           NEPAL                          Wealth Q3              8      25  whz              
Birth       MAL-ED           PERU                           Wealth Q4             53     210  whz              
Birth       MAL-ED           PERU                           Wealth Q1             55     210  whz              
Birth       MAL-ED           PERU                           Wealth Q2             51     210  whz              
Birth       MAL-ED           PERU                           Wealth Q3             51     210  whz              
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4             17      95  whz              
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1             26      95  whz              
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2             24      95  whz              
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3             28      95  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             23     112  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             26     112  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             30     112  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             33     112  whz              
Birth       PROVIDE          BANGLADESH                     Wealth Q4            132     532  whz              
Birth       PROVIDE          BANGLADESH                     Wealth Q1            129     532  whz              
Birth       PROVIDE          BANGLADESH                     Wealth Q2            136     532  whz              
Birth       PROVIDE          BANGLADESH                     Wealth Q3            135     532  whz              
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4             95     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1             90     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2             93     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3             90     368  whz              
6 months    COHORTS          GUATEMALA                      Wealth Q4            339     926  whz              
6 months    COHORTS          GUATEMALA                      Wealth Q1            176     926  whz              
6 months    COHORTS          GUATEMALA                      Wealth Q2            194     926  whz              
6 months    COHORTS          GUATEMALA                      Wealth Q3            217     926  whz              
6 months    COHORTS          PHILIPPINES                    Wealth Q4            744    2706  whz              
6 months    COHORTS          PHILIPPINES                    Wealth Q1            569    2706  whz              
6 months    COHORTS          PHILIPPINES                    Wealth Q2            485    2706  whz              
6 months    COHORTS          PHILIPPINES                    Wealth Q3            908    2706  whz              
6 months    CONTENT          PERU                           Wealth Q4             52     215  whz              
6 months    CONTENT          PERU                           Wealth Q1             59     215  whz              
6 months    CONTENT          PERU                           Wealth Q2             52     215  whz              
6 months    CONTENT          PERU                           Wealth Q3             52     215  whz              
6 months    GMS-Nepal        NEPAL                          Wealth Q4            140     564  whz              
6 months    GMS-Nepal        NEPAL                          Wealth Q1            141     564  whz              
6 months    GMS-Nepal        NEPAL                          Wealth Q2            148     564  whz              
6 months    GMS-Nepal        NEPAL                          Wealth Q3            135     564  whz              
6 months    IRC              INDIA                          Wealth Q4            100     408  whz              
6 months    IRC              INDIA                          Wealth Q1            104     408  whz              
6 months    IRC              INDIA                          Wealth Q2            102     408  whz              
6 months    IRC              INDIA                          Wealth Q3            102     408  whz              
6 months    JiVitA-3         BANGLADESH                     Wealth Q4           4971   16776  whz              
6 months    JiVitA-3         BANGLADESH                     Wealth Q1           3585   16776  whz              
6 months    JiVitA-3         BANGLADESH                     Wealth Q2           3902   16776  whz              
6 months    JiVitA-3         BANGLADESH                     Wealth Q3           4318   16776  whz              
6 months    JiVitA-4         BANGLADESH                     Wealth Q4           1199    4827  whz              
6 months    JiVitA-4         BANGLADESH                     Wealth Q1           1199    4827  whz              
6 months    JiVitA-4         BANGLADESH                     Wealth Q2           1201    4827  whz              
6 months    JiVitA-4         BANGLADESH                     Wealth Q3           1228    4827  whz              
6 months    LCNI-5           MALAWI                         Wealth Q4            217     816  whz              
6 months    LCNI-5           MALAWI                         Wealth Q1            203     816  whz              
6 months    LCNI-5           MALAWI                         Wealth Q2            199     816  whz              
6 months    LCNI-5           MALAWI                         Wealth Q3            197     816  whz              
6 months    MAL-ED           BANGLADESH                     Wealth Q4             61     240  whz              
6 months    MAL-ED           BANGLADESH                     Wealth Q1             59     240  whz              
6 months    MAL-ED           BANGLADESH                     Wealth Q2             61     240  whz              
6 months    MAL-ED           BANGLADESH                     Wealth Q3             59     240  whz              
6 months    MAL-ED           BRAZIL                         Wealth Q4             53     209  whz              
6 months    MAL-ED           BRAZIL                         Wealth Q1             53     209  whz              
6 months    MAL-ED           BRAZIL                         Wealth Q2             52     209  whz              
6 months    MAL-ED           BRAZIL                         Wealth Q3             51     209  whz              
6 months    MAL-ED           INDIA                          Wealth Q4             59     235  whz              
6 months    MAL-ED           INDIA                          Wealth Q1             60     235  whz              
6 months    MAL-ED           INDIA                          Wealth Q2             58     235  whz              
6 months    MAL-ED           INDIA                          Wealth Q3             58     235  whz              
6 months    MAL-ED           NEPAL                          Wealth Q4             59     236  whz              
6 months    MAL-ED           NEPAL                          Wealth Q1             59     236  whz              
6 months    MAL-ED           NEPAL                          Wealth Q2             59     236  whz              
6 months    MAL-ED           NEPAL                          Wealth Q3             59     236  whz              
6 months    MAL-ED           PERU                           Wealth Q4             67     270  whz              
6 months    MAL-ED           PERU                           Wealth Q1             68     270  whz              
6 months    MAL-ED           PERU                           Wealth Q2             71     270  whz              
6 months    MAL-ED           PERU                           Wealth Q3             64     270  whz              
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4             62     249  whz              
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1             60     249  whz              
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2             64     249  whz              
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3             63     249  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             63     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             61     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             60     247  whz              
6 months    PROVIDE          BANGLADESH                     Wealth Q4            134     603  whz              
6 months    PROVIDE          BANGLADESH                     Wealth Q1            156     603  whz              
6 months    PROVIDE          BANGLADESH                     Wealth Q2            164     603  whz              
6 months    PROVIDE          BANGLADESH                     Wealth Q3            149     603  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            501    2019  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            605    2019  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            409    2019  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            504    2019  whz              
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4             95     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1             91     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2             95     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3             91     372  whz              
24 months   COHORTS          GUATEMALA                      Wealth Q4            405    1046  whz              
24 months   COHORTS          GUATEMALA                      Wealth Q1            203    1046  whz              
24 months   COHORTS          GUATEMALA                      Wealth Q2            215    1046  whz              
24 months   COHORTS          GUATEMALA                      Wealth Q3            223    1046  whz              
24 months   COHORTS          PHILIPPINES                    Wealth Q4            685    2449  whz              
24 months   COHORTS          PHILIPPINES                    Wealth Q1            492    2449  whz              
24 months   COHORTS          PHILIPPINES                    Wealth Q2            424    2449  whz              
24 months   COHORTS          PHILIPPINES                    Wealth Q3            848    2449  whz              
24 months   CONTENT          PERU                           Wealth Q4             41     164  whz              
24 months   CONTENT          PERU                           Wealth Q1             40     164  whz              
24 months   CONTENT          PERU                           Wealth Q2             42     164  whz              
24 months   CONTENT          PERU                           Wealth Q3             41     164  whz              
24 months   GMS-Nepal        NEPAL                          Wealth Q4            124     487  whz              
24 months   GMS-Nepal        NEPAL                          Wealth Q1            121     487  whz              
24 months   GMS-Nepal        NEPAL                          Wealth Q2            128     487  whz              
24 months   GMS-Nepal        NEPAL                          Wealth Q3            114     487  whz              
24 months   IRC              INDIA                          Wealth Q4            100     409  whz              
24 months   IRC              INDIA                          Wealth Q1            105     409  whz              
24 months   IRC              INDIA                          Wealth Q2            101     409  whz              
24 months   IRC              INDIA                          Wealth Q3            103     409  whz              
24 months   JiVitA-3         BANGLADESH                     Wealth Q4           2351    8594  whz              
24 months   JiVitA-3         BANGLADESH                     Wealth Q1           1996    8594  whz              
24 months   JiVitA-3         BANGLADESH                     Wealth Q2           2103    8594  whz              
24 months   JiVitA-3         BANGLADESH                     Wealth Q3           2144    8594  whz              
24 months   JiVitA-4         BANGLADESH                     Wealth Q4           1187    4730  whz              
24 months   JiVitA-4         BANGLADESH                     Wealth Q1           1153    4730  whz              
24 months   JiVitA-4         BANGLADESH                     Wealth Q2           1169    4730  whz              
24 months   JiVitA-4         BANGLADESH                     Wealth Q3           1221    4730  whz              
24 months   LCNI-5           MALAWI                         Wealth Q4            155     558  whz              
24 months   LCNI-5           MALAWI                         Wealth Q1            127     558  whz              
24 months   LCNI-5           MALAWI                         Wealth Q2            140     558  whz              
24 months   LCNI-5           MALAWI                         Wealth Q3            136     558  whz              
24 months   MAL-ED           BANGLADESH                     Wealth Q4             61     212  whz              
24 months   MAL-ED           BANGLADESH                     Wealth Q1             30     212  whz              
24 months   MAL-ED           BANGLADESH                     Wealth Q2             61     212  whz              
24 months   MAL-ED           BANGLADESH                     Wealth Q3             60     212  whz              
24 months   MAL-ED           BRAZIL                         Wealth Q4             53     169  whz              
24 months   MAL-ED           BRAZIL                         Wealth Q1             26     169  whz              
24 months   MAL-ED           BRAZIL                         Wealth Q2             39     169  whz              
24 months   MAL-ED           BRAZIL                         Wealth Q3             51     169  whz              
24 months   MAL-ED           INDIA                          Wealth Q4             59     227  whz              
24 months   MAL-ED           INDIA                          Wealth Q1             52     227  whz              
24 months   MAL-ED           INDIA                          Wealth Q2             58     227  whz              
24 months   MAL-ED           INDIA                          Wealth Q3             58     227  whz              
24 months   MAL-ED           NEPAL                          Wealth Q4             59     228  whz              
24 months   MAL-ED           NEPAL                          Wealth Q1             55     228  whz              
24 months   MAL-ED           NEPAL                          Wealth Q2             55     228  whz              
24 months   MAL-ED           NEPAL                          Wealth Q3             59     228  whz              
24 months   MAL-ED           PERU                           Wealth Q4             65     201  whz              
24 months   MAL-ED           PERU                           Wealth Q1             42     201  whz              
24 months   MAL-ED           PERU                           Wealth Q2             38     201  whz              
24 months   MAL-ED           PERU                           Wealth Q3             56     201  whz              
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4             63     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1             49     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2             63     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3             63     238  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4             63     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1             28     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2             62     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3             61     214  whz              
24 months   PROVIDE          BANGLADESH                     Wealth Q4            122     579  whz              
24 months   PROVIDE          BANGLADESH                     Wealth Q1            155     579  whz              
24 months   PROVIDE          BANGLADESH                     Wealth Q2            157     579  whz              
24 months   PROVIDE          BANGLADESH                     Wealth Q3            145     579  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              4       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       6  whz              


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
![](/tmp/d475fb4f-80f5-4137-bcc6-309597fbdcb1/e3401f8e-e530-4a28-be91-98ebef7d0934/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d475fb4f-80f5-4137-bcc6-309597fbdcb1/e3401f8e-e530-4a28-be91-98ebef7d0934/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d475fb4f-80f5-4137-bcc6-309597fbdcb1/e3401f8e-e530-4a28-be91-98ebef7d0934/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.5304685   -1.1405593    0.0796222
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.6030988   -1.2614957    0.0552981
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.6502473   -1.2264124   -0.0740822
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.1424090   -0.6385521    0.3537340
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                -1.0166309   -1.1921836   -0.8410782
Birth       COHORTS          GUATEMALA                      Wealth Q1            NA                -1.2544714   -1.4551087   -1.0538341
Birth       COHORTS          GUATEMALA                      Wealth Q2            NA                -0.9920482   -1.2051544   -0.7789420
Birth       COHORTS          GUATEMALA                      Wealth Q3            NA                -1.0249723   -1.2247456   -0.8251990
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.8076370   -0.8924361   -0.7228379
Birth       COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7782722   -0.8795939   -0.6769505
Birth       COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6882990   -0.7961821   -0.5804158
Birth       COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.7120467   -0.7907340   -0.6333595
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0906498   -1.2462535   -0.9350461
Birth       GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1044287   -1.2608128   -0.9480446
Birth       GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.1366280   -1.2950147   -0.9782413
Birth       GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.1388285   -1.3143084   -0.9633487
Birth       IRC              INDIA                          Wealth Q4            NA                -0.8533973   -1.1264027   -0.5803918
Birth       IRC              INDIA                          Wealth Q1            NA                -1.3619616   -1.6719206   -1.0520025
Birth       IRC              INDIA                          Wealth Q2            NA                -0.9442924   -1.3009061   -0.5876787
Birth       IRC              INDIA                          Wealth Q3            NA                -0.8725037   -1.1971018   -0.5479057
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.7732368   -0.8236143   -0.7228593
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            NA                -0.8195046   -0.8599255   -0.7790838
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            NA                -0.7808804   -0.8162918   -0.7454689
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            NA                -0.7800393   -0.8131344   -0.7469442
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.7254010   -0.8293138   -0.6214882
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            NA                -0.7152447   -0.8346423   -0.5958471
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            NA                -0.7151579   -0.8253344   -0.6049815
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            NA                -0.6915130   -0.8299398   -0.5530862
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                -1.0201072   -1.2633591   -0.7768553
Birth       MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.8795292   -1.1923200   -0.5667384
Birth       MAL-ED           BANGLADESH                     Wealth Q2            NA                -1.2418733   -1.5367976   -0.9469490
Birth       MAL-ED           BANGLADESH                     Wealth Q3            NA                -1.0468524   -1.3860375   -0.7076672
Birth       MAL-ED           BRAZIL                         Wealth Q4            NA                 0.4229138   -0.5087267    1.3545544
Birth       MAL-ED           BRAZIL                         Wealth Q1            NA                 0.3021169   -0.3107961    0.9150300
Birth       MAL-ED           BRAZIL                         Wealth Q2            NA                 0.7301684    0.2647351    1.1956016
Birth       MAL-ED           BRAZIL                         Wealth Q3            NA                 0.6495267    0.0187385    1.2803149
Birth       MAL-ED           INDIA                          Wealth Q4            NA                -0.6625000   -1.2946579   -0.0303421
Birth       MAL-ED           INDIA                          Wealth Q1            NA                -0.7753846   -1.2462747   -0.3044945
Birth       MAL-ED           INDIA                          Wealth Q2            NA                -1.2233333   -1.8175527   -0.6291139
Birth       MAL-ED           INDIA                          Wealth Q3            NA                -1.1588889   -1.7968865   -0.5208913
Birth       MAL-ED           PERU                           Wealth Q4            NA                -0.0047568   -0.2387666    0.2292530
Birth       MAL-ED           PERU                           Wealth Q1            NA                -0.0976041   -0.3501375    0.1549293
Birth       MAL-ED           PERU                           Wealth Q2            NA                 0.1731632   -0.0981018    0.4444281
Birth       MAL-ED           PERU                           Wealth Q3            NA                -0.1308236   -0.4386806    0.1770335
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0706741   -0.5463174    0.4049692
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -0.5092871   -0.9945794   -0.0239948
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -0.0783740   -0.5476318    0.3908838
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -0.3644470   -0.8607119    0.1318179
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.6479549    0.2517582    1.0441515
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.7993424    0.4559336    1.1427511
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.7887096    0.3865725    1.1908468
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.6245733    0.2316242    1.0175223
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                -1.2545232   -1.3952417   -1.1138048
Birth       PROVIDE          BANGLADESH                     Wealth Q1            NA                -1.3794136   -1.5315236   -1.2273037
Birth       PROVIDE          BANGLADESH                     Wealth Q2            NA                -1.2268234   -1.3680966   -1.0855502
Birth       PROVIDE          BANGLADESH                     Wealth Q3            NA                -1.3533541   -1.5095825   -1.1971258
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0155181   -0.3176377    0.3486739
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.8645025   -1.1424021   -0.5866028
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.7408654   -1.0228249   -0.4589058
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.3933742   -0.6775150   -0.1092334
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2999885    0.1822549    0.4177221
6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                 0.2279437    0.0703928    0.3854946
6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                 0.1182717   -0.0369749    0.2735183
6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                 0.0615692   -0.1001285    0.2232668
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1904333   -0.2650286   -0.1158380
6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.4319530   -0.5262925   -0.3376135
6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.2847642   -0.3849929   -0.1845354
6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2800975   -0.3528445   -0.2073504
6 months    CONTENT          PERU                           Wealth Q4            NA                 1.1776937    0.9324654    1.4229220
6 months    CONTENT          PERU                           Wealth Q1            NA                 0.8937271    0.6517516    1.1357026
6 months    CONTENT          PERU                           Wealth Q2            NA                 0.9905228    0.7429877    1.2380580
6 months    CONTENT          PERU                           Wealth Q3            NA                 1.1172593    0.9033287    1.3311900
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.5522845   -0.7115780   -0.3929910
6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.6355272   -0.8014994   -0.4695551
6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.6192566   -0.7924891   -0.4460241
6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.6078150   -0.8048767   -0.4107533
6 months    IRC              INDIA                          Wealth Q4            NA                -0.6421588   -0.9184782   -0.3658394
6 months    IRC              INDIA                          Wealth Q1            NA                -0.5190117   -0.7526741   -0.2853493
6 months    IRC              INDIA                          Wealth Q2            NA                -0.4706686   -0.7667376   -0.1745996
6 months    IRC              INDIA                          Wealth Q3            NA                -0.7696887   -1.0540445   -0.4853328
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.5482731   -0.5916906   -0.5048555
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                -0.6791405   -0.7294747   -0.6288063
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                -0.6525782   -0.6953444   -0.6098120
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                -0.5605668   -0.5999042   -0.5212293
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.3023764   -0.3827428   -0.2220101
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                -0.5375744   -0.6064229   -0.4687259
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                -0.4171272   -0.4943088   -0.3399456
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                -0.3778142   -0.4550698   -0.3005587
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                 0.5565964    0.4235932    0.6895997
6 months    LCNI-5           MALAWI                         Wealth Q1            NA                 0.3383597    0.1795726    0.4971468
6 months    LCNI-5           MALAWI                         Wealth Q2            NA                 0.3701729    0.2336791    0.5066667
6 months    LCNI-5           MALAWI                         Wealth Q3            NA                 0.5281567    0.3753314    0.6809821
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0864483   -0.3652517    0.1923550
6 months    MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.0750947   -0.3122410    0.1620515
6 months    MAL-ED           BANGLADESH                     Wealth Q2            NA                -0.1995525   -0.4944053    0.0953004
6 months    MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.1881115   -0.4340886    0.0578656
6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.6695518    0.3262503    1.0128533
6 months    MAL-ED           BRAZIL                         Wealth Q1            NA                 0.8841071    0.5865502    1.1816641
6 months    MAL-ED           BRAZIL                         Wealth Q2            NA                 1.0345600    0.6878841    1.3812358
6 months    MAL-ED           BRAZIL                         Wealth Q3            NA                 1.0533633    0.7231951    1.3835315
6 months    MAL-ED           INDIA                          Wealth Q4            NA                -0.6451280   -0.8813227   -0.4089333
6 months    MAL-ED           INDIA                          Wealth Q1            NA                -0.7645954   -1.0464346   -0.4827563
6 months    MAL-ED           INDIA                          Wealth Q2            NA                -0.7480261   -1.0051640   -0.4908882
6 months    MAL-ED           INDIA                          Wealth Q3            NA                -0.5546639   -0.7936707   -0.3156572
6 months    MAL-ED           NEPAL                          Wealth Q4            NA                 0.1585073   -0.1267643    0.4437788
6 months    MAL-ED           NEPAL                          Wealth Q1            NA                 0.1128195   -0.1349550    0.3605940
6 months    MAL-ED           NEPAL                          Wealth Q2            NA                 0.0983299   -0.1297377    0.3263975
6 months    MAL-ED           NEPAL                          Wealth Q3            NA                 0.0861147   -0.2316833    0.4039127
6 months    MAL-ED           PERU                           Wealth Q4            NA                 0.9771473    0.7138906    1.2404040
6 months    MAL-ED           PERU                           Wealth Q1            NA                 1.2570368    1.0407592    1.4733143
6 months    MAL-ED           PERU                           Wealth Q2            NA                 1.0013538    0.7811829    1.2215247
6 months    MAL-ED           PERU                           Wealth Q3            NA                 0.9622161    0.6750305    1.2494017
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.7882293    0.4672086    1.1092501
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                 0.3620532    0.0202693    0.7038371
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                 0.4706328    0.1819039    0.7593616
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                 0.5226274    0.2258412    0.8194135
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.6195159    0.3784757    0.8605562
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.5964824    0.3531861    0.8397788
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.5139482    0.2462230    0.7816734
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.4242092    0.1189002    0.7295182
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.2661734   -0.4243092   -0.1080376
6 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.2148450   -0.3668123   -0.0628777
6 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.0803307   -0.2669800    0.1063186
6 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.2679992   -0.4366870   -0.0993115
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0974695   -0.0081937    0.2031328
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0479063   -0.0539926    0.1498051
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.0983801   -0.0172612    0.2140215
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.0747764   -0.0294125    0.1789652
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3081175   -0.5184515   -0.0977834
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.6323733   -0.8202552   -0.4444914
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.6660582   -0.8553089   -0.4768076
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.6348874   -0.8585063   -0.4112685
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1866544   -0.2761538   -0.0971551
24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                -0.3937124   -0.5155081   -0.2719166
24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                -0.3364383   -0.4533168   -0.2195598
24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                -0.2714779   -0.3961463   -0.1468095
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.5062942   -0.5715509   -0.4410375
24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7309547   -0.8123629   -0.6495466
24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6270699   -0.7182053   -0.5359345
24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.6564206   -0.7197608   -0.5930804
24 months   CONTENT          PERU                           Wealth Q4            NA                 0.5434213    0.2537884    0.8330541
24 months   CONTENT          PERU                           Wealth Q1            NA                 0.4773601    0.2425946    0.7121256
24 months   CONTENT          PERU                           Wealth Q2            NA                 0.5536283    0.2262522    0.8810045
24 months   CONTENT          PERU                           Wealth Q3            NA                 0.6759776    0.4152326    0.9367227
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.1033285   -1.2924092   -0.9142477
24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1703666   -1.3442663   -0.9964670
24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.2206430   -1.3987418   -1.0425442
24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.0401928   -1.2177771   -0.8626086
24 months   IRC              INDIA                          Wealth Q4            NA                -0.7126170   -0.9132403   -0.5119937
24 months   IRC              INDIA                          Wealth Q1            NA                -0.8535727   -1.0073220   -0.6998235
24 months   IRC              INDIA                          Wealth Q2            NA                -0.7345409   -0.9238400   -0.5452418
24 months   IRC              INDIA                          Wealth Q3            NA                -0.6551862   -0.8403362   -0.4700362
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -1.2877114   -1.3432009   -1.2322219
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                -1.3365613   -1.3884378   -1.2846848
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                -1.3306877   -1.3846030   -1.2767723
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                -1.2885575   -1.3409058   -1.2362092
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -1.1929249   -1.2664133   -1.1194365
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                -1.3344254   -1.3974070   -1.2714437
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                -1.2301534   -1.2920762   -1.1682307
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                -1.2162368   -1.2806066   -1.1518671
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0355978   -0.1217593    0.1929549
24 months   LCNI-5           MALAWI                         Wealth Q1            NA                -0.1105949   -0.2869866    0.0657968
24 months   LCNI-5           MALAWI                         Wealth Q2            NA                -0.0482970   -0.2137704    0.1171765
24 months   LCNI-5           MALAWI                         Wealth Q3            NA                -0.0340383   -0.1943826    0.1263060
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.8848297   -1.1268284   -0.6428311
24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.5830998   -0.9213798   -0.2448198
24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                -0.8681608   -1.0910154   -0.6453062
24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.8576424   -1.0878222   -0.6274625
24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.4520125    0.0892098    0.8148151
24 months   MAL-ED           BRAZIL                         Wealth Q1            NA                 0.1809170   -0.2093074    0.5711413
24 months   MAL-ED           BRAZIL                         Wealth Q2            NA                 0.6711517    0.2314098    1.1108935
24 months   MAL-ED           BRAZIL                         Wealth Q3            NA                 0.5730483    0.1656259    0.9804708
24 months   MAL-ED           INDIA                          Wealth Q4            NA                -1.0179541   -1.2676231   -0.7682850
24 months   MAL-ED           INDIA                          Wealth Q1            NA                -0.9243331   -1.1897428   -0.6589234
24 months   MAL-ED           INDIA                          Wealth Q2            NA                -1.0203781   -1.2460936   -0.7946627
24 months   MAL-ED           INDIA                          Wealth Q3            NA                -0.8467884   -1.0522718   -0.6413049
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.1111245   -0.3579738    0.1357247
24 months   MAL-ED           NEPAL                          Wealth Q1            NA                -0.5687839   -0.7779148   -0.3596530
24 months   MAL-ED           NEPAL                          Wealth Q2            NA                -0.4195059   -0.6449282   -0.1940836
24 months   MAL-ED           NEPAL                          Wealth Q3            NA                -0.3714012   -0.6169743   -0.1258280
24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0726653   -0.1216729    0.2670034
24 months   MAL-ED           PERU                           Wealth Q1            NA                 0.1774424   -0.1121923    0.4670770
24 months   MAL-ED           PERU                           Wealth Q2            NA                 0.1392855   -0.1281554    0.4067264
24 months   MAL-ED           PERU                           Wealth Q3            NA                 0.1190143   -0.1328539    0.3708825
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.6135614    0.3708467    0.8562760
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                 0.4901722    0.2758628    0.7044815
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                 0.2014825   -0.0412722    0.4442372
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                 0.3644152    0.1237889    0.6050415
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2830924    0.0617691    0.5044156
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.2100093   -0.1188944    0.5389129
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.0897422   -0.1541649    0.3336493
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1046084   -0.3405518    0.1313349
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -1.0686456   -1.2168619   -0.9204292
24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.8078704   -0.9714073   -0.6443335
24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.7484902   -0.9214952   -0.5754851
24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.9624741   -1.1276437   -0.7973046


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
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.0726303   -0.9736135    0.8283529
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.1197788   -0.9644892    0.7249316
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.3880595   -0.3955581    1.1716771
Birth       COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2378404   -0.4972632    0.0215823
Birth       COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0245827   -0.2441199    0.2932853
Birth       COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0083414   -0.2660902    0.2494075
Birth       COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4          0.0293648   -0.1008277    0.1595574
Birth       COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4          0.1193381   -0.0160978    0.2547739
Birth       COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4          0.0955903   -0.0179240    0.2091046
Birth       GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0137789   -0.2269479    0.1993901
Birth       GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0459782   -0.2603143    0.1683578
Birth       GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0481788   -0.2752926    0.1789351
Birth       IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Wealth Q1            Wealth Q4         -0.5085643   -0.8951629   -0.1219657
Birth       IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0908951   -0.5136742    0.3318840
Birth       IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0191065   -0.4152343    0.3770214
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0462679   -0.1072162    0.0146805
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0076436   -0.0673196    0.0520324
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0068025   -0.0639023    0.0502973
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4          0.0101563   -0.1450624    0.1653751
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4          0.0102431   -0.1410719    0.1615580
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4          0.0338880   -0.1380435    0.2058196
Birth       MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.1405780   -0.2541571    0.5353131
Birth       MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.2217661   -0.6057600    0.1622278
Birth       MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0267452   -0.4459447    0.3924544
Birth       MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.1207969   -1.2272959    0.9857021
Birth       MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.3072545   -0.7275692    1.3420783
Birth       MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.2266129   -0.8962173    1.3494431
Birth       MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.1128846   -0.9011492    0.6753800
Birth       MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.5608333   -1.4284279    0.3067612
Birth       MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.4963889   -1.3945340    0.4017562
Birth       MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.0928473   -0.4365419    0.2508472
Birth       MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.1779200   -0.1794122    0.5352521
Birth       MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.1260668   -0.5151432    0.2630096
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.4386130   -1.1189903    0.2417643
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.0076999   -0.6758645    0.6604647
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2937729   -0.9831446    0.3955988
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.1513875   -0.3636978    0.6664727
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1407548   -0.4195182    0.7010277
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0233816   -0.5740691    0.5273058
Birth       PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1248904   -0.3270550    0.0772742
Birth       PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0276998   -0.1666419    0.2220416
Birth       PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0988309   -0.3039395    0.1062777
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.8800206   -1.3144423   -0.4455988
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.7563835   -1.1924701   -0.3202968
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.4088923   -0.8469617    0.0291770
6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0720448   -0.2683727    0.1242831
6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1817168   -0.3756715    0.0122378
6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.2384193   -0.4379398   -0.0388989
6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2415197   -0.3613035   -0.1217359
6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0943309   -0.2187186    0.0300569
6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.0896641   -0.1933429    0.0140146
6 months    CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.2839666   -0.6292368    0.0613035
6 months    CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.1871709   -0.5369607    0.1626189
6 months    CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0604344   -0.3856025    0.2647338
6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0832427   -0.3135015    0.1470160
6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0669721   -0.3024036    0.1684593
6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0555305   -0.3090119    0.1979510
6 months    IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Wealth Q1            Wealth Q4          0.1231471   -0.2388465    0.4851407
6 months    IRC              INDIA                          Wealth Q2            Wealth Q4          0.1714902   -0.2336118    0.5765923
6 months    IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1275299   -0.5242547    0.2691949
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1308674   -0.1953757   -0.0663591
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1043052   -0.1626410   -0.0459693
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0122937   -0.0710278    0.0464404
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.2351980   -0.3401311   -0.1302648
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1147507   -0.2238349   -0.0056666
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0754378   -0.1824336    0.0315580
6 months    LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.2182367   -0.4251450   -0.0113285
6 months    LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.1864236   -0.3777340    0.0048868
6 months    LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0284397   -0.2307970    0.1739176
6 months    MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.0113536   -0.3556158    0.3783230
6 months    MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.1131041   -0.5192924    0.2930842
6 months    MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.1016632   -0.4740195    0.2706931
6 months    MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4          0.2145554   -0.2372143    0.6663250
6 months    MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.3650082   -0.1237964    0.8538128
6 months    MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.3838116   -0.0940442    0.8616673
6 months    MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.1194675   -0.4892267    0.2502918
6 months    MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.1028981   -0.4544003    0.2486040
6 months    MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0904640   -0.2465962    0.4275242
6 months    MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.0456877   -0.4200750    0.3286995
6 months    MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.0601773   -0.4249949    0.3046402
6 months    MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.0723925   -0.4987965    0.3540114
6 months    MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.2798894   -0.0614113    0.6211902
6 months    MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0242065   -0.3195093    0.3679224
6 months    MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0149312   -0.4051890    0.3753267
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.4261762   -0.8950856    0.0427332
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3175966   -0.7504239    0.1152307
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2656020   -0.7041567    0.1729527
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0230335   -0.3657704    0.3197034
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.1055678   -0.4661706    0.2550350
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.1953068   -0.5847738    0.1941603
6 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0513284   -0.1674642    0.2701209
6 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.1858427   -0.0586390    0.4303244
6 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0018259   -0.2324495    0.2287978
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0495633   -0.1961214    0.0969949
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0009106   -0.1554218    0.1572430
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0226932   -0.1709519    0.1255656
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.3242558   -0.6049286   -0.0435831
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.3579408   -0.6404267   -0.0754549
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.3267700   -0.6327181   -0.0208218
24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2070579   -0.3583287   -0.0557872
24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1497839   -0.2970136   -0.0025542
24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0848235   -0.2383509    0.0687040
24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2246605   -0.3281497   -0.1211714
24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1207757   -0.2322441   -0.0093073
24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.1501264   -0.2401810   -0.0600718
24 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0660612   -0.4393451    0.3072228
24 months   CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0102071   -0.4278223    0.4482364
24 months   CONTENT          PERU                           Wealth Q3            Wealth Q4          0.1325564   -0.2568431    0.5219558
24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0670382   -0.3240962    0.1900198
24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.1173145   -0.3772320    0.1426030
24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0631356   -0.1965013    0.3227726
24 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.1409557   -0.3934268    0.1115153
24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0219239   -0.2974824    0.2536345
24 months   IRC              INDIA                          Wealth Q3            Wealth Q4          0.0574308   -0.2147836    0.3296453
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0488499   -0.1217024    0.0240026
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0429763   -0.1197886    0.0338361
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0008461   -0.0781252    0.0764330
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1415005   -0.2383038   -0.0446972
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0372286   -0.1291462    0.0546890
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0233119   -0.1205454    0.0739215
24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1461927   -0.3821443    0.0897589
24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0838948   -0.3126227    0.1448332
24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0696361   -0.2939883    0.1547161
24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.3017299   -0.1141348    0.7175947
24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4          0.0166690   -0.3090233    0.3423613
24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4          0.0271874   -0.3053480    0.3597228
24 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.2710955   -0.8015640    0.2593731
24 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.2191392   -0.3483700    0.7866484
24 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.1210358   -0.4234399    0.6655116
24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4          0.0936210   -0.2709830    0.4582249
24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.0024241   -0.3390955    0.3342474
24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.1711657   -0.1521968    0.4945282
24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.4576594   -0.7810143   -0.1343044
24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.3083813   -0.6425396    0.0257769
24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.2602766   -0.6099042    0.0893509
24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.1047771   -0.2417821    0.4513362
24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0666202   -0.2619683    0.3952087
24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0463491   -0.2752834    0.3679815
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.1233892   -0.4462200    0.1994416
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.4120789   -0.7550927   -0.0690650
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2491462   -0.5886753    0.0903830
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0730831   -0.4708537    0.3246875
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.1933502   -0.5231302    0.1364298
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.3877008   -0.7106344   -0.0647672
24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.2607752    0.0417158    0.4798346
24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.3201554    0.0928957    0.5474151
24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.1061714   -0.1147525    0.3270954


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0656429   -0.3741551    0.5054410
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0406530   -0.1727141    0.0914081
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0653458   -0.0057155    0.1364071
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0257933   -0.1584579    0.1068714
Birth       IRC              INDIA                          Wealth Q4            NA                -0.1571858   -0.3968400    0.0824684
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0044736   -0.0494322    0.0404850
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0371512   -0.0555651    0.1298675
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0472714   -0.1743067    0.2688494
Birth       MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0414721   -0.7809061    0.8638504
Birth       MAL-ED           INDIA                          Wealth Q4            NA                -0.2816026   -0.8500282    0.2868230
Birth       MAL-ED           PERU                           Wealth Q4            NA                -0.0420527   -0.2539259    0.1698204
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.1022733   -0.5622072    0.3576607
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1157951   -0.2376467    0.4692370
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0439354   -0.1654886    0.0776178
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.5181947   -0.7954012   -0.2409882
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1085414   -0.2027960   -0.0142869
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1034100   -0.1685756   -0.0382444
6 months    CONTENT          PERU                           Wealth Q4            NA                -0.1132658   -0.3306560    0.1041244
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0515571   -0.1939921    0.0908779
6 months    IRC              INDIA                          Wealth Q4            NA                 0.0432290   -0.1971611    0.2836191
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0449771   -0.0838552   -0.0060990
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0877831   -0.1609583   -0.0146078
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                -0.1148317   -0.2321637    0.0025002
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0468850   -0.2810280    0.1872579
6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.3025256    0.0069697    0.5980815
6 months    MAL-ED           INDIA                          Wealth Q4            NA                -0.0651593   -0.2763281    0.1460095
6 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.0480765   -0.2909410    0.1947880
6 months    MAL-ED           PERU                           Wealth Q4            NA                 0.0740626   -0.1509656    0.2990907
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.2477943   -0.5288606    0.0332721
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0832946   -0.2976853    0.1310961
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0670827   -0.0779838    0.2121493
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0173015   -0.1093290    0.0747259
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2490331   -0.4285842   -0.0694820
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0924851   -0.1624771   -0.0224932
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1036650   -0.1597843   -0.0475457
24 months   CONTENT          PERU                           Wealth Q4            NA                 0.0468226   -0.2013083    0.2949536
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0329823   -0.1944783    0.1285137
24 months   IRC              INDIA                          Wealth Q4            NA                -0.0331980   -0.2038926    0.1374966
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0095972   -0.0611027    0.0419083
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0302527   -0.0963704    0.0358650
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.0833845   -0.2164330    0.0496639
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0655373   -0.1334964    0.2645710
24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0106108   -0.2920680    0.3132896
24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0663021   -0.1444311    0.2770353
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.2637877   -0.4748822   -0.0526933
24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0385329   -0.1311871    0.2082528
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.2045312   -0.4114875    0.0024250
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2282949   -0.4189472   -0.0376425
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.1757786    0.0381030    0.3134541
