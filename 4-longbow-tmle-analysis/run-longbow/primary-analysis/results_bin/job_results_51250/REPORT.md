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

agecat      studyid                    country        cleanck    wasted   n_cell     n
----------  -------------------------  -------------  --------  -------  -------  ----
Birth       ki0047075b-MAL-ED          PERU           1               0        1     2
Birth       ki0047075b-MAL-ED          PERU           1               1        0     2
Birth       ki0047075b-MAL-ED          PERU           0               0        1     2
Birth       ki0047075b-MAL-ED          PERU           0               1        0     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1               0        0     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1               1        1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0               0        1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0               1        0     2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1               0       33    88
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1               1        4    88
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0               0       41    88
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0               1       10    88
Birth       ki1000108-IRC              INDIA          1               0      157   337
Birth       ki1000108-IRC              INDIA          1               1       41   337
Birth       ki1000108-IRC              INDIA          0               0       91   337
Birth       ki1000108-IRC              INDIA          0               1       48   337
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1               0       10    17
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1               1        1    17
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0               0        5    17
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0               1        1    17
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               0        1     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1        0     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0        0     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               1        0     1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1               0      146   368
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1               1       16   368
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0               0      176   368
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0               1       30   368
6 months    ki1000108-IRC              INDIA          1               0      195   398
6 months    ki1000108-IRC              INDIA          1               1       34   398
6 months    ki1000108-IRC              INDIA          0               0      150   398
6 months    ki1000108-IRC              INDIA          0               1       19   398
6 months    ki1017093b-PROVIDE         BANGLADESH     1               0      466   582
6 months    ki1017093b-PROVIDE         BANGLADESH     1               1       15   582
6 months    ki1017093b-PROVIDE         BANGLADESH     0               0       92   582
6 months    ki1017093b-PROVIDE         BANGLADESH     0               1        9   582
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1               0      321   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1               1        8   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0               0      211   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0               1        5   545
6 months    ki1113344-GMS-Nepal        NEPAL          1               0        8   504
6 months    ki1113344-GMS-Nepal        NEPAL          1               1        0   504
6 months    ki1113344-GMS-Nepal        NEPAL          0               0      450   504
6 months    ki1113344-GMS-Nepal        NEPAL          0               1       46   504
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               0        1     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1        0     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0        0     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               1        0     1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1               0      157   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1               1        6   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0               0      192   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0               1       17   372
24 months   ki1000108-IRC              INDIA          1               0      216   400
24 months   ki1000108-IRC              INDIA          1               1       15   400
24 months   ki1000108-IRC              INDIA          0               0      153   400
24 months   ki1000108-IRC              INDIA          0               1       16   400
24 months   ki1017093b-PROVIDE         BANGLADESH     1               0      436   578
24 months   ki1017093b-PROVIDE         BANGLADESH     1               1       44   578
24 months   ki1017093b-PROVIDE         BANGLADESH     0               0       77   578
24 months   ki1017093b-PROVIDE         BANGLADESH     0               1       21   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1               0      185   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1               1       14   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0               0      193   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0               1       18   410
24 months   ki1113344-GMS-Nepal        NEPAL          1               0        6   445
24 months   ki1113344-GMS-Nepal        NEPAL          1               1        1   445
24 months   ki1113344-GMS-Nepal        NEPAL          0               0      359   445
24 months   ki1113344-GMS-Nepal        NEPAL          0               1       79   445


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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

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
![](/tmp/d5f78c55-c014-46cd-94db-f7c0391f2b6d/3587d6cc-cdfe-43b2-98d2-39b58749a042/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d5f78c55-c014-46cd-94db-f7c0391f2b6d/3587d6cc-cdfe-43b2-98d2-39b58749a042/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d5f78c55-c014-46cd-94db-f7c0391f2b6d/3587d6cc-cdfe-43b2-98d2-39b58749a042/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d5f78c55-c014-46cd-94db-f7c0391f2b6d/3587d6cc-cdfe-43b2-98d2-39b58749a042/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                0.2019449   0.1457379   0.2581519
Birth       ki1000108-IRC              INDIA        0                    NA                0.3338916   0.2549505   0.4128326
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1004294   0.0548637   0.1459951
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1469206   0.0987649   0.1950763
6 months    ki1000108-IRC              INDIA        1                    NA                0.1488398   0.1024491   0.1952305
6 months    ki1000108-IRC              INDIA        0                    NA                0.1119996   0.0641303   0.1598689
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0311850   0.0156382   0.0467319
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0891089   0.0334987   0.1447191
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0243161   0.0076570   0.0409752
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0231481   0.0030761   0.0432202
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0368098   0.0078646   0.0657550
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.0813397   0.0442299   0.1184495
24 months   ki1000108-IRC              INDIA        1                    NA                0.0647152   0.0327099   0.0967204
24 months   ki1000108-IRC              INDIA        0                    NA                0.0944306   0.0498483   0.1390130
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0925212   0.0665313   0.1185112
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2100433   0.1266219   0.2934647
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0741292   0.0362864   0.1119721
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0837924   0.0461413   0.1214435


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        NA                   NA                0.2640950   0.2169571   0.3112328
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1250000   0.0911644   0.1588356
6 months    ki1000108-IRC              INDIA        NA                   NA                0.1331658   0.0997450   0.1665867
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0238532   0.0110305   0.0366759
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0618280   0.0373207   0.0863352
24 months   ki1000108-IRC              INDIA        NA                   NA                0.0775000   0.0512641   0.1037359
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0780488   0.0520518   0.1040458


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA        0                    1                 1.6533792   1.1464659   2.384426
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.4629240   0.8346835   2.564021
6 months    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA        0                    1                 0.7524839   0.4431535   1.277734
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 2.8574257   1.2855300   6.351374
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.9519676   0.3152693   2.874502
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 2.2097289   0.8902591   5.484809
24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA        0                    1                 1.4591736   0.7360871   2.892575
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 2.2702166   1.3954715   3.693292
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.1303559   0.5718905   2.234176


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                 0.0621500    0.0206572   0.1036428
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0245706   -0.0126729   0.0618141
6 months    ki1000108-IRC              INDIA        1                    NA                -0.0156740   -0.0441749   0.0128269
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0100521   -0.0001260   0.0202302
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0004629   -0.0108012   0.0098754
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0250181   -0.0015188   0.0515551
24 months   ki1000108-IRC              INDIA        1                    NA                 0.0127848   -0.0104248   0.0359945
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0199355    0.0049546   0.0349164
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0039195   -0.0246648   0.0325039


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                 0.2353321    0.0643869   0.3750440
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1965647   -0.1570490   0.4421080
6 months    ki1000108-IRC              INDIA        1                    NA                -0.1177028   -0.3518722   0.0759041
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.2437630   -0.0235100   0.4412420
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0194061   -0.5593435   0.3335728
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.4046412   -0.1668932   0.6962429
24 months   ki1000108-IRC              INDIA        1                    NA                 0.1649657   -0.1893810   0.4137435
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1772726    0.0386805   0.2958842
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0502190   -0.3962066   0.3539037
