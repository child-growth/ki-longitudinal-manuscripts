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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hdlvry    n_cell      n
----------  -------------------------  -----------------------------  -------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             86     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              2     88
Birth       ki1000108-IRC              INDIA                          0            337    343
Birth       ki1000108-IRC              INDIA                          1              6    343
Birth       ki1000109-EE               PAKISTAN                       0              1      1
Birth       ki1000109-EE               PAKISTAN                       1              0      1
Birth       ki1000304b-SAS-CompFeed    INDIA                          0              6    160
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            154    160
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             19     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              4     23
Birth       ki1135781-COHORTS          INDIA                          0           2763   4389
Birth       ki1135781-COHORTS          INDIA                          1           1626   4389
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              8    263
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            255    263
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0             43    681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            638    681
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            357    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    365
6 months    ki1000108-IRC              INDIA                          0            400    408
6 months    ki1000108-IRC              INDIA                          1              8    408
6 months    ki1000109-EE               PAKISTAN                       0            252    374
6 months    ki1000109-EE               PAKISTAN                       1            122    374
6 months    ki1000304b-SAS-CompFeed    INDIA                          0            147   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            941   1088
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             76    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            304    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            433    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            149    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            554    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            161    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1888   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1920
6 months    ki1113344-GMS-Nepal        NEPAL                          0            129    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1            398    527
6 months    ki1135781-COHORTS          INDIA                          0           2896   4694
6 months    ki1135781-COHORTS          INDIA                          1           1798   4694
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             39    334
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            295    334
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1082   4042
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2960   4042
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            361    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    369
24 months   ki1000108-IRC              INDIA                          0            401    409
24 months   ki1000108-IRC              INDIA                          1              8    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            432    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            146    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            391    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            123    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0            120    466
24 months   ki1113344-GMS-Nepal        NEPAL                          1            346    466
24 months   ki1135781-COHORTS          INDIA                          0           2214   3533
24 months   ki1135781-COHORTS          INDIA                          1           1319   3533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             34    289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            255    289
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1032   3993
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2961   3993


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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




# Results Detail

