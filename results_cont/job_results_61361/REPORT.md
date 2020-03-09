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

agecat      studyid          country                        mwtkg         n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -----------  -------  ------  -----------------
Birth       JiVitA-3         BANGLADESH                     >=58 kg          500   22432  haz              
Birth       JiVitA-3         BANGLADESH                     <52 kg         20479   22432  haz              
Birth       JiVitA-3         BANGLADESH                     [52-58) kg      1453   22432  haz              
Birth       MAL-ED           BANGLADESH                     >=58 kg           38     222  haz              
Birth       MAL-ED           BANGLADESH                     <52 kg           143     222  haz              
Birth       MAL-ED           BANGLADESH                     [52-58) kg        41     222  haz              
Birth       MAL-ED           BRAZIL                         >=58 kg           34      64  haz              
Birth       MAL-ED           BRAZIL                         <52 kg            15      64  haz              
Birth       MAL-ED           BRAZIL                         [52-58) kg        15      64  haz              
Birth       MAL-ED           INDIA                          >=58 kg            6      43  haz              
Birth       MAL-ED           INDIA                          <52 kg            29      43  haz              
Birth       MAL-ED           INDIA                          [52-58) kg         8      43  haz              
Birth       MAL-ED           NEPAL                          >=58 kg            9      27  haz              
Birth       MAL-ED           NEPAL                          <52 kg             8      27  haz              
Birth       MAL-ED           NEPAL                          [52-58) kg        10      27  haz              
Birth       MAL-ED           PERU                           >=58 kg           83     226  haz              
Birth       MAL-ED           PERU                           <52 kg            84     226  haz              
Birth       MAL-ED           PERU                           [52-58) kg        59     226  haz              
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg           69     101  haz              
Birth       MAL-ED           SOUTH AFRICA                   <52 kg            10     101  haz              
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg        22     101  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           47     122  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            45     122  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        30     122  haz              
Birth       NIH-Birth        BANGLADESH                     >=58 kg           80     608  haz              
Birth       NIH-Birth        BANGLADESH                     <52 kg           441     608  haz              
Birth       NIH-Birth        BANGLADESH                     [52-58) kg        87     608  haz              
Birth       NIH-Crypto       BANGLADESH                     >=58 kg          186     729  haz              
Birth       NIH-Crypto       BANGLADESH                     <52 kg           395     729  haz              
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg       148     729  haz              
Birth       PROBIT           BELARUS                        >=58 kg        10277   13770  haz              
Birth       PROBIT           BELARUS                        <52 kg          1131   13770  haz              
Birth       PROBIT           BELARUS                        [52-58) kg      2362   13770  haz              
Birth       PROVIDE          BANGLADESH                     >=58 kg           91     517  haz              
Birth       PROVIDE          BANGLADESH                     <52 kg           330     517  haz              
Birth       PROVIDE          BANGLADESH                     [52-58) kg        96     517  haz              
Birth       SAS-CompFeed     INDIA                          >=58 kg           91    1236  haz              
Birth       SAS-CompFeed     INDIA                          <52 kg           949    1236  haz              
Birth       SAS-CompFeed     INDIA                          [52-58) kg       196    1236  haz              
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg         5757   11031  haz              
Birth       ZVITAMBO         ZIMBABWE                       <52 kg          2365   11031  haz              
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg      2909   11031  haz              
6 months    JiVitA-3         BANGLADESH                     >=58 kg          407   16802  haz              
6 months    JiVitA-3         BANGLADESH                     <52 kg         15243   16802  haz              
6 months    JiVitA-3         BANGLADESH                     [52-58) kg      1152   16802  haz              
6 months    LCNI-5           MALAWI                         >=58 kg          114     837  haz              
6 months    LCNI-5           MALAWI                         <52 kg           504     837  haz              
6 months    LCNI-5           MALAWI                         [52-58) kg       219     837  haz              
6 months    MAL-ED           BANGLADESH                     >=58 kg           46     241  haz              
6 months    MAL-ED           BANGLADESH                     <52 kg           154     241  haz              
6 months    MAL-ED           BANGLADESH                     [52-58) kg        41     241  haz              
6 months    MAL-ED           BRAZIL                         >=58 kg          137     208  haz              
6 months    MAL-ED           BRAZIL                         <52 kg            37     208  haz              
6 months    MAL-ED           BRAZIL                         [52-58) kg        34     208  haz              
6 months    MAL-ED           INDIA                          >=58 kg           40     235  haz              
6 months    MAL-ED           INDIA                          <52 kg           146     235  haz              
6 months    MAL-ED           INDIA                          [52-58) kg        49     235  haz              
6 months    MAL-ED           NEPAL                          >=58 kg           79     236  haz              
6 months    MAL-ED           NEPAL                          <52 kg            75     236  haz              
6 months    MAL-ED           NEPAL                          [52-58) kg        82     236  haz              
6 months    MAL-ED           PERU                           >=58 kg          100     272  haz              
6 months    MAL-ED           PERU                           <52 kg           107     272  haz              
6 months    MAL-ED           PERU                           [52-58) kg        65     272  haz              
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg          179     249  haz              
6 months    MAL-ED           SOUTH AFRICA                   <52 kg            29     249  haz              
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg        41     249  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247  haz              
6 months    NIH-Birth        BANGLADESH                     >=58 kg           71     537  haz              
6 months    NIH-Birth        BANGLADESH                     <52 kg           385     537  haz              
6 months    NIH-Birth        BANGLADESH                     [52-58) kg        81     537  haz              
6 months    NIH-Crypto       BANGLADESH                     >=58 kg          184     715  haz              
6 months    NIH-Crypto       BANGLADESH                     <52 kg           383     715  haz              
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg       148     715  haz              
6 months    PROBIT           BELARUS                        >=58 kg         9740   13066  haz              
6 months    PROBIT           BELARUS                        <52 kg          1083   13066  haz              
6 months    PROBIT           BELARUS                        [52-58) kg      2243   13066  haz              
6 months    PROVIDE          BANGLADESH                     >=58 kg          109     603  haz              
6 months    PROVIDE          BANGLADESH                     <52 kg           385     603  haz              
6 months    PROVIDE          BANGLADESH                     [52-58) kg       109     603  haz              
6 months    SAS-CompFeed     INDIA                          >=58 kg          103    1331  haz              
6 months    SAS-CompFeed     INDIA                          <52 kg          1014    1331  haz              
6 months    SAS-CompFeed     INDIA                          [52-58) kg       214    1331  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1989  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           325    1989  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1989  haz              
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg         4363    8254  haz              
6 months    ZVITAMBO         ZIMBABWE                       <52 kg          1726    8254  haz              
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg      2165    8254  haz              
24 months   JiVitA-3         BANGLADESH                     >=58 kg          197    8627  haz              
24 months   JiVitA-3         BANGLADESH                     <52 kg          7859    8627  haz              
24 months   JiVitA-3         BANGLADESH                     [52-58) kg       571    8627  haz              
24 months   LCNI-5           MALAWI                         >=58 kg           77     578  haz              
24 months   LCNI-5           MALAWI                         <52 kg           348     578  haz              
24 months   LCNI-5           MALAWI                         [52-58) kg       153     578  haz              
24 months   MAL-ED           BANGLADESH                     >=58 kg           40     212  haz              
24 months   MAL-ED           BANGLADESH                     <52 kg           135     212  haz              
24 months   MAL-ED           BANGLADESH                     [52-58) kg        37     212  haz              
24 months   MAL-ED           BRAZIL                         >=58 kg          109     168  haz              
24 months   MAL-ED           BRAZIL                         <52 kg            28     168  haz              
24 months   MAL-ED           BRAZIL                         [52-58) kg        31     168  haz              
24 months   MAL-ED           INDIA                          >=58 kg           38     226  haz              
24 months   MAL-ED           INDIA                          <52 kg           141     226  haz              
24 months   MAL-ED           INDIA                          [52-58) kg        47     226  haz              
24 months   MAL-ED           NEPAL                          >=58 kg           76     228  haz              
24 months   MAL-ED           NEPAL                          <52 kg            74     228  haz              
24 months   MAL-ED           NEPAL                          [52-58) kg        78     228  haz              
24 months   MAL-ED           PERU                           >=58 kg           77     201  haz              
24 months   MAL-ED           PERU                           <52 kg            75     201  haz              
24 months   MAL-ED           PERU                           [52-58) kg        49     201  haz              
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg          168     234  haz              
24 months   MAL-ED           SOUTH AFRICA                   <52 kg            28     234  haz              
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg        38     234  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214  haz              
24 months   NIH-Birth        BANGLADESH                     >=58 kg           57     429  haz              
24 months   NIH-Birth        BANGLADESH                     <52 kg           308     429  haz              
24 months   NIH-Birth        BANGLADESH                     [52-58) kg        64     429  haz              
24 months   NIH-Crypto       BANGLADESH                     >=58 kg          138     514  haz              
24 months   NIH-Crypto       BANGLADESH                     <52 kg           273     514  haz              
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg       103     514  haz              
24 months   PROBIT           BELARUS                        >=58 kg         3011    4013  haz              
24 months   PROBIT           BELARUS                        <52 kg           325    4013  haz              
24 months   PROBIT           BELARUS                        [52-58) kg       677    4013  haz              
24 months   PROVIDE          BANGLADESH                     >=58 kg          111     577  haz              
24 months   PROVIDE          BANGLADESH                     <52 kg           362     577  haz              
24 months   PROVIDE          BANGLADESH                     [52-58) kg       104     577  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6  haz              
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg          833    1588  haz              
24 months   ZVITAMBO         ZIMBABWE                       <52 kg           334    1588  haz              
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       421    1588  haz              


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
![](/tmp/276ac176-51a1-49f8-80b6-c7368b72bc26/c307dff2-0517-41ab-9d3a-1c4f7d84f9b2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/276ac176-51a1-49f8-80b6-c7368b72bc26/c307dff2-0517-41ab-9d3a-1c4f7d84f9b2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/276ac176-51a1-49f8-80b6-c7368b72bc26/c307dff2-0517-41ab-9d3a-1c4f7d84f9b2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                -1.4003477   -1.4958793   -1.3048162
Birth       JiVitA-3         BANGLADESH                     <52 kg               NA                -1.6047297   -1.6242348   -1.5852247
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           NA                -1.4525449   -1.5188722   -1.3862176
Birth       MAL-ED           BANGLADESH                     >=58 kg              NA                -0.7825290   -1.0899883   -0.4750697
Birth       MAL-ED           BANGLADESH                     <52 kg               NA                -1.2192361   -1.3958462   -1.0426259
Birth       MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.6383215   -0.9084419   -0.3682011
Birth       MAL-ED           BRAZIL                         >=58 kg              NA                -0.5369088   -0.9065347   -0.1672829
Birth       MAL-ED           BRAZIL                         <52 kg               NA                -1.1227183   -1.7514328   -0.4940038
Birth       MAL-ED           BRAZIL                         [52-58) kg           NA                -1.1754389   -1.8003026   -0.5505752
Birth       MAL-ED           INDIA                          >=58 kg              NA                -0.8500000   -1.5073907   -0.1926093
Birth       MAL-ED           INDIA                          <52 kg               NA                -1.2131034   -1.5635569   -0.8626500
Birth       MAL-ED           INDIA                          [52-58) kg           NA                -1.5775000   -2.4667124   -0.6882876
Birth       MAL-ED           NEPAL                          >=58 kg              NA                -0.5822222   -1.1447657   -0.0196787
Birth       MAL-ED           NEPAL                          <52 kg               NA                -1.6712500   -2.1476338   -1.1948662
Birth       MAL-ED           NEPAL                          [52-58) kg           NA                -0.4430000   -0.9133974    0.0273974
Birth       MAL-ED           PERU                           >=58 kg              NA                -0.5727167   -0.7803675   -0.3650660
Birth       MAL-ED           PERU                           <52 kg               NA                -1.2041114   -1.3796099   -1.0286129
Birth       MAL-ED           PERU                           [52-58) kg           NA                -0.9040293   -1.0990470   -0.7090116
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.4310147   -0.6504921   -0.2115373
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               NA                -1.0152239   -1.7113656   -0.3190823
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -0.7851075   -1.2709480   -0.2992669
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.9448356   -1.2852762   -0.6043950
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.4413511   -1.7914547   -1.0912475
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.9804871   -1.4025043   -0.5584700
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.6512174   -0.8874465   -0.4149883
Birth       NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0205360   -1.1238579   -0.9172141
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.7486486   -0.9842176   -0.5130796
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.7759947   -0.9323058   -0.6196836
Birth       NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.9462991   -1.0445549   -0.8480434
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -0.9042039   -1.0715388   -0.7368689
Birth       PROBIT           BELARUS                        >=58 kg              NA                 1.3855917    1.2248371    1.5463464
Birth       PROBIT           BELARUS                        <52 kg               NA                 0.9309051    0.7676072    1.0942030
Birth       PROBIT           BELARUS                        [52-58) kg           NA                 1.1554100    0.9968710    1.3139489
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4604353   -0.6431585   -0.2777122
Birth       PROVIDE          BANGLADESH                     <52 kg               NA                -1.0263455   -1.1111949   -0.9414960
Birth       PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.7698465   -0.9897177   -0.5499754
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                -0.8957828   -1.0747207   -0.7168449
Birth       SAS-CompFeed     INDIA                          <52 kg               NA                -1.5267845   -1.6172579   -1.4363111
Birth       SAS-CompFeed     INDIA                          [52-58) kg           NA                -1.1592742   -1.3280145   -0.9905338
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3548283   -0.3863128   -0.3233437
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7696842   -0.8189610   -0.7204074
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5717614   -0.6174808   -0.5260420
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -1.1813335   -1.2863842   -1.0762827
6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                -1.3291107   -1.3522678   -1.3059535
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                -1.1834787   -1.2635256   -1.1034317
6 months    LCNI-5           MALAWI                         >=58 kg              NA                -1.3287429   -1.5155853   -1.1419005
6 months    LCNI-5           MALAWI                         <52 kg               NA                -1.8260513   -1.9133536   -1.7387491
6 months    LCNI-5           MALAWI                         [52-58) kg           NA                -1.4491282   -1.5825431   -1.3157133
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.9550147   -1.2095654   -0.7004640
6 months    MAL-ED           BANGLADESH                     <52 kg               NA                -1.3654524   -1.5211234   -1.2097814
6 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.8491787   -1.0735888   -0.6247686
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                 0.0941157   -0.0866945    0.2749259
6 months    MAL-ED           BRAZIL                         <52 kg               NA                -0.0164912   -0.3591246    0.3261422
6 months    MAL-ED           BRAZIL                         [52-58) kg           NA                -0.0342260   -0.4663368    0.3978847
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.9859320   -1.2185609   -0.7533031
6 months    MAL-ED           INDIA                          <52 kg               NA                -1.2530910   -1.4072112   -1.0989708
6 months    MAL-ED           INDIA                          [52-58) kg           NA                -1.1985206   -1.4827679   -0.9142734
6 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.3140123   -0.5024210   -0.1256036
6 months    MAL-ED           NEPAL                          <52 kg               NA                -0.8504548   -1.0657016   -0.6352079
6 months    MAL-ED           NEPAL                          [52-58) kg           NA                -0.4433902   -0.6179675   -0.2688129
6 months    MAL-ED           PERU                           >=58 kg              NA                -1.0994432   -1.2921913   -0.9066951
6 months    MAL-ED           PERU                           <52 kg               NA                -1.4877031   -1.6527785   -1.3226277
6 months    MAL-ED           PERU                           [52-58) kg           NA                -1.3372581   -1.5863711   -1.0881451
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.9754661   -1.1255707   -0.8253616
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                -1.4482914   -1.8461100   -1.0504729
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -1.2271964   -1.5768671   -0.8775257
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -1.2183774   -1.4200689   -1.0166858
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.5747724   -1.7743550   -1.3751898
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.2320719   -1.4688135   -0.9953303
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0237734   -1.2741970   -0.7733498
6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                -1.5350540   -1.6396633   -1.4304448
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.0928654   -1.2816663   -0.9040644
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -1.0618503   -1.2011641   -0.9225364
6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                -1.2694828   -1.3664967   -1.1724688
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -1.1701802   -1.3465583   -0.9938022
6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.1649756    0.0726044    0.2573468
6 months    PROBIT           BELARUS                        <52 kg               NA                -0.2149809   -0.3344485   -0.0955133
6 months    PROBIT           BELARUS                        [52-58) kg           NA                -0.0116595   -0.1186085    0.0952894
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.7326986   -0.9049198   -0.5604774
6 months    PROVIDE          BANGLADESH                     <52 kg               NA                -1.2628526   -1.3480088   -1.1776964
6 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.7985606   -1.0134009   -0.5837203
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.8484637   -1.0017496   -0.6951777
6 months    SAS-CompFeed     INDIA                          <52 kg               NA                -1.5239758   -1.6099945   -1.4379571
6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                -1.0321156   -1.2111876   -0.8530436
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.4462077   -0.5099527   -0.3824626
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.9107277   -1.0256606   -0.7957949
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.5801105   -0.6842902   -0.4759309
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.6729884   -0.7088211   -0.6371556
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2425092   -1.2995672   -1.1854512
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0113749   -1.0613369   -0.9614129
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -1.8516854   -1.9839258   -1.7194449
24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                -2.0295888   -2.0575090   -2.0016686
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                -1.8507312   -1.9546682   -1.7467942
24 months   LCNI-5           MALAWI                         >=58 kg              NA                -1.5617407   -1.7488656   -1.3746158
24 months   LCNI-5           MALAWI                         <52 kg               NA                -2.0434350   -2.1489719   -1.9378981
24 months   LCNI-5           MALAWI                         [52-58) kg           NA                -1.6590213   -1.8175778   -1.5004648
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -1.5729278   -1.8177486   -1.3281069
24 months   MAL-ED           BANGLADESH                     <52 kg               NA                -2.2189700   -2.3798791   -2.0580609
24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                -1.5430708   -1.8035221   -1.2826195
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0083071   -0.2263170    0.2097029
24 months   MAL-ED           BRAZIL                         <52 kg               NA                -0.1319575   -0.5480286    0.2841136
24 months   MAL-ED           BRAZIL                         [52-58) kg           NA                 0.2167360   -0.2021546    0.6356265
24 months   MAL-ED           INDIA                          >=58 kg              NA                -1.5444785   -1.8200361   -1.2689210
24 months   MAL-ED           INDIA                          <52 kg               NA                -1.9970735   -2.1504395   -1.8437074
24 months   MAL-ED           INDIA                          [52-58) kg           NA                -1.8301285   -2.1406680   -1.5195889
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -1.0370297   -1.2379956   -0.8360637
24 months   MAL-ED           NEPAL                          <52 kg               NA                -1.6729793   -1.8914230   -1.4545357
24 months   MAL-ED           NEPAL                          [52-58) kg           NA                -1.2710691   -1.4487756   -1.0933625
24 months   MAL-ED           PERU                           >=58 kg              NA                -1.4607684   -1.6384968   -1.2830399
24 months   MAL-ED           PERU                           <52 kg               NA                -1.9931176   -2.1875560   -1.7986793
24 months   MAL-ED           PERU                           [52-58) kg           NA                -1.7458590   -2.0693858   -1.4223322
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -1.5075432   -1.6656343   -1.3494520
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                -2.2610409   -2.6247689   -1.8973129
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -2.0210855   -2.3368934   -1.7052776
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -2.4236714   -2.6327251   -2.2146177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -2.8404507   -3.0705028   -2.6103986
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -2.6404079   -2.9284689   -2.3523469
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.7526410   -2.0503248   -1.4549572
24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                -2.3691131   -2.4850376   -2.2531886
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.9408839   -2.1993989   -1.6823690
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -1.0979778   -1.2459505   -0.9500050
24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                -1.6027716   -1.7198265   -1.4857167
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -1.3988047   -1.6001802   -1.1974292
24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0922853   -0.4160132    0.2314426
24 months   PROBIT           BELARUS                        <52 kg               NA                -0.4478087   -0.8398570   -0.0557605
24 months   PROBIT           BELARUS                        [52-58) kg           NA                -0.2292723   -0.5424781    0.0839335
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -1.0981198   -1.2796417   -0.9165979
24 months   PROVIDE          BANGLADESH                     <52 kg               NA                -1.8711919   -1.9706739   -1.7717099
24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                -1.2190388   -1.4248795   -1.0131982
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.4210525   -1.5005263   -1.3415787
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.9884523   -2.1119391   -1.8649656
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.7125408   -1.8256861   -1.5993955


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
Birth       JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.2043820   -0.3011774   -0.1075866
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0521972   -0.1637868    0.0593924
Birth       MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.4367070   -0.7907813   -0.0826328
Birth       MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.1442075   -0.2660020    0.5544171
Birth       MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.5858095   -1.3134232    0.1418042
Birth       MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.6385301   -1.3753497    0.0982895
Birth       MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <52 kg               >=58 kg           -0.3631034   -1.1080734    0.3818665
Birth       MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.7275000   -1.8333306    0.3783306
Birth       MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <52 kg               >=58 kg           -1.0890278   -1.8261822   -0.3518733
Birth       MAL-ED           NEPAL                          [52-58) kg           >=58 kg            0.1392222   -0.5940778    0.8725223
Birth       MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <52 kg               >=58 kg           -0.6313947   -0.9042698   -0.3585196
Birth       MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.3313126   -0.6181870   -0.0444381
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.5842092   -1.3153261    0.1469077
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3540928   -0.8863342    0.1781487
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4965155   -0.9866928   -0.0063382
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0356515   -0.5786703    0.5073673
Birth       NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3693186   -0.6273879   -0.1112493
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0974312   -0.4306655    0.2358032
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.1703044   -0.3552432    0.0146343
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.1282092   -0.3576536    0.1012353
Birth       PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <52 kg               >=58 kg           -0.4546866   -0.5396139   -0.3697594
Birth       PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.2301818   -0.2839759   -0.1763877
Birth       PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.5659101   -0.7679054   -0.3639148
Birth       PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.3094112   -0.5944557   -0.0243666
Birth       SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.6310017   -0.8069032   -0.4551003
Birth       SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.2634914   -0.5065447   -0.0204380
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.4148559   -0.4732629   -0.3564489
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2169331   -0.2723077   -0.1615585
6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.1477772   -0.2520247   -0.0435297
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0021452   -0.1287017    0.1244112
6 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4973084   -0.7036123   -0.2910046
6 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1203853   -0.3502353    0.1094647
6 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.4104377   -0.7094254   -0.1114500
6 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.1058360   -0.2335505    0.4452225
6 months    MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.1106069   -0.4985741    0.2773602
6 months    MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.1283417   -0.5973110    0.3406275
6 months    MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <52 kg               >=58 kg           -0.2671590   -0.5474001    0.0130821
6 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.2125886   -0.5810367    0.1558595
6 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.5364424   -0.8227070   -0.2501778
6 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.1293779   -0.3888791    0.1301233
6 months    MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <52 kg               >=58 kg           -0.3882599   -0.6431412   -0.1333786
6 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.2378149   -0.5527359    0.0771062
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.4728253   -0.8984332   -0.0472174
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2517302   -0.6332999    0.1298395
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3563951   -0.6410369   -0.0717532
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0136945   -0.3252466    0.2978576
6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.5112806   -0.7825098   -0.2400514
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0690919   -0.3824322    0.2442483
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.2076325   -0.3773775   -0.0378874
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.1083300   -0.3331654    0.1165055
6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3799565   -0.4584309   -0.3014820
6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1766351   -0.2340089   -0.1192614
6 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.5301540   -0.7226618   -0.3376463
6 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0658620   -0.3412310    0.2095071
6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.6755121   -0.8022451   -0.5487791
6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.1836519   -0.4620742    0.0947704
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4645201   -0.5960281   -0.3330120
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1339029   -0.2558241   -0.0119816
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5695208   -0.6368185   -0.5022231
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.3383866   -0.3997577   -0.2770154
24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.1779034   -0.3128247   -0.0429821
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg            0.0009542   -0.1654439    0.1673523
24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4816943   -0.6966637   -0.2667249
24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0972806   -0.3428070    0.1482459
24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.6460422   -0.9397262   -0.3523583
24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0298570   -0.3281371    0.3878510
24 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.1236505   -0.5945717    0.3472707
24 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.2250430   -0.2472358    0.6973219
24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.4525949   -0.7689249   -0.1362649
24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.2856499   -0.7011419    0.1298421
24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.6359497   -0.9324103   -0.3394890
24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.2340394   -0.5017933    0.0337145
24 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.5323493   -0.7984930   -0.2662056
24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.2850906   -0.6536676    0.0834864
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.7534977   -1.1515966   -0.3553988
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.5135423   -0.8669274   -0.1601572
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4167793   -0.7300454   -0.1035132
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.2167365   -0.5736509    0.1401779
24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.6164721   -0.9361614   -0.2967827
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1882429   -0.5810891    0.2046033
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.5047939   -0.6935316   -0.3160561
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.3008270   -0.5521645   -0.0494894
24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3555234   -0.7035820   -0.0074649
24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1369870   -0.4713511    0.1973771
24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.7730721   -0.9798134   -0.5663308
24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.1209190   -0.3948836    0.1530456
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5673998   -0.7140756   -0.4207240
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2914883   -0.4302807   -0.1526958


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.1892658   -0.2831256   -0.0954059
Birth       MAL-ED           BANGLADESH                     >=58 kg              NA                -0.2953539   -0.5818800   -0.0088277
Birth       MAL-ED           BRAZIL                         >=58 kg              NA                -0.1515287   -0.4192108    0.1161534
Birth       MAL-ED           INDIA                          >=58 kg              NA                -0.3802326   -1.0182919    0.2578268
Birth       MAL-ED           NEPAL                          >=58 kg              NA                -0.2711111   -0.7538568    0.2116346
Birth       MAL-ED           PERU                           >=58 kg              NA                -0.3324160   -0.4937295   -0.1711026
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1397774   -0.2861604    0.0066056
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1916398   -0.4641984    0.0809187
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2798023   -0.5023109   -0.0572937
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.1329216   -0.2718056    0.0059624
Birth       PROBIT           BELARUS                        >=58 kg              NA                -0.0738089   -0.0854654   -0.0621524
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4320792   -0.6013467   -0.2628116
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                -0.5262965   -0.6843314   -0.3682617
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1418556   -0.1639816   -0.1197296
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.1321512   -0.2333215   -0.0309810
6 months    LCNI-5           MALAWI                         >=58 kg              NA                -0.3297278   -0.5041358   -0.1553199
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.2499784   -0.4844852   -0.0154716
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0443641   -0.1484069    0.0596787
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.2200254   -0.4453715    0.0053207
6 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.2475696   -0.4078599   -0.0872793
6 months    MAL-ED           PERU                           >=58 kg              NA                -0.2246591   -0.3799341   -0.0693842
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.0972782   -0.1824649   -0.0120914
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1503676   -0.3102070    0.0094718
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3836086   -0.6157313   -0.1514860
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.1368280   -0.2599404   -0.0137157
6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0584892   -0.0719408   -0.0450376
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.3568315   -0.5144064   -0.1992566
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.5519270   -0.6822223   -0.4216318
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0962689   -0.1339024   -0.0586353
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.2055311   -0.2305897   -0.1804725
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.1617330   -0.2928950   -0.0305710
24 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.3237264   -0.5041305   -0.1433223
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.4054685   -0.6418950   -0.1690419
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.0142198   -0.1149788    0.1434183
24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.3399905   -0.5972245   -0.0827565
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.2705580   -0.4371435   -0.1039726
24 months   MAL-ED           PERU                           >=58 kg              NA                -0.2917026   -0.4496125   -0.1337927
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1356798   -0.2269212   -0.0444383
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.2218893   -0.3952728   -0.0485059
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4664169   -0.7416441   -0.1911896
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.3432868   -0.4774567   -0.2091170
24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0516299   -0.1420158    0.0387560
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.5021401   -0.6706136   -0.3336667
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1859972   -0.2422725   -0.1297220
