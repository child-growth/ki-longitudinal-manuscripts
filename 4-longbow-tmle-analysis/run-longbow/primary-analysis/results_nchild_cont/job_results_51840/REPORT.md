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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        nchldlt5    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki1000108-IRC              INDIA                          1               84     388
Birth       ki1000108-IRC              INDIA                          2+             304     388
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               18      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               9      27
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            12104   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+            7487   19591
6 months    ki1000108-IRC              INDIA                          1               89     407
6 months    ki1000108-IRC              INDIA                          2+             318     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              426     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+             157     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+             208     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1391    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2020
6 months    ki1148112-LCNI-5           MALAWI                         1              390     811
6 months    ki1148112-LCNI-5           MALAWI                         2+             421     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10887   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+            5913   16800
24 months   ki1000108-IRC              INDIA                          1               89     409
24 months   ki1000108-IRC              INDIA                          2+             320     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              423     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+             154     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             157     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6
24 months   ki1148112-LCNI-5           MALAWI                         1              283     571
24 months   ki1148112-LCNI-5           MALAWI                         2+             288     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5454    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+            3168    8622


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/412ef107-740c-4e6b-a074-661f4d9839b5/eaa10d8b-64b8-439c-aa7a-48731e067eda/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/412ef107-740c-4e6b-a074-661f4d9839b5/eaa10d8b-64b8-439c-aa7a-48731e067eda/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/412ef107-740c-4e6b-a074-661f4d9839b5/eaa10d8b-64b8-439c-aa7a-48731e067eda/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.2585909   -0.6604639    0.1432820
Birth       ki1000108-IRC              INDIA                          2+                   NA                -0.3218994   -0.4961386   -0.1476602
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2844444   -1.7465498   -0.8223391
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.7611111   -1.4650171   -0.0572051
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.6153278   -1.6436516   -1.5870040
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.5137731   -1.5565753   -1.4709709
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2418622   -1.5508128   -0.9329116
6 months    ki1000108-IRC              INDIA                          2+                   NA                -1.2228561   -1.3653438   -1.0803684
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.0179207   -1.1138460   -0.9219953
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -1.1334585   -1.3000800   -0.9668370
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.1481018   -1.2376935   -1.0585100
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -1.4078140   -1.5484832   -1.2671449
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5304988   -0.5909398   -0.4700577
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.5900335   -0.6912233   -0.4888437
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -1.6271379   -1.7273339   -1.5269418
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                -1.6602386   -1.7579191   -1.5625581
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3052962   -1.3334119   -1.2771805
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.3352849   -1.3850470   -1.2855229
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.6457310   -1.8686782   -1.4227838
24 months   ki1000108-IRC              INDIA                          2+                   NA                -1.8239952   -1.9290342   -1.7189563
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.5070348   -1.6137265   -1.4003431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -2.0462451   -2.2348932   -1.8575970
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.3503563   -1.4578475   -1.2428650
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -1.6289080   -1.7933889   -1.4644271
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -1.8262301   -1.9457646   -1.7066957
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -1.9165666   -2.0327166   -1.8004165
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.9659456   -2.0029763   -1.9289149
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -2.0860518   -2.1473963   -2.0247073


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1100000   -1.5086894   -0.7113106
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5750396   -1.5948141   -1.5552650
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5442232   -0.5932373   -0.4952090
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6431566   -1.7128296   -1.5734836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3131375   -1.3362767   -1.2899983
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8698249   -1.9516088   -1.7880409
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0124252   -2.0401279   -1.9847225


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 -0.0633085   -0.5011221    0.3745051
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.5233333   -0.3187029    1.3653695
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.1015547    0.0501281    0.1529814
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                  0.0190061   -0.3193603    0.3573725
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.1155378   -0.3068848    0.0758091
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.2597122   -0.4261416   -0.0932829
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0595347   -0.1764263    0.0573569
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0331007   -0.1731557    0.1069542
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0299887   -0.0830592    0.0230818
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 -0.1782643   -0.4242654    0.0677369
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.5392103   -0.7558935   -0.3225271
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.2785517   -0.4746308   -0.0824727
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0903364   -0.2570910    0.0764181
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.1201062   -0.1879386   -0.0522738


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0494503   -0.3951592    0.2962586
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1744444   -0.1218203    0.4707091
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0402883    0.0216456    0.0589309
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0074560   -0.2569848    0.2718967
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0691834   -0.1264191   -0.0119477
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0505766   -0.1009943   -0.0001588
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0137244   -0.0514658    0.0240170
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0160187   -0.0897074    0.0576700
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0078413   -0.0242169    0.0085343
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.1367466   -0.3323051    0.0588119
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0790831   -0.1437624   -0.0144038
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0791768   -0.1428219   -0.0155317
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0435947   -0.1282567    0.0410673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0464796   -0.0700435   -0.0229158
