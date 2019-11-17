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
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1               0       34    86
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1               1        3    86
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0               0       41    86
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0               1        8    86
Birth       ki1000108-IRC              INDIA          1               0      157   337
Birth       ki1000108-IRC              INDIA          1               1       41   337
Birth       ki1000108-IRC              INDIA          0               0       91   337
Birth       ki1000108-IRC              INDIA          0               1       48   337
Birth       ki1017093b-PROVIDE         BANGLADESH     1               0      341   532
Birth       ki1017093b-PROVIDE         BANGLADESH     1               1       92   532
Birth       ki1017093b-PROVIDE         BANGLADESH     0               0       74   532
Birth       ki1017093b-PROVIDE         BANGLADESH     0               1       25   532
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1               0      275   543
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1               1       61   543
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0               0      146   543
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0               1       61   543
Birth       ki1113344-GMS-Nepal        NEPAL          1               0        5   570
Birth       ki1113344-GMS-Nepal        NEPAL          1               1        4   570
Birth       ki1113344-GMS-Nepal        NEPAL          0               0      448   570
Birth       ki1113344-GMS-Nepal        NEPAL          0               1      113   570
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
6 months    ki1017093b-PROVIDE         BANGLADESH     1               0      481   603
6 months    ki1017093b-PROVIDE         BANGLADESH     1               1       16   603
6 months    ki1017093b-PROVIDE         BANGLADESH     0               0       97   603
6 months    ki1017093b-PROVIDE         BANGLADESH     0               1        9   603
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1               0      321   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1               1        8   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0               0      211   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0               1        5   545
6 months    ki1113344-GMS-Nepal        NEPAL          1               0        8   505
6 months    ki1113344-GMS-Nepal        NEPAL          1               1        0   505
6 months    ki1113344-GMS-Nepal        NEPAL          0               0      451   505
6 months    ki1113344-GMS-Nepal        NEPAL          0               1       46   505
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
24 months   ki1017093b-PROVIDE         BANGLADESH     1               0      438   579
24 months   ki1017093b-PROVIDE         BANGLADESH     1               1       42   579
24 months   ki1017093b-PROVIDE         BANGLADESH     0               0       79   579
24 months   ki1017093b-PROVIDE         BANGLADESH     0               1       20   579
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1               0      185   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1               1       14   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0               0      193   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0               1       18   410
24 months   ki1113344-GMS-Nepal        NEPAL          1               0        4   434
24 months   ki1113344-GMS-Nepal        NEPAL          1               1        1   434
24 months   ki1113344-GMS-Nepal        NEPAL          0               0      350   434
24 months   ki1113344-GMS-Nepal        NEPAL          0               1       79   434


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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/61e0abf4-e5ff-4029-afcf-9420ca0841bb/0e494d71-77d3-4a0e-a2e0-d51b2fb653fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/61e0abf4-e5ff-4029-afcf-9420ca0841bb/0e494d71-77d3-4a0e-a2e0-d51b2fb653fc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/61e0abf4-e5ff-4029-afcf-9420ca0841bb/0e494d71-77d3-4a0e-a2e0-d51b2fb653fc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/61e0abf4-e5ff-4029-afcf-9420ca0841bb/0e494d71-77d3-4a0e-a2e0-d51b2fb653fc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                0.1972843   0.1425046   0.2520640
Birth       ki1000108-IRC              INDIA        0                    NA                0.3359481   0.2559212   0.4159749
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2129225   0.1741841   0.2516609
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2489501   0.1620466   0.3358535
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1933196   0.1473770   0.2392621
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.2992130   0.2286977   0.3697284
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1004023   0.0542023   0.1466023
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1463878   0.0982270   0.1945486
6 months    ki1000108-IRC              INDIA        1                    NA                0.1492900   0.1028328   0.1957472
6 months    ki1000108-IRC              INDIA        0                    NA                0.1110479   0.0635684   0.1585275
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0321932   0.0166619   0.0477244
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0849057   0.0317980   0.1380133
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0243161   0.0076570   0.0409752
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0231481   0.0030761   0.0432202
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0368098   0.0078646   0.0657550
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.0813397   0.0442299   0.1184495
24 months   ki1000108-IRC              INDIA        1                    NA                0.0653675   0.0329906   0.0977443
24 months   ki1000108-IRC              INDIA        0                    NA                0.0952869   0.0498434   0.1407303
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0873093   0.0619770   0.1126416
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2007653   0.1176119   0.2839187
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0727371   0.0360398   0.1094343
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0830765   0.0457069   0.1204460


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        NA                   NA                0.2640950   0.2169571   0.3112328
Birth       ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2246777   0.1895403   0.2598151
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1250000   0.0911644   0.1588356
6 months    ki1000108-IRC              INDIA        NA                   NA                0.1331658   0.0997450   0.1665867
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0414594   0.0255348   0.0573839
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0238532   0.0110305   0.0366759
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0618280   0.0373207   0.0863352
24 months   ki1000108-IRC              INDIA        NA                   NA                0.0775000   0.0512641   0.1037359
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0780488   0.0520518   0.1040458


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA        0                    1                 1.7028629   1.1783570   2.460835
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.1692052   0.7889687   1.732693
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.5477637   1.1066731   2.164661
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.4580127   0.8273073   2.569542
6 months    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA        0                    1                 0.7438405   0.4382201   1.262605
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 2.6373821   1.1970491   5.810776
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.9519676   0.3152693   2.874502
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 2.2097289   0.8902591   5.484809
24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA        0                    1                 1.4577108   0.7313963   2.905293
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 2.2994726   1.3855830   3.816137
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.1421477   0.5809115   2.245611


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                 0.0668107    0.0259312   0.1076902
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0070023   -0.0104939   0.0244986
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0313581   -0.0024504   0.0651667
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0245977   -0.0130369   0.0622324
6 months    ki1000108-IRC              INDIA        1                    NA                -0.0161242   -0.0447047   0.0124563
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0092662   -0.0005917   0.0191241
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0004629   -0.0108012   0.0098754
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0250181   -0.0015188   0.0515551
24 months   ki1000108-IRC              INDIA        1                    NA                 0.0121325   -0.0114721   0.0357371
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0197719    0.0050207   0.0345230
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0053117   -0.0222424   0.0328658


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                 0.2529798    0.0857916   0.3895929
Birth       ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0318397   -0.0510440   0.1081874
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.1395694   -0.0238281   0.2768895
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1967818   -0.1623290   0.4449425
6 months    ki1000108-IRC              INDIA        1                    NA                -0.1210833   -0.3559035   0.0730698
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.2235010   -0.0346153   0.4172223
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0194061   -0.5593435   0.3335728
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.4046412   -0.1668932   0.6962429
24 months   ki1000108-IRC              INDIA        1                    NA                 0.1565488   -0.2047651   0.4095033
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1846440    0.0411840   0.3066392
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0680564   -0.3601768   0.3614662
