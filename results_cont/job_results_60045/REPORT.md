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

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mwtkg         n_cell       n
----------  ---------------  -----------------------------  -----------  -------  ------
Birth       JiVitA-3         BANGLADESH                     >=58 kg          500   22432
Birth       JiVitA-3         BANGLADESH                     <52 kg         20479   22432
Birth       JiVitA-3         BANGLADESH                     [52-58) kg      1453   22432
Birth       MAL-ED           BANGLADESH                     >=58 kg           38     222
Birth       MAL-ED           BANGLADESH                     <52 kg           143     222
Birth       MAL-ED           BANGLADESH                     [52-58) kg        41     222
Birth       MAL-ED           BRAZIL                         >=58 kg           34      64
Birth       MAL-ED           BRAZIL                         <52 kg            15      64
Birth       MAL-ED           BRAZIL                         [52-58) kg        15      64
Birth       MAL-ED           INDIA                          >=58 kg            6      43
Birth       MAL-ED           INDIA                          <52 kg            29      43
Birth       MAL-ED           INDIA                          [52-58) kg         8      43
Birth       MAL-ED           NEPAL                          >=58 kg            9      27
Birth       MAL-ED           NEPAL                          <52 kg             8      27
Birth       MAL-ED           NEPAL                          [52-58) kg        10      27
Birth       MAL-ED           PERU                           >=58 kg           83     226
Birth       MAL-ED           PERU                           <52 kg            84     226
Birth       MAL-ED           PERU                           [52-58) kg        59     226
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg           69     101
Birth       MAL-ED           SOUTH AFRICA                   <52 kg            10     101
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg        22     101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           47     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            45     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        30     122
Birth       NIH-Birth        BANGLADESH                     >=58 kg           80     608
Birth       NIH-Birth        BANGLADESH                     <52 kg           441     608
Birth       NIH-Birth        BANGLADESH                     [52-58) kg        87     608
Birth       NIH-Crypto       BANGLADESH                     >=58 kg          186     729
Birth       NIH-Crypto       BANGLADESH                     <52 kg           395     729
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg       148     729
Birth       PROBIT           BELARUS                        >=58 kg        10277   13770
Birth       PROBIT           BELARUS                        <52 kg          1131   13770
Birth       PROBIT           BELARUS                        [52-58) kg      2362   13770
Birth       PROVIDE          BANGLADESH                     >=58 kg           91     517
Birth       PROVIDE          BANGLADESH                     <52 kg           330     517
Birth       PROVIDE          BANGLADESH                     [52-58) kg        96     517
Birth       SAS-CompFeed     INDIA                          >=58 kg           91    1236
Birth       SAS-CompFeed     INDIA                          <52 kg           949    1236
Birth       SAS-CompFeed     INDIA                          [52-58) kg       196    1236
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg         5757   11031
Birth       ZVITAMBO         ZIMBABWE                       <52 kg          2365   11031
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg      2909   11031
6 months    JiVitA-3         BANGLADESH                     >=58 kg          407   16802
6 months    JiVitA-3         BANGLADESH                     <52 kg         15243   16802
6 months    JiVitA-3         BANGLADESH                     [52-58) kg      1152   16802
6 months    LCNI-5           MALAWI                         >=58 kg          114     837
6 months    LCNI-5           MALAWI                         <52 kg           504     837
6 months    LCNI-5           MALAWI                         [52-58) kg       219     837
6 months    MAL-ED           BANGLADESH                     >=58 kg           46     241
6 months    MAL-ED           BANGLADESH                     <52 kg           154     241
6 months    MAL-ED           BANGLADESH                     [52-58) kg        41     241
6 months    MAL-ED           BRAZIL                         >=58 kg          137     208
6 months    MAL-ED           BRAZIL                         <52 kg            37     208
6 months    MAL-ED           BRAZIL                         [52-58) kg        34     208
6 months    MAL-ED           INDIA                          >=58 kg           40     235
6 months    MAL-ED           INDIA                          <52 kg           146     235
6 months    MAL-ED           INDIA                          [52-58) kg        49     235
6 months    MAL-ED           NEPAL                          >=58 kg           79     236
6 months    MAL-ED           NEPAL                          <52 kg            75     236
6 months    MAL-ED           NEPAL                          [52-58) kg        82     236
6 months    MAL-ED           PERU                           >=58 kg          100     272
6 months    MAL-ED           PERU                           <52 kg           107     272
6 months    MAL-ED           PERU                           [52-58) kg        65     272
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg          179     249
6 months    MAL-ED           SOUTH AFRICA                   <52 kg            29     249
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg        41     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247
6 months    NIH-Birth        BANGLADESH                     >=58 kg           71     537
6 months    NIH-Birth        BANGLADESH                     <52 kg           385     537
6 months    NIH-Birth        BANGLADESH                     [52-58) kg        81     537
6 months    NIH-Crypto       BANGLADESH                     >=58 kg          184     715
6 months    NIH-Crypto       BANGLADESH                     <52 kg           383     715
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg       148     715
6 months    PROBIT           BELARUS                        >=58 kg         9740   13066
6 months    PROBIT           BELARUS                        <52 kg          1083   13066
6 months    PROBIT           BELARUS                        [52-58) kg      2243   13066
6 months    PROVIDE          BANGLADESH                     >=58 kg          109     603
6 months    PROVIDE          BANGLADESH                     <52 kg           385     603
6 months    PROVIDE          BANGLADESH                     [52-58) kg       109     603
6 months    SAS-CompFeed     INDIA                          >=58 kg          103    1331
6 months    SAS-CompFeed     INDIA                          <52 kg          1014    1331
6 months    SAS-CompFeed     INDIA                          [52-58) kg       214    1331
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           325    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1989
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg         4363    8254
6 months    ZVITAMBO         ZIMBABWE                       <52 kg          1726    8254
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg      2165    8254
24 months   JiVitA-3         BANGLADESH                     >=58 kg          197    8627
24 months   JiVitA-3         BANGLADESH                     <52 kg          7859    8627
24 months   JiVitA-3         BANGLADESH                     [52-58) kg       571    8627
24 months   LCNI-5           MALAWI                         >=58 kg           77     578
24 months   LCNI-5           MALAWI                         <52 kg           348     578
24 months   LCNI-5           MALAWI                         [52-58) kg       153     578
24 months   MAL-ED           BANGLADESH                     >=58 kg           40     212
24 months   MAL-ED           BANGLADESH                     <52 kg           135     212
24 months   MAL-ED           BANGLADESH                     [52-58) kg        37     212
24 months   MAL-ED           BRAZIL                         >=58 kg          109     168
24 months   MAL-ED           BRAZIL                         <52 kg            28     168
24 months   MAL-ED           BRAZIL                         [52-58) kg        31     168
24 months   MAL-ED           INDIA                          >=58 kg           38     226
24 months   MAL-ED           INDIA                          <52 kg           141     226
24 months   MAL-ED           INDIA                          [52-58) kg        47     226
24 months   MAL-ED           NEPAL                          >=58 kg           76     228
24 months   MAL-ED           NEPAL                          <52 kg            74     228
24 months   MAL-ED           NEPAL                          [52-58) kg        78     228
24 months   MAL-ED           PERU                           >=58 kg           77     201
24 months   MAL-ED           PERU                           <52 kg            75     201
24 months   MAL-ED           PERU                           [52-58) kg        49     201
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg          168     234
24 months   MAL-ED           SOUTH AFRICA                   <52 kg            28     234
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg        38     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214
24 months   NIH-Birth        BANGLADESH                     >=58 kg           57     429
24 months   NIH-Birth        BANGLADESH                     <52 kg           308     429
24 months   NIH-Birth        BANGLADESH                     [52-58) kg        64     429
24 months   NIH-Crypto       BANGLADESH                     >=58 kg          138     514
24 months   NIH-Crypto       BANGLADESH                     <52 kg           273     514
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg       103     514
24 months   PROBIT           BELARUS                        >=58 kg         3011    4013
24 months   PROBIT           BELARUS                        <52 kg           325    4013
24 months   PROBIT           BELARUS                        [52-58) kg       677    4013
24 months   PROVIDE          BANGLADESH                     >=58 kg          111     577
24 months   PROVIDE          BANGLADESH                     <52 kg           362     577
24 months   PROVIDE          BANGLADESH                     [52-58) kg       104     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg          833    1588
24 months   ZVITAMBO         ZIMBABWE                       <52 kg           334    1588
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       421    1588


