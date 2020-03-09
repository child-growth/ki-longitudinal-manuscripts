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
![](/tmp/b4dbd850-962a-41ee-948c-f7cefbca615b/f5ed069c-6798-4e17-8fef-6da707d6fb73/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b4dbd850-962a-41ee-948c-f7cefbca615b/f5ed069c-6798-4e17-8fef-6da707d6fb73/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b4dbd850-962a-41ee-948c-f7cefbca615b/f5ed069c-6798-4e17-8fef-6da707d6fb73/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.5535247   -1.1484235    0.0413741
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.5368878   -1.2276258    0.1538501
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.6364531   -1.1993264   -0.0735798
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.1041952   -0.6323865    0.4239960
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                -1.0200750   -1.1925523   -0.8475977
Birth       COHORTS          GUATEMALA                      Wealth Q1            NA                -1.2356295   -1.4388149   -1.0324441
Birth       COHORTS          GUATEMALA                      Wealth Q2            NA                -0.9955494   -1.2192964   -0.7718025
Birth       COHORTS          GUATEMALA                      Wealth Q3            NA                -1.0308281   -1.2344748   -0.8271813
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.7941445   -0.8807830   -0.7075060
Birth       COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7790389   -0.8793275   -0.6787504
Birth       COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6815634   -0.7887700   -0.5743569
Birth       COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.7244677   -0.8036251   -0.6453103
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.1172942   -1.2685975   -0.9659908
Birth       GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.1116277   -1.2641279   -0.9591274
Birth       GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.1080673   -1.2712277   -0.9449068
Birth       GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.1383202   -1.3116644   -0.9649760
Birth       IRC              INDIA                          Wealth Q4            NA                -0.7908563   -1.0730423   -0.5086702
Birth       IRC              INDIA                          Wealth Q1            NA                -1.3265222   -1.6344085   -1.0186360
Birth       IRC              INDIA                          Wealth Q2            NA                -0.9351725   -1.2912324   -0.5791126
Birth       IRC              INDIA                          Wealth Q3            NA                -0.8460635   -1.1702137   -0.5219133
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.7748179   -0.8263404   -0.7232953
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            NA                -0.8228709   -0.8643817   -0.7813601
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            NA                -0.7847947   -0.8199713   -0.7496180
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            NA                -0.7777363   -0.8104226   -0.7450501
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.7053595   -0.8097666   -0.6009525
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            NA                -0.6584837   -0.7731112   -0.5438562
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            NA                -0.7096859   -0.8109772   -0.6083945
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            NA                -0.6990777   -0.8272312   -0.5709243
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.9905978   -1.2384110   -0.7427847
Birth       MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.8204995   -1.1395639   -0.5014351
Birth       MAL-ED           BANGLADESH                     Wealth Q2            NA                -1.1369239   -1.4366133   -0.8372344
Birth       MAL-ED           BANGLADESH                     Wealth Q3            NA                -1.0267033   -1.3789967   -0.6744099
Birth       MAL-ED           BRAZIL                         Wealth Q4            NA                 0.1634186   -0.8655961    1.1924332
Birth       MAL-ED           BRAZIL                         Wealth Q1            NA                 0.2214361   -0.4304631    0.8733352
Birth       MAL-ED           BRAZIL                         Wealth Q2            NA                 0.6886271    0.2297702    1.1474840
Birth       MAL-ED           BRAZIL                         Wealth Q3            NA                 0.4511550   -0.3503990    1.2527090
Birth       MAL-ED           INDIA                          Wealth Q4            NA                -0.6625000   -1.2946579   -0.0303421
Birth       MAL-ED           INDIA                          Wealth Q1            NA                -0.7753846   -1.2462747   -0.3044945
Birth       MAL-ED           INDIA                          Wealth Q2            NA                -1.2233333   -1.8175527   -0.6291139
Birth       MAL-ED           INDIA                          Wealth Q3            NA                -1.1588889   -1.7968865   -0.5208913
Birth       MAL-ED           PERU                           Wealth Q4            NA                 0.0383352   -0.1979274    0.2745978
Birth       MAL-ED           PERU                           Wealth Q1            NA                -0.1352683   -0.3904063    0.1198698
Birth       MAL-ED           PERU                           Wealth Q2            NA                 0.0618145   -0.1905858    0.3142149
Birth       MAL-ED           PERU                           Wealth Q3            NA                -0.1339293   -0.4209924    0.1531338
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.1450229   -0.3172267    0.6072725
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                -0.4806742   -0.9716345    0.0102861
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                -0.0349693   -0.4957008    0.4257623
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                -0.3526082   -0.8737600    0.1685435
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.7388331    0.3483944    1.1292719
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.8049725    0.4878347    1.1221102
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.8657633    0.4704367    1.2610899
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.6798131    0.2860601    1.0735661
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                -1.2683525   -1.4091710   -1.1275340
Birth       PROVIDE          BANGLADESH                     Wealth Q1            NA                -1.3875675   -1.5396969   -1.2354382
Birth       PROVIDE          BANGLADESH                     Wealth Q2            NA                -1.2317159   -1.3694887   -1.0939432
Birth       PROVIDE          BANGLADESH                     Wealth Q3            NA                -1.3411033   -1.4929813   -1.1892253
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0021588   -0.3294701    0.3337878
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.8912426   -1.1738993   -0.6085858
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.7357737   -1.0180141   -0.4535332
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.4138170   -0.7001980   -0.1274359
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.3022931    0.1831693    0.4214169
6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                 0.2161459    0.0623846    0.3699071
6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                 0.1102159   -0.0453281    0.2657599
6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                 0.0822682   -0.0861108    0.2506472
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1894270   -0.2653703   -0.1134838
6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.4414676   -0.5378009   -0.3451342
6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.2724064   -0.3753910   -0.1694218
6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.2923607   -0.3659409   -0.2187806
6 months    CONTENT          PERU                           Wealth Q4            NA                 1.2204683    0.9850417    1.4558949
6 months    CONTENT          PERU                           Wealth Q1            NA                 0.8945895    0.6475266    1.1416525
6 months    CONTENT          PERU                           Wealth Q2            NA                 0.9696886    0.7153443    1.2240328
6 months    CONTENT          PERU                           Wealth Q3            NA                 1.1240468    0.9103530    1.3377407
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.5492487   -0.7081709   -0.3903265
6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                -0.6242639   -0.7874079   -0.4611199
6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                -0.6271208   -0.7999093   -0.4543322
6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                -0.6160141   -0.8120304   -0.4199979
6 months    IRC              INDIA                          Wealth Q4            NA                -0.6438914   -0.9189204   -0.3688623
6 months    IRC              INDIA                          Wealth Q1            NA                -0.5054352   -0.7326201   -0.2782503
6 months    IRC              INDIA                          Wealth Q2            NA                -0.4731867   -0.7629956   -0.1833777
6 months    IRC              INDIA                          Wealth Q3            NA                -0.7748382   -1.0650912   -0.4845852
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.5452277   -0.5889478   -0.5015076
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                -0.6879552   -0.7372367   -0.6386737
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                -0.6440523   -0.6868983   -0.6012063
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                -0.5657006   -0.6049533   -0.5264480
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.2991758   -0.3875041   -0.2108476
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                -0.5350473   -0.6058491   -0.4642454
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                -0.4167871   -0.4950957   -0.3384785
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                -0.3905564   -0.4685965   -0.3125163
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                 0.5529184    0.4236705    0.6821664
6 months    LCNI-5           MALAWI                         Wealth Q1            NA                 0.3373649    0.1761443    0.4985855
6 months    LCNI-5           MALAWI                         Wealth Q2            NA                 0.3600138    0.2222291    0.4977985
6 months    LCNI-5           MALAWI                         Wealth Q3            NA                 0.5247754    0.3745506    0.6750002
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0472388   -0.3078093    0.2133317
6 months    MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.0339897   -0.2806613    0.2126818
6 months    MAL-ED           BANGLADESH                     Wealth Q2            NA                -0.1604653   -0.4453707    0.1244402
6 months    MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.1307033   -0.3852508    0.1238442
6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.6968604    0.3522929    1.0414279
6 months    MAL-ED           BRAZIL                         Wealth Q1            NA                 0.9113622    0.6137789    1.2089455
6 months    MAL-ED           BRAZIL                         Wealth Q2            NA                 1.0383790    0.6790640    1.3976940
6 months    MAL-ED           BRAZIL                         Wealth Q3            NA                 1.0946046    0.7665142    1.4226951
6 months    MAL-ED           INDIA                          Wealth Q4            NA                -0.6434703   -0.8883788   -0.3985618
6 months    MAL-ED           INDIA                          Wealth Q1            NA                -0.7626396   -1.0449947   -0.4802846
6 months    MAL-ED           INDIA                          Wealth Q2            NA                -0.7776186   -1.0390573   -0.5161799
6 months    MAL-ED           INDIA                          Wealth Q3            NA                -0.5901154   -0.8304136   -0.3498172
6 months    MAL-ED           NEPAL                          Wealth Q4            NA                 0.2003315   -0.0766872    0.4773503
6 months    MAL-ED           NEPAL                          Wealth Q1            NA                 0.0759517   -0.1860341    0.3379374
6 months    MAL-ED           NEPAL                          Wealth Q2            NA                 0.1007641   -0.1148122    0.3163403
6 months    MAL-ED           NEPAL                          Wealth Q3            NA                 0.0691940   -0.2368441    0.3752322
6 months    MAL-ED           PERU                           Wealth Q4            NA                 0.9744906    0.7099521    1.2390292
6 months    MAL-ED           PERU                           Wealth Q1            NA                 1.2630146    1.0434271    1.4826021
6 months    MAL-ED           PERU                           Wealth Q2            NA                 1.0089596    0.7885058    1.2294134
6 months    MAL-ED           PERU                           Wealth Q3            NA                 0.9697371    0.6853350    1.2541391
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.8124979    0.4977062    1.1272895
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                 0.3602802    0.0248180    0.6957424
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                 0.4620652    0.1767684    0.7473621
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                 0.5303251    0.2348521    0.8257982
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.6384178    0.3930867    0.8837489
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.5900894    0.3496942    0.8304847
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.5168307    0.2527130    0.7809483
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.4342722    0.1306540    0.7378904
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.2644494   -0.4205734   -0.1083254
6 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.2093635   -0.3681943   -0.0505328
6 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.0831049   -0.2665111    0.1003012
6 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.2765264   -0.4428533   -0.1101995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0915639   -0.0144537    0.1975814
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                 0.0549178   -0.0465214    0.1563570
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.1146677   -0.0012727    0.2306082
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                 0.0720464   -0.0327073    0.1768002
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3235108   -0.5307717   -0.1162500
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                -0.6190295   -0.8079811   -0.4300779
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                -0.6636908   -0.8529938   -0.4743877
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                -0.6179582   -0.8477604   -0.3881560
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1798117   -0.2682175   -0.0914059
24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                -0.4183451   -0.5354856   -0.3012046
24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                -0.3376049   -0.4549218   -0.2202881
24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                -0.2650907   -0.3953410   -0.1348404
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.4885691   -0.5526357   -0.4245025
24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                -0.7298993   -0.8105736   -0.6492250
24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                -0.6052987   -0.6965984   -0.5139991
24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                -0.6563463   -0.7190935   -0.5935991
24 months   CONTENT          PERU                           Wealth Q4            NA                 0.5918493    0.2997373    0.8839612
24 months   CONTENT          PERU                           Wealth Q1            NA                 0.5099488    0.2727897    0.7471079
24 months   CONTENT          PERU                           Wealth Q2            NA                 0.6207328    0.3114593    0.9300064
24 months   CONTENT          PERU                           Wealth Q3            NA                 0.7194977    0.4694540    0.9695414
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -1.0989795   -1.2895594   -0.9083996
24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                -1.2006687   -1.3781308   -1.0232066
24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                -1.1923434   -1.3731769   -1.0115099
24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                -1.0484651   -1.2229036   -0.8740265
24 months   IRC              INDIA                          Wealth Q4            NA                -0.7163174   -0.9126468   -0.5199880
24 months   IRC              INDIA                          Wealth Q1            NA                -0.8452200   -1.0021347   -0.6883052
24 months   IRC              INDIA                          Wealth Q2            NA                -0.7438892   -0.9302721   -0.5575064
24 months   IRC              INDIA                          Wealth Q3            NA                -0.6268895   -0.8135400   -0.4402389
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -1.2776481   -1.3338237   -1.2214725
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                -1.3248985   -1.3753503   -1.2744468
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                -1.3258886   -1.3789166   -1.2728606
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                -1.2952174   -1.3451984   -1.2452364
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -1.2090367   -1.2773965   -1.1406770
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                -1.3333045   -1.3931207   -1.2734883
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                -1.2248548   -1.2886126   -1.1610970
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                -1.2200222   -1.2858948   -1.1541496
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0140022   -0.1434915    0.1714959
24 months   LCNI-5           MALAWI                         Wealth Q1            NA                -0.1343773   -0.3069636    0.0382090
24 months   LCNI-5           MALAWI                         Wealth Q2            NA                -0.0793883   -0.2461006    0.0873240
24 months   LCNI-5           MALAWI                         Wealth Q3            NA                -0.0287113   -0.1882380    0.1308154
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.8396301   -1.0918645   -0.5873958
24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                -0.6501476   -0.9960105   -0.3042847
24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                -0.8600693   -1.0739631   -0.6461755
24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                -0.8423483   -1.0601082   -0.6245884
24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.3909598    0.0243164    0.7576031
24 months   MAL-ED           BRAZIL                         Wealth Q1            NA                 0.1375273   -0.2502946    0.5253493
24 months   MAL-ED           BRAZIL                         Wealth Q2            NA                 0.6339457    0.1977032    1.0701882
24 months   MAL-ED           BRAZIL                         Wealth Q3            NA                 0.5063175    0.1016693    0.9109657
24 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.9995407   -1.2518815   -0.7471998
24 months   MAL-ED           INDIA                          Wealth Q1            NA                -0.9086705   -1.1770475   -0.6402936
24 months   MAL-ED           INDIA                          Wealth Q2            NA                -0.9991012   -1.2288048   -0.7693976
24 months   MAL-ED           INDIA                          Wealth Q3            NA                -0.8397785   -1.0466713   -0.6328857
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.0969311   -0.3408041    0.1469419
24 months   MAL-ED           NEPAL                          Wealth Q1            NA                -0.5949010   -0.8093450   -0.3804570
24 months   MAL-ED           NEPAL                          Wealth Q2            NA                -0.4274294   -0.6452820   -0.2095769
24 months   MAL-ED           NEPAL                          Wealth Q3            NA                -0.3651197   -0.6163113   -0.1139280
24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0918278   -0.1046978    0.2883534
24 months   MAL-ED           PERU                           Wealth Q1            NA                 0.1913506   -0.0923613    0.4750624
24 months   MAL-ED           PERU                           Wealth Q2            NA                 0.2058559   -0.0638197    0.4755315
24 months   MAL-ED           PERU                           Wealth Q3            NA                 0.1229699   -0.1356774    0.3816172
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.5988054    0.3539338    0.8436771
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                 0.5093472    0.2797287    0.7389658
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                 0.1676088   -0.0726445    0.4078622
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                 0.3768743    0.1277119    0.6260367
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2032648   -0.0238261    0.4303556
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                -0.0742380   -0.4220153    0.2735393
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                 0.0526340   -0.1957982    0.3010662
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                -0.1466574   -0.3880780    0.0947632
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -1.1078314   -1.2583549   -0.9573080
24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                -0.7800460   -0.9417234   -0.6183686
24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                -0.7315862   -0.8968392   -0.5663332
24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                -0.9755677   -1.1312740   -0.8198613


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
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4          0.0166369   -0.8905716    0.9238454
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.0829284   -0.9031203    0.7372635
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4          0.4493295   -0.3449467    1.2436057
Birth       COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2155545   -0.4752609    0.0441520
Birth       COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4          0.0245256   -0.2509509    0.3000020
Birth       COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0107531   -0.2696199    0.2481138
Birth       COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4          0.0151056   -0.1153862    0.1455973
Birth       COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4          0.1125810   -0.0234013    0.2485634
Birth       COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4          0.0696768   -0.0454439    0.1847975
Birth       GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4          0.0056665   -0.2004317    0.2117647
Birth       GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4          0.0092269   -0.2047264    0.2231801
Birth       GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0210261   -0.2425949    0.2005428
Birth       IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Wealth Q1            Wealth Q4         -0.5356659   -0.9294350   -0.1418969
Birth       IRC              INDIA                          Wealth Q2            Wealth Q4         -0.1443162   -0.5729964    0.2843639
Birth       IRC              INDIA                          Wealth Q3            Wealth Q4         -0.0552072   -0.4569645    0.3465500
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0480531   -0.1096323    0.0135262
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0099768   -0.0706112    0.0506576
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0029185   -0.0607198    0.0548828
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4          0.0468758   -0.1055166    0.1992682
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0043263   -0.1491829    0.1405302
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4          0.0062818   -0.1572938    0.1698574
Birth       MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.1700983   -0.2346314    0.5748281
Birth       MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.1463260   -0.5357865    0.2431345
Birth       MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0361055   -0.4673491    0.3951382
Birth       MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4          0.0580175   -1.1595711    1.2756061
Birth       MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.5252085   -0.6092187    1.6596357
Birth       MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.2877365   -1.0200056    1.5954786
Birth       MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.1128846   -0.9011492    0.6753800
Birth       MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.5608333   -1.4284279    0.3067612
Birth       MAL-ED           INDIA                          Wealth Q3            Wealth Q4         -0.4963889   -1.3945340    0.4017562
Birth       MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Wealth Q1            Wealth Q4         -0.1736035   -0.5210334    0.1738264
Birth       MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0234793   -0.3229177    0.3698763
Birth       MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.1722645   -0.5443230    0.1997940
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.6256971   -1.3004316    0.0490374
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.1799922   -0.8334752    0.4734909
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.4976311   -1.1962441    0.2009818
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4          0.0661393   -0.4151331    0.5474118
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.1269302   -0.4241876    0.6780480
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0590201   -0.6000150    0.4819749
Birth       PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         -0.1192150   -0.3208694    0.0824394
Birth       PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.0366366   -0.1545480    0.2278212
Birth       PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0727508   -0.2740115    0.1285100
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.8934014   -1.3277813   -0.4590215
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.7379325   -1.1724459   -0.3034191
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.4159758   -0.8520058    0.0200542
6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.0861472   -0.2799044    0.1076100
6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1920772   -0.3871335    0.0029792
6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.2200249   -0.4256718   -0.0143780
6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2520405   -0.3743095   -0.1297715
6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.0829794   -0.2104416    0.0444828
6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.1029337   -0.2081798    0.0023124
6 months    CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.3258788   -0.6676470    0.0158895
6 months    CONTENT          PERU                           Wealth Q2            Wealth Q4         -0.2507798   -0.5981705    0.0966110
6 months    CONTENT          PERU                           Wealth Q3            Wealth Q4         -0.0964215   -0.4149196    0.2220766
6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.0750152   -0.3027852    0.1527547
6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0778721   -0.3125047    0.1567606
6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         -0.0667654   -0.3188938    0.1853629
6 months    IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Wealth Q1            Wealth Q4          0.1384562   -0.2175173    0.4944297
6 months    IRC              INDIA                          Wealth Q2            Wealth Q4          0.1707047   -0.2284573    0.5698666
6 months    IRC              INDIA                          Wealth Q3            Wealth Q4         -0.1309468   -0.5302822    0.2683886
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1427275   -0.2060412   -0.0794138
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0988246   -0.1572110   -0.0404383
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0204729   -0.0792770    0.0383311
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.2358714   -0.3473385   -0.1244043
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.1176112   -0.2326814   -0.0025410
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0913805   -0.2054359    0.0226748
6 months    LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.2155536   -0.4216690   -0.0094382
6 months    LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.1929047   -0.3824044   -0.0034049
6 months    LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0281430   -0.2261181    0.1698320
6 months    MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.0132491   -0.3449081    0.3714062
6 months    MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.1132264   -0.4997635    0.2733106
6 months    MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0834645   -0.4509363    0.2840072
6 months    MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4          0.2145018   -0.2398969    0.6689005
6 months    MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.3415186   -0.1569240    0.8399612
6 months    MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.3977442   -0.0773974    0.8728858
6 months    MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Wealth Q1            Wealth Q4         -0.1191693   -0.4936759    0.2553373
6 months    MAL-ED           INDIA                          Wealth Q2            Wealth Q4         -0.1341484   -0.4925523    0.2242556
6 months    MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.0533549   -0.2901474    0.3968571
6 months    MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.1243798   -0.5040637    0.2553040
6 months    MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.0995674   -0.4492970    0.2501621
6 months    MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.1311375   -0.5428038    0.2805288
6 months    MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.2885240   -0.0560085    0.6330564
6 months    MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.0344689   -0.3103567    0.3792946
6 months    MAL-ED           PERU                           Wealth Q3            Wealth Q4         -0.0047536   -0.3936454    0.3841383
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.4522177   -0.9115246    0.0070891
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.3504326   -0.7766465    0.0757812
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2821727   -0.7148290    0.1504835
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0483284   -0.3926898    0.2960331
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.1215871   -0.4825409    0.2393667
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.2041456   -0.5960095    0.1877183
6 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.0550858   -0.1672641    0.2774358
6 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.1813445   -0.0591124    0.4218013
6 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         -0.0120770   -0.2396998    0.2155458
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.0366461   -0.1831733    0.1098811
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4          0.0231039   -0.1340062    0.1802140
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.0195174   -0.1687773    0.1297424
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         -0.2955187   -0.5766094   -0.0144280
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         -0.3401799   -0.6209283   -0.0594315
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         -0.2944474   -0.6042757    0.0153810
24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         -0.2385335   -0.3854121   -0.0916549
24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         -0.1577933   -0.3047281   -0.0108584
24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         -0.0852790   -0.2428425    0.0722844
24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         -0.2413302   -0.3432836   -0.1393767
24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         -0.1167296   -0.2276343   -0.0058250
24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         -0.1677772   -0.2566309   -0.0789235
24 months   CONTENT          PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   CONTENT          PERU                           Wealth Q1            Wealth Q4         -0.0819005   -0.4591477    0.2953468
24 months   CONTENT          PERU                           Wealth Q2            Wealth Q4          0.0288836   -0.3978836    0.4556508
24 months   CONTENT          PERU                           Wealth Q3            Wealth Q4          0.1276485   -0.2567818    0.5120788
24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         -0.1016892   -0.3624546    0.1590761
24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         -0.0933639   -0.3564515    0.1697237
24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4          0.0505145   -0.2081473    0.3091762
24 months   IRC              INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         -0.1289026   -0.3807317    0.1229266
24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         -0.0275718   -0.2983184    0.2431747
24 months   IRC              INDIA                          Wealth Q3            Wealth Q4          0.0894279   -0.1811798    0.3600356
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         -0.0472504   -0.1202784    0.0257775
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0482405   -0.1253441    0.0288632
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0175693   -0.0930896    0.0579510
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         -0.1242678   -0.2140626   -0.0344731
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         -0.0158181   -0.1058744    0.0742383
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         -0.0109855   -0.1059127    0.0839417
24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         -0.1483795   -0.3811275    0.0843685
24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         -0.0933905   -0.3225533    0.1357723
24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         -0.0427135   -0.2658504    0.1804234
24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4          0.1894825   -0.2388456    0.6178107
24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         -0.0204392   -0.3512935    0.3104152
24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         -0.0027182   -0.3372362    0.3317998
24 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         -0.2534325   -0.7850464    0.2781814
24 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4          0.2429859   -0.3234862    0.8094580
24 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4          0.1153578   -0.4297047    0.6604202
24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4          0.0908701   -0.2781863    0.4599265
24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4          0.0004395   -0.3406001    0.3414791
24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4          0.1597622   -0.1666325    0.4861569
24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         -0.4979699   -0.8237135   -0.1722263
24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         -0.3304983   -0.6577873   -0.0032094
24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         -0.2681886   -0.6192024    0.0828253
24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4          0.0995227   -0.2453610    0.4444065
24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4          0.1140281   -0.2196278    0.4476840
24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4          0.0311421   -0.2958273    0.3581115
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         -0.0894582   -0.4242091    0.2452927
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         -0.4311966   -0.7730643   -0.0893289
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         -0.2219312   -0.5691323    0.1252700
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         -0.2775028   -0.6914928    0.1364872
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         -0.1506307   -0.4862853    0.1850238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         -0.3499222   -0.6813711   -0.0184732
24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4          0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4          0.3277854    0.1075658    0.5480051
24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4          0.3762452    0.1531939    0.5992966
24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4          0.1322638   -0.0835862    0.3481137


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0886992   -0.3330446    0.5104429
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0372089   -0.1668918    0.0924740
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0518532   -0.0209314    0.1246379
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0008511   -0.1273741    0.1290763
Birth       IRC              INDIA                          Wealth Q4            NA                -0.2197268   -0.4686293    0.0291757
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0028925   -0.0491148    0.0433298
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0171097   -0.0758351    0.1100546
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0177620   -0.2069767    0.2425007
Birth       MAL-ED           BRAZIL                         Wealth Q4            NA                 0.3009674   -0.6225167    1.2244515
Birth       MAL-ED           INDIA                          Wealth Q4            NA                -0.2816026   -0.8500282    0.2868230
Birth       MAL-ED           PERU                           Wealth Q4            NA                -0.0851447   -0.2975835    0.1272940
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.3179703   -0.7651818    0.1292413
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0249169   -0.3187987    0.3686325
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0301062   -0.1511512    0.0909389
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.5048355   -0.7803386   -0.2293323
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -0.1108460   -0.2064586   -0.0152334
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1044163   -0.1709091   -0.0379234
6 months    CONTENT          PERU                           Wealth Q4            NA                -0.1560404   -0.3641450    0.0520642
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0545929   -0.1966473    0.0874615
6 months    IRC              INDIA                          Wealth Q4            NA                 0.0449616   -0.1940958    0.2840190
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0480225   -0.0868735   -0.0091715
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0909837   -0.1716282   -0.0103392
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                -0.1111537   -0.2252394    0.0029319
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                -0.0860945   -0.3068845    0.1346955
6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.2752169   -0.0206954    0.5711292
6 months    MAL-ED           INDIA                          Wealth Q4            NA                -0.0668170   -0.2835564    0.1499225
6 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.0899007   -0.3252707    0.1454693
6 months    MAL-ED           PERU                           Wealth Q4            NA                 0.0767192   -0.1491482    0.3025867
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.2720628   -0.5469630    0.0028374
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1021965   -0.3211917    0.1167987
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0653587   -0.0779331    0.2086506
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0113959   -0.1037956    0.0810039
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2336397   -0.4108776   -0.0564017
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0993279   -0.1686859   -0.0299699
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1213901   -0.1765875   -0.0661926
24 months   CONTENT          PERU                           Wealth Q4            NA                -0.0016054   -0.2518170    0.2486063
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0373312   -0.2002892    0.1256268
24 months   IRC              INDIA                          Wealth Q4            NA                -0.0294976   -0.1970697    0.1380745
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0196605   -0.0722505    0.0329295
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0141409   -0.0759121    0.0476304
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                -0.0617889   -0.1946964    0.0711186
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0203377   -0.1876595    0.2283349
24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0716635   -0.2331933    0.3765203
24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0478887   -0.1652452    0.2610226
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                -0.2779812   -0.4867192   -0.0692431
24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0193704   -0.1525380    0.1912787
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.1897753   -0.3984223    0.0188716
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1484673   -0.3428699    0.0459354
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.2149644    0.0748801    0.3550488
