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
![](/tmp/1c1513d9-4d8b-4a40-9439-911f4e1b6627/6209a1aa-a3d2-4a03-a353-f3e92677e0e0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1c1513d9-4d8b-4a40-9439-911f4e1b6627/6209a1aa-a3d2-4a03-a353-f3e92677e0e0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1c1513d9-4d8b-4a40-9439-911f4e1b6627/6209a1aa-a3d2-4a03-a353-f3e92677e0e0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                -1.3969994   -1.4935804   -1.3004184
Birth       JiVitA-3         BANGLADESH                     <52 kg               NA                -1.6047465   -1.6242343   -1.5852587
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           NA                -1.4518259   -1.5179114   -1.3857404
Birth       MAL-ED           BANGLADESH                     >=58 kg              NA                -0.7449195   -1.0657188   -0.4241202
Birth       MAL-ED           BANGLADESH                     <52 kg               NA                -1.2339552   -1.4129509   -1.0549596
Birth       MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.6623592   -0.9555504   -0.3691681
Birth       MAL-ED           BRAZIL                         >=58 kg              NA                -0.4397536   -0.8233625   -0.0561446
Birth       MAL-ED           BRAZIL                         <52 kg               NA                -0.9435267   -1.6643909   -0.2226624
Birth       MAL-ED           BRAZIL                         [52-58) kg           NA                -0.6990682   -1.3434600   -0.0546763
Birth       MAL-ED           INDIA                          >=58 kg              NA                -0.8500000   -1.5073907   -0.1926093
Birth       MAL-ED           INDIA                          <52 kg               NA                -1.2131034   -1.5635569   -0.8626500
Birth       MAL-ED           INDIA                          [52-58) kg           NA                -1.5775000   -2.4667124   -0.6882876
Birth       MAL-ED           NEPAL                          >=58 kg              NA                -0.5822222   -1.1447657   -0.0196787
Birth       MAL-ED           NEPAL                          <52 kg               NA                -1.6712500   -2.1476338   -1.1948662
Birth       MAL-ED           NEPAL                          [52-58) kg           NA                -0.4430000   -0.9133974    0.0273974
Birth       MAL-ED           PERU                           >=58 kg              NA                -0.5652713   -0.7721781   -0.3583645
Birth       MAL-ED           PERU                           <52 kg               NA                -1.1977662   -1.3712555   -1.0242768
Birth       MAL-ED           PERU                           [52-58) kg           NA                -0.9163588   -1.1196243   -0.7130932
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.4377235   -0.6585974   -0.2168496
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               NA                -0.9390744   -1.6238258   -0.2543230
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -0.7762517   -1.2903622   -0.2621412
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.8676811   -1.2056220   -0.5297401
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.3979171   -1.7396084   -1.0562258
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.9485505   -1.3731121   -0.5239890
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.6755187   -0.9129031   -0.4381343
Birth       NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0196279   -1.1229493   -0.9163066
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.7317565   -0.9897418   -0.4737712
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.7871291   -0.9414374   -0.6328207
Birth       NIH-Crypto       BANGLADESH                     <52 kg               NA                -0.9559134   -1.0545495   -0.8572773
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -0.8836730   -1.0506921   -0.7166538
Birth       PROBIT           BELARUS                        >=58 kg              NA                 1.3860211    1.2252086    1.5468335
Birth       PROBIT           BELARUS                        <52 kg               NA                 0.9213137    0.7640832    1.0785442
Birth       PROBIT           BELARUS                        [52-58) kg           NA                 1.1573134    1.0002909    1.3143359
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4242879   -0.5980010   -0.2505748
Birth       PROVIDE          BANGLADESH                     <52 kg               NA                -1.0214776   -1.1063466   -0.9366085
Birth       PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.8306227   -1.0586490   -0.6025964
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                -0.8957828   -1.0747207   -0.7168449
Birth       SAS-CompFeed     INDIA                          <52 kg               NA                -1.5267845   -1.6172579   -1.4363111
Birth       SAS-CompFeed     INDIA                          [52-58) kg           NA                -1.1592742   -1.3280145   -0.9905338
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3544694   -0.3859997   -0.3229390
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7769464   -0.8262976   -0.7275952
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5749011   -0.6206215   -0.5291808
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -1.1759226   -1.2821025   -1.0697426
6 months    JiVitA-3         BANGLADESH                     <52 kg               NA                -1.3289474   -1.3521388   -1.3057560
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           NA                -1.1863199   -1.2674470   -1.1051929
6 months    LCNI-5           MALAWI                         >=58 kg              NA                -1.3393863   -1.5334320   -1.1453406
6 months    LCNI-5           MALAWI                         <52 kg               NA                -1.8252616   -1.9122713   -1.7382518
6 months    LCNI-5           MALAWI                         [52-58) kg           NA                -1.4304598   -1.5670805   -1.2938391
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.9621065   -1.2191713   -0.7050418
6 months    MAL-ED           BANGLADESH                     <52 kg               NA                -1.3593478   -1.5166114   -1.2020841
6 months    MAL-ED           BANGLADESH                     [52-58) kg           NA                -0.8357763   -1.0540169   -0.6175357
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                 0.0952632   -0.0879912    0.2785175
6 months    MAL-ED           BRAZIL                         <52 kg               NA                -0.0383259   -0.3722482    0.2955965
6 months    MAL-ED           BRAZIL                         [52-58) kg           NA                -0.0023564   -0.4065904    0.4018776
6 months    MAL-ED           INDIA                          >=58 kg              NA                -1.0357660   -1.2629838   -0.8085483
6 months    MAL-ED           INDIA                          <52 kg               NA                -1.2528126   -1.4069765   -1.0986486
6 months    MAL-ED           INDIA                          [52-58) kg           NA                -1.2259641   -1.4985105   -0.9534177
6 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.3355295   -0.5174371   -0.1536220
6 months    MAL-ED           NEPAL                          <52 kg               NA                -0.8801991   -1.0980222   -0.6623759
6 months    MAL-ED           NEPAL                          [52-58) kg           NA                -0.4548743   -0.6270559   -0.2826926
6 months    MAL-ED           PERU                           >=58 kg              NA                -1.1044332   -1.2931392   -0.9157272
6 months    MAL-ED           PERU                           <52 kg               NA                -1.4768282   -1.6362863   -1.3173701
6 months    MAL-ED           PERU                           [52-58) kg           NA                -1.3506048   -1.5980693   -1.1031403
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.9668651   -1.1171815   -0.8165488
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               NA                -1.4755569   -1.8497747   -1.1013391
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -1.2417068   -1.5936102   -0.8898034
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -1.2254467   -1.4256120   -1.0252814
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.5743604   -1.7741402   -1.3745805
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.2757989   -1.5145541   -1.0370438
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0565978   -1.3140370   -0.7991586
6 months    NIH-Birth        BANGLADESH                     <52 kg               NA                -1.5322012   -1.6367906   -1.4276118
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.0869238   -1.2766544   -0.8971933
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -1.0803584   -1.2215192   -0.9391975
6 months    NIH-Crypto       BANGLADESH                     <52 kg               NA                -1.2473477   -1.3449683   -1.1497271
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -1.1690383   -1.3486675   -0.9894092
6 months    PROBIT           BELARUS                        >=58 kg              NA                 0.1657682    0.0736862    0.2578501
6 months    PROBIT           BELARUS                        <52 kg               NA                -0.2188278   -0.3406148   -0.0970408
6 months    PROBIT           BELARUS                        [52-58) kg           NA                -0.0142873   -0.1194406    0.0908660
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.7300307   -0.9114159   -0.5486456
6 months    PROVIDE          BANGLADESH                     <52 kg               NA                -1.2560417   -1.3417541   -1.1703293
6 months    PROVIDE          BANGLADESH                     [52-58) kg           NA                -0.7794987   -0.9872786   -0.5717189
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.8484637   -1.0017496   -0.6951777
6 months    SAS-CompFeed     INDIA                          <52 kg               NA                -1.5239758   -1.6099945   -1.4379571
6 months    SAS-CompFeed     INDIA                          [52-58) kg           NA                -1.0321156   -1.2111876   -0.8530436
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.4443170   -0.5080317   -0.3806022
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.8961033   -1.0077105   -0.7844962
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.5712611   -0.6759722   -0.4665500
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.6761545   -0.7120518   -0.6402572
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2414730   -1.2986340   -1.1843120
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0087779   -1.0590983   -0.9584575
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -1.8578893   -1.9902882   -1.7254904
24 months   JiVitA-3         BANGLADESH                     <52 kg               NA                -2.0297175   -2.0576268   -2.0018081
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           NA                -1.8540177   -1.9588463   -1.7491891
24 months   LCNI-5           MALAWI                         >=58 kg              NA                -1.5800352   -1.7689522   -1.3911182
24 months   LCNI-5           MALAWI                         <52 kg               NA                -2.0443749   -2.1496156   -1.9391342
24 months   LCNI-5           MALAWI                         [52-58) kg           NA                -1.6703903   -1.8279808   -1.5127997
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -1.5704425   -1.8065638   -1.3343211
24 months   MAL-ED           BANGLADESH                     <52 kg               NA                -2.2186941   -2.3793657   -2.0580225
24 months   MAL-ED           BANGLADESH                     [52-58) kg           NA                -1.5377693   -1.7873563   -1.2881822
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                -0.0012280   -0.2194589    0.2170030
24 months   MAL-ED           BRAZIL                         <52 kg               NA                -0.0730003   -0.4854900    0.3394895
24 months   MAL-ED           BRAZIL                         [52-58) kg           NA                 0.1863141   -0.2847947    0.6574230
24 months   MAL-ED           INDIA                          >=58 kg              NA                -1.5467719   -1.8195560   -1.2739879
24 months   MAL-ED           INDIA                          <52 kg               NA                -2.0032918   -2.1551129   -1.8514707
24 months   MAL-ED           INDIA                          [52-58) kg           NA                -1.8201885   -2.1315951   -1.5087819
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -1.0412362   -1.2388723   -0.8436001
24 months   MAL-ED           NEPAL                          <52 kg               NA                -1.6799208   -1.8953531   -1.4644885
24 months   MAL-ED           NEPAL                          [52-58) kg           NA                -1.2668603   -1.4492406   -1.0844800
24 months   MAL-ED           PERU                           >=58 kg              NA                -1.4421054   -1.6134578   -1.2707530
24 months   MAL-ED           PERU                           <52 kg               NA                -1.9982782   -2.1966620   -1.7998944
24 months   MAL-ED           PERU                           [52-58) kg           NA                -1.7711849   -2.0878334   -1.4545364
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -1.5075179   -1.6648041   -1.3502318
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               NA                -2.1567670   -2.5202466   -1.7932874
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           NA                -1.8712442   -2.2347598   -1.5077287
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -2.4362766   -2.6475126   -2.2250406
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -2.8240731   -3.0482785   -2.5998677
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -2.6472218   -2.9245200   -2.3699237
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.7132672   -2.0110773   -1.4154571
24 months   NIH-Birth        BANGLADESH                     <52 kg               NA                -2.3701387   -2.4855095   -2.2547679
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.8850462   -2.1483246   -1.6217679
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -1.0885118   -1.2336687   -0.9433548
24 months   NIH-Crypto       BANGLADESH                     <52 kg               NA                -1.6120463   -1.7292795   -1.4948131
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           NA                -1.4001750   -1.6042008   -1.1961493
24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0923249   -0.4072131    0.2225634
24 months   PROBIT           BELARUS                        <52 kg               NA                -0.4649514   -0.8180451   -0.1118577
24 months   PROBIT           BELARUS                        [52-58) kg           NA                -0.2375513   -0.5783174    0.1032148
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -1.1443212   -1.3201927   -0.9684497
24 months   PROVIDE          BANGLADESH                     <52 kg               NA                -1.8730978   -1.9723416   -1.7738540
24 months   PROVIDE          BANGLADESH                     [52-58) kg           NA                -1.2310737   -1.4549170   -1.0072304
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.4102873   -1.4887739   -1.3318007
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.9742109   -2.0984386   -1.8499831
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.7218394   -1.8321766   -1.6115022


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
Birth       JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.2077472   -0.3055728   -0.1099215
Birth       JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0548266   -0.1674986    0.0578455
Birth       MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.4890357   -0.8573930   -0.1206785
Birth       MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0825602   -0.3505733    0.5156937
Birth       MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.5037731   -1.3201700    0.3126239
Birth       MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.2593146   -1.0133921    0.4947630
Birth       MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <52 kg               >=58 kg           -0.3631034   -1.1080734    0.3818665
Birth       MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.7275000   -1.8333306    0.3783306
Birth       MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <52 kg               >=58 kg           -1.0890278   -1.8261822   -0.3518733
Birth       MAL-ED           NEPAL                          [52-58) kg           >=58 kg            0.1392222   -0.5940778    0.8725223
Birth       MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <52 kg               >=58 kg           -0.6324949   -0.9028751   -0.3621147
Birth       MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.3510875   -0.6424491   -0.0597258
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.5013509   -1.2227194    0.2200175
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3385282   -0.8938259    0.2167695
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.5302361   -1.0151378   -0.0453343
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0808695   -0.6229158    0.4611769
Birth       NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3441092   -0.6033711   -0.0848474
Birth       NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0562378   -0.4065352    0.2940595
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.1687844   -0.3520578    0.0144891
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0965439   -0.3237427    0.1306548
Birth       PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <52 kg               >=58 kg           -0.4647074   -0.5459202   -0.3834945
Birth       PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.2287077   -0.2828067   -0.1746086
Birth       PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.5971897   -0.7905688   -0.4038105
Birth       PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.4063348   -0.6927436   -0.1199260
Birth       SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.6310017   -0.8069032   -0.4551003
Birth       SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.2634914   -0.5065447   -0.0204380
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.4224770   -0.4809814   -0.3639727
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2204318   -0.2758287   -0.1650349
6 months    JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.1530248   -0.2583725   -0.0476771
6 months    JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg           -0.0103974   -0.1384511    0.1176564
6 months    LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4858753   -0.6988343   -0.2729162
6 months    LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0910735   -0.3293270    0.1471800
6 months    MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.3972412   -0.6993122   -0.0951702
6 months    MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.1263302   -0.2112391    0.4638996
6 months    MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.1335890   -0.5164577    0.2492797
6 months    MAL-ED           BRAZIL                         [52-58) kg           >=58 kg           -0.0976196   -0.5428947    0.3476556
6 months    MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <52 kg               >=58 kg           -0.2170465   -0.4920208    0.0579278
6 months    MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.1901980   -0.5449527    0.1645567
6 months    MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.5446695   -0.8287111   -0.2606280
6 months    MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.1193447   -0.3699194    0.1312300
6 months    MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <52 kg               >=58 kg           -0.3723949   -0.6207414   -0.1240485
6 months    MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.2461716   -0.5572387    0.0648955
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.5086918   -0.9119946   -0.1053891
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2748417   -0.6582328    0.1085495
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3489137   -0.6324236   -0.0654037
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0503522   -0.3622646    0.2615601
6 months    NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.4756034   -0.7532423   -0.1979645
6 months    NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0303261   -0.3498699    0.2892178
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.1669893   -0.3386672    0.0046886
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.0886800   -0.3177385    0.1403786
6 months    PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3845960   -0.4631955   -0.3059964
6 months    PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1800555   -0.2359254   -0.1241856
6 months    PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.5260110   -0.7270795   -0.3249424
6 months    PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0494680   -0.3252323    0.2262964
6 months    SAS-CompFeed     INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <52 kg               >=58 kg           -0.6755121   -0.8022451   -0.5487791
6 months    SAS-CompFeed     INDIA                          [52-58) kg           >=58 kg           -0.1836519   -0.4620742    0.0947704
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4517864   -0.5802278   -0.3233449
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1269442   -0.2494070   -0.0044813
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5653185   -0.6327782   -0.4978588
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.3326234   -0.3943296   -0.2709171
24 months   JiVitA-3         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <52 kg               >=58 kg           -0.1718282   -0.3068281   -0.0368282
24 months   JiVitA-3         BANGLADESH                     [52-58) kg           >=58 kg            0.0038716   -0.1631834    0.1709265
24 months   LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4643397   -0.6805937   -0.2480857
24 months   LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0903550   -0.3363403    0.1556303
24 months   MAL-ED           BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <52 kg               >=58 kg           -0.6482516   -0.9349979   -0.3615054
24 months   MAL-ED           BANGLADESH                     [52-58) kg           >=58 kg            0.0326732   -0.3116244    0.3769708
24 months   MAL-ED           BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <52 kg               >=58 kg           -0.0717723   -0.5389682    0.3954236
24 months   MAL-ED           BRAZIL                         [52-58) kg           >=58 kg            0.1875421   -0.3324392    0.7075234
24 months   MAL-ED           INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <52 kg               >=58 kg           -0.4565199   -0.7704505   -0.1425893
24 months   MAL-ED           INDIA                          [52-58) kg           >=58 kg           -0.2734165   -0.6892094    0.1423763
24 months   MAL-ED           NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <52 kg               >=58 kg           -0.6386846   -0.9314991   -0.3458701
24 months   MAL-ED           NEPAL                          [52-58) kg           >=58 kg           -0.2256241   -0.4931768    0.0419286
24 months   MAL-ED           PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <52 kg               >=58 kg           -0.5561728   -0.8199181   -0.2924275
24 months   MAL-ED           PERU                           [52-58) kg           >=58 kg           -0.3290795   -0.6890208    0.0308619
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <52 kg               >=58 kg           -0.6492491   -1.0454774   -0.2530208
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3637263   -0.7601498    0.0326972
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3877965   -0.6991613   -0.0764317
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.2109452   -0.5624020    0.1405115
24 months   NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.6568716   -0.9762686   -0.3374746
24 months   NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1717791   -0.5679227    0.2243645
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <52 kg               >=58 kg           -0.5235345   -0.7106807   -0.3363884
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg           >=58 kg           -0.3116633   -0.5625508   -0.0607758
24 months   PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3726265   -0.6872316   -0.0580215
24 months   PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1452265   -0.5023965    0.2119436
24 months   PROVIDE          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <52 kg               >=58 kg           -0.7287765   -0.9302391   -0.5273139
24 months   PROVIDE          BANGLADESH                     [52-58) kg           >=58 kg           -0.0867525   -0.3708675    0.1973625
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5639236   -0.7106474   -0.4171998
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.3115521   -0.4471868   -0.1759174


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.1926141   -0.2875020   -0.0977262
Birth       MAL-ED           BANGLADESH                     >=58 kg              NA                -0.3329634   -0.6308783   -0.0350485
Birth       MAL-ED           BRAZIL                         >=58 kg              NA                -0.2486839   -0.5280962    0.0307284
Birth       MAL-ED           INDIA                          >=58 kg              NA                -0.3802326   -1.0182919    0.2578268
Birth       MAL-ED           NEPAL                          >=58 kg              NA                -0.2711111   -0.7538568    0.2116346
Birth       MAL-ED           PERU                           >=58 kg              NA                -0.3398615   -0.5010390   -0.1786839
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1330686   -0.2813040    0.0151668
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.2687943   -0.5433871    0.0057984
Birth       NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2555010   -0.4788728   -0.0321293
Birth       NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.1217873   -0.2586722    0.0150976
Birth       PROBIT           BELARUS                        >=58 kg              NA                -0.0742382   -0.0852436   -0.0632328
Birth       PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4682266   -0.6294261   -0.3070271
Birth       SAS-CompFeed     INDIA                          >=58 kg              NA                -0.5262965   -0.6843314   -0.3682617
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1422145   -0.1643950   -0.1200341
6 months    JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.1375621   -0.2398401   -0.0352841
6 months    LCNI-5           MALAWI                         >=58 kg              NA                -0.3190844   -0.5000977   -0.1380712
6 months    MAL-ED           BANGLADESH                     >=58 kg              NA                -0.2428865   -0.4809924   -0.0047807
6 months    MAL-ED           BRAZIL                         >=58 kg              NA                -0.0455116   -0.1516205    0.0605974
6 months    MAL-ED           INDIA                          >=58 kg              NA                -0.1701914   -0.3899153    0.0495325
6 months    MAL-ED           NEPAL                          >=58 kg              NA                -0.2260524   -0.3804600   -0.0716448
6 months    MAL-ED           PERU                           >=58 kg              NA                -0.2196691   -0.3709857   -0.0683525
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1058792   -0.1911121   -0.0206463
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1432982   -0.3019412    0.0153447
6 months    NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3507843   -0.5892139   -0.1123546
6 months    NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.1183200   -0.2437849    0.0071450
6 months    PROBIT           BELARUS                        >=58 kg              NA                -0.0592818   -0.0727569   -0.0458066
6 months    PROVIDE          BANGLADESH                     >=58 kg              NA                -0.3594994   -0.5257922   -0.1932066
6 months    SAS-CompFeed     INDIA                          >=58 kg              NA                -0.5519270   -0.6822223   -0.4216318
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0981596   -0.1356349   -0.0606843
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.2023650   -0.2274760   -0.1772540
24 months   JiVitA-3         BANGLADESH                     >=58 kg              NA                -0.1555290   -0.2867768   -0.0242813
24 months   LCNI-5           MALAWI                         >=58 kg              NA                -0.3054319   -0.4872446   -0.1236192
24 months   MAL-ED           BANGLADESH                     >=58 kg              NA                -0.4079538   -0.6370313   -0.1788763
24 months   MAL-ED           BRAZIL                         >=58 kg              NA                 0.0071407   -0.1226348    0.1369161
24 months   MAL-ED           INDIA                          >=58 kg              NA                -0.3376971   -0.5930454   -0.0823488
24 months   MAL-ED           NEPAL                          >=58 kg              NA                -0.2663515   -0.4300474   -0.1026557
24 months   MAL-ED           PERU                           >=58 kg              NA                -0.3103656   -0.4639657   -0.1567654
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg              NA                -0.1357050   -0.2249050   -0.0465050
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.2092841   -0.3850700   -0.0334983
24 months   NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.5057907   -0.7811309   -0.2304505
24 months   NIH-Crypto       BANGLADESH                     >=58 kg              NA                -0.3527528   -0.4843497   -0.2211560
24 months   PROBIT           BELARUS                        >=58 kg              NA                -0.0515903   -0.1287078    0.0255272
24 months   PROVIDE          BANGLADESH                     >=58 kg              NA                -0.4559387   -0.6194367   -0.2924407
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1967624   -0.2520066   -0.1415183
