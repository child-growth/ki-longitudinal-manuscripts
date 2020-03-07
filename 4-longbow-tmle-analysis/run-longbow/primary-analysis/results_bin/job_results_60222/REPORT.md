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

**Outcome Variable:** ever_sstunted

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        mbmi             ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  --------------  --------------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight                0     2480    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   Normal weight                1      282    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                  0      398    3216
0-24 months   iLiNS-Zinc       BURKINA FASO                   Underweight                  1       56    3216
0-24 months   JiVitA-3         BANGLADESH                     Normal weight                0    13500   27105
0-24 months   JiVitA-3         BANGLADESH                     Normal weight                1     3222   27105
0-24 months   JiVitA-3         BANGLADESH                     Underweight                  0     8606   27105
0-24 months   JiVitA-3         BANGLADESH                     Underweight                  1     1777   27105
0-24 months   LCNI-5           MALAWI                         Normal weight                0      550     837
0-24 months   LCNI-5           MALAWI                         Normal weight                1      142     837
0-24 months   LCNI-5           MALAWI                         Underweight                  0      110     837
0-24 months   LCNI-5           MALAWI                         Underweight                  1       35     837
0-24 months   MAL-ED           BANGLADESH                     Normal weight                0      176     254
0-24 months   MAL-ED           BANGLADESH                     Normal weight                1       46     254
0-24 months   MAL-ED           BANGLADESH                     Underweight                  0       22     254
0-24 months   MAL-ED           BANGLADESH                     Underweight                  1       10     254
0-24 months   MAL-ED           BRAZIL                         Normal weight                0      192     221
0-24 months   MAL-ED           BRAZIL                         Normal weight                1       19     221
0-24 months   MAL-ED           BRAZIL                         Underweight                  0        8     221
0-24 months   MAL-ED           BRAZIL                         Underweight                  1        2     221
0-24 months   MAL-ED           INDIA                          Normal weight                0      148     242
0-24 months   MAL-ED           INDIA                          Normal weight                1       45     242
0-24 months   MAL-ED           INDIA                          Underweight                  0       36     242
0-24 months   MAL-ED           INDIA                          Underweight                  1       13     242
0-24 months   MAL-ED           NEPAL                          Normal weight                0      217     238
0-24 months   MAL-ED           NEPAL                          Normal weight                1       21     238
0-24 months   MAL-ED           NEPAL                          Underweight                  0        0     238
0-24 months   MAL-ED           NEPAL                          Underweight                  1        0     238
0-24 months   MAL-ED           PERU                           Normal weight                0      225     290
0-24 months   MAL-ED           PERU                           Normal weight                1       60     290
0-24 months   MAL-ED           PERU                           Underweight                  0        2     290
0-24 months   MAL-ED           PERU                           Underweight                  1        3     290
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight                0      195     270
0-24 months   MAL-ED           SOUTH AFRICA                   Normal weight                1       67     270
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight                  0        5     270
0-24 months   MAL-ED           SOUTH AFRICA                   Underweight                  1        3     270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight                0      114     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight                1      128     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                  0        6     256
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                  1        8     256
0-24 months   NIH-Birth        BANGLADESH                     Normal weight                0      374     629
0-24 months   NIH-Birth        BANGLADESH                     Normal weight                1      149     629
0-24 months   NIH-Birth        BANGLADESH                     Underweight                  0       59     629
0-24 months   NIH-Birth        BANGLADESH                     Underweight                  1       47     629
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight                0      603     755
0-24 months   NIH-Crypto       BANGLADESH                     Normal weight                1       84     755
0-24 months   NIH-Crypto       BANGLADESH                     Underweight                  0       53     755
0-24 months   NIH-Crypto       BANGLADESH                     Underweight                  1       15     755
0-24 months   PROBIT           BELARUS                        Normal weight                0    12850   13728
0-24 months   PROBIT           BELARUS                        Normal weight                1      355   13728
0-24 months   PROBIT           BELARUS                        Underweight                  0      506   13728
0-24 months   PROBIT           BELARUS                        Underweight                  1       17   13728
0-24 months   PROVIDE          BANGLADESH                     Normal weight                0      477     669
0-24 months   PROVIDE          BANGLADESH                     Normal weight                1       65     669
0-24 months   PROVIDE          BANGLADESH                     Underweight                  0       98     669
0-24 months   PROVIDE          BANGLADESH                     Underweight                  1       29     669
0-24 months   SAS-CompFeed     INDIA                          Normal weight                0      712    1407
0-24 months   SAS-CompFeed     INDIA                          Normal weight                1      316    1407
0-24 months   SAS-CompFeed     INDIA                          Underweight                  0      231    1407
0-24 months   SAS-CompFeed     INDIA                          Underweight                  1      148    1407
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                0     2078    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                1      229    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  0       34    2345
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  1        4    2345
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight                0     7629    9819
0-24 months   ZVITAMBO         ZIMBABWE                       Normal weight                1     1673    9819
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                  0      394    9819
0-24 months   ZVITAMBO         ZIMBABWE                       Underweight                  1      123    9819
0-6 months    JiVitA-3         BANGLADESH                     Normal weight                0    14120   27039
0-6 months    JiVitA-3         BANGLADESH                     Normal weight                1     2567   27039
0-6 months    JiVitA-3         BANGLADESH                     Underweight                  0     8937   27039
0-6 months    JiVitA-3         BANGLADESH                     Underweight                  1     1415   27039
0-6 months    LCNI-5           MALAWI                         Normal weight                0      206     271
0-6 months    LCNI-5           MALAWI                         Normal weight                1       18     271
0-6 months    LCNI-5           MALAWI                         Underweight                  0       45     271
0-6 months    LCNI-5           MALAWI                         Underweight                  1        2     271
0-6 months    MAL-ED           BANGLADESH                     Normal weight                0      206     254
0-6 months    MAL-ED           BANGLADESH                     Normal weight                1       16     254
0-6 months    MAL-ED           BANGLADESH                     Underweight                  0       29     254
0-6 months    MAL-ED           BANGLADESH                     Underweight                  1        3     254
0-6 months    MAL-ED           BRAZIL                         Normal weight                0      196     221
0-6 months    MAL-ED           BRAZIL                         Normal weight                1       15     221
0-6 months    MAL-ED           BRAZIL                         Underweight                  0        9     221
0-6 months    MAL-ED           BRAZIL                         Underweight                  1        1     221
0-6 months    MAL-ED           INDIA                          Normal weight                0      179     242
0-6 months    MAL-ED           INDIA                          Normal weight                1       14     242
0-6 months    MAL-ED           INDIA                          Underweight                  0       43     242
0-6 months    MAL-ED           INDIA                          Underweight                  1        6     242
0-6 months    MAL-ED           NEPAL                          Normal weight                0      228     238
0-6 months    MAL-ED           NEPAL                          Normal weight                1       10     238
0-6 months    MAL-ED           NEPAL                          Underweight                  0        0     238
0-6 months    MAL-ED           NEPAL                          Underweight                  1        0     238
0-6 months    MAL-ED           PERU                           Normal weight                0      250     290
0-6 months    MAL-ED           PERU                           Normal weight                1       35     290
0-6 months    MAL-ED           PERU                           Underweight                  0        3     290
0-6 months    MAL-ED           PERU                           Underweight                  1        2     290
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight                0      237     270
0-6 months    MAL-ED           SOUTH AFRICA                   Normal weight                1       25     270
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight                  0        6     270
0-6 months    MAL-ED           SOUTH AFRICA                   Underweight                  1        2     270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight                0      208     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal weight                1       34     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                  0       11     256
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Underweight                  1        3     256
0-6 months    NIH-Birth        BANGLADESH                     Normal weight                0      478     629
0-6 months    NIH-Birth        BANGLADESH                     Normal weight                1       45     629
0-6 months    NIH-Birth        BANGLADESH                     Underweight                  0       92     629
0-6 months    NIH-Birth        BANGLADESH                     Underweight                  1       14     629
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight                0      649     755
0-6 months    NIH-Crypto       BANGLADESH                     Normal weight                1       38     755
0-6 months    NIH-Crypto       BANGLADESH                     Underweight                  0       59     755
0-6 months    NIH-Crypto       BANGLADESH                     Underweight                  1        9     755
0-6 months    PROBIT           BELARUS                        Normal weight                0    13077   13728
0-6 months    PROBIT           BELARUS                        Normal weight                1      128   13728
0-6 months    PROBIT           BELARUS                        Underweight                  0      518   13728
0-6 months    PROBIT           BELARUS                        Underweight                  1        5   13728
0-6 months    PROVIDE          BANGLADESH                     Normal weight                0      515     669
0-6 months    PROVIDE          BANGLADESH                     Normal weight                1       27     669
0-6 months    PROVIDE          BANGLADESH                     Underweight                  0      123     669
0-6 months    PROVIDE          BANGLADESH                     Underweight                  1        4     669
0-6 months    SAS-CompFeed     INDIA                          Normal weight                0      884    1404
0-6 months    SAS-CompFeed     INDIA                          Normal weight                1      141    1404
0-6 months    SAS-CompFeed     INDIA                          Underweight                  0      304    1404
0-6 months    SAS-CompFeed     INDIA                          Underweight                  1       75    1404
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                0     2209    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                1       98    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  0       35    2345
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                  1        3    2345
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight                0     8377    9808
0-6 months    ZVITAMBO         ZIMBABWE                       Normal weight                1      914    9808
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight                  0      443    9808
0-6 months    ZVITAMBO         ZIMBABWE                       Underweight                  1       74    9808


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/71b36ad6-6e57-4cd1-ba9a-d5638d735c0d/8b1d1d60-2775-427a-8e06-85abdeaa48ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/71b36ad6-6e57-4cd1-ba9a-d5638d735c0d/8b1d1d60-2775-427a-8e06-85abdeaa48ca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/71b36ad6-6e57-4cd1-ba9a-d5638d735c0d/8b1d1d60-2775-427a-8e06-85abdeaa48ca/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/71b36ad6-6e57-4cd1-ba9a-d5638d735c0d/8b1d1d60-2775-427a-8e06-85abdeaa48ca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO                   Normal weight        NA                0.1021948   0.0811556   0.1232340
0-24 months   iLiNS-Zinc     BURKINA FASO                   Underweight          NA                0.1207299   0.0662301   0.1752297
0-24 months   JiVitA-3       BANGLADESH                     Normal weight        NA                0.1917088   0.1848067   0.1986109
0-24 months   JiVitA-3       BANGLADESH                     Underweight          NA                0.1728328   0.1647861   0.1808796
0-24 months   LCNI-5         MALAWI                         Normal weight        NA                0.2026007   0.1725825   0.2326189
0-24 months   LCNI-5         MALAWI                         Underweight          NA                0.2556578   0.1845551   0.3267605
0-24 months   MAL-ED         BANGLADESH                     Normal weight        NA                0.2079519   0.1544093   0.2614945
0-24 months   MAL-ED         BANGLADESH                     Underweight          NA                0.3125028   0.1476695   0.4773361
0-24 months   MAL-ED         INDIA                          Normal weight        NA                0.2338694   0.1738846   0.2938541
0-24 months   MAL-ED         INDIA                          Underweight          NA                0.2659951   0.1390094   0.3929809
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                0.5289256   0.4659123   0.5919389
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   Underweight          NA                0.5714286   0.3116959   0.8311612
0-24 months   NIH-Birth      BANGLADESH                     Normal weight        NA                0.2867497   0.2480055   0.3254939
0-24 months   NIH-Birth      BANGLADESH                     Underweight          NA                0.4275733   0.3305344   0.5246123
0-24 months   NIH-Crypto     BANGLADESH                     Normal weight        NA                0.1228661   0.0982733   0.1474589
0-24 months   NIH-Crypto     BANGLADESH                     Underweight          NA                0.2165604   0.1143778   0.3187429
0-24 months   PROBIT         BELARUS                        Normal weight        NA                0.0269133   0.0195806   0.0342461
0-24 months   PROBIT         BELARUS                        Underweight          NA                0.0311435   0.0123897   0.0498974
0-24 months   PROVIDE        BANGLADESH                     Normal weight        NA                0.1187828   0.0914740   0.1460916
0-24 months   PROVIDE        BANGLADESH                     Underweight          NA                0.2322614   0.1574869   0.3070359
0-24 months   SAS-CompFeed   INDIA                          Normal weight        NA                0.3112436   0.2687605   0.3537267
0-24 months   SAS-CompFeed   INDIA                          Underweight          NA                0.3774407   0.3327653   0.4221161
0-24 months   ZVITAMBO       ZIMBABWE                       Normal weight        NA                0.1799666   0.1721528   0.1877805
0-24 months   ZVITAMBO       ZIMBABWE                       Underweight          NA                0.2396238   0.2008238   0.2784239
0-6 months    JiVitA-3       BANGLADESH                     Normal weight        NA                0.1527000   0.1466511   0.1587489
0-6 months    JiVitA-3       BANGLADESH                     Underweight          NA                0.1384325   0.1310486   0.1458164
0-6 months    MAL-ED         INDIA                          Normal weight        NA                0.0725389   0.0358696   0.1092081
0-6 months    MAL-ED         INDIA                          Underweight          NA                0.1224490   0.0304754   0.2144225
0-6 months    NIH-Birth      BANGLADESH                     Normal weight        NA                0.0853094   0.0612587   0.1093602
0-6 months    NIH-Birth      BANGLADESH                     Underweight          NA                0.1273136   0.0616767   0.1929504
0-6 months    NIH-Crypto     BANGLADESH                     Normal weight        NA                0.0553130   0.0382083   0.0724176
0-6 months    NIH-Crypto     BANGLADESH                     Underweight          NA                0.1323529   0.0517558   0.2129501
0-6 months    PROBIT         BELARUS                        Normal weight        NA                0.0096933   0.0062538   0.0131328
0-6 months    PROBIT         BELARUS                        Underweight          NA                0.0095602   0.0029071   0.0162134
0-6 months    SAS-CompFeed   INDIA                          Normal weight        NA                0.1378938   0.1179780   0.1578096
0-6 months    SAS-CompFeed   INDIA                          Underweight          NA                0.1989098   0.1550202   0.2427994
0-6 months    ZVITAMBO       ZIMBABWE                       Normal weight        NA                0.0983766   0.0923147   0.1044385
0-6 months    ZVITAMBO       ZIMBABWE                       Underweight          NA                0.1440514   0.1122963   0.1758065


