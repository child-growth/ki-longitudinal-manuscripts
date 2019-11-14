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
* hhwealth_quart
* W_nrooms
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

agecat      studyid                    country                        mwtkg         n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           38     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg           143     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        41     222
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg           34      64
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg            15      64
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        15      64
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg            6      43
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg            29      43
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg         8      43
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg            9      27
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg             8      27
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg        10      27
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg           83     226
Birth       ki0047075b-MAL-ED          PERU                           <52 kg            84     226
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg        59     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg           69     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            10     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        22     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           47     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            45     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        30     122
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           91    1236
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg           949    1236
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       196    1236
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           80     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg           441     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        87     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg           91     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg           330     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg        96     517
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          186     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           395     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     729
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg        10274   13767
Birth       ki1119695-PROBIT           BELARUS                        <52 kg          1131   13767
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg      2362   13767
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         5757   11031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          2365   11031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2909   11031
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          655   26638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         24241   26638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1742   26638
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           46     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg           154     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        41     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg          137     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg            37     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        34     208
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg           40     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg           146     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg        49     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg           79     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg            75     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg        82     236
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg          100     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg           107     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg        65     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          179     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            29     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        41     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg          103    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg          1014    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       214    1331
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           71     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           385     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        81     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          109     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           385     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       109     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           383     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           325    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1989
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         9742   13068
6 months    ki1119695-PROBIT           BELARUS                        <52 kg          1083   13068
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      2243   13068
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4363    8254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1726    8254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2165    8254
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg          114     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg           504     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg       219     837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          406   16744
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         15187   16744
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1151   16744
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           40     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg           135     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        37     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg          109     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg            28     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        31     168
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg           38     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg           141     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg        47     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg           76     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg            74     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg        78     228
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg           77     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg            75     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg        49     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          168     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            28     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        38     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           57     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg           308     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        64     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          111     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           362     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       104     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           273     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       103     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         3011    4013
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           325    4013
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       677    4013
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          833    1588
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg           334    1588
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg       421    1588
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           77     578
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           348     578
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg       153     578
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          197    8560
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg          7796    8560
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg       567    8560


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/3528688e-b530-4c97-86b2-9cde800b87dc/85473348-b6e9-42ae-8290-c9624bd58b9c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3528688e-b530-4c97-86b2-9cde800b87dc/85473348-b6e9-42ae-8290-c9624bd58b9c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3528688e-b530-4c97-86b2-9cde800b87dc/85473348-b6e9-42ae-8290-c9624bd58b9c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.8055209   -1.1140205   -0.4970213
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.2213950   -1.3897230   -1.0530670
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.7672942   -1.0677587   -0.4668298
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.4132351   -0.7957675   -0.0307028
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -1.1579320   -1.8183200   -0.4975440
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                -0.9188604   -1.4552119   -0.3825089
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.8500000   -1.5073907   -0.1926093
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.2131034   -1.5635569   -0.8626500
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.5775000   -2.4667124   -0.6882876
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.5822222   -1.1447657   -0.0196787
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -1.6712500   -2.1476338   -1.1948662
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.4430000   -0.9133974    0.0273974
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.5772066   -0.7948068   -0.3596063
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.2026765   -1.3818829   -1.0234701
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -0.8695702   -1.0833952   -0.6557453
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.4237999   -0.6512042   -0.1963957
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -1.7617306   -2.3326681   -1.1907932
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -0.6773172   -1.1726573   -0.1819771
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.8824481   -1.2063519   -0.5585442
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.4961781   -1.8770062   -1.1153500
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.9968415   -1.3341637   -0.6595193
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.8898972   -1.0530403   -0.7267541
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -1.5281036   -1.6181723   -1.4380348
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -1.1572862   -1.3208097   -0.9937627
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.6773621   -0.9309739   -0.4237503
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0233566   -1.1268381   -0.9198751
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.7518029   -1.0107549   -0.4928509
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4538520   -0.6291080   -0.2785959
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.0380621   -1.1214917   -0.9546325
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.7885208   -1.0050929   -0.5719486
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.7830127   -0.9428220   -0.6232034
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.9895364   -1.0898252   -0.8892475
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.9222397   -1.0878389   -0.7566406
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 1.3966850    1.2348963    1.5584737
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.9392618    0.7819093    1.0966144
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 1.1861819    1.0389517    1.3334121
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3521641   -0.3838673   -0.3204608
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7716838   -0.8212413   -0.7221264
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5768953   -0.6233512   -0.5304395
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.8102998   -0.9447574   -0.6758422
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -1.1924774   -1.2207808   -1.1641739
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -1.0407432   -1.1283068   -0.9531796
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.9423386   -1.1972485   -0.6874288
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.3594495   -1.5126248   -1.2062743
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.7984298   -1.0312880   -0.5655715
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.1064172   -0.0764620    0.2892964
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.1068594   -0.4239230    0.2102042
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                -0.0384029   -0.4276996    0.3508937
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.0485647   -1.3016042   -0.7955252
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.2459270   -1.3974943   -1.0943596
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.2012350   -1.4541998   -0.9482702
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.3542510   -0.5376198   -0.1708823
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.8768560   -1.0901751   -0.6635368
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.4690725   -0.6396693   -0.2984757
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.1480591   -1.3417387   -0.9543794
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.4493636   -1.6148437   -1.2838835
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.3502704   -1.5805889   -1.1199520
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.9770240   -1.1271361   -0.8269119
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -1.3769660   -1.7405683   -1.0133637
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.1864605   -1.5363006   -0.8366205
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -1.2092482   -1.4070286   -1.0114678
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.5563374   -1.7574521   -1.3552226
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.2823589   -1.5423885   -1.0223293
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.7320633   -0.8771405   -0.5869861
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -1.5453447   -1.6305019   -1.4601875
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -1.0112457   -1.1482207   -0.8742707
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.1133985   -1.3819028   -0.8448943
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.5413910   -1.6471496   -1.4356323
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.0852712   -1.2738798   -0.8966626
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.6783535   -0.8565756   -0.5001314
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.2587760   -1.3432768   -1.1742751
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.8033347   -1.0143524   -0.5923170
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0511390   -1.1964733   -0.9058048
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.2817203   -1.3795192   -1.1839215
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.1839227   -1.3485837   -1.0192617
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.4398901   -0.5038742   -0.3759060
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.8990761   -1.0144183   -0.7837340
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.6037831   -0.7091896   -0.4983766
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.1655391    0.0670688    0.2640095
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.2091439   -0.3711127   -0.0471752
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.0368127   -0.0691142    0.1427396
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.6704616   -0.7062681   -0.6346550
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2600007   -1.3173946   -1.2026067
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0104485   -1.0611107   -0.9597863
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.3558586   -1.5534613   -1.1582559
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -1.8225917   -1.9104631   -1.7347203
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.4195968   -1.5571372   -1.2820564
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -1.1512946   -1.2605887   -1.0420004
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -1.3534583   -1.3765788   -1.3303379
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -1.1718975   -1.2525415   -1.0912534
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -1.5264561   -1.7795860   -1.2733261
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -2.2227879   -2.3844727   -2.0611031
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -1.5784884   -1.8396843   -1.3172924
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0166633   -0.2332245    0.1998980
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.0704025   -0.5207581    0.3799530
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.1394856   -0.2586019    0.5375731
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.5495030   -1.8694947   -1.2295112
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -2.0098823   -2.1643259   -1.8554387
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.7377360   -2.0365455   -1.4389265
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -1.0425439   -1.2485296   -0.8365582
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -1.6663288   -1.8852531   -1.4474045
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -1.2576204   -1.4360862   -1.0791547
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.5089873   -1.6802969   -1.3376777
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -2.0304322   -2.2242445   -1.8366199
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.7460330   -2.0486539   -1.4434121
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -1.5086617   -1.6679346   -1.3493888
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -2.0829994   -2.4315933   -1.7344055
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.8085114   -2.1592744   -1.4577485
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -2.4325114   -2.6454245   -2.2195983
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -2.8575769   -3.0879050   -2.6272487
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -2.6534786   -2.9398628   -2.3670943
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.7364609   -2.0377195   -1.4352022
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -2.3809134   -2.4967372   -2.2650897
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.8745020   -2.1365170   -1.6124871
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -1.0094117   -1.1951490   -0.8236743
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.8702125   -1.9716192   -1.7688059
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -1.2439041   -1.4587984   -1.0290099
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0838646   -1.2358865   -0.9318428
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.6239997   -1.7408980   -1.5071015
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.4173621   -1.6204314   -1.2142929
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0798538   -0.4086682    0.2489605
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.4098192   -0.7571966   -0.0624419
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -0.2359294   -0.6067787    0.1349198
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.4045895   -1.4833634   -1.3258156
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -2.0073222   -2.1350287   -1.8796158
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.7182428   -1.8290168   -1.6074687
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.5724111   -1.7578810   -1.3869412
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -2.0434261   -2.1486082   -1.9382440
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.6579744   -1.8163228   -1.4996260
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -1.8244717   -1.9550303   -1.6939130
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -2.0372485   -2.0652855   -2.0092114
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -1.8357998   -1.9442377   -1.7273619


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0778829   -1.2122580   -0.9435077
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.6884375   -0.9678371   -0.4090379
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2302326   -1.5393614   -0.9211037
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.8533333   -1.2104864   -0.4961803
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9051327   -1.0238686   -0.7863969
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.5707921   -0.7685593   -0.3730248
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1364754   -1.3478823   -0.9250686
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4220793   -1.5007856   -1.3433730
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8925145   -0.9687201   -0.8163089
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9089163   -0.9806324   -0.8372002
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3272020    1.1683762    1.4860279
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4966839   -0.5196015   -0.4737663
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1731789   -1.2012047   -1.1451532
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0532131   -0.0914567    0.1978830
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2058014   -1.3242792   -1.0873236
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3285478   -1.4371840   -1.2199116
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0733534   -1.2031913   -0.9435155
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4003907   -1.4819787   -1.3188027
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424765   -0.5918460   -0.4931071
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1143882    0.0212298    0.2075466
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8785195   -0.9045379   -0.8525011
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6584707   -1.7281551   -1.5887863
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3359824   -1.3590645   -1.3129004
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0069048   -0.1627841    0.1765936
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8831195   -2.0084753   -1.7577636
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6474145   -1.7842298   -1.5105993
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6451636   -2.7802323   -2.5100948
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1312742   -0.4286264    0.1660780
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6070497   -1.6645093   -1.5495902
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8854671   -1.9666281   -1.8043062
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0193528   -2.0469684   -1.9917372


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.4158741   -0.7679497   -0.0637984
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0382267   -0.3933775    0.4698308
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.7446969   -1.5188078    0.0294140
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.5056253   -1.1776881    0.1664376
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.3631034   -1.1080734    0.3818665
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.7275000   -1.8333306    0.3783306
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -1.0890278   -1.8261822   -0.3518733
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg            0.1392222   -0.5940778    0.8725223
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.6254699   -0.9095750   -0.3413648
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2923637   -0.6003578    0.0156305
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -1.3379307   -1.9559741   -0.7198872
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2535173   -0.8034921    0.2964576
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.6137301   -1.1155841   -0.1118761
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1143935   -0.5823450    0.3535581
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.6382064   -0.7974505   -0.4789622
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.2673890   -0.4831308   -0.0516472
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3459945   -0.6207408   -0.0712482
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0744408   -0.4384296    0.2895480
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.5842101   -0.7783060   -0.3901143
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.3346688   -0.6130087   -0.0563288
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.2065236   -0.3956115   -0.0174358
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.1392270   -0.3696672    0.0912132
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.4574232   -0.5460549   -0.3687915
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.2105031   -0.2649021   -0.1561041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.4195198   -0.4783752   -0.3606643
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2247313   -0.2809791   -0.1684834
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.3821776   -0.5165592   -0.2477960
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.2304435   -0.3830307   -0.0778562
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.4171109   -0.7174732   -0.1167486
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.1439089   -0.2040863    0.4919040
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.2132766   -0.5794009    0.1528478
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.1448201   -0.5744471    0.2848068
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.1973623   -0.4919688    0.0972443
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.1526703   -0.5105221    0.2051815
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5226049   -0.8043427   -0.2408671
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1148215   -0.3657038    0.1360609
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.3013045   -0.5572541   -0.0453550
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2022114   -0.5031107    0.0986879
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.3999420   -0.7936278   -0.0062561
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2094365   -0.5905484    0.1716754
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3470892   -0.6290552   -0.0651232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0731107   -0.4003798    0.2541583
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.8132814   -0.9549753   -0.6715876
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.2791824   -0.4977587   -0.0606061
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.4279924   -0.7171752   -0.1388097
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg            0.0281273   -0.3003074    0.3565621
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.5804225   -0.7780215   -0.3828234
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.1249812   -0.4007875    0.1508251
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.2305813   -0.4058803   -0.0552823
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.1327837   -0.3522335    0.0866662
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4591860   -0.5910997   -0.3272723
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1638930   -0.2873943   -0.0403916
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3746831   -0.4946654   -0.2547007
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1287264   -0.1959631   -0.0614898
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5895391   -0.6571503   -0.5219278
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.3399869   -0.4019881   -0.2779857
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4667331   -0.6833618   -0.2501044
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0637382   -0.3059960    0.1785196
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.2021638   -0.3109432   -0.0933843
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0206029   -0.1509877    0.1097819
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.6963318   -0.9976477   -0.3950159
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0520323   -0.4185401    0.3144755
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0537393   -0.5563834    0.4489048
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.1561489   -0.3024002    0.6146980
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4603793   -0.8192866   -0.1014720
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.1882331   -0.6257083    0.2492421
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.6237849   -0.9246370   -0.3229328
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2150765   -0.4880720    0.0579189
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.5214449   -0.7808489   -0.2620409
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2370457   -0.5854327    0.1113413
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.5743377   -0.9559859   -0.1926895
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2998497   -0.6840369    0.0843374
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4250655   -0.7397580   -0.1103730
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.2209671   -0.5782468    0.1363125
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.6444526   -0.9667553   -0.3221499
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1380412   -0.5376849    0.2616025
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.8608009   -1.0725080   -0.6490938
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.2344925   -0.5182738    0.0492888
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.5401351   -0.7323689   -0.3479013
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.3334975   -0.5870716   -0.0799235
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3299654   -0.6573999   -0.0025309
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1560756   -0.5279190    0.2157677
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.6027328   -0.7529778   -0.4524877
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.3136533   -0.4498729   -0.1774336
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4710150   -0.6843755   -0.2576545
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0855633   -0.3293926    0.1582661
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.2127768   -0.3462815   -0.0792721
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0113282   -0.1778492    0.1551929


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2723620   -0.5547083    0.0099844
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.2752024   -0.5660432    0.0156385
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.3802326   -1.0182919    0.2578268
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2711111   -0.7538568    0.2116346
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.3279262   -0.4993613   -0.1564910
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1469921   -0.3017844    0.0078001
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.2540274   -0.5168132    0.0087585
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.5321821   -0.6762389   -0.3881253
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2536576   -0.4925350   -0.0147802
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4386625   -0.6018529   -0.2754721
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1259036   -0.2675476    0.0157404
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0694830   -0.0807513   -0.0582147
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1445198   -0.1669106   -0.1221290
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.3628791   -0.4931992   -0.2325591
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2631524   -0.5014449   -0.0248598
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0532041   -0.1577541    0.0513460
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.1572367   -0.3991610    0.0846876
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2068083   -0.3623415   -0.0512750
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1804887   -0.3352700   -0.0257074
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0963294   -0.1803664   -0.0122924
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1594967   -0.3174311   -0.0015623
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.6683274   -0.8053865   -0.5312682
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2939835   -0.5433863   -0.0445807
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4111766   -0.5741377   -0.2482156
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1475393   -0.2765717   -0.0185069
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1025864   -0.1404869   -0.0646859
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0511509   -0.0662064   -0.0360955
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.2080579   -0.2331333   -0.1829825
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3026121   -0.4872655   -0.1179587
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.1846879   -0.2903107   -0.0790650
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.4524590   -0.6969710   -0.2079471
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0235680   -0.1061098    0.1532458
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.3336165   -0.6313071   -0.0359259
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2693201   -0.4395002   -0.0991400
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2454903   -0.3948346   -0.0961461
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1387528   -0.2258376   -0.0516680
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.2126521   -0.3875787   -0.0377255
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4825970   -0.7609997   -0.2041943
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.5908483   -0.7640468   -0.4176498
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3574000   -0.4959489   -0.2188510
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0514204   -0.1237606    0.0209198
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.2024603   -0.2581851   -0.1467354
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3130560   -0.4917513   -0.1343608
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.1948811   -0.3244425   -0.0653197