The following strata were considered:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/b93a19aa-10d2-474d-a7ca-c27fcfd4a749/d2b31ba5-574d-4f4f-8baa-b18dc1be927e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b93a19aa-10d2-474d-a7ca-c27fcfd4a749/d2b31ba5-574d-4f4f-8baa-b18dc1be927e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b93a19aa-10d2-474d-a7ca-c27fcfd4a749/d2b31ba5-574d-4f4f-8baa-b18dc1be927e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                -1.3954490   -1.4919641   -1.2989338
Birth       JiVitA-3         BANGLADESH                     <52 kg               NA                -1.6047809   -1.6242601   -1.5853018
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           NA                -1.4519883   -1.5182768   -1.3856999
Birth       MAL-ED           BANGLADESH                     >=58 kg              NA                -0.7223744   -1.0263182   -0.4184306
Birth       MAL-ED           BANGLADESH                     <52 kg               NA                -1.2215581   -1.3952380   -1.0478781
Birth       MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.7184664   -1.0113185   -0.4256143
Birth       MAL-ED           BRAZIL                         >=58 kg              NA                -0.4964251   -0.8657578   -0.1270924
Birth       MAL-ED           BRAZIL                         <52 kg               NA                -1.1125265   -1.7302708   -0.4947822
Birth       MAL-ED           BRAZIL                         [52-58) kg           NA                -1.0150627   -1.6840322   -0.3460931
Birth       MAL-ED           INDIA                          >=58 kg              NA                -0.8500000   -1.5073907   -0.1926093
Birth       MAL-ED           INDIA                          <52 kg               NA                -1.2131034   -1.5635569   -0.8626500
Birth       MAL-ED           INDIA                          [52-58) kg           NA                -1.5775000   -2.4667124   -0.6882876
Birth       MAL-ED           NEPAL                          >=58 kg              NA                -0.5822222   -1.1447657   -0.0196787
Birth       MAL-ED           NEPAL                          <52 kg               NA                -1.6712500   -2.1476338   -1.1948662
Birth       MAL-ED           NEPAL                          [52-58) kg           NA                -0.4430000   -0.9133974    0.0273974
Birth       MAL-ED           PERU                           >=58 kg              NA                -0.5795906   -0.7940165   -0.3651647
Birth       MAL-ED           PERU                           <52 kg               NA                -1.1790851   -1.3557724   -1.0023977
Birth       MAL-ED           PERU                           [52-58) kg           NA                -0.9133845   -1.1180197   -0.7087493
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.4147633   -0.6373524   -0.1921742
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               NA                -0.9145262   -1.5814991   -0.2475532
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -0.7190173   -1.2235425   -0.2144922
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.9332771   -1.2681539   -0.5984002
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.4336791   -1.7808744   -1.0864838
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.9900745   -1.4122364   -0.5679125
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.6677599   -0.9070099   -0.4285098
Birth       NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0199779   -1.1230867   -0.9168690
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.7757360   -1.0184756   -0.5329964
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.7764684   -0.9293330   -0.6236038
Birth       NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.9475035   -1.0456331   -0.8493740
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -0.8929957   -1.0576244   -0.7283671
Birth       PROBIT           BELARUS                        >=58 kg              NA                 1.3870154    1.2258983    1.5481325
Birth       PROBIT           BELARUS                        <52 kg               NA                 0.9179782    0.7577224    1.0782341
Birth       PROBIT           BELARUS                        [52-58) kg           NA                 1.1498725    0.9928382    1.3069068
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4444478   -0.6209595   -0.2679361
Birth       PROVIDE          BANGLADESH                     <52 kg               NA                -1.0293485   -1.1142068   -0.9444902
Birth       PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.7857112   -1.0145432   -0.5568792
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                -0.8957828   -1.0747207   -0.7168449
Birth       SAS-CompFeed     INDIA                          <52 kg               NA                -1.5267845   -1.6172579   -1.4363111
Birth       SAS-CompFeed     INDIA                          [52-58) kg           NA                -1.1592742   -1.3280145   -0.9905338
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3561053   -0.3876027   -0.3246079
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7728592   -0.8222736   -0.7234448
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5741175   -0.6203227   -0.5279124
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -1.1874403   -1.2924642   -1.0824165
6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                -1.3288381   -1.3520016   -1.3056747
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                -1.1865983   -1.2666831   -1.1065135
6 months    LCNI-5           MALAWI                         >=58 kg              NA                -1.3304625   -1.5185107   -1.1424143
6 months    LCNI-5           MALAWI                         <52 kg               NA                -1.8262384   -1.9135871   -1.7388898
6 months    LCNI-5           MALAWI                         [52-58) kg           NA                -1.4429113   -1.5768416   -1.3089809
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.9618281   -1.2382831   -0.6853730
6 months    MAL-ED           BANGLADESH                     <52 kg               NA                -1.3701040   -1.5239518   -1.2162561
6 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.8723010   -1.0921773   -0.6524246
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                 0.0952861   -0.0852482    0.2758203
6 months    MAL-ED           BRAZIL                         <52 kg               NA                -0.0442613   -0.3828843    0.2943618
6 months    MAL-ED           BRAZIL                         [52-58) kg           NA                 0.0110385   -0.4093329    0.4314099
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.9955639   -1.2277000   -0.7634278
6 months    MAL-ED           INDIA                          <52 kg               NA                -1.2555172   -1.4096390   -1.1013954
6 months    MAL-ED           INDIA                          [52-58) kg           NA                -1.1968867   -1.4662515   -0.9275220
6 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.3327077   -0.5133027   -0.1521126
6 months    MAL-ED           NEPAL                          <52 kg               NA                -0.8821109   -1.0993929   -0.6648289
6 months    MAL-ED           NEPAL                          [52-58) kg           NA                -0.4647042   -0.6346590   -0.2947494
6 months    MAL-ED           PERU                           >=58 kg              NA                -1.1103922   -1.2984003   -0.9223841
6 months    MAL-ED           PERU                           <52 kg               NA                -1.4835264   -1.6475624   -1.3194903
6 months    MAL-ED           PERU                           [52-58) kg           NA                -1.3384732   -1.5689718   -1.1079747
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.9758630   -1.1257806   -0.8259453
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                -1.4645168   -1.8428652   -1.0861685
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -1.2723387   -1.6404870   -0.9041905
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -1.1970638   -1.3989986   -0.9951289
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.5552196   -1.7556354   -1.3548038
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.2315406   -1.4656138   -0.9974674
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0422844   -1.2988538   -0.7857150
6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                -1.5345479   -1.6390625   -1.4300333
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.0741796   -1.2663600   -0.8819993
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -1.0490743   -1.1857956   -0.9123530
6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                -1.2786539   -1.3775923   -1.1797155
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -1.1734063   -1.3543860   -0.9924266
6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.1655172    0.0730283    0.2580061
6 months    PROBIT           BELARUS                        <52 kg               NA                -0.2198075   -0.3408569   -0.0987580
6 months    PROBIT           BELARUS                        [52-58) kg           NA                -0.0160231   -0.1244197    0.0923735
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.7313038   -0.9160731   -0.5465345
6 months    PROVIDE          BANGLADESH                     <52 kg               NA                -1.2587397   -1.3433916   -1.1740879
6 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.7872156   -1.0067690   -0.5676623
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.8484637   -1.0017496   -0.6951777
6 months    SAS-CompFeed     INDIA                          <52 kg               NA                -1.5239758   -1.6099945   -1.4379571
6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                -1.0321156   -1.2111876   -0.8530436
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.4442483   -0.5076389   -0.3808577
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.9178807   -1.0303538   -0.8054076
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.5926628   -0.6971473   -0.4881783
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.6764825   -0.7123772   -0.6405877
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2447726   -1.3019331   -1.1876122
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0122254   -1.0627867   -0.9616640
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -1.8559825   -1.9885012   -1.7234637
24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                -2.0297290   -2.0576567   -2.0018014
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                -1.8471976   -1.9506826   -1.7437125
24 months   LCNI-5           MALAWI                         >=58 kg              NA                -1.6107134   -1.7966880   -1.4247388
24 months   LCNI-5           MALAWI                         <52 kg               NA                -2.0463822   -2.1517535   -1.9410108
24 months   LCNI-5           MALAWI                         [52-58) kg           NA                -1.6800985   -1.8388200   -1.5213770
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -1.5631334   -1.8032971   -1.3229698
24 months   MAL-ED           BANGLADESH                     <52 kg               NA                -2.2165768   -2.3800262   -2.0531273
24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                -1.5333067   -1.7828126   -1.2838007
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.0122599   -0.2118627    0.2363825
24 months   MAL-ED           BRAZIL                         <52 kg               NA                -0.0597932   -0.4790143    0.3594279
24 months   MAL-ED           BRAZIL                         [52-58) kg           NA                 0.2088002   -0.2482220    0.6658224
24 months   MAL-ED           INDIA                          >=58 kg              NA                -1.5438655   -1.8137446   -1.2739864
24 months   MAL-ED           INDIA                          <52 kg               NA                -1.9984126   -2.1505558   -1.8462694
24 months   MAL-ED           INDIA                          [52-58) kg           NA                -1.7786792   -2.0902842   -1.4670741
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -1.0359598   -1.2362503   -0.8356694
24 months   MAL-ED           NEPAL                          <52 kg               NA                -1.6838773   -1.9023099   -1.4654448
24 months   MAL-ED           NEPAL                          [52-58) kg           NA                -1.2872788   -1.4682571   -1.1063005
24 months   MAL-ED           PERU                           >=58 kg              NA                -1.4680776   -1.6389266   -1.2972286
24 months   MAL-ED           PERU                           <52 kg               NA                -2.0153738   -2.2109514   -1.8197962
24 months   MAL-ED           PERU                           [52-58) kg           NA                -1.7255380   -2.0400329   -1.4110431
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -1.5024459   -1.6597255   -1.3451663
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                -2.1625129   -2.5282561   -1.7967696
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -1.8342416   -2.1804795   -1.4880037
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -2.4481958   -2.6561604   -2.2402312
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -2.8392077   -3.0683905   -2.6100250
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -2.6202538   -2.9076467   -2.3328608
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.7269061   -2.0230600   -1.4307523
24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                -2.3696472   -2.4853521   -2.2539423
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.9127879   -2.1791706   -1.6464053
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -1.0949982   -1.2480596   -0.9419368
24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                -1.6228379   -1.7404293   -1.5052464
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -1.3975663   -1.6028868   -1.1922458
24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0918311   -0.4050667    0.2214045
24 months   PROBIT           BELARUS                        <52 kg               NA                -0.4665112   -0.8755127   -0.0575098
24 months   PROBIT           BELARUS                        [52-58) kg           NA                -0.2458137   -0.5656910    0.0740635
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -1.1247414   -1.3054097   -0.9440731
24 months   PROVIDE          BANGLADESH                     <52 kg               NA                -1.8695500   -1.9681671   -1.7709328
24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                -1.2440932   -1.4590161   -1.0291703
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.4173075   -1.4957250   -1.3388900
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.9764687   -2.1039964   -1.8489410
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.7245978   -1.8337546   -1.6154409


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5896135   -1.6088760   -1.5703510
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.0778829   -1.2122580   -0.9435077
Birth       MAL-ED           BRAZIL                         NA                   NA                -0.6884375   -0.9678371   -0.4090379
Birth       MAL-ED           INDIA                          NA                   NA                -1.2302326   -1.5393614   -0.9211037
Birth       MAL-ED           NEPAL                          NA                   NA                -0.8533333   -1.2104864   -0.4961803
Birth       MAL-ED           PERU                           NA                   NA                -0.9051327   -1.0238686   -0.7863969
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.5707921   -0.7685593   -0.3730248
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1364754   -1.3478823   -0.9250686
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9089163   -0.9806324   -0.8372002
Birth       PROBIT           BELARUS                        NA                   NA                 1.3117829    1.1524074    1.4711583
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8925145   -0.9687201   -0.8163089
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4220793   -1.5007856   -1.3433730
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4966839   -0.5196015   -0.4737663
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3134847   -1.3366230   -1.2903464
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6584707   -1.7281551   -1.5887863
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0497516   -0.0948051    0.1943083
6 months    MAL-ED           INDIA                          NA                   NA                -1.2059574   -1.3243030   -1.0876119
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           NA                   NA                -1.3241023   -1.4325083   -1.2156964
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0727443   -1.2024880   -0.9430006
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.1064864    0.0157994    0.1971734
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4003907   -1.4819787   -1.3188027
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424765   -0.5918460   -0.4931071
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8785195   -0.9045379   -0.8525011
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0134183   -2.0410747   -1.9857620
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8854671   -1.9666281   -1.8043062
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0059127   -0.1637934    0.1756188
24 months   MAL-ED           INDIA                          NA                   NA                -1.8844690   -2.0097879   -1.7591502
24 months   MAL-ED           NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6432229   -1.7795844   -1.5068615
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1439152   -0.4247957    0.1369654
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6070497   -1.6645093   -1.5495902


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.2093320   -0.3070524   -0.1116115
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0565394   -0.1690739    0.0559952
Birth       MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.4991836   -0.8502515   -0.1481158
Birth       MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0039080   -0.4169976    0.4248136
Birth       MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.6161014   -1.3436278    0.1114250
Birth       MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.5186376   -1.3002899    0.2630147
Birth       MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <52 kg               >=58 kg           -0.3631034   -1.1080734    0.3818665
Birth       MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.7275000   -1.8333306    0.3783306
Birth       MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <52 kg               >=58 kg           -1.0890278   -1.8261822   -0.3518733
Birth       MAL-ED           NEPAL                          [52-58) kg           >=58 kg            0.1392222   -0.5940778    0.8725223
Birth       MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <52 kg               >=58 kg           -0.5994945   -0.8809860   -0.3180030
Birth       MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.3337939   -0.6329602   -0.0346276
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.4997628   -1.2086900    0.2091644
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3042540   -0.8543172    0.2458091
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.5004021   -0.9831877   -0.0176164
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0567974   -0.5960514    0.4824566
Birth       NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3522180   -0.6130247   -0.0914113
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1079761   -0.4486352    0.2326830
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.1710352   -0.3523920    0.0103217
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.1165273   -0.3408075    0.1077528
Birth       PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <52 kg               >=58 kg           -0.4690372   -0.5518373   -0.3862370
Birth       PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.2371429   -0.2906940   -0.1835919
Birth       PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.5849007   -0.7798518   -0.3899497
Birth       PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.3412634   -0.6298866   -0.0526402
Birth       SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.6310017   -0.8069032   -0.4551003
Birth       SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.2634914   -0.5065447   -0.0204380
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.4167539   -0.4752841   -0.3582236
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2180122   -0.2737830   -0.1622414
6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.1413978   -0.2455468   -0.0372488
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg            0.0008420   -0.1261683    0.1278524
6 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4957759   -0.7031845   -0.2883674
6 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1124488   -0.3433514    0.1184539
6 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.4082759   -0.7254051   -0.0911467
6 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0895271   -0.2643864    0.4434406
6 months    MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.1395473   -0.5240056    0.2449110
6 months    MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.0842476   -0.5420959    0.3736007
6 months    MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <52 kg               >=58 kg           -0.2599533   -0.5404899    0.0205834
6 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.2013228   -0.5585244    0.1558787
6 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.5494032   -0.8321753   -0.2666311
6 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.1319965   -0.3802421    0.1162491
6 months    MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <52 kg               >=58 kg           -0.3731342   -0.6239456   -0.1223227
6 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.2280810   -0.5259245    0.0697624
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.4886539   -0.8961966   -0.0811111
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2964758   -0.6941480    0.1011965
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3581559   -0.6435311   -0.0727806
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0344768   -0.3439009    0.2749473
6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.4922635   -0.7690455   -0.2154816
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0318952   -0.3519331    0.2881426
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.2295796   -0.3985555   -0.0606036
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.1243320   -0.3513191    0.1026551
6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3853247   -0.4636937   -0.3069556
6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1815403   -0.2408193   -0.1222613
6 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.5274359   -0.7310579   -0.3238139
6 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0559118   -0.3428753    0.2310517
6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.6755121   -0.8022451   -0.5487791
6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.1836519   -0.4620742    0.0947704
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4736324   -0.6025928   -0.3446719
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1484145   -0.2704527   -0.0263763
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5682902   -0.6357150   -0.5008654
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.3357429   -0.3976601   -0.2738257
24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.1737466   -0.3088226   -0.0386706
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg            0.0087849   -0.1569564    0.1745262
24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4356688   -0.6494951   -0.2218425
24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0693851   -0.3141936    0.1754233
24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.6534433   -0.9447977   -0.3620890
24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0298267   -0.3168649    0.3765184
24 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0720531   -0.5495442    0.4054380
24 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.1965403   -0.3130214    0.7061019
24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.4545471   -0.7659698   -0.1431244
24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.2348137   -0.6468643    0.1772369
24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.6479175   -0.9446099   -0.3512251
24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.2513190   -0.5211600    0.0185220
24 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.5472962   -0.8084165   -0.2861758
24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.2574604   -0.6144597    0.0995390
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.6600669   -1.0574605   -0.2626734
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3317957   -0.7117094    0.0481180
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3910120   -0.7017948   -0.0802291
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1720580   -0.5279890    0.1838730
24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.6427410   -0.9602992   -0.3251829
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1858818   -0.5836315    0.2118679
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.5278397   -0.7213821   -0.3342973
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.3025681   -0.5594004   -0.0457358
24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3746802   -0.7193405   -0.0300198
24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1539826   -0.4821096    0.1741444
24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.7448086   -0.9503974   -0.5392198
24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.1193518   -0.3993633    0.1606597
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5591612   -0.7087077   -0.4096147
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.3072903   -0.4419797   -0.1726008


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.1941645   -0.2889653   -0.0993638
Birth       MAL-ED           BANGLADESH                     >=58 kg              NA                -0.3555085   -0.6372570   -0.0737600
Birth       MAL-ED           BRAZIL                         >=58 kg              NA                -0.1920124   -0.4665541    0.0825293
Birth       MAL-ED           INDIA                          >=58 kg              NA                -0.3802326   -1.0182919    0.2578268
Birth       MAL-ED           NEPAL                          >=58 kg              NA                -0.2711111   -0.7538568    0.2116346
Birth       MAL-ED           PERU                           >=58 kg              NA                -0.3255421   -0.4937399   -0.1573444
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1560288   -0.3074849   -0.0045726
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.2031983   -0.4710915    0.0646948
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2632599   -0.4885712   -0.0379485
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.1324479   -0.2677167    0.0028208
Birth       PROBIT           BELARUS                        >=58 kg              NA                -0.0752325   -0.0867821   -0.0636830
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4480667   -0.6113885   -0.2847450
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                -0.5262965   -0.6843314   -0.3682617
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1405786   -0.1627082   -0.1184489
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.1260444   -0.2271785   -0.0249103
6 months    LCNI-5           MALAWI                         >=58 kg              NA                -0.3280082   -0.5032899   -0.1527265
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.2431650   -0.4969628    0.0106327
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0455345   -0.1498833    0.0588144
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.2103935   -0.4367403    0.0159533
6 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.2288742   -0.3825617   -0.0751867
6 months    MAL-ED           PERU                           >=58 kg              NA                -0.2137101   -0.3627890   -0.0646312
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0968813   -0.1814758   -0.0122869
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1716812   -0.3325250   -0.0108373
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3650977   -0.6030754   -0.1271199
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.1496040   -0.2708946   -0.0283134
6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0590308   -0.0724891   -0.0455725
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.3582263   -0.5275315   -0.1889211
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.5519270   -0.6822223   -0.4216318
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0982282   -0.1354600   -0.0609964
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.2020370   -0.2271626   -0.1769115
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.1574359   -0.2887278   -0.0261440
24 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.2747538   -0.4539703   -0.0955372
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.4152628   -0.6480167   -0.1825089
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0063472   -0.1419263    0.1292319
24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.3406036   -0.5937079   -0.0874992
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.2716279   -0.4377341   -0.1055217
24 months   MAL-ED           PERU                           >=58 kg              NA                -0.2843934   -0.4356850   -0.1331017
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1407770   -0.2296399   -0.0519141
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1973650   -0.3692878   -0.0254421
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4921517   -0.7654856   -0.2188179
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.3462664   -0.4844725   -0.2080603
24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0520841   -0.1281108    0.0239425
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4755186   -0.6434604   -0.3075767
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1897423   -0.2450859   -0.1343987
