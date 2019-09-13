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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        hdlvry    swasted   n_cell      n
----------  -------------------------  -----------------------------  -------  --------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0       83     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1        3     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0        0     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1        2     88
Birth       ki1000108-IRC              INDIA                          0               0      285    343
Birth       ki1000108-IRC              INDIA                          0               1       52    343
Birth       ki1000108-IRC              INDIA                          1               0        4    343
Birth       ki1000108-IRC              INDIA                          1               1        2    343
Birth       ki1000109-EE               PAKISTAN                       0               0        1      1
Birth       ki1000109-EE               PAKISTAN                       0               1        0      1
Birth       ki1000109-EE               PAKISTAN                       1               0        0      1
Birth       ki1000109-EE               PAKISTAN                       1               1        0      1
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               0        6    160
Birth       ki1000304b-SAS-CompFeed    INDIA                          0               1        0    160
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0      149    160
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1        5    160
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0       18     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1        1     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0        4     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        0     23
Birth       ki1135781-COHORTS          INDIA                          0               0     2642   4389
Birth       ki1135781-COHORTS          INDIA                          0               1      121   4389
Birth       ki1135781-COHORTS          INDIA                          1               0     1539   4389
Birth       ki1135781-COHORTS          INDIA                          1               1       87   4389
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0        8    263
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1        0    263
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0      253    263
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1        2    263
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0       42    681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1        1    681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0      634    681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1        4    681
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0      345    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1       12    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0        8    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1        0    365
6 months    ki1000108-IRC              INDIA                          0               0      379    408
6 months    ki1000108-IRC              INDIA                          0               1       21    408
6 months    ki1000108-IRC              INDIA                          1               0        7    408
6 months    ki1000108-IRC              INDIA                          1               1        1    408
6 months    ki1000109-EE               PAKISTAN                       0               0      245    374
6 months    ki1000109-EE               PAKISTAN                       0               1        7    374
6 months    ki1000109-EE               PAKISTAN                       1               0      120    374
6 months    ki1000109-EE               PAKISTAN                       1               1        2    374
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               0      144   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          0               1        3   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      907   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       34   1088
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0       74    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               1        2    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0      287    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       17    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      429    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1        4    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      148    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        1    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      554    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1        0    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      161    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1        0    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1876   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       12   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       32   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0   1920
6 months    ki1113344-GMS-Nepal        NEPAL                          0               0      127    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0               1        2    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      394    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        4    527
6 months    ki1135781-COHORTS          INDIA                          0               0     2823   4694
6 months    ki1135781-COHORTS          INDIA                          0               1       73   4694
6 months    ki1135781-COHORTS          INDIA                          1               0     1722   4694
6 months    ki1135781-COHORTS          INDIA                          1               1       76   4694
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0       39    334
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1        0    334
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0      289    334
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1        6    334
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     1076   4042
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1        6   4042
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     2938   4042
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1       22   4042
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0      359    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1        2    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0        8    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1        0    369
24 months   ki1000108-IRC              INDIA                          0               0      396    409
24 months   ki1000108-IRC              INDIA                          0               1        5    409
24 months   ki1000108-IRC              INDIA                          1               0        8    409
24 months   ki1000108-IRC              INDIA                          1               1        0    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      426    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1        6    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      143    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        3    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0      388    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1        3    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      122    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1        1    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0               0      116    466
24 months   ki1113344-GMS-Nepal        NEPAL                          0               1        4    466
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      336    466
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       10    466
24 months   ki1135781-COHORTS          INDIA                          0               0     2199   3533
24 months   ki1135781-COHORTS          INDIA                          0               1       15   3533
24 months   ki1135781-COHORTS          INDIA                          1               0     1297   3533
24 months   ki1135781-COHORTS          INDIA                          1               1       22   3533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0       34    289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1        0    289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0      246    289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1        9    289
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     1007   3993
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1       25   3993
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     2875   3993
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1       86   3993


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
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/50ba1b4f-c28a-42ae-8e0c-5d0bc8b71d9b/c6148cd9-9a19-4a7c-a5d0-fb0116500924/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/50ba1b4f-c28a-42ae-8e0c-5d0bc8b71d9b/c6148cd9-9a19-4a7c-a5d0-fb0116500924/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/50ba1b4f-c28a-42ae-8e0c-5d0bc8b71d9b/c6148cd9-9a19-4a7c-a5d0-fb0116500924/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/50ba1b4f-c28a-42ae-8e0c-5d0bc8b71d9b/c6148cd9-9a19-4a7c-a5d0-fb0116500924/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS   INDIA        0                    NA                0.0440910   0.0358458   0.0523362
Birth       ki1135781-COHORTS   INDIA        1                    NA                0.0611269   0.0477915   0.0744623
6 months    ki1135781-COHORTS   INDIA        0                    NA                0.0273813   0.0209122   0.0338505
6 months    ki1135781-COHORTS   INDIA        1                    NA                0.0422760   0.0322344   0.0523176
6 months    kiGH5241-JiVitA-4   BANGLADESH   0                    NA                0.0055453   0.0008107   0.0102799
6 months    kiGH5241-JiVitA-4   BANGLADESH   1                    NA                0.0074324   0.0015459   0.0133190
24 months   ki1135781-COHORTS   INDIA        0                    NA                0.0071407   0.0034862   0.0107953
24 months   ki1135781-COHORTS   INDIA        1                    NA                0.0156480   0.0089668   0.0223292
24 months   kiGH5241-JiVitA-4   BANGLADESH   0                    NA                0.0239309   0.0144722   0.0333896
24 months   kiGH5241-JiVitA-4   BANGLADESH   1                    NA                0.0290400   0.0222017   0.0358783


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS   INDIA        NA                   NA                0.0473912   0.0411045   0.0536779
6 months    ki1135781-COHORTS   INDIA        NA                   NA                0.0317427   0.0267269   0.0367584
6 months    kiGH5241-JiVitA-4   BANGLADESH   NA                   NA                0.0069273   0.0024440   0.0114105
24 months   ki1135781-COHORTS   INDIA        NA                   NA                0.0104727   0.0071155   0.0138299
24 months   kiGH5241-JiVitA-4   BANGLADESH   NA                   NA                0.0277986   0.0219343   0.0336630