### Parameter: E(Y)


agecat        studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO                   NA                   NA                0.1050995   0.0855497   0.1246493
0-24 months   JiVitA-3       BANGLADESH                     NA                   NA                0.1844309   0.1788328   0.1900291
0-24 months   LCNI-5         MALAWI                         NA                   NA                0.2114695   0.1837888   0.2391503
0-24 months   MAL-ED         BANGLADESH                     NA                   NA                0.2204724   0.1693889   0.2715560
0-24 months   MAL-ED         INDIA                          NA                   NA                0.2396694   0.1857746   0.2935643
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5312500   0.4700011   0.5924989
0-24 months   NIH-Birth      BANGLADESH                     NA                   NA                0.3116057   0.2753823   0.3478292
0-24 months   NIH-Crypto     BANGLADESH                     NA                   NA                0.1311258   0.1070332   0.1552185
0-24 months   PROBIT         BELARUS                        NA                   NA                0.0270979   0.0199447   0.0342511
0-24 months   PROVIDE        BANGLADESH                     NA                   NA                0.1405082   0.1141551   0.1668613
0-24 months   SAS-CompFeed   INDIA                          NA                   NA                0.3297797   0.2987556   0.3608038
0-24 months   ZVITAMBO       ZIMBABWE                       NA                   NA                0.1829107   0.1752637   0.1905577
0-6 months    JiVitA-3       BANGLADESH                     NA                   NA                0.1472688   0.1422160   0.1523215
0-6 months    MAL-ED         INDIA                          NA                   NA                0.0826446   0.0478818   0.1174075
0-6 months    NIH-Birth      BANGLADESH                     NA                   NA                0.0937997   0.0709973   0.1166021
0-6 months    NIH-Crypto     BANGLADESH                     NA                   NA                0.0622517   0.0450059   0.0794974
0-6 months    PROBIT         BELARUS                        NA                   NA                0.0096882   0.0063350   0.0130414
0-6 months    SAS-CompFeed   INDIA                          NA                   NA                0.1538462   0.1345929   0.1730994
0-6 months    ZVITAMBO       ZIMBABWE                       NA                   NA                0.1007341   0.0947773   0.1066909


