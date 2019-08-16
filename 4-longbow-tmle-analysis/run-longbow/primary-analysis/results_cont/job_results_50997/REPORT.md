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

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country        cleanck    n_cell     n
----------  -------------------------  -------------  --------  -------  ----
Birth       ki0047075b-MAL-ED          PERU           1               1     2
Birth       ki0047075b-MAL-ED          PERU           0               1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1               1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0               1     2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1              38    90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0              52    90
Birth       ki1000108-IRC              INDIA          1             218   378
Birth       ki1000108-IRC              INDIA          0             160   378
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1              12    20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0               8    20
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1             163   369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0             206   369
6 months    ki1000108-IRC              INDIA          1             230   398
6 months    ki1000108-IRC              INDIA          0             168   398
6 months    ki1017093b-PROVIDE         BANGLADESH     1             482   583
6 months    ki1017093b-PROVIDE         BANGLADESH     0             101   583
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1             329   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0             216   545
6 months    ki1113344-GMS-Nepal        NEPAL          1               8   504
6 months    ki1113344-GMS-Nepal        NEPAL          0             496   504
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             163   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             209   372
24 months   ki1000108-IRC              INDIA          1             231   400
24 months   ki1000108-IRC              INDIA          0             169   400
24 months   ki1017093b-PROVIDE         BANGLADESH     1             479   577
24 months   ki1017093b-PROVIDE         BANGLADESH     0              98   577
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             199   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             211   410
24 months   ki1113344-GMS-Nepal        NEPAL          1               7   446
24 months   ki1113344-GMS-Nepal        NEPAL          0             439   446


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/5577b10d-8b1d-448d-96a5-cfe7e4de96fe/3d0154ba-26a3-4ddf-9b84-224fa8bdc559/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5577b10d-8b1d-448d-96a5-cfe7e4de96fe/3d0154ba-26a3-4ddf-9b84-224fa8bdc559/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5577b10d-8b1d-448d-96a5-cfe7e4de96fe/3d0154ba-26a3-4ddf-9b84-224fa8bdc559/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.8076077   -1.0847230   -0.5304924
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -1.0681883   -1.3777088   -0.7586678
Birth       ki1000108-IRC              INDIA        1                    NA                -0.4016272   -0.5996445   -0.2036099
Birth       ki1000108-IRC              INDIA        0                    NA                -0.2179098   -0.4923522    0.0565326
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.8708333   -1.3741980   -0.3674687
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -1.1837500   -2.1056553   -0.2618447
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -1.0556571   -1.2606888   -0.8506254
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -1.6059244   -1.7874559   -1.4243928
6 months    ki1000108-IRC              INDIA        1                    NA                -1.0659530   -1.2542757   -0.8776303
6 months    ki1000108-IRC              INDIA        0                    NA                -1.4626830   -1.6372061   -1.2881598
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -1.0172936   -1.0993732   -0.9352140
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.4551751   -1.6524235   -1.2579268
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -1.1542943   -1.2687973   -1.0397913
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -1.1568557   -1.2929430   -1.0207684
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -1.1268750   -1.3633603   -0.8903897
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.3503763   -1.4349591   -1.2657936
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -2.2343741   -2.3852637   -2.0834845
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -2.8046281   -2.9359391   -2.6733170
24 months   ki1000108-IRC              INDIA        1                    NA                -1.6460243   -1.7791980   -1.5128507
24 months   ki1000108-IRC              INDIA        0                    NA                -1.9687636   -2.1011496   -1.8363776
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -1.4841101   -1.5714750   -1.3967453
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -2.0837298   -2.2985144   -1.8689451
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -1.3510120   -1.4929194   -1.2091045
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -1.3451587   -1.4744502   -1.2158671
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -1.4150000   -1.5449685   -1.2850315
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.9011314   -1.9910305   -1.8112322


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA        NA                   NA                -0.3176455   -0.4788394   -0.1564516
Birth       ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.9960000   -1.4776141   -0.5143859
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA        NA                   NA                -1.2373869   -1.3694835   -1.1052903
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.1482385   -1.2287866   -1.0676904
6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                -1.3468287   -1.4295445   -1.2641129
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA        NA                   NA                -1.7881333   -1.8826438   -1.6936229
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.3304146   -1.4194311   -1.2413981
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                -1.8935015   -1.9813928   -1.8056102


### Parameter: ATE


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.2605806   -0.6801720    0.1590109
Birth       ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        0                    1                  0.1837174   -0.1551672    0.5226019
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.3129167   -1.3632906    0.7374572
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.5502673   -0.8241787   -0.2763558
6 months    ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        0                    1                 -0.3967300   -0.6528317   -0.1406283
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.4378815   -0.6526287   -0.2231344
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.0025614   -0.1802677    0.1751449
6 months    ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.2235013   -0.4746577    0.0276550
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.5702540   -0.7705163   -0.3699916
24 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        0                    1                 -0.3227392   -0.5109809   -0.1344976
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.5996196   -0.8310166   -0.3682227
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.0058533   -0.1866444    0.1983509
24 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.4861314   -0.6441619   -0.3281008


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.1578367   -0.4072582    0.0915848
Birth       ki1000108-IRC              INDIA        1                    NA                 0.0839817   -0.0576351    0.2255985
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.1251667   -0.5509330    0.3005996
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.3677937   -0.5242929   -0.2112945
6 months    ki1000108-IRC              INDIA        1                    NA                -0.1714339   -0.2842772   -0.0585906
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0698105   -0.1086119   -0.0310091
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0060558   -0.0711742    0.0832858
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.2199537   -0.4648433    0.0249359
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.3249942   -0.4483050   -0.2016834
24 months   ki1000108-IRC              INDIA        1                    NA                -0.1421090   -0.2263047   -0.0579133
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.1020077   -0.1449121   -0.0591033
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0205973   -0.0855395    0.1267341
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.4785015   -0.6326836   -0.3243194