### Parameter: RR


agecat      studyid             country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  ------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
Birth       ki1135781-COHORTS   INDIA        0                    0                 1.000000   1.0000000   1.000000
Birth       ki1135781-COHORTS   INDIA        1                    0                 1.386380   1.0401921   1.847784
6 months    ki1135781-COHORTS   INDIA        0                    0                 1.000000   1.0000000   1.000000
6 months    ki1135781-COHORTS   INDIA        1                    0                 1.543972   1.1042874   2.158722
6 months    kiGH5241-JiVitA-4   BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4   BANGLADESH   1                    0                 1.340315   0.4160078   4.318297
24 months   ki1135781-COHORTS   INDIA        0                    0                 1.000000   1.0000000   1.000000
24 months   ki1135781-COHORTS   INDIA        1                    0                 2.191373   1.1252921   4.267441
24 months   kiGH5241-JiVitA-4   BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4   BANGLADESH   1                    0                 1.213494   0.7828519   1.881031


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1135781-COHORTS   INDIA        0                    NA                0.0033002   -0.0023939   0.0089943
6 months    ki1135781-COHORTS   INDIA        0                    NA                0.0043613   -0.0004569   0.0091796
6 months    kiGH5241-JiVitA-4   BANGLADESH   0                    NA                0.0013820   -0.0041754   0.0069393
24 months   ki1135781-COHORTS   INDIA        0                    NA                0.0033320    0.0002991   0.0063648
24 months   kiGH5241-JiVitA-4   BANGLADESH   0                    NA                0.0038678   -0.0043026   0.0120382


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1135781-COHORTS   INDIA        0                    NA                0.0696374   -0.0584395   0.1822163
6 months    ki1135781-COHORTS   INDIA        0                    NA                0.1373963   -0.0269204   0.2754208
6 months    kiGH5241-JiVitA-4   BANGLADESH   0                    NA                0.1994983   -1.0071943   0.6807469
24 months   ki1135781-COHORTS   INDIA        0                    NA                0.3181564   -0.0151365   0.5420215
24 months   kiGH5241-JiVitA-4   BANGLADESH   0                    NA                0.1391356   -0.2082058   0.3866215