### Parameter: RR


agecat        studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc     BURKINA FASO                   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc     BURKINA FASO                   Underweight          Normal weight     1.1813707   0.7221931   1.9324980
0-24 months   JiVitA-3       BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3       BANGLADESH                     Underweight          Normal weight     0.9015384   0.8536675   0.9520937
0-24 months   LCNI-5         MALAWI                         Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5         MALAWI                         Underweight          Normal weight     1.2618800   0.9214347   1.7281105
0-24 months   MAL-ED         BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         BANGLADESH                     Underweight          Normal weight     1.5027648   0.8352208   2.7038382
0-24 months   MAL-ED         INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         INDIA                          Underweight          Normal weight     1.1373664   0.6600952   1.9597206
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   Underweight          Normal weight     1.0803571   0.6753029   1.7283675
0-24 months   NIH-Birth      BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth      BANGLADESH                     Underweight          Normal weight     1.4911030   1.1455795   1.9408414
0-24 months   NIH-Crypto     BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto     BANGLADESH                     Underweight          Normal weight     1.7625725   1.0557374   2.9426463
0-24 months   PROBIT         BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   PROBIT         BELARUS                        Underweight          Normal weight     1.1571781   0.6125446   2.1860630
0-24 months   PROVIDE        BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE        BANGLADESH                     Underweight          Normal weight     1.9553451   1.3169397   2.9032268
0-24 months   SAS-CompFeed   INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed   INDIA                          Underweight          Normal weight     1.2126857   0.9932063   1.4806658
0-24 months   ZVITAMBO       ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO       ZIMBABWE                       Underweight          Normal weight     1.3314902   1.1259845   1.5745031
0-6 months    JiVitA-3       BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3       BANGLADESH                     Underweight          Normal weight     0.9065648   0.8532103   0.9632558
0-6 months    MAL-ED         INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED         INDIA                          Underweight          Normal weight     1.6880466   0.6826237   4.1743369
0-6 months    NIH-Birth      BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth      BANGLADESH                     Underweight          Normal weight     1.4923736   0.8294597   2.6850958
0-6 months    NIH-Crypto     BANGLADESH                     Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto     BANGLADESH                     Underweight          Normal weight     2.3928019   1.2086339   4.7371672
0-6 months    PROBIT         BELARUS                        Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    PROBIT         BELARUS                        Underweight          Normal weight     0.9862721   0.4723955   2.0591488
0-6 months    SAS-CompFeed   INDIA                          Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed   INDIA                          Underweight          Normal weight     1.4424851   1.1172475   1.8624015
0-6 months    ZVITAMBO       ZIMBABWE                       Normal weight        Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO       ZIMBABWE                       Underweight          Normal weight     1.4642854   1.1647361   1.8408734


