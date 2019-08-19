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

**Outcome Variable:** sstunted

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

agecat      studyid                    country        cleanck    sstunted   n_cell     n
----------  -------------------------  -------------  --------  ---------  -------  ----
Birth       ki0047075b-MAL-ED          PERU           1                 0        1     2
Birth       ki0047075b-MAL-ED          PERU           1                 1        0     2
Birth       ki0047075b-MAL-ED          PERU           0                 0        1     2
Birth       ki0047075b-MAL-ED          PERU           0                 1        0     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1                 0        1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1                 1        0     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0                 0        1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0                 1        0     2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                 0       37    90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                 1        1    90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                 0       50    90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                 1        2    90
Birth       ki1000108-IRC              INDIA          1                 0      209   378
Birth       ki1000108-IRC              INDIA          1                 1        9   378
Birth       ki1000108-IRC              INDIA          0                 0      154   378
Birth       ki1000108-IRC              INDIA          0                 1        6   378
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                 0       12    20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                 1        0    20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                 0        7    20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                 1        1    20
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                 0        1     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                 1        0     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                 0        0     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                 1        0     1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                 0      149   369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                 1       14   369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                 0      178   369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                 1       28   369
6 months    ki1000108-IRC              INDIA          1                 0      216   398
6 months    ki1000108-IRC              INDIA          1                 1       14   398
6 months    ki1000108-IRC              INDIA          0                 0      154   398
6 months    ki1000108-IRC              INDIA          0                 1       14   398
6 months    ki1017093b-PROVIDE         BANGLADESH     1                 0      475   583
6 months    ki1017093b-PROVIDE         BANGLADESH     1                 1        7   583
6 months    ki1017093b-PROVIDE         BANGLADESH     0                 0       94   583
6 months    ki1017093b-PROVIDE         BANGLADESH     0                 1        7   583
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                 0      318   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                 1       11   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                 0      211   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                 1        5   545
6 months    ki1113344-GMS-Nepal        NEPAL          1                 0        8   504
6 months    ki1113344-GMS-Nepal        NEPAL          1                 1        0   504
6 months    ki1113344-GMS-Nepal        NEPAL          0                 0      478   504
6 months    ki1113344-GMS-Nepal        NEPAL          0                 1       18   504
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                 0        1     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                 1        0     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                 0        0     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                 1        0     1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                 0      128   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                 1       35   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                 0      121   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                 1       88   372
24 months   ki1000108-IRC              INDIA          1                 0      210   400
24 months   ki1000108-IRC              INDIA          1                 1       21   400
24 months   ki1000108-IRC              INDIA          0                 0      150   400
24 months   ki1000108-IRC              INDIA          0                 1       19   400
24 months   ki1017093b-PROVIDE         BANGLADESH     1                 0      452   577
24 months   ki1017093b-PROVIDE         BANGLADESH     1                 1       27   577
24 months   ki1017093b-PROVIDE         BANGLADESH     0                 0       76   577
24 months   ki1017093b-PROVIDE         BANGLADESH     0                 1       22   577
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                 0      190   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                 1        9   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                 0      200   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                 1       11   410
24 months   ki1113344-GMS-Nepal        NEPAL          1                 0        7   446
24 months   ki1113344-GMS-Nepal        NEPAL          1                 1        0   446
24 months   ki1113344-GMS-Nepal        NEPAL          0                 0      392   446
24 months   ki1113344-GMS-Nepal        NEPAL          0                 1       47   446


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
![](/tmp/4570c732-cab2-4e82-a9ed-a744f7d8ff11/a7aa82f6-1570-4232-9c16-2c66ba7734a6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4570c732-cab2-4e82-a9ed-a744f7d8ff11/a7aa82f6-1570-4232-9c16-2c66ba7734a6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4570c732-cab2-4e82-a9ed-a744f7d8ff11/a7aa82f6-1570-4232-9c16-2c66ba7734a6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4570c732-cab2-4e82-a9ed-a744f7d8ff11/a7aa82f6-1570-4232-9c16-2c66ba7734a6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                0.0412844   0.0148400   0.0677288
Birth       ki1000108-IRC              INDIA        0                    NA                0.0375000   0.0080233   0.0669767
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0884289   0.0446730   0.1321848
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1350094   0.0877844   0.1822344
6 months    ki1000108-IRC              INDIA        1                    NA                0.0619991   0.0307049   0.0932933
6 months    ki1000108-IRC              INDIA        0                    NA                0.0843739   0.0414669   0.1272810
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0145228   0.0038336   0.0252120
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0693069   0.0197332   0.1188807
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0334347   0.0139917   0.0528776
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0231481   0.0030761   0.0432202
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2260992   0.1598706   0.2923278
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.4130802   0.3437823   0.4823780
24 months   ki1000108-IRC              INDIA        1                    NA                0.0905571   0.0534669   0.1276473
24 months   ki1000108-IRC              INDIA        0                    NA                0.1122572   0.0641424   0.1603720
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0566075   0.0357307   0.0774843
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2238697   0.1379028   0.3098367
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0452261   0.0163195   0.0741327
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0521327   0.0221020   0.0821634


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        NA                   NA                0.0396825   0.0199772   0.0593879
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA        NA                   NA                0.0703518   0.0451953   0.0955082
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0240137   0.0115761   0.0364514
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0293578   0.0151725   0.0435431
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1000108-IRC              INDIA        NA                   NA                0.1000000   0.0705637   0.1294363
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0487805   0.0279044   0.0696566


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000    1.000000
Birth       ki1000108-IRC              INDIA        0                    1                 0.9083333   0.3295172    2.503874
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.5267568   0.8320268    2.801576
6 months    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA        0                    1                 1.3608888   0.6649691    2.785119
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 4.7722772   1.7099928   13.318553
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.6923401   0.2437201    1.966743
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.8269862   1.3041674    2.559394
24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA        0                    1                 1.2396293   0.6855392    2.241565
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 3.9547714   2.3195412    6.742806
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.1527119   0.4875719    2.725229


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                -0.0016019   -0.0183649   0.0151612
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0253923   -0.0108308   0.0616153
6 months    ki1000108-IRC              INDIA        1                    NA                 0.0083526   -0.0139107   0.0306159
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0094909    0.0005453   0.0184365
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0040769   -0.0151603   0.0070066
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1045459    0.0488486   0.1602433
24 months   ki1000108-IRC              INDIA        1                    NA                 0.0094429   -0.0160456   0.0349314
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0283145    0.0128206   0.0438084
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0035544   -0.0178995   0.0250082


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                -0.0403670   -0.5607939   0.3065302
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.2230891   -0.1613967   0.4802891
6 months    ki1000108-IRC              INDIA        1                    NA                 0.1187265   -0.2579771   0.3826254
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.3952282   -0.0151486   0.6397090
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.1388678   -0.5787290   0.1784405
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.3161877    0.1283003   0.4635776
24 months   ki1000108-IRC              INDIA        1                    NA                 0.0944291   -0.1985006   0.3157628
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.3334178    0.1495514   0.4775325
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0728643   -0.4882985   0.4224407
