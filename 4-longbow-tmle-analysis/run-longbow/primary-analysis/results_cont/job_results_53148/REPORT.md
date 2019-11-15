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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          500   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         20479   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1453   22432
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          407   16802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         15243   16802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1152   16802
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          197    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg          7859    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg       571    8627


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
![](/tmp/56a0c7b6-b3ef-4c4a-a6eb-83e34d50492c/b4b45266-8be4-49b2-ae80-52b17467b89a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/56a0c7b6-b3ef-4c4a-a6eb-83e34d50492c/b4b45266-8be4-49b2-ae80-52b17467b89a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/56a0c7b6-b3ef-4c4a-a6eb-83e34d50492c/b4b45266-8be4-49b2-ae80-52b17467b89a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.8640638   -1.2117963   -0.5163313
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.2212095   -1.3923714   -1.0500476
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.7311467   -1.0347713   -0.4275221
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.4371504   -0.8053503   -0.0689505
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -1.2010646   -1.7894505   -0.6126788
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                -0.7668545   -1.3087221   -0.2249869
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.8500000   -1.5073907   -0.1926093
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.2131034   -1.5635569   -0.8626500
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.5775000   -2.4667124   -0.6882876
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.5822222   -1.1447657   -0.0196787
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -1.6712500   -2.1476338   -1.1948662
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.4430000   -0.9133974    0.0273974
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.6060392   -0.8276722   -0.3844062
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.1639403   -1.3373126   -0.9905681
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -0.8676721   -1.0674381   -0.6679062
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.4207239   -0.6468398   -0.1946079
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -1.7223144   -2.2989701   -1.1456587
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -0.7093628   -1.2364947   -0.1822309
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.9452955   -1.2837152   -0.6068757
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.4328349   -1.7857939   -1.0798759
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.0046016   -1.4260744   -0.5831288
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.8898972   -1.0530403   -0.7267541
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -1.5281036   -1.6181723   -1.4380348
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -1.1572862   -1.3208097   -0.9937627
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.6257486   -0.8811785   -0.3703187
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0238877   -1.1272373   -0.9205381
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.7764671   -1.0408449   -0.5120893
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4438073   -0.6308881   -0.2567266
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.0354838   -1.1207885   -0.9501790
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.7876517   -0.9987573   -0.5765461
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.7472578   -0.8974955   -0.5970201
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.9961664   -1.0934939   -0.8988389
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.9250957   -1.0904750   -0.7597164
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 1.3973828    1.2356297    1.5591359
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.9304207    0.7686745    1.0921670
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 1.1912057    1.0439383    1.3384732
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3498526   -0.3815494   -0.3181558
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7680707   -0.8183301   -0.7178113
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5740655   -0.6202812   -0.5278497
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -1.3506332   -1.4524532   -1.2488132
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -1.6074114   -1.6269263   -1.5878965
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -1.4282729   -1.4942199   -1.3623260
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.9679552   -1.2297892   -0.7061211
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.3600704   -1.5122911   -1.2078497
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.8122395   -1.0351437   -0.5893353
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0889521   -0.0950118    0.2729159
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.1316059   -0.4472932    0.1840814
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                -0.0474315   -0.4367062    0.3418433
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.0171585   -1.2523027   -0.7820143
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.2443971   -1.3997823   -1.0890118
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.2006892   -1.4679976   -0.9333809
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.3365601   -0.5188163   -0.1543038
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.8905193   -1.1076922   -0.6733465
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.4647560   -0.6350197   -0.2944923
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.1199043   -1.3100960   -0.9297125
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.4460544   -1.6008492   -1.2912595
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.3289938   -1.5745663   -1.0834213
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.9720385   -1.1228849   -0.8211922
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -1.4549604   -1.8313317   -1.0785891
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.2153070   -1.5624117   -0.8682023
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -1.2230513   -1.4255213   -1.0205813
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.5714387   -1.7735855   -1.3692919
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.2701499   -1.5143129   -1.0259869
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.7320633   -0.8771405   -0.5869861
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -1.5453447   -1.6305019   -1.4601875
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -1.0112457   -1.1482207   -0.8742707
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0733592   -1.3360209   -0.8106974
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.5442257   -1.6495468   -1.4389045
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.0950587   -1.2858956   -0.9042218
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.7255154   -0.9045262   -0.5465045
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.2583788   -1.3432696   -1.1734880
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.8181902   -1.0243954   -0.6119849
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0847601   -1.2226346   -0.9468855
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.2879743   -1.3864949   -1.1894537
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.1476758   -1.3162504   -0.9791013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.4429449   -0.5068121   -0.3790778
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.8903895   -1.0040481   -0.7767309
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.6041470   -0.7074513   -0.5008427
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.1656563    0.0670191    0.2642935
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.2157621   -0.3723446   -0.0591797
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.0387139   -0.0672175    0.1446453
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.6713290   -0.7072669   -0.6353910
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2612114   -1.3187868   -1.2036360
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0150043   -1.0656597   -0.9643490
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.3251066   -1.5124148   -1.1377984
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -1.8232579   -1.9105731   -1.7359426
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.4419196   -1.5775398   -1.3062995
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -1.1218650   -1.2315885   -1.0121414
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -1.3326548   -1.3558286   -1.3094811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -1.1428804   -1.2244027   -1.0613582
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -1.5331618   -1.7778382   -1.2884854
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -2.2273586   -2.3885326   -2.0661847
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -1.5648340   -1.8304181   -1.2992499
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0032764   -0.2237102    0.2171574
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.1707058   -0.6076860    0.2662743
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.1429445   -0.2518396    0.5377285
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.5321612   -1.8225399   -1.2417826
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.9962613   -2.1492149   -1.8433078
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.8364160   -2.1383032   -1.5345288
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -1.0260622   -1.2290142   -0.8231103
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -1.6663748   -1.8853131   -1.4474366
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -1.2524180   -1.4306213   -1.0742147
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.4562568   -1.6433061   -1.2692074
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -2.0058910   -2.2045374   -1.8072446
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.7927017   -2.1044181   -1.4809854
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -1.5052134   -1.6632000   -1.3472268
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -2.1732964   -2.5320685   -1.8145243
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.8609576   -2.2303283   -1.4915870
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -2.4512387   -2.6673720   -2.2351054
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -2.8419012   -3.0739351   -2.6098674
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -2.6179231   -2.9026807   -2.3331655
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.8040684   -2.1072013   -1.5009355
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -2.3790614   -2.4950901   -2.2630327
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.8986649   -2.1671760   -1.6301538
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -1.0145488   -1.1972853   -0.8318123
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.8806588   -1.9803203   -1.7809974
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -1.2390440   -1.4373949   -1.0406930
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0793240   -1.2274988   -0.9311492
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.6425190   -1.7611336   -1.5239045
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.3862403   -1.5873620   -1.1851186
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0795082   -0.4095996    0.2505831
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.4163032   -0.7833150   -0.0492914
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -0.2309502   -0.6038293    0.1419289
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.4017964   -1.4803793   -1.3232135
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.9963799   -2.1241915   -1.8685684
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.7257981   -1.8371872   -1.6144089
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.6020195   -1.7873333   -1.4167056
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -2.0459153   -2.1512296   -1.9406011
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.6691802   -1.8247249   -1.5136355
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -1.8118014   -1.9431434   -1.6804594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -2.0330916   -2.0610768   -2.0051064
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -1.8142336   -1.9227213   -1.7057459


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5896135   -1.6088760   -1.5703510
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0497516   -0.0948051    0.1943083
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2059574   -1.3243030   -1.0876119
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3241023   -1.4325083   -1.2156964
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0727443   -1.2024880   -0.9430006
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4003907   -1.4819787   -1.3188027
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424765   -0.5918460   -0.4931071
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1143882    0.0212298    0.2075466
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8785195   -0.9045379   -0.8525011
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6584707   -1.7281551   -1.5887863
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3134847   -1.3366230   -1.2903464
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0059127   -0.1637934    0.1756188
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8844690   -2.0097879   -1.7591502
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6432229   -1.7795844   -1.5068615
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1312742   -0.4286264    0.1660780
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6070497   -1.6645093   -1.5495902
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8854671   -1.9666281   -1.8043062
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0134183   -2.0410747   -1.9857620


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.3571457   -0.7453098    0.0310183
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.1329171   -0.3284469    0.5942812
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.7639142   -1.4597960   -0.0680325
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.3297041   -0.9891001    0.3296919
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.3631034   -1.1080734    0.3818665
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.7275000   -1.8333306    0.3783306
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -1.0890278   -1.8261822   -0.3518733
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg            0.1392222   -0.5940778    0.8725223
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.5579011   -0.8416884   -0.2741139
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2616329   -0.5610544    0.0377885
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -1.3015906   -1.9251168   -0.6780643
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2886389   -0.8647750    0.2874972
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4875394   -0.9789016    0.0038228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0593061   -0.6022222    0.4836099
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.6382064   -0.7974505   -0.4789622
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.2673890   -0.4831308   -0.0516472
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3981391   -0.6745566   -0.1217217
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1507185   -0.5196246    0.2181875
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.5916764   -0.7972191   -0.3861338
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.3438444   -0.6239238   -0.0637649
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.2489086   -0.4283193   -0.0694979
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.1778378   -0.4009167    0.0452411
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.4669621   -0.5628525   -0.3710717
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.2061771   -0.2612514   -0.1511028
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.4182181   -0.4776600   -0.3587762
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2242129   -0.2802598   -0.1681660
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.2567782   -0.3602737   -0.1532828
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0776398   -0.1945898    0.0393103
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.3921152   -0.6967843   -0.0874461
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.1557157   -0.1876271    0.4990585
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.2205580   -0.5853561    0.1442402
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.1363835   -0.5670794    0.2943123
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.2272386   -0.5087319    0.0542548
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.1835307   -0.5404777    0.1734162
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5539593   -0.8380361   -0.2698825
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1281959   -0.3779118    0.1215200
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.3261501   -0.5732012   -0.0790990
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2090895   -0.5196696    0.1014905
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.4829218   -0.8885341   -0.0773096
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2432684   -0.6226169    0.1360800
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3483874   -0.6347014   -0.0620734
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0470986   -0.3642673    0.2700701
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.8132814   -0.9549753   -0.6715876
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.2791824   -0.4977587   -0.0606061
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.4708665   -0.7540732   -0.1876597
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0216995   -0.3475924    0.3041934
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.5328634   -0.7309576   -0.3347693
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.0926748   -0.3656936    0.1803440
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.2032142   -0.3725813   -0.0338472
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0629158   -0.2806452    0.1548137
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4474445   -0.5777414   -0.3171477
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1612021   -0.2825857   -0.0398184
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3814184   -0.4969032   -0.2659336
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1269424   -0.1941083   -0.0597765
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5898824   -0.6577315   -0.5220333
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.3436754   -0.4057811   -0.2815696
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4981513   -0.7047214   -0.2915812
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1168131   -0.3482408    0.1146147
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.2107899   -0.3200762   -0.1015036
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0210155   -0.1511019    0.1090709
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.6941968   -0.9881187   -0.4002750
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0316722   -0.3934332    0.3300888
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1674294   -0.6588992    0.3240403
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.1462209   -0.3086183    0.6010601
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4641001   -0.7935110   -0.1346891
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.3042547   -0.7236622    0.1151528
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.6403126   -0.9386908   -0.3419343
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2263558   -0.4965585    0.0438470
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.5496342   -0.8238021   -0.2754664
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.3364450   -0.6998834    0.0269934
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.6680830   -1.0603278   -0.2758381
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3557442   -0.7574998    0.0460113
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3906626   -0.7088014   -0.0725238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1666844   -0.5245302    0.1911613
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.5749931   -0.8994990   -0.2504871
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0945965   -0.4999415    0.3107485
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.8661101   -1.0738713   -0.6583488
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.2244952   -0.4939716    0.0449812
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.5631951   -0.7533332   -0.3730570
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.3069163   -0.5570953   -0.0567374
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3367949   -0.6841691    0.0105792
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1514420   -0.5314136    0.2285297
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5945836   -0.7446454   -0.4445217
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.3240017   -0.4603604   -0.1876429
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4438959   -0.6571445   -0.2306473
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0671607   -0.3091190    0.1747975
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.2212902   -0.3554711   -0.0871092
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0024322   -0.1703410    0.1654765


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2138191   -0.5322167    0.1045786
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.2512871   -0.5221303    0.0195561
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.3802326   -1.0182919    0.2578268
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2711111   -0.7538568    0.2116346
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2990936   -0.4743197   -0.1238674
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1500682   -0.3033286    0.0031922
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1911799   -0.4624000    0.0800401
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.5321821   -0.6762389   -0.3881253
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3052712   -0.5461346   -0.0644077
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4487072   -0.6208740   -0.2765403
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1616585   -0.2944151   -0.0289019
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0701808   -0.0809591   -0.0594025
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1468313   -0.1691966   -0.1244660
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.2389803   -0.3394632   -0.1384974
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2370379   -0.4809457    0.0068699
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0392005   -0.1446437    0.0662428
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.1887989   -0.4158756    0.0382778
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2250219   -0.3799533   -0.0700905
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2041981   -0.3587485   -0.0496477
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1007058   -0.1863201   -0.0150914
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1456936   -0.3059839    0.0145966
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.6683274   -0.8053865   -0.5312682
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3340229   -0.5778154   -0.0902304
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.3640148   -0.5265141   -0.2015154
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1139183   -0.2357561    0.0079196
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0995316   -0.1371773   -0.0618859
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0512681   -0.0663880   -0.0361482
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.2071905   -0.2323860   -0.1819951
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3333641   -0.5078392   -0.1588890
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.1916197   -0.2975823   -0.0856572
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.4452344   -0.6824700   -0.2079989
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0091891   -0.1237000    0.1420782
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.3523078   -0.6225046   -0.0821109
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2815255   -0.4497612   -0.1132897
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2962142   -0.4624295   -0.1299989
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1380095   -0.2276471   -0.0483719
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1943221   -0.3710559   -0.0175883
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4149895   -0.6953100   -0.1346690
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.5857112   -0.7545357   -0.4168867
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3619406   -0.4966964   -0.2271849
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0517660   -0.1271085    0.0235766
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.2052534   -0.2608189   -0.1496878
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2834477   -0.4619282   -0.1049671
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.2016169   -0.3319879   -0.0712460