### Parameter: PAR


agecat        studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc     BURKINA FASO                   Normal weight        NA                 0.0029047   -0.0043335    0.0101429
0-24 months   JiVitA-3       BANGLADESH                     Normal weight        NA                -0.0072779   -0.0110315   -0.0035243
0-24 months   LCNI-5         MALAWI                         Normal weight        NA                 0.0088688   -0.0042372    0.0219748
0-24 months   MAL-ED         BANGLADESH                     Normal weight        NA                 0.0125205   -0.0093336    0.0343747
0-24 months   MAL-ED         INDIA                          Normal weight        NA                 0.0058001   -0.0225302    0.0341303
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0023244   -0.0123398    0.0169886
0-24 months   NIH-Birth      BANGLADESH                     Normal weight        NA                 0.0248560    0.0071670    0.0425451
0-24 months   NIH-Crypto     BANGLADESH                     Normal weight        NA                 0.0082597   -0.0011322    0.0176517
0-24 months   PROBIT         BELARUS                        Normal weight        NA                 0.0001846   -0.0005821    0.0009513
0-24 months   PROVIDE        BANGLADESH                     Normal weight        NA                 0.0217254    0.0065446    0.0369063
0-24 months   SAS-CompFeed   INDIA                          Normal weight        NA                 0.0185361    0.0010451    0.0360270
0-24 months   ZVITAMBO       ZIMBABWE                       Normal weight        NA                 0.0029440    0.0009428    0.0049453
0-6 months    JiVitA-3       BANGLADESH                     Normal weight        NA                -0.0054313   -0.0087438   -0.0021187
0-6 months    MAL-ED         INDIA                          Normal weight        NA                 0.0101058   -0.0101018    0.0303133
0-6 months    NIH-Birth      BANGLADESH                     Normal weight        NA                 0.0084902   -0.0032053    0.0201857
0-6 months    NIH-Crypto     BANGLADESH                     Normal weight        NA                 0.0069387   -0.0006472    0.0145246
0-6 months    PROBIT         BELARUS                        Normal weight        NA                -0.0000051   -0.0002739    0.0002638
0-6 months    SAS-CompFeed   INDIA                          Normal weight        NA                 0.0159523    0.0039845    0.0279201
0-6 months    ZVITAMBO       ZIMBABWE                       Normal weight        NA                 0.0023575    0.0007161    0.0039989


