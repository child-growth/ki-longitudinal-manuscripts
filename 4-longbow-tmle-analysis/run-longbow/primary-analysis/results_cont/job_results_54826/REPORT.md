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

agecat      studyid                    country                        mwtkg         n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           37     209  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg           131     209  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        41     209  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg           33      61  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg            14      61  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        14      61  whz              
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg            6      41  whz              
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg            28      41  whz              
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg         7      41  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg            9      26  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg             7      26  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg        10      26  whz              
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg           82     221  whz              
Birth       ki0047075b-MAL-ED          PERU                           <52 kg            81     221  whz              
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg        58     221  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg           69     100  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            10     100  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        21     100  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           44     113  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            40     113  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        29     113  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           89    1091  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg           824    1091  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       178    1091  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           79     575  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg           414     575  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        82     575  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg           89     510  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg           326     510  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg        95     510  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          183     704  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           381     704  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       140     704  whz              
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg        10233   13707  whz              
Birth       ki1119695-PROBIT           BELARUS                        <52 kg          1124   13707  whz              
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg      2350   13707  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         5455   10286  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          2142   10286  whz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2689   10286  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          427   17995  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         16351   17995  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1217   17995  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           46     241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg           154     241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        41     241  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg          137     208  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg            37     208  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        34     208  whz              
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg           40     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg           146     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg        49     235  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg           79     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg            75     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg        82     236  whz              
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg          100     272  whz              
6 months    ki0047075b-MAL-ED          PERU                           <52 kg           107     272  whz              
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg        65     272  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          179     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            29     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        41     249  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg          103    1329  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg          1011    1329  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       215    1329  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           71     537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           385     537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        81     537  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          108     602  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           385     602  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       109     602  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          184     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           383     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     715  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1988  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           324    1988  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1988  whz              
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         9740   13065  whz              
6 months    ki1119695-PROBIT           BELARUS                        <52 kg          1083   13065  whz              
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      2242   13065  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4255    8110  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1713    8110  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2142    8110  whz              
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg          114     837  whz              
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg           504     837  whz              
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg       219     837  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          408   16775  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         15216   16775  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1151   16775  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           40     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg           135     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        37     212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg          109     168  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg            28     168  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        31     168  whz              
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg           38     226  whz              
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg           141     226  whz              
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg        47     226  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg           76     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg            74     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg        78     228  whz              
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg           77     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           <52 kg            75     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg        49     201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          168     234  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            28     234  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        38     234  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           56     428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg           308     428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        64     428  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          112     578  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           362     578  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       104     578  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          138     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           273     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       103     514  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6  whz              
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         2958    3950  whz              
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           322    3950  whz              
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       670    3950  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          170     421  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg           132     421  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg       119     421  whz              
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           73     562  whz              
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           337     562  whz              
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg       152     562  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          195    8598  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg          7835    8598  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg       568    8598  whz              


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
![](/tmp/14d823f1-f761-49d4-a291-881b51210f8f/d34eb0df-91e0-4da1-ae18-f50534b50177/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/14d823f1-f761-49d4-a291-881b51210f8f/d34eb0df-91e0-4da1-ae18-f50534b50177/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/14d823f1-f761-49d4-a291-881b51210f8f/d34eb0df-91e0-4da1-ae18-f50534b50177/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.6367414   -0.9233556   -0.3501273
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.0066419   -1.1987095   -0.8145744
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -1.0176367   -1.3692824   -0.6659909
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.6886660    0.3139995    1.0633325
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.1456823   -0.7203906    1.0117553
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                -0.0133852   -0.7736638    0.7468934
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.5266667   -1.1151354    0.0618020
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.0517857   -1.4197431   -0.6838283
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.0100000   -1.5034877   -0.5165123
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.4577778   -0.9265727    0.0110172
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.8900000   -1.4411585   -0.3388415
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.9630000   -1.6574487   -0.2685513
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0100776   -0.1871165    0.2072718
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.1678026   -0.3662131    0.0306079
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.1066045   -0.1502456    0.3634547
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1299631   -0.4088484    0.1489221
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -0.1099366   -0.7376842    0.5178109
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -0.2655697   -0.9388835    0.4077441
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.6640880    0.3576092    0.9705668
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.7943525    0.4674847    1.1212202
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.7337189    0.3193071    1.1481306
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.1804183   -0.4755307    0.1146940
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.7343983   -0.8848472   -0.5839493
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.5764765   -0.8214206   -0.3315324
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0838448   -1.3731328   -0.7945568
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.4010750   -1.5107724   -1.2913776
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.2473597   -1.5402829   -0.9544366
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -1.1758634   -1.3844918   -0.9672350
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.3447526   -1.4423709   -1.2471343
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -1.2676229   -1.4472809   -1.0879649
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.8887825   -1.0515204   -0.7260445
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.4431361   -1.5611839   -1.3250883
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.1985793   -1.3801040   -1.0170546
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -1.1123000   -1.3261525   -0.8984476
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               NA                -1.2667958   -1.4828879   -1.0507037
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -1.2162779   -1.4195146   -1.0130412
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3675299   -0.4080844   -0.3269754
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7078730   -0.7712850   -0.6444610
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5563227   -0.6125971   -0.5000483
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.6604395   -0.7603020   -0.5605770
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -0.7881053   -0.8074975   -0.7687131
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -0.6901693   -0.7572853   -0.6230533
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0591870   -0.4268515    0.3084774
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.2348214   -0.3867326   -0.0829101
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                 0.1960463   -0.1388738    0.5309664
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 1.0207050    0.8092628    1.2321471
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.9223642    0.5358293    1.3088991
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.7244366    0.3117253    1.1371479
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4436834   -0.6643215   -0.2230454
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.8417392   -1.0182302   -0.6652481
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.5057017   -0.7445880   -0.2668155
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.3794702    0.1388395    0.6201008
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.2429282   -0.4796595   -0.0061970
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                 0.1619113   -0.0466474    0.3704700
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 1.3069513    1.0950949    1.5188078
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                 0.9220144    0.7261823    1.1178464
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.8779567    0.6226050    1.1333084
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.6471424    0.4661473    0.8281375
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.0238662   -0.4290515    0.4767838
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.3663917   -0.0364092    0.7691925
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.5573541    0.3433261    0.7713820
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.4343796    0.2079676    0.6607917
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.6630259    0.4280193    0.8980325
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.4415713   -0.7903368   -0.0928059
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.6946346   -0.8087073   -0.5805619
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.6619204   -0.8383608   -0.4854800
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2129565   -0.4245311   -0.0013819
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.5249837   -0.6319743   -0.4179932
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.3027114   -0.5665778   -0.0388450
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.2991150    0.0747326    0.5234975
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.3776548   -0.4772307   -0.2780789
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.0896298   -0.2904259    0.1111662
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.2229772    0.0462991    0.3996553
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.1327945   -0.2406798   -0.0249091
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                 0.1285625   -0.0440185    0.3011434
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1228326    0.0554743    0.1901909
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0552925   -0.1869327    0.0763477
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.0000920   -0.1230737    0.1232578
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.6088956    0.5506388    0.6671524
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.4340701    0.3252146    0.5429256
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.5341212    0.4636043    0.6046380
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.4260835    0.3902416    0.4619254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0169470   -0.0431169    0.0770109
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                 0.2475070    0.1961892    0.2988248
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.6601950    0.4845858    0.8358042
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                 0.3785295    0.2849448    0.4721142
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.4813544    0.3441101    0.6185987
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.4668040   -0.5734334   -0.3601745
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -0.6019860   -0.6221232   -0.5818487
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -0.5262648   -0.5940457   -0.4584839
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.4501605   -0.7568906   -0.1434303
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.9366200   -1.0781064   -0.7951336
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.6215969   -0.9606672   -0.2825267
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.5707985    0.3110206    0.8305763
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.2794688   -0.1342669    0.6932046
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0680251   -0.4361903    0.5722404
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.5628061   -0.8341772   -0.2914350
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.0712868   -1.2217993   -0.9207742
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.9029783   -1.0961619   -0.7097947
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.1166758   -0.3294701    0.0961184
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.6946820   -0.8915846   -0.4977794
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.3778984   -0.5541773   -0.2016195
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.3407136    0.1664825    0.5149446
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.0684906   -0.2964947    0.1595135
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.1135582   -0.1558901    0.3830066
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.4653637    0.3231746    0.6075528
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.1140230   -0.2313492    0.4593952
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.2712064   -0.0482346    0.5906474
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2242745    0.0204795    0.4280695
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1098650   -0.3131918    0.0934618
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.0391000   -0.2150253    0.2932252
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4943034   -0.7195888   -0.2690179
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0353604   -1.1526397   -0.9180811
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.5925851   -0.8281411   -0.3570291
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4195164   -0.6534753   -0.1855576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.1375820   -1.2312715   -1.0438926
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.6497071   -0.8642492   -0.4351650
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.2367024   -0.4444754   -0.0289293
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.8398313   -0.9605782   -0.7190843
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.4729769   -0.6970950   -0.2488588
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.7276966    0.6095797    0.8458135
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.5348874    0.3294428    0.7403320
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.5927809    0.4510405    0.7345213
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.2228002   -1.3854084   -1.0601920
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2479332   -1.4238617   -1.0720048
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0668249   -1.2525455   -0.8811042
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.2495146   -0.0025756    0.5016048
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -0.1568697   -0.2610596   -0.0526797
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.0755141   -0.0825911    0.2336194
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -1.1688777   -1.3092450   -1.0285105
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -1.3079504   -1.3324685   -1.2834324
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -1.2052691   -1.3071581   -1.1033802


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9533493   -1.0984355   -0.8082631
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4018033    0.0834093    0.7201973
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9678049   -1.2522118   -0.6833979
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0429864   -0.1658406    0.0798678
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1930000   -0.4278634    0.0418634
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7583186    0.5636385    0.9529987
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6660770   -0.8389738   -0.4931801
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.3060980   -1.3843247   -1.2278714
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2434730   -1.3276901   -1.1592559
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1429853   -1.3532634   -0.9327073
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4824198   -0.5113303   -0.4535093
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7780622   -0.7970926   -0.7590319
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9648518    0.8004118    1.1292917
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7034149   -0.8300527   -0.5767771
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0548591    0.9328922    1.1768259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5291499    0.3751396    0.6831602
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6660835   -0.8034722   -0.5286949
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0780261    0.0247830    0.1312691
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5834072    0.5254491    0.6413653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2987004    0.2725093    0.3248915
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4518519    0.3806435    0.5230602
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5934435   -0.6129939   -0.5738931
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4443651    0.2404149    0.6483153
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9519248   -1.0678488   -0.8360007
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3916417    0.2704414    0.5128421
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6888304    0.5749159    0.8027449
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1835154   -1.2835950   -1.0834359
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0466281   -0.1286250    0.0353688
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2974564   -1.3207535   -1.2741592


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.3699005   -0.7158638   -0.0239373
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.3808952   -0.8348530    0.0730626
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.5429837   -1.4921062    0.4061388
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.7020513   -1.5516328    0.1475303
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.5251190   -1.2191566    0.1689185
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.4833333   -1.2513343    0.2846676
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.4322222   -1.1557859    0.2913414
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.5052222   -1.3430932    0.3326487
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.1778802   -0.4593689    0.1036085
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg            0.0965269   -0.2279055    0.4209592
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg            0.0200265   -0.6613561    0.7014091
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.1356066   -0.8631245    0.5919114
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.1302645   -0.3205017    0.5810307
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0696309   -0.4459031    0.5851649
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.5539799   -0.7745708   -0.3333890
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.3960582   -0.5648231   -0.2272933
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3172302   -0.6257701   -0.0086903
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1635150   -0.5750731    0.2480432
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.1688892   -0.3992567    0.0614783
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.0917595   -0.3670349    0.1835159
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.5543537   -0.7555621   -0.3531452
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.3097968   -0.5535278   -0.0660659
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1544958   -0.2522082   -0.0567834
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1039779   -0.1637497   -0.0442061
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3403431   -0.4156131   -0.2650730
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1887928   -0.2580932   -0.1194924
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.1276658   -0.2278246   -0.0275071
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0297298   -0.1482629    0.0888033
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.1756343   -0.5726113    0.2213426
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.2552334   -0.2422003    0.7526671
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0983408   -0.5370334    0.3403518
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.2962683   -0.7597318    0.1671951
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.3980557   -0.6811044   -0.1150070
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.0620183   -0.3872437    0.2632071
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.6223984   -0.9601539   -0.2846430
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2175589   -0.5367214    0.1016036
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.3849370   -0.6737402   -0.0961337
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.4289946   -0.7605536   -0.0974357
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.6232763   -1.1111834   -0.1353692
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2807507   -0.7232483    0.1617468
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1229745   -0.4353696    0.1894207
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.1056718   -0.2117770    0.4231206
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.2530633   -0.5113553    0.0052287
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.2203491   -0.4478685    0.0071703
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3120272   -0.5496849   -0.0743695
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0897549   -0.4289317    0.2494220
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.6767698   -0.9238031   -0.4297365
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.3887448   -0.6908523   -0.0866374
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.3557717   -0.5641062   -0.1474372
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0944147   -0.3417156    0.1528862
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1781252   -0.3260770   -0.0301733
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1227406   -0.2632644    0.0177831
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1748255   -0.2623540   -0.0872970
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0747744   -0.1264009   -0.0231480
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.4091365   -0.4790284   -0.3392446
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1785765   -0.2411554   -0.1159977
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.2816655   -0.4808395   -0.0824915
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1788406   -0.4018985    0.0442173
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.1351820   -0.2431032   -0.0272608
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0594608   -0.1896624    0.0707408
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.4864595   -0.8238392   -0.1490799
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.1714365   -0.6305062    0.2876333
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.2913296   -0.7817193    0.1990600
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.5027734   -1.0701549    0.0646082
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.5084807   -0.8194675   -0.1974939
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.3401722   -0.6750827   -0.0052617
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5780061   -0.8704790   -0.2855333
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2612226   -0.5371456    0.0147005
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.4092042   -0.6996673   -0.1187411
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2271554   -0.5489996    0.0946889
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.3513407   -0.7246614    0.0219800
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.1941573   -0.5445277    0.1562131
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3341395   -0.6231745   -0.0451045
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1851745   -0.5088586    0.1385096
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.5410570   -0.7923737   -0.2897403
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0982817   -0.4221929    0.2256294
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.7180656   -0.9693576   -0.4667737
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.2301907   -0.5479307    0.0875493
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.6031289   -0.8439216   -0.3623362
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.2362746   -0.5428777    0.0703286
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1928092   -0.3710534   -0.0145650
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1349157   -0.2635994   -0.0062320
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0251330   -0.2643079    0.2140419
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.1559754   -0.0904619    0.4024127
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4063843   -0.6788309   -0.1339376
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1740004   -0.4721045    0.1241037
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.1390727   -0.2821401    0.0039947
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0363914   -0.2157147    0.1429319


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.3166078   -0.5927797   -0.0404360
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.2868628   -0.5828884    0.0091629
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4411382   -1.0119516    0.1296752
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.3106838   -0.7526063    0.1312387
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.0530641   -0.2154461    0.1093180
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0630369   -0.2330955    0.1070218
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.0942306   -0.1503237    0.3387849
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.4856587   -0.6702573   -0.3010600
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2660770   -0.5355711    0.0034172
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.1302346   -0.3181917    0.0577224
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3546906   -0.4977879   -0.2115932
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0306853   -0.0468327   -0.0145380
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1148899   -0.1425491   -0.0872307
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.1176228   -0.2150207   -0.0202248
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0784893   -0.4069991    0.2500205
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0558532   -0.1738001    0.0620937
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.2597314   -0.4791471   -0.0403158
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2690394   -0.4642790   -0.0737998
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2520923   -0.4221928   -0.0819917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1179925   -0.2179244   -0.0180606
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0211328   -0.1920684    0.1498028
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.2245122   -0.4538039    0.0047795
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2344473   -0.4388815   -0.0300131
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4978221   -0.7015851   -0.2940591
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1932150   -0.3456812   -0.0407487
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0448066   -0.0861119   -0.0035012
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0254884   -0.0372259   -0.0137509
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1273832   -0.1528061   -0.1019602
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2083432   -0.3747780   -0.0419084
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.1266395   -0.2319540   -0.0213251
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.3691320   -0.6458507   -0.0924132
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.1264334   -0.2792315    0.0263648
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.3891187   -0.6404262   -0.1378112
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2582364   -0.4269198   -0.0895531
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2295154   -0.3908173   -0.0682135
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0737219   -0.1527614    0.0053175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1694770   -0.3314298   -0.0075242
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4172757   -0.6332249   -0.2013264
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4719196   -0.6823275   -0.2615116
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3736478   -0.5482964   -0.1989992
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0388662   -0.0719562   -0.0057763
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0392848   -0.0817902    0.1603598
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2961427   -0.5299644   -0.0623210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.1285786   -0.2679689    0.0108116
