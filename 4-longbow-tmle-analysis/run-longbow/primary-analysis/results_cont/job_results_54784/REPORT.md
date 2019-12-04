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

agecat      studyid                    country                        mwtkg         n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -----------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           38     222  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg           143     222  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        41     222  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg           34      64  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg            15      64  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        15      64  haz              
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg            6      43  haz              
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg            29      43  haz              
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg         8      43  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg            9      27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg             8      27  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg        10      27  haz              
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg           83     226  haz              
Birth       ki0047075b-MAL-ED          PERU                           <52 kg            84     226  haz              
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg        59     226  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg           69     101  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            10     101  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        22     101  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           47     122  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            45     122  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        30     122  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           91    1236  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg           949    1236  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       196    1236  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           80     608  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg           441     608  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        87     608  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg           91     517  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg           330     517  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg        96     517  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          186     729  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           395     729  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     729  haz              
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg        10274   13767  haz              
Birth       ki1119695-PROBIT           BELARUS                        <52 kg          1131   13767  haz              
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg      2362   13767  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         5757   11031  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          2365   11031  haz              
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2909   11031  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          500   22432  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         20479   22432  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1453   22432  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           46     241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg           154     241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        41     241  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg          137     208  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg            37     208  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        34     208  haz              
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg           40     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg           146     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg        49     235  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg           79     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg            75     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg        82     236  haz              
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg          100     272  haz              
6 months    ki0047075b-MAL-ED          PERU                           <52 kg           107     272  haz              
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg        65     272  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          179     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            29     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        41     249  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg          103    1331  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg          1014    1331  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       214    1331  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           71     537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           385     537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        81     537  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          109     603  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           385     603  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       109     603  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          184     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           383     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     715  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1989  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           325    1989  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1989  haz              
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         9742   13068  haz              
6 months    ki1119695-PROBIT           BELARUS                        <52 kg          1083   13068  haz              
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      2243   13068  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4363    8254  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1726    8254  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2165    8254  haz              
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg          114     837  haz              
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg           504     837  haz              
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg       219     837  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          407   16802  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         15243   16802  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1152   16802  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           40     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg           135     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        37     212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg          109     168  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg            28     168  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        31     168  haz              
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg           38     226  haz              
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg           141     226  haz              
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg        47     226  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg           76     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg            74     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg        78     228  haz              
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg           77     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           <52 kg            75     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg        49     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          168     234  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            28     234  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        38     234  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           57     429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg           308     429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        64     429  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          111     577  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           362     577  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       104     577  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          138     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           273     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       103     514  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6  haz              
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         3011    4013  haz              
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           325    4013  haz              
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       677    4013  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          833    1588  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg           334    1588  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg       421    1588  haz              
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           77     578  haz              
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           348     578  haz              
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg       153     578  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          197    8627  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg          7859    8627  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg       571    8627  haz              


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
![](/tmp/9513c68f-cc25-4d10-a8a8-886c8ae317a1/66106fb7-d0b6-4a01-aa7a-1cc2c69c55ae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9513c68f-cc25-4d10-a8a8-886c8ae317a1/66106fb7-d0b6-4a01-aa7a-1cc2c69c55ae/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9513c68f-cc25-4d10-a8a8-886c8ae317a1/66106fb7-d0b6-4a01-aa7a-1cc2c69c55ae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.8654428   -1.2293642   -0.5015213
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.2189493   -1.3895300   -1.0483687
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.7336822   -1.0520797   -0.4152847
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.4284655   -0.8032441   -0.0536869
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -1.2021504   -1.8963669   -0.5079340
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                -0.9478832   -1.5402927   -0.3554736
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.8500000   -1.5073907   -0.1926093
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.2131034   -1.5635569   -0.8626500
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.5775000   -2.4667124   -0.6882876
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.5822222   -1.1447657   -0.0196787
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -1.6712500   -2.1476338   -1.1948662
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.4430000   -0.9133974    0.0273974
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.6005757   -0.8220562   -0.3790952
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.1713432   -1.3567024   -0.9859839
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -0.8679374   -1.0721260   -0.6637489
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.4362248   -0.6640179   -0.2084316
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -1.2830516   -1.8575560   -0.7085472
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -0.7489711   -1.2677092   -0.2302329
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.9243377   -1.2658097   -0.5828658
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.4357159   -1.7974666   -1.0739652
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.9732300   -1.3588137   -0.5876462
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.8898972   -1.0530403   -0.7267541
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -1.5281036   -1.6181723   -1.4380348
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -1.1572862   -1.3208097   -0.9937627
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.6606054   -0.9152733   -0.4059375
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0226542   -1.1262012   -0.9191072
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.7661895   -1.0264905   -0.5058885
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4684100   -0.6615075   -0.2753124
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.0257457   -1.1104969   -0.9409944
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.7641207   -0.9742815   -0.5539599
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.7610892   -0.9087917   -0.6133867
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.9927866   -1.0906582   -0.8949149
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.9206064   -1.0849541   -0.7562587
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 1.3969549    1.2349812    1.5589285
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.9337575    0.7758431    1.0916718
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 1.1902083    1.0431371    1.3372795
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3516055   -0.3833186   -0.3198924
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7737443   -0.8232076   -0.7242810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5722266   -0.6183742   -0.5260791
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -1.3516004   -1.4545978   -1.2486030
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -1.6074296   -1.6269485   -1.5879108
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -1.4273739   -1.4938561   -1.3608917
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.9342612   -1.1910437   -0.6774786
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.3677372   -1.5231323   -1.2123420
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.8226515   -1.0568642   -0.5884388
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0946803   -0.0903433    0.2797040
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.1154394   -0.4242978    0.1934190
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                -0.0169901   -0.4323728    0.3983925
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.0409427   -1.2872892   -0.7945961
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.2517110   -1.4051405   -1.0982816
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.1933851   -1.4571829   -0.9295874
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.3183678   -0.5007523   -0.1359833
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.8659560   -1.0846939   -0.6472180
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.4605266   -0.6305375   -0.2905157
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.0895623   -1.2825704   -0.8965542
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.4135206   -1.5669335   -1.2601077
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.3391230   -1.5835895   -1.0946564
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.9728849   -1.1241290   -0.8216408
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -1.5128651   -1.8822659   -1.1434644
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.2287903   -1.5658852   -0.8916954
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -1.2232239   -1.4319922   -1.0144557
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.5635895   -1.7697166   -1.3574625
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.3081485   -1.5394901   -1.0768070
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.7320633   -0.8771405   -0.5869861
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -1.5453447   -1.6305019   -1.4601875
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -1.0112457   -1.1482207   -0.8742707
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0547590   -1.3154717   -0.7940463
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.5422819   -1.6473526   -1.4372112
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.1015205   -1.2900934   -0.9129475
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.7196215   -0.9019941   -0.5372489
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.2593612   -1.3434191   -1.1753032
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.8122317   -1.0191304   -0.6053330
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0830353   -1.2220391   -0.9440315
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.2904308   -1.3889474   -1.1919143
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.1381104   -1.3028196   -0.9734013
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.4423825   -0.5061526   -0.3786123
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.8914509   -1.0095595   -0.7733424
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.6012532   -0.7070263   -0.4954801
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.1657698    0.0671008    0.2644388
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.2099097   -0.3744709   -0.0453484
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.0385066   -0.0671512    0.1441645
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.6720602   -0.7078750   -0.6362454
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2508645   -1.3100494   -1.1916797
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0176952   -1.0680271   -0.9673633
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.3465735   -1.5404420   -1.1527051
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -1.8265982   -1.9142218   -1.7389745
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.4310864   -1.5666512   -1.2955215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -1.1283151   -1.2367855   -1.0198447
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -1.3325196   -1.3556975   -1.3093416
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -1.1443554   -1.2251621   -1.0635487
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -1.5289640   -1.7801287   -1.2777993
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -2.2251156   -2.3851853   -2.0650459
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -1.5734571   -1.8430726   -1.3038417
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0094106   -0.2280754    0.2092541
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.1292706   -0.5233631    0.2648219
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.1548722   -0.2135960    0.5233404
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.5375004   -1.8246189   -1.2503818
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.9935408   -2.1460908   -1.8409908
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.8332647   -2.1410900   -1.5254395
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -1.0258980   -1.2303660   -0.8214300
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -1.6538443   -1.8742963   -1.4333924
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -1.2531734   -1.4337597   -1.0725871
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.4555553   -1.6420684   -1.2690423
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.9857071   -2.1866518   -1.7847625
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.7868810   -2.1083935   -1.4653685
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -1.5104496   -1.6678333   -1.3530659
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -2.2087000   -2.5639679   -1.8534322
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.8543699   -2.2187676   -1.4899722
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -2.4501032   -2.6744501   -2.2257564
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -2.8460371   -3.0781078   -2.6139665
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -2.6133637   -2.9074109   -2.3193165
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.6913213   -1.9952487   -1.3873940
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -2.3702329   -2.4861695   -2.2542964
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.8639093   -2.1213013   -1.6065174
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -1.0308964   -1.2123701   -0.8494228
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.8759806   -1.9743370   -1.7776241
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -1.2442704   -1.4387223   -1.0498185
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0627717   -1.2065780   -0.9189653
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.6465916   -1.7632183   -1.5299648
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.3874049   -1.5896259   -1.1851839
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0797117   -0.4122876    0.2528643
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.3983633   -0.7562288   -0.0404977
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -0.2349417   -0.5934992    0.1236158
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.4064863   -1.4848102   -1.3281624
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -2.0175516   -2.1446409   -1.8904624
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.7110802   -1.8232519   -1.5989084
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.5772990   -1.7622399   -1.3923580
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -2.0380450   -2.1436179   -1.9324721
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.6692403   -1.8274810   -1.5109997
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -1.8205713   -1.9485859   -1.6925567
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               NA                -2.0332955   -2.0613088   -2.0052821
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           NA                -1.8120424   -1.9192795   -1.7048053


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.3535066   -0.7564144    0.0494012
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.1317606   -0.3517096    0.6152308
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.7736849   -1.5746795    0.0273097
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.5194176   -1.2312435    0.1924083
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.3631034   -1.1080734    0.3818665
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.7275000   -1.8333306    0.3783306
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -1.0890278   -1.8261822   -0.3518733
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg            0.1392222   -0.5940778    0.8725223
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.5707675   -0.8614731   -0.2800619
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2673618   -0.5708487    0.0361252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.8468268   -1.4664725   -0.2271812
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3127463   -0.8808812    0.2553886
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.5113782   -1.0108295   -0.0119268
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0488922   -0.5659105    0.4681260
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.6382064   -0.7974505   -0.4789622
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.2673890   -0.4831308   -0.0516472
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3620489   -0.6372819   -0.0868158
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1055841   -0.4714690    0.2603007
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.5573357   -0.7674164   -0.3472550
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.2957107   -0.5794538   -0.0119676
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.2316974   -0.4094097   -0.0539850
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.1595172   -0.3799164    0.0608820
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.4631974   -0.5541778   -0.3722170
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.2067465   -0.2611831   -0.1523100
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.4221388   -0.4809253   -0.3633523
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2206211   -0.2766175   -0.1646248
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.2558292   -0.3604841   -0.1511743
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0757734   -0.1938996    0.0423527
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.4334760   -0.7349228   -0.1320292
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.1116097   -0.2348445    0.4580638
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.2101197   -0.5700297    0.1497902
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.1116705   -0.5668160    0.3434751
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.2107684   -0.5011566    0.0796199
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.1524425   -0.5150432    0.2101583
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5475882   -0.8330698   -0.2621065
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1421588   -0.3914658    0.1071482
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.3239583   -0.5733535   -0.0745631
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2495607   -0.5616555    0.0625341
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.5399802   -0.9392195   -0.1407409
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2559054   -0.6258858    0.1140750
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3403656   -0.6342143   -0.0465170
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0849246   -0.3967653    0.2269161
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.8132814   -0.9549753   -0.6715876
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.2791824   -0.4977587   -0.0606061
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.4875229   -0.7690102   -0.2060357
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0467615   -0.3680561    0.2745331
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.5397397   -0.7404447   -0.3390346
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.0926102   -0.3680738    0.1828535
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.2073956   -0.3777641   -0.0370270
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0550752   -0.2707137    0.1605634
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4490684   -0.5832332   -0.3149037
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1588707   -0.2823739   -0.0353674
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3756795   -0.4999466   -0.2514123
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1272632   -0.1944857   -0.0600406
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5788043   -0.6479636   -0.5096449
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.3456350   -0.4074048   -0.2838652
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4800246   -0.6931264   -0.2669228
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0845129   -0.3218823    0.1528566
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.2042045   -0.3122384   -0.0961706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg           -0.0160403   -0.1446164    0.1125359
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.6961516   -0.9946478   -0.3976553
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0444931   -0.4138502    0.3248640
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1198600   -0.5720409    0.3323210
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.1642828   -0.2649647    0.5935304
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4560404   -0.7822664   -0.1298145
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.2957644   -0.7154133    0.1238846
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.6279463   -0.9293046   -0.3265881
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2272754   -0.5008256    0.0462748
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.5301518   -0.8058956   -0.2544080
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.3313257   -0.7033536    0.0407023
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.6982504   -1.0870514   -0.3094494
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3439203   -0.7405813    0.0527407
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3959339   -0.7199699   -0.0718979
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1632605   -0.5338148    0.2072939
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.6789116   -1.0039335   -0.3538897
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1725880   -0.5707922    0.2256162
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.8450841   -1.0514932   -0.6386750
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.2133740   -0.4794569    0.0527089
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.5838199   -0.7691334   -0.3985064
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.3246332   -0.5729934   -0.0762731
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3186516   -0.6640671    0.0267639
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1552301   -0.5268165    0.2163563
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.6110653   -0.7603163   -0.4618143
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.3045938   -0.4415783   -0.1676094
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4607461   -0.6739222   -0.2475700
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0919414   -0.3350778    0.1511950
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg               >=58 kg           -0.2127242   -0.3435830   -0.0818654
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg           >=58 kg            0.0085289   -0.1555842    0.1726420


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2124401   -0.5478670    0.1229868
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.2599720   -0.5419978    0.0220538
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.3802326   -1.0182919    0.2578268
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2711111   -0.7538568    0.2116346
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.3045571   -0.4806098   -0.1285044
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1345673   -0.2866075    0.0174729
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.2121377   -0.4861867    0.0619114
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.5321821   -0.6762389   -0.3881253
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2704144   -0.5102304   -0.0305983
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4241045   -0.6025726   -0.2456364
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1478271   -0.2779994   -0.0176549
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0697528   -0.0807955   -0.0587102
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1450784   -0.1674533   -0.1227035
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.2380131   -0.3396546   -0.1363716
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2707319   -0.5090944   -0.0323694
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0449287   -0.1519094    0.0620520
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.1650148   -0.4026004    0.0725708
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2432141   -0.3987366   -0.0876917
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2345400   -0.3923977   -0.0766824
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0998594   -0.1853625   -0.0143563
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1455210   -0.3120428    0.0210007
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.6683274   -0.8053865   -0.5312682
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3526231   -0.5946407   -0.1106054
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.3699086   -0.5360012   -0.2038160
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1156430   -0.2383471    0.0070610
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1000941   -0.1377673   -0.0624208
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0513816   -0.0665652   -0.0361980
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.2064593   -0.2315384   -0.1813801
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3118972   -0.4928833   -0.1309111
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.1851696   -0.2899001   -0.0804391
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.4494322   -0.6928319   -0.2060325
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0153233   -0.1153143    0.1459610
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.3469687   -0.6137464   -0.0801909
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2816897   -0.4515431   -0.1118363
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2969156   -0.4637267   -0.1301046
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1327733   -0.2220509   -0.0434957
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1954575   -0.3793016   -0.0116134
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.5277365   -0.8083840   -0.2470891
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.5693635   -0.7373585   -0.4013686
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3784929   -0.5091683   -0.2478176
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0515625   -0.1281259    0.0250008
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.2005634   -0.2558646   -0.1452623
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3081682   -0.4864669   -0.1298695
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg              NA                -0.1928471   -0.3198113   -0.0658828