### Parameter: PAF


agecat        studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc     BURKINA FASO                   Normal weight        NA                 0.0276378   -0.0440920    0.0944398
0-24 months   JiVitA-3       BANGLADESH                     Normal weight        NA                -0.0394613   -0.0599858   -0.0193342
0-24 months   LCNI-5         MALAWI                         Normal weight        NA                 0.0419389   -0.0220469    0.1019188
0-24 months   MAL-ED         BANGLADESH                     Normal weight        NA                 0.0567895   -0.0472575    0.1504993
0-24 months   MAL-ED         INDIA                          Normal weight        NA                 0.0242003   -0.1013848    0.1354656
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                 0.0043753   -0.0236201    0.0316050
0-24 months   NIH-Birth      BANGLADESH                     Normal weight        NA                 0.0797676    0.0213610    0.1346884
0-24 months   NIH-Crypto     BANGLADESH                     Normal weight        NA                 0.0629910   -0.0106863    0.1312973
0-24 months   PROBIT         BELARUS                        Normal weight        NA                 0.0068117   -0.0222856    0.0350808
0-24 months   PROVIDE        BANGLADESH                     Normal weight        NA                 0.1546203    0.0423587    0.2537218
0-24 months   SAS-CompFeed   INDIA                          Normal weight        NA                 0.0562074   -0.0013188    0.1104287
0-24 months   ZVITAMBO       ZIMBABWE                       Normal weight        NA                 0.0160955    0.0051040    0.0269655
0-6 months    JiVitA-3       BANGLADESH                     Normal weight        NA                -0.0368799   -0.0596519   -0.0145973
0-6 months    MAL-ED         INDIA                          Normal weight        NA                 0.1222798   -0.1536263    0.3321990
0-6 months    NIH-Birth      BANGLADESH                     Normal weight        NA                 0.0905146   -0.0416380    0.2059010
0-6 months    NIH-Crypto     BANGLADESH                     Normal weight        NA                 0.1114621   -0.0151402    0.2222753
0-6 months    PROBIT         BELARUS                        Normal weight        NA                -0.0005233   -0.0286073    0.0267940
0-6 months    SAS-CompFeed   INDIA                          Normal weight        NA                 0.1036902    0.0248778    0.1761328
0-6 months    ZVITAMBO       ZIMBABWE                       Normal weight        NA                 0.0234031    0.0070154    0.0395203
