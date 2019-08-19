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

**Outcome Variable:** ever_co

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

agecat        studyid                    country        cleanck    ever_co   n_cell     n
------------  -------------------------  -------------  --------  --------  -------  ----
0-24 months   ki0047075b-MAL-ED          PERU           1                0        1     2
0-24 months   ki0047075b-MAL-ED          PERU           1                1        0     2
0-24 months   ki0047075b-MAL-ED          PERU           0                0        1     2
0-24 months   ki0047075b-MAL-ED          PERU           0                1        0     2
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1     3
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                1        1     3
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                0        1     3
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0     3
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                0      142   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                1       21   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                0      145   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                1       65   373
0-24 months   ki1000108-IRC              INDIA          1                0      198   400
0-24 months   ki1000108-IRC              INDIA          1                1       33   400
0-24 months   ki1000108-IRC              INDIA          0                0      130   400
0-24 months   ki1000108-IRC              INDIA          0                1       39   400
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                0      508   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                1       63   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                0      102   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                1       27   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                0      329   577
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                1       31   577
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                0      200   577
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                1       17   577
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                0        9   537
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                1        0   537
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                0      354   537
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                1      174   537
0-6 months    ki0047075b-MAL-ED          PERU           1                0        1     2
0-6 months    ki0047075b-MAL-ED          PERU           1                1        0     2
0-6 months    ki0047075b-MAL-ED          PERU           0                0        1     2
0-6 months    ki0047075b-MAL-ED          PERU           0                1        0     2
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1     3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                1        1     3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                0        1     3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0     3
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                0      156   368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                1        6   368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                0      181   368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                1       25   368
0-6 months    ki1000108-IRC              INDIA          1                0      219   399
0-6 months    ki1000108-IRC              INDIA          1                1       12   399
0-6 months    ki1000108-IRC              INDIA          0                0      156   399
0-6 months    ki1000108-IRC              INDIA          0                1       12   399
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                0      549   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                1       22   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                0      121   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                1        8   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                0      355   577
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                1        5   577
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                0      210   577
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                1        7   577
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                0        9   537
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                1        0   537
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                0      507   537
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                1       21   537
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1     1
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                1        0     1
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                0        0     1
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0     1
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                0      147   373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                1       16   373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                0      156   373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                1       54   373
6-24 months   ki1000108-IRC              INDIA          1                0      202   400
6-24 months   ki1000108-IRC              INDIA          1                1       29   400
6-24 months   ki1000108-IRC              INDIA          0                0      137   400
6-24 months   ki1000108-IRC              INDIA          0                1       32   400
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                0      456   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                1       51   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                0       83   614
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                1       24   614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                0      316   559
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                1       27   559
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                0      200   559
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                1       16   559
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                0        8   529
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                1        0   529
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                0      350   529
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                1      171   529


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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
![](/tmp/bdb9229b-687c-4c85-9611-da655c8cfeec/f0c6abac-a01d-438c-b845-e51ffc5d3f59/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bdb9229b-687c-4c85-9611-da655c8cfeec/f0c6abac-a01d-438c-b845-e51ffc5d3f59/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bdb9229b-687c-4c85-9611-da655c8cfeec/f0c6abac-a01d-438c-b845-e51ffc5d3f59/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bdb9229b-687c-4c85-9611-da655c8cfeec/f0c6abac-a01d-438c-b845-e51ffc5d3f59/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1321458   0.0788969   0.1853946
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3082718   0.2452860   0.3712576
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.1433153   0.0976620   0.1889686
0-24 months   ki1000108-IRC              INDIA        0                    NA                0.2314184   0.1667630   0.2960738
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1108499   0.0851178   0.1365820
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2166751   0.1458395   0.2875108
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0859570   0.0570210   0.1148930
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0783329   0.0423594   0.1143065
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0370370   0.0079162   0.0661579
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1213592   0.0767066   0.1660119
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.0519365   0.0231787   0.0806944
0-6 months    ki1000108-IRC              INDIA        0                    NA                0.0732713   0.0329511   0.1135916
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0385289   0.0227309   0.0543269
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0620155   0.0203658   0.1036652
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0138889   0.0017893   0.0259885
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0322581   0.0087296   0.0557865
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0991439   0.0526150   0.1456728
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.2567239   0.1972150   0.3162328
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.1237974   0.0810093   0.1665855
6-24 months   ki1000108-IRC              INDIA        0                    NA                0.1897270   0.1301838   0.2492702
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1006143   0.0743993   0.1268292
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2141725   0.1336784   0.2946666
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0788000   0.0501670   0.1074331
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0718952   0.0377987   0.1059917


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.1800000   0.1423032   0.2176968
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0831889   0.0606356   0.1057422
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.0601504   0.0367913   0.0835094
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0207972   0.0091432   0.0324513
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.1525000   0.1172250   0.1877750
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0769231   0.0548136   0.0990325


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 2.3328164   1.4868241   3.660172
0-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA        0                    1                 1.6147503   1.0564755   2.468035
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.9546710   1.3087068   2.919476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.9113039   0.5155967   1.610706
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 3.2766990   1.3753959   7.806302
0-6 months    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA        0                    1                 1.4107857   0.6482740   3.070178
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 1.6095842   0.7327878   3.535487
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 2.3225806   0.7456384   7.234581
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 2.5894071   1.5320873   4.376402
6-24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA        0                    1                 1.5325602   0.9605468   2.445212
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 2.1286500   1.3464728   3.365200
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.9123753   0.5016755   1.659297


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0984172    0.0508073   0.1460271
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0366847    0.0030009   0.0703685
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0177215    0.0036015   0.0318415
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0027681   -0.0200739   0.0145378
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0472021    0.0170547   0.0773495
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.0082138   -0.0123031   0.0287308
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0043282   -0.0039085   0.0125650
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0069083   -0.0030683   0.0168850
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0885237    0.0450530   0.1319944
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.0287026   -0.0024256   0.0598307
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0215356    0.0064701   0.0366010
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0018770   -0.0194530   0.0156991


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.4268562    0.1918829   0.5935071
0-24 months   ki1000108-IRC              INDIA        1                    NA                 0.2038039   -0.0032587   0.3681308
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1378340    0.0236777   0.2386425
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0332746   -0.2635531   0.1550364
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.5603345    0.1129210   0.7820874
0-6 months    ki1000108-IRC              INDIA        1                    NA                 0.1365551   -0.2763724   0.4158938
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1009924   -0.1095560   0.2715873
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.3321759   -0.2968904   0.6561089
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.4717048    0.2064409   0.6482986
6-24 months   ki1000108-IRC              INDIA        1                    NA                 0.1882136   -0.0400605   0.3663858
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1763047    0.0485271   0.2869224
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0244006   -0.2802617   0.1803266
