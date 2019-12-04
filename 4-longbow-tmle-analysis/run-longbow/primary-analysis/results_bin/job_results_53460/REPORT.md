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
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                 0       38    92
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                 1        1    92
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                 0       50    92
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                 1        3    92
Birth       ki1000108-IRC              INDIA          1                 0      209   378
Birth       ki1000108-IRC              INDIA          1                 1        9   378
Birth       ki1000108-IRC              INDIA          0                 0      154   378
Birth       ki1000108-IRC              INDIA          0                 1        6   378
Birth       ki1017093b-PROVIDE         BANGLADESH     1                 0      436   539
Birth       ki1017093b-PROVIDE         BANGLADESH     1                 1        2   539
Birth       ki1017093b-PROVIDE         BANGLADESH     0                 0       99   539
Birth       ki1017093b-PROVIDE         BANGLADESH     0                 1        2   539
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                 0      342   561
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                 1        3   561
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                 0      210   561
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                 1        6   561
Birth       ki1113344-GMS-Nepal        NEPAL          1                 0        9   621
Birth       ki1113344-GMS-Nepal        NEPAL          1                 1        0   621
Birth       ki1113344-GMS-Nepal        NEPAL          0                 0      584   621
Birth       ki1113344-GMS-Nepal        NEPAL          0                 1       28   621
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
6 months    ki1017093b-PROVIDE         BANGLADESH     1                 0      491   604
6 months    ki1017093b-PROVIDE         BANGLADESH     1                 1        7   604
6 months    ki1017093b-PROVIDE         BANGLADESH     0                 0       99   604
6 months    ki1017093b-PROVIDE         BANGLADESH     0                 1        7   604
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                 0      318   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                 1       11   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                 0      211   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                 1        5   545
6 months    ki1113344-GMS-Nepal        NEPAL          1                 0        8   505
6 months    ki1113344-GMS-Nepal        NEPAL          1                 1        0   505
6 months    ki1113344-GMS-Nepal        NEPAL          0                 0      478   505
6 months    ki1113344-GMS-Nepal        NEPAL          0                 1       19   505
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                 0        1     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                 1        0     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                 0        0     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                 1        0     1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                 0      127   371
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                 1       36   371
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                 0      119   371
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                 1       89   371
24 months   ki1000108-IRC              INDIA          1                 0      210   400
24 months   ki1000108-IRC              INDIA          1                 1       21   400
24 months   ki1000108-IRC              INDIA          0                 0      150   400
24 months   ki1000108-IRC              INDIA          0                 1       19   400
24 months   ki1017093b-PROVIDE         BANGLADESH     1                 0      452   578
24 months   ki1017093b-PROVIDE         BANGLADESH     1                 1       27   578
24 months   ki1017093b-PROVIDE         BANGLADESH     0                 0       74   578
24 months   ki1017093b-PROVIDE         BANGLADESH     0                 1       25   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                 0      190   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                 1        9   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                 0      200   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                 1       11   410
24 months   ki1113344-GMS-Nepal        NEPAL          1                 0        5   435
24 months   ki1113344-GMS-Nepal        NEPAL          1                 1        0   435
24 months   ki1113344-GMS-Nepal        NEPAL          0                 0      384   435
24 months   ki1113344-GMS-Nepal        NEPAL          0                 1       46   435


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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/439540d0-a581-47cb-ab27-b570fcba5c68/3ba6164e-9c7f-4ec9-ab62-1529604f5d9c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/439540d0-a581-47cb-ab27-b570fcba5c68/3ba6164e-9c7f-4ec9-ab62-1529604f5d9c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/439540d0-a581-47cb-ab27-b570fcba5c68/3ba6164e-9c7f-4ec9-ab62-1529604f5d9c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/439540d0-a581-47cb-ab27-b570fcba5c68/3ba6164e-9c7f-4ec9-ab62-1529604f5d9c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                0.0412844   0.0148400   0.0677288
Birth       ki1000108-IRC              INDIA        0                    NA                0.0375000   0.0080233   0.0669767
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0870005   0.0437860   0.1302150
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1363024   0.0893557   0.1832491
6 months    ki1000108-IRC              INDIA        1                    NA                0.0611520   0.0300561   0.0922478
6 months    ki1000108-IRC              INDIA        0                    NA                0.0850409   0.0426272   0.1274546
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0140562   0.0037083   0.0244042
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0660377   0.0187209   0.1133546
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0334347   0.0139917   0.0528776
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0231481   0.0030761   0.0432202
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2305034   0.1608989   0.3001079
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.4273405   0.3576942   0.4969869
24 months   ki1000108-IRC              INDIA        1                    NA                0.0913526   0.0542437   0.1284616
24 months   ki1000108-IRC              INDIA        0                    NA                0.1110065   0.0631616   0.1588514
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0567520   0.0359025   0.0776015
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2502103   0.1614048   0.3390157
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0452261   0.0163195   0.0741327
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0521327   0.0221020   0.0821634


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        NA                   NA                0.0396825   0.0199772   0.0593879
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA        NA                   NA                0.0703518   0.0451953   0.0955082
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0231788   0.0111688   0.0351888
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0293578   0.0151725   0.0435431
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3369272   0.2887662   0.3850883
24 months   ki1000108-IRC              INDIA        NA                   NA                0.1000000   0.0705637   0.1294363
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0487805   0.0279044   0.0696566


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000    1.000000
Birth       ki1000108-IRC              INDIA        0                    1                 0.9083333   0.3295172    2.503874
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.5666841   0.8553912    2.869446
6 months    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA        0                    1                 1.3906485   0.6824883    2.833607
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 4.6981132   1.6817875   13.124290
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 0.6923401   0.2437201    1.966743
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.8539446   1.3133641    2.617028
24 months   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA        0                    1                 1.2151429   0.6722696    2.196399
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 4.4088366   2.6439299    7.351874
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.1527119   0.4875719    2.725229


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                -0.0016019   -0.0183649   0.0151612
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0268206   -0.0089775   0.0626187
6 months    ki1000108-IRC              INDIA        1                    NA                 0.0091998   -0.0128906   0.0312902
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0091226    0.0004771   0.0177681
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0040769   -0.0151603   0.0070066
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1064238    0.0478228   0.1650249
24 months   ki1000108-IRC              INDIA        1                    NA                 0.0086474   -0.0168810   0.0341758
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0332134    0.0169006   0.0495263
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0035544   -0.0178995   0.0250082


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA        1                    NA                -0.0403670   -0.5607939   0.3065302
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.2356381   -0.1438423   0.4892224
6 months    ki1000108-IRC              INDIA        1                    NA                 0.1307686   -0.2431298   0.3922089
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.3935743   -0.0181345   0.6387981
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.1388678   -0.5787290   0.1784405
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.3158659    0.1196524   0.4683470
24 months   ki1000108-IRC              INDIA        1                    NA                 0.0864736   -0.2065634   0.3083409
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.3691798    0.1899550   0.5087506
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0728643   -0.4882985   0.4224407
