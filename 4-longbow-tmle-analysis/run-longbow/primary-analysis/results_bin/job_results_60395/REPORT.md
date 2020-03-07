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

agecat        studyid          country        cleanck    wast_rec90d   n_cell     n
------------  ---------------  -------------  --------  ------------  -------  ----
0-24 months   CMC-V-BCS-2002   INDIA          1                    0       38   324
0-24 months   CMC-V-BCS-2002   INDIA          1                    1       80   324
0-24 months   CMC-V-BCS-2002   INDIA          0                    0       82   324
0-24 months   CMC-V-BCS-2002   INDIA          0                    1      124   324
0-24 months   GMS-Nepal        NEPAL          1                    0        6   583
0-24 months   GMS-Nepal        NEPAL          1                    1        3   583
0-24 months   GMS-Nepal        NEPAL          0                    0      259   583
0-24 months   GMS-Nepal        NEPAL          0                    1      315   583
0-24 months   IRC              INDIA          1                    0       84   383
0-24 months   IRC              INDIA          1                    1      135   383
0-24 months   IRC              INDIA          0                    0       72   383
0-24 months   IRC              INDIA          0                    1       92   383
0-24 months   MAL-ED           SOUTH AFRICA   1                    0        0     1
0-24 months   MAL-ED           SOUTH AFRICA   1                    1        1     1
0-24 months   MAL-ED           SOUTH AFRICA   0                    0        0     1
0-24 months   MAL-ED           SOUTH AFRICA   0                    1        0     1
0-24 months   NIH-Crypto       BANGLADESH     1                    0       44   215
0-24 months   NIH-Crypto       BANGLADESH     1                    1       68   215
0-24 months   NIH-Crypto       BANGLADESH     0                    0       37   215
0-24 months   NIH-Crypto       BANGLADESH     0                    1       66   215
0-24 months   PROVIDE          BANGLADESH     1                    0       91   308
0-24 months   PROVIDE          BANGLADESH     1                    1      144   308
0-24 months   PROVIDE          BANGLADESH     0                    0       38   308
0-24 months   PROVIDE          BANGLADESH     0                    1       35   308
0-6 months    CMC-V-BCS-2002   INDIA          1                    0       21   201
0-6 months    CMC-V-BCS-2002   INDIA          1                    1       57   201
0-6 months    CMC-V-BCS-2002   INDIA          0                    0       45   201
0-6 months    CMC-V-BCS-2002   INDIA          0                    1       78   201
0-6 months    GMS-Nepal        NEPAL          1                    0        4   238
0-6 months    GMS-Nepal        NEPAL          1                    1        2   238
0-6 months    GMS-Nepal        NEPAL          0                    0       90   238
0-6 months    GMS-Nepal        NEPAL          0                    1      142   238
0-6 months    IRC              INDIA          1                    0       52   232
0-6 months    IRC              INDIA          1                    1       82   232
0-6 months    IRC              INDIA          0                    0       33   232
0-6 months    IRC              INDIA          0                    1       65   232
0-6 months    MAL-ED           SOUTH AFRICA   1                    0        0     1
0-6 months    MAL-ED           SOUTH AFRICA   1                    1        1     1
0-6 months    MAL-ED           SOUTH AFRICA   0                    0        0     1
0-6 months    MAL-ED           SOUTH AFRICA   0                    1        0     1
0-6 months    NIH-Crypto       BANGLADESH     1                    0        8   138
0-6 months    NIH-Crypto       BANGLADESH     1                    1       60   138
0-6 months    NIH-Crypto       BANGLADESH     0                    0        5   138
0-6 months    NIH-Crypto       BANGLADESH     0                    1       65   138
0-6 months    PROVIDE          BANGLADESH     1                    0       27   185
0-6 months    PROVIDE          BANGLADESH     1                    1      117   185
0-6 months    PROVIDE          BANGLADESH     0                    0       13   185
0-6 months    PROVIDE          BANGLADESH     0                    1       28   185
6-24 months   CMC-V-BCS-2002   INDIA          1                    0       17   123
6-24 months   CMC-V-BCS-2002   INDIA          1                    1       23   123
6-24 months   CMC-V-BCS-2002   INDIA          0                    0       37   123
6-24 months   CMC-V-BCS-2002   INDIA          0                    1       46   123
6-24 months   GMS-Nepal        NEPAL          1                    0        2   345
6-24 months   GMS-Nepal        NEPAL          1                    1        1   345
6-24 months   GMS-Nepal        NEPAL          0                    0      169   345
6-24 months   GMS-Nepal        NEPAL          0                    1      173   345
6-24 months   IRC              INDIA          1                    0       32   151
6-24 months   IRC              INDIA          1                    1       53   151
6-24 months   IRC              INDIA          0                    0       39   151
6-24 months   IRC              INDIA          0                    1       27   151
6-24 months   NIH-Crypto       BANGLADESH     1                    0       36    77
6-24 months   NIH-Crypto       BANGLADESH     1                    1        8    77
6-24 months   NIH-Crypto       BANGLADESH     0                    0       32    77
6-24 months   NIH-Crypto       BANGLADESH     0                    1        1    77
6-24 months   PROVIDE          BANGLADESH     1                    0       64   123
6-24 months   PROVIDE          BANGLADESH     1                    1       27   123
6-24 months   PROVIDE          BANGLADESH     0                    0       25   123
6-24 months   PROVIDE          BANGLADESH     0                    1        7   123


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/e740112e-1e37-4401-89e6-a5efed251b2d/2ca05ea4-1f9d-449c-b267-e63294d03116/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e740112e-1e37-4401-89e6-a5efed251b2d/2ca05ea4-1f9d-449c-b267-e63294d03116/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e740112e-1e37-4401-89e6-a5efed251b2d/2ca05ea4-1f9d-449c-b267-e63294d03116/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e740112e-1e37-4401-89e6-a5efed251b2d/2ca05ea4-1f9d-449c-b267-e63294d03116/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.6796072   0.5826497   0.7765648
0-24 months   CMC-V-BCS-2002   INDIA        0                    NA                0.5978789   0.5282133   0.6675446
0-24 months   IRC              INDIA        1                    NA                0.6123664   0.5323493   0.6923835
0-24 months   IRC              INDIA        0                    NA                0.5465984   0.4479624   0.6452343
0-24 months   NIH-Crypto       BANGLADESH   1                    NA                0.6066264   0.5068190   0.7064338
0-24 months   NIH-Crypto       BANGLADESH   0                    NA                0.6385322   0.5475593   0.7295051
0-24 months   PROVIDE          BANGLADESH   1                    NA                0.6137819   0.5491042   0.6784597
0-24 months   PROVIDE          BANGLADESH   0                    NA                0.4953861   0.3805289   0.6102434
0-6 months    CMC-V-BCS-2002   INDIA        1                    NA                0.7349428   0.6336252   0.8362604
0-6 months    CMC-V-BCS-2002   INDIA        0                    NA                0.6310302   0.5427973   0.7192631
0-6 months    IRC              INDIA        1                    NA                0.6151854   0.5268579   0.7035130
0-6 months    IRC              INDIA        0                    NA                0.6710308   0.5638031   0.7782586
0-6 months    NIH-Crypto       BANGLADESH   1                    NA                0.8823529   0.8043613   0.9603446
0-6 months    NIH-Crypto       BANGLADESH   0                    NA                0.9285714   0.8671951   0.9899477
0-6 months    PROVIDE          BANGLADESH   1                    NA                0.8109731   0.7482626   0.8736837
0-6 months    PROVIDE          BANGLADESH   0                    NA                0.6572440   0.5163698   0.7981183
6-24 months   CMC-V-BCS-2002   INDIA        1                    NA                0.5347410   0.3554438   0.7140382
6-24 months   CMC-V-BCS-2002   INDIA        0                    NA                0.5421617   0.4340775   0.6502459
6-24 months   IRC              INDIA        1                    NA                0.5962278   0.4920787   0.7003768
6-24 months   IRC              INDIA        0                    NA                0.3527962   0.2208190   0.4847733
6-24 months   PROVIDE          BANGLADESH   1                    NA                0.2967033   0.2039707   0.3894359
6-24 months   PROVIDE          BANGLADESH   0                    NA                0.2187500   0.0526770   0.3848230


