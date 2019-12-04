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

**Outcome Variable:** wast_rec90d

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
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country        cleanck    wast_rec90d   n_cell     n
------------  -------------------------  -------------  --------  ------------  -------  ----
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        0     1
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        1     1
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        0     1
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0     1
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0       38   324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    1       80   324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0       82   324
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    1      124   324
0-24 months   ki1000108-IRC              INDIA          1                    0       84   383
0-24 months   ki1000108-IRC              INDIA          1                    1      135   383
0-24 months   ki1000108-IRC              INDIA          0                    0       72   383
0-24 months   ki1000108-IRC              INDIA          0                    1       92   383
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    0       91   308
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    1      144   308
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    0       38   308
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    1       35   308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    0       44   215
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    1       68   215
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    0       37   215
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    1       66   215
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                    0        6   583
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                    1        3   583
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                    0      259   583
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                    1      315   583
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        0     1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        1     1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        0     1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0     1
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    0       21   201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    1       57   201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    0       45   201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    1       78   201
0-6 months    ki1000108-IRC              INDIA          1                    0       52   232
0-6 months    ki1000108-IRC              INDIA          1                    1       82   232
0-6 months    ki1000108-IRC              INDIA          0                    0       33   232
0-6 months    ki1000108-IRC              INDIA          0                    1       65   232
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                    0       27   185
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                    1      117   185
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                    0       13   185
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                    1       28   185
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    0        8   138
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                    1       60   138
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                    0        5   138
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                    1       65   138
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                    0        4   238
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                    1        2   238
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                    0       90   238
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                    1      142   238
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0       17   123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    1       23   123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0       37   123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    1       46   123
6-24 months   ki1000108-IRC              INDIA          1                    0       32   151
6-24 months   ki1000108-IRC              INDIA          1                    1       53   151
6-24 months   ki1000108-IRC              INDIA          0                    0       39   151
6-24 months   ki1000108-IRC              INDIA          0                    1       27   151
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    0       64   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                    1       27   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    0       25   123
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                    1        7   123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    0       36    77
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                    1        8    77
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    0       32    77
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                    1        1    77
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                    0        2   345
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                    1        1   345
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                    0      169   345
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                    1      173   345


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

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




# Results Detail

## Results Plots
![](/tmp/9673247f-746c-446c-86cf-8cf307f28ff7/c10dbc24-c5ce-4c71-8e80-109d81a7deb4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9673247f-746c-446c-86cf-8cf307f28ff7/c10dbc24-c5ce-4c71-8e80-109d81a7deb4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9673247f-746c-446c-86cf-8cf307f28ff7/c10dbc24-c5ce-4c71-8e80-109d81a7deb4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9673247f-746c-446c-86cf-8cf307f28ff7/c10dbc24-c5ce-4c71-8e80-109d81a7deb4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.6748470   0.5766558   0.7730382
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.6069617   0.5373021   0.6766214
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.6179163   0.5461470   0.6896856
0-24 months   ki1000108-IRC              INDIA        0                    NA                0.5616295   0.4811370   0.6421219
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.6093665   0.5445157   0.6742173
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.4661911   0.3567516   0.5756305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.5983437   0.4951277   0.7015597
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.6359284   0.5389959   0.7328608
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7343824   0.6339773   0.8347876
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.6293414   0.5413806   0.7173022
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.6058999   0.5218439   0.6899559
0-6 months    ki1000108-IRC              INDIA        0                    NA                0.6594577   0.5630901   0.7558252
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.8110873   0.7481953   0.8739793
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.6633460   0.5201135   0.8065784
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.8823529   0.8043613   0.9603446
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.9285714   0.8671951   0.9899477
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.6081587   0.4267502   0.7895672
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.5602854   0.4520444   0.6685263
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.6305441   0.5263443   0.7347438
6-24 months   ki1000108-IRC              INDIA        0                    NA                0.4102509   0.2749671   0.5455347
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2967033   0.2039707   0.3894359
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2187500   0.0526770   0.3848230


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.5926893   0.5398764   0.6455022
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.6232558   0.5583490   0.6881627
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.6716418   0.6057305   0.7375531
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.6336207   0.5704020   0.6968394
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.9057971   0.8561988   0.9553954
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.5298013   0.4450066   0.6145960
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 0.8994064   0.7470683   1.0828084
0-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA        0                    1                 0.9089087   0.7556296   1.0932804
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 0.7650421   0.5905873   0.9910294
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.0628145   0.8427543   1.3403369
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 0.8569668   0.7038866   1.0433387
0-6 months    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA        0                    1                 1.0883938   0.8888045   1.3328027
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 0.8178478   0.6491466   1.0303912
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.0523810   0.9424090   1.1751858
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 0.9212815   0.6434340   1.3191091
6-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        0                    1                 0.6506300   0.4494958   0.9417649
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 0.7372685   0.3243804   1.6757021


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0452174   -0.1232416    0.0328068
0-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0252270   -0.0720117    0.0215578
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0281977   -0.0601864    0.0037910
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0249121   -0.0477169    0.0975412
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0627407   -0.1454156    0.0199342
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0277208   -0.0279088    0.0833504
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0273035   -0.0635228    0.0089158
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0234442   -0.0270350    0.0739233
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0471831   -0.1929541    0.0985878
6-24 months   ki1000108-IRC              INDIA        1                    NA                -0.1007427   -0.1786709   -0.0228145
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0202805   -0.0703437    0.0297826


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0718159   -0.2030400    0.0450947
0-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0425635   -0.1245202    0.0334200
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0485190   -0.1052778    0.0053252
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0399710   -0.0845919    0.1502280
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0934139   -0.2251134    0.0241280
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0437498   -0.0483046    0.1277207
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0348355   -0.0826663    0.0108822
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0258824   -0.0318118    0.0803505
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0841090   -0.3762130    0.1459953
6-24 months   ki1000108-IRC              INDIA        1                    NA                -0.1901519   -0.3563071   -0.0443516
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0733678   -0.2738040    0.0955293
