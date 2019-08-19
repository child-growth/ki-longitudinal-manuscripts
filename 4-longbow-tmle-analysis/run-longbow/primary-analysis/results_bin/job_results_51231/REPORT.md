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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        hdlvry    wasted   n_cell      n
----------  -------------------------  -----------------------------  -------  -------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              0       74     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              1       12     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0        0     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              1        2     88
Birth       ki1000108-IRC              INDIA                          0              0      249    343
Birth       ki1000108-IRC              INDIA                          0              1       88    343
Birth       ki1000108-IRC              INDIA                          1              0        2    343
Birth       ki1000108-IRC              INDIA                          1              1        4    343
Birth       ki1000109-EE               PAKISTAN                       0              0        1      1
Birth       ki1000109-EE               PAKISTAN                       0              1        0      1
Birth       ki1000109-EE               PAKISTAN                       1              0        0      1
Birth       ki1000109-EE               PAKISTAN                       1              1        0      1
Birth       ki1000304b-SAS-CompFeed    INDIA                          0              0        5    160
Birth       ki1000304b-SAS-CompFeed    INDIA                          0              1        1    160
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              0      144    160
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              1       10    160
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              0       16     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              1        3     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              0        4     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              1        0     23
Birth       ki1135781-COHORTS          INDIA                          0              0     2284   4389
Birth       ki1135781-COHORTS          INDIA                          0              1      479   4389
Birth       ki1135781-COHORTS          INDIA                          1              0     1344   4389
Birth       ki1135781-COHORTS          INDIA                          1              1      282   4389
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              0        8    263
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1        0    263
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              0      226    263
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              1       29    263
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              0       41    681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              1        2    681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              0      604    681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1       34    681
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0      312    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              1       45    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              0        7    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              1        1    365
6 months    ki1000108-IRC              INDIA                          0              0      347    408
6 months    ki1000108-IRC              INDIA                          0              1       53    408
6 months    ki1000108-IRC              INDIA                          1              0        7    408
6 months    ki1000108-IRC              INDIA                          1              1        1    408
6 months    ki1000109-EE               PAKISTAN                       0              0      219    374
6 months    ki1000109-EE               PAKISTAN                       0              1       33    374
6 months    ki1000109-EE               PAKISTAN                       1              0      107    374
6 months    ki1000109-EE               PAKISTAN                       1              1       15    374
6 months    ki1000304b-SAS-CompFeed    INDIA                          0              0      135   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          0              1       12   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              0      821   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              1      120   1088
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0              0       68    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0              1        8    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              0      243    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              1       61    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0              0      412    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0              1       21    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              0      146    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              1        3    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              0      538    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              1       16    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              0      156    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              1        5    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              0     1807   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1       81   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       30   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        2   1920
6 months    ki1113344-GMS-Nepal        NEPAL                          0              0      118    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0              1       11    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1              0      361    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1       37    527
6 months    ki1135781-COHORTS          INDIA                          0              0     2571   4694
6 months    ki1135781-COHORTS          INDIA                          0              1      325   4694
6 months    ki1135781-COHORTS          INDIA                          1              0     1501   4694
6 months    ki1135781-COHORTS          INDIA                          1              1      297   4694
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              0       37    334
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              1        2    334
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              0      274    334
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              1       21    334
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0              0     1033   4042
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0              1       49   4042
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              0     2792   4042
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              1      168   4042
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0      339    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              1       22    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              0        8    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              1        0    369
24 months   ki1000108-IRC              INDIA                          0              0      370    409
24 months   ki1000108-IRC              INDIA                          0              1       31    409
24 months   ki1000108-IRC              INDIA                          1              0        8    409
24 months   ki1000108-IRC              INDIA                          1              1        0    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0              0      385    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0              1       47    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              0      128    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              1       18    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              0      360    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              1       31    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              0      109    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              1       14    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              0        6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0              0       95    466
24 months   ki1113344-GMS-Nepal        NEPAL                          0              1       25    466
24 months   ki1113344-GMS-Nepal        NEPAL                          1              0      287    466
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1       59    466
24 months   ki1135781-COHORTS          INDIA                          0              0     2075   3533
24 months   ki1135781-COHORTS          INDIA                          0              1      139   3533
24 months   ki1135781-COHORTS          INDIA                          1              0     1125   3533
24 months   ki1135781-COHORTS          INDIA                          1              1      194   3533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              0       27    289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1        7    289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              0      199    289
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              1       56    289
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0              0      823   3993
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0              1      209   3993
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              0     2363   3993
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              1      598   3993


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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/da9a6d14-7d5b-454b-b6bb-262801799489/e878235e-a307-4a50-a5eb-d630e3fe9c68/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/da9a6d14-7d5b-454b-b6bb-262801799489/e878235e-a307-4a50-a5eb-d630e3fe9c68/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/da9a6d14-7d5b-454b-b6bb-262801799489/e878235e-a307-4a50-a5eb-d630e3fe9c68/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/da9a6d14-7d5b-454b-b6bb-262801799489/e878235e-a307-4a50-a5eb-d630e3fe9c68/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                0.1742546   0.1593308   0.1891784
Birth       ki1135781-COHORTS          INDIA        1                    NA                0.1831038   0.1620019   0.2042058
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.1314409   0.0896512   0.1732306
6 months    ki1000109-EE               PAKISTAN     1                    NA                0.1220844   0.0634913   0.1806775
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0652664   0.0351565   0.0953762
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.1276495   0.1029424   0.1523566
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.1052632   0.0361757   0.1743506
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.2006579   0.1555785   0.2457373
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0288809   0.0149256   0.0428361
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0310559   0.0042420   0.0578698
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0887004   0.0375617   0.1398391
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0910874   0.0628999   0.1192748
6 months    ki1135781-COHORTS          INDIA        0                    NA                0.1187494   0.1060272   0.1314716
6 months    ki1135781-COHORTS          INDIA        1                    NA                0.1575154   0.1393797   0.1756511
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0459206   0.0295544   0.0622867
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0564461   0.0443434   0.0685487
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1087569   0.0792963   0.1382175
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1227903   0.0693527   0.1762279
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0793908   0.0526058   0.1061759
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1191670   0.0624646   0.1758694
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2135808   0.1381574   0.2890041
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1709496   0.1307379   0.2111613
24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0692687   0.0574949   0.0810425
24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1417276   0.1213178   0.1621375
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.2058824   0.0691344   0.3426304
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.2196078   0.1605007   0.2787149
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.2013623   0.1702580   0.2324666
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.2013892   0.1846773   0.2181012


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA        NA                   NA                0.1733880   0.1621865   0.1845895
6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.1283422   0.0943991   0.1622853
6 months    ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.1213235   0.0974115   0.1452356
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.0910816   0.0664930   0.1156701
6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.1325096   0.1228094   0.1422097
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0536863   0.0440214   0.0633512
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1802575   0.1453188   0.2151962
24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0942542   0.0846183   0.1038901
24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.2179931   0.1635507   0.2724354
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2021037   0.1874836   0.2167238


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA        1                    0                 1.0507831   0.9103856   1.212832
6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE               PAKISTAN     1                    0                 0.9288160   0.5223998   1.651416
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.9558231   1.2026353   3.180718
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.9062500   0.9525832   3.814668
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.0753106   0.3997909   2.892244
6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.0269106   0.5330869   1.978187
6 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA        1                    0                 1.3264520   1.1337242   1.551943
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.2292111   0.8169036   1.849619
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.1290342   0.6761823   1.885169
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.5010167   0.8372269   2.691088
24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 0.8003979   0.5234324   1.223915
24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA        1                    0                 2.0460555   1.6379312   2.555872
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    0                 1.0666667   0.5204438   2.186168
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.0001337   0.8380715   1.193535


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                -0.0008666   -0.0105136   0.0087804
6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0030986   -0.0265676   0.0203703
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0560571    0.0236760   0.0884383
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0763158    0.0102090   0.1424226
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0004898   -0.0063172   0.0072967
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0023812   -0.0428858   0.0476482
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0137602    0.0046323   0.0228881
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0077657   -0.0061538   0.0216853
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0036998   -0.0117258   0.0191255
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0081578   -0.0067915   0.0231071
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0333232   -0.0979110   0.0312646
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0249855    0.0155087   0.0344622
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0121107   -0.1194466   0.1436680
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0007414   -0.0257347   0.0272174


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                -0.0049980   -0.0621998   0.0491233
6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0241436   -0.2242726   0.1432708
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.4620467    0.1611255   0.6550214
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.4202899   -0.0708179   0.6861615
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0166753   -0.2445475   0.2230690
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0261435   -0.6221801   0.4153569
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.1038428    0.0325100   0.1699163
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1446504   -0.1574517   0.3679019
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0328999   -0.1143359   0.1606816
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0931802   -0.0926170   0.2473830
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.1848647   -0.6024904   0.1239234
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.2650861    0.1606860   0.3565002
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0555556   -0.7867351   0.5007792
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0036683   -0.1363577   0.1264397