### Parameter: E(Y)


agecat        studyid          country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   IRC              INDIA        NA                   NA                0.5926893   0.5398764   0.6455022
0-24 months   NIH-Crypto       BANGLADESH   NA                   NA                0.6232558   0.5583490   0.6881627
0-24 months   PROVIDE          BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-6 months    CMC-V-BCS-2002   INDIA        NA                   NA                0.6716418   0.6057305   0.7375531
0-6 months    IRC              INDIA        NA                   NA                0.6336207   0.5704020   0.6968394
0-6 months    NIH-Crypto       BANGLADESH   NA                   NA                0.9057971   0.8561988   0.9553954
0-6 months    PROVIDE          BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
6-24 months   CMC-V-BCS-2002   INDIA        NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   IRC              INDIA        NA                   NA                0.5298013   0.4450066   0.6145960
6-24 months   PROVIDE          BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682


### Parameter: RR


agecat        studyid          country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   CMC-V-BCS-2002   INDIA        0                    1                 0.8797419   0.7311019   1.058602
0-24 months   IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA        0                    1                 0.8926001   0.7141396   1.115657
0-24 months   NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH   0                    1                 1.0525954   0.8455315   1.310368
0-24 months   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH   0                    1                 0.8071045   0.6254896   1.041452
0-6 months    CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    CMC-V-BCS-2002   INDIA        0                    1                 0.8586113   0.7049620   1.045749
0-6 months    IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA        0                    1                 1.0907782   0.8796261   1.352617
0-6 months    NIH-Crypto       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH   0                    1                 1.0523810   0.9424090   1.175186
0-6 months    PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH   0                    1                 0.8104387   0.6448446   1.018557
6-24 months   CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   CMC-V-BCS-2002   INDIA        0                    1                 1.0138772   0.6850215   1.500606
6-24 months   IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   IRC              INDIA        0                    1                 0.5917137   0.3888037   0.900519
6-24 months   PROVIDE          BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH   0                    1                 0.7372685   0.3243804   1.675702