## Results Plots
![](/tmp/a8215ff4-8b1e-419c-8520-ff95e69293ab/bab565dd-0134-4f31-a8c8-af1614ba015c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a8215ff4-8b1e-419c-8520-ff95e69293ab/bab565dd-0134-4f31-a8c8-af1614ba015c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a8215ff4-8b1e-419c-8520-ff95e69293ab/bab565dd-0134-4f31-a8c8-af1614ba015c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.9918991   -1.1804921   -0.8033061
Birth       ki1000108-IRC              INDIA                          1                    NA                -2.0600000   -3.2141159   -0.9058841
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.2883333   -0.2883333   -0.2883333
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.2725325   -0.5663796    0.0213146
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.9731621   -1.0203563   -0.9259679
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -1.0056511   -1.0688267   -0.9424755
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1862500   -0.7425559    0.3700559
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.8360392   -0.9570005   -0.7150779
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1744798   -0.6017001    0.2527405
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.3781078   -0.4589946   -0.2972211
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.5089262   -0.6640006   -0.3538519
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.3072917   -0.9616161    0.3470328
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.5926333   -0.7305001   -0.4547666
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.9137500   -1.5807163   -0.2467837
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.6884381   -0.8310437   -0.5458325
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -0.7697326   -0.9509595   -0.5885058
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.4341789   -0.5428942   -0.3254636
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.7040005   -0.8519652   -0.5560358
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.8010127   -1.0618062   -0.5402193
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.0736662   -1.2049649   -0.9423676
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1942413   -0.2924013   -0.0960812
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2692616   -0.4396856   -0.0988375
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0633722   -0.0257063    0.1524506
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0870940   -0.2615987    0.0874108
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0682596    0.0132186    0.1233006
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1977771   -0.0928865    0.4884406
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.5039093   -0.6855407   -0.3222779
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.6303751   -0.7319043   -0.5288458
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.6598265   -0.7037812   -0.6158718
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.8096460   -0.8723905   -0.7469014
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.5460163   -0.9110600   -0.1809726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6290154   -0.7408813   -0.5171494
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2659917   -0.3460381   -0.1859452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.4127100   -0.4649198   -0.3605002
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.5487673   -0.6500596   -0.4474751
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.3150000   -0.8468853    0.2168853
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.7384331   -0.8312559   -0.6456103
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.1158333   -1.4387631   -0.7929036
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8625219   -0.9578765   -0.7671672
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9679190   -1.1356705   -0.8001675
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.5663259   -0.6769531   -0.4556986
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.7532998   -0.9331058   -0.5734937
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1131082   -1.3088650   -0.9173514
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1278304   -1.2326176   -1.0230433
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.5385130   -0.5832615   -0.4937645
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.8506899   -0.9109764   -0.7904035
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.0787990   -1.6721700   -0.4854279
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3455292   -1.4847358   -1.2063226
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.1816223   -1.2516376   -1.1116070
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.2631184   -1.3032138   -1.2230231


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.2731250   -0.5556221    0.0093721
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9755867   -1.0106993   -0.9404741
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.8162738   -0.9311489   -0.7013987
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3701909   -0.4509242   -0.2894576
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5045068   -0.6566169   -0.3523968
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7158824   -0.8295258   -0.6022389
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6734421   -0.8121314   -0.5347528
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0688763    0.0147308    0.1230218
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6002688   -0.6889771   -0.5115605
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.7160077   -0.7492815   -0.6827338
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.6044910   -0.7122040   -0.4967781
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3760651   -0.4191017   -0.3330285
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5436992   -0.6434110   -0.4439874
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1197461   -1.2105714   -1.0289207
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6520577   -0.6860033   -0.6181122
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2989273   -1.4377964   -1.1600583
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2421463   -1.2763113   -1.2079812


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 -1.0681009   -2.2375241    0.1013224
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0158009   -0.2780462    0.3096480
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -0.0324890   -0.1112007    0.0462227
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.6497892   -1.2375156   -0.0620629
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.2036280   -0.6400156    0.2327595
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2016346   -0.4708151    0.8740843
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.3211167   -1.0021830    0.3599496
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.0812946   -0.3115142    0.1489251
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2698216   -0.4413566   -0.0982867
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.2726535   -0.5644166    0.0191097
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0750203   -0.2720072    0.1219666
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1504662   -0.3474240    0.0464917
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1295175   -0.1661455    0.4251804
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.1264657   -0.3347681    0.0818366
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.1498195   -0.2262416   -0.0733974
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0829991   -0.4542296    0.2882314
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1467183   -0.2400874   -0.0533492
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2337673   -0.3076771    0.7752117
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.3774002   -0.7134057   -0.0413948
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1053971   -0.2981054    0.0873112
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1869739   -0.3982185    0.0242706
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0147223   -0.2371922    0.2077477
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.3121769   -0.3870651   -0.2372888
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.2667303   -0.8419221    0.3084616
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0814961   -0.1609521   -0.0020400


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0186840   -0.0514705    0.0141025
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0152083   -0.2672888    0.2977055
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.0024246   -0.0331301    0.0282809
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.6300238   -1.2012946   -0.0587529
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1957111   -0.6056842    0.2142620
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0044194   -0.0126632    0.0215020
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0062964   -0.0238639    0.0112711
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0274443   -0.1032396    0.0483510
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.2392632   -0.3886169   -0.0899096
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.2111452   -0.4512912    0.0290009
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0141293   -0.0638152    0.0355566
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0336099   -0.0778327    0.0106128
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0006167   -0.0066504    0.0078838
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0963595   -0.2552075    0.0624885
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0561812   -0.0861486   -0.0262138
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0584747   -0.4005928    0.2836434
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1100734   -0.1774606   -0.0426863
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0050681   -0.0089078    0.0190440
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0073819   -0.0171941    0.0024303
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0254193   -0.0739742    0.0231355
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0440243   -0.0950381    0.0069895
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0066379   -0.1772467    0.1639710
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.1135447   -0.1437268   -0.0833627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2201284   -0.7546581    0.3144014
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0605239   -0.1192726   -0.0017752