### Parameter: PAR


agecat        studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0499776   -0.1270148    0.0270596
0-24 months   IRC              INDIA        1                    NA                -0.0196771   -0.0768319    0.0374776
0-24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0166294   -0.0511174    0.0843763
0-24 months   PROVIDE          BANGLADESH   1                    NA                -0.0326131   -0.0642861   -0.0009401
0-6 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.0633010   -0.1471874    0.0205854
0-6 months    IRC              INDIA        1                    NA                 0.0184353   -0.0428942    0.0797647
0-6 months    NIH-Crypto       BANGLADESH   1                    NA                 0.0234442   -0.0270350    0.0739233
0-6 months    PROVIDE          BANGLADESH   1                    NA                -0.0271893   -0.0625214    0.0081427
6-24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.0262346   -0.1180927    0.1705620
6-24 months   IRC              INDIA        1                    NA                -0.0664265   -0.1464535    0.0136006
6-24 months   PROVIDE          BANGLADESH   1                    NA                -0.0202805   -0.0703437    0.0297826


### Parameter: PAF


agecat        studyid          country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA        1                    NA                -0.0793762   -0.2088745    0.0362499
0-24 months   IRC              INDIA        1                    NA                -0.0331997   -0.1341393    0.0587562
0-24 months   NIH-Crypto       BANGLADESH   1                    NA                 0.0266815   -0.0887672    0.1298885
0-24 months   PROVIDE          BANGLADESH   1                    NA                -0.0561164   -0.1123760   -0.0027022
0-6 months    CMC-V-BCS-2002   INDIA        1                    NA                -0.0942482   -0.2279765    0.0249169
0-6 months    IRC              INDIA        1                    NA                 0.0290951   -0.0727523    0.1212731
0-6 months    NIH-Crypto       BANGLADESH   1                    NA                 0.0258824   -0.0318118    0.0803505
0-6 months    PROVIDE          BANGLADESH   1                    NA                -0.0346899   -0.0813223    0.0099315
6-24 months   CMC-V-BCS-2002   INDIA        1                    NA                 0.0467660   -0.2497610    0.2729370
6-24 months   IRC              INDIA        1                    NA                -0.1253799   -0.2931156    0.0205980
6-24 months   PROVIDE          BANGLADESH   1                    NA                -0.0733678   -0.2738040    0.0955293
