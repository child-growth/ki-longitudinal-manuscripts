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

**Outcome Variable:** whz

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
Birth       ki1000108-IRC              INDIA                          1               72     343
Birth       ki1000108-IRC              INDIA                          2+             271     343
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               15      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               8      23
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             9384   15688
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+            6304   15688
6 months    ki1000108-IRC              INDIA                          1               88     408
6 months    ki1000108-IRC              INDIA                          2+             320     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              426     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+             156     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+             208     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1390    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2019
6 months    ki1148112-LCNI-5           MALAWI                         1              390     811
6 months    ki1148112-LCNI-5           MALAWI                         2+             421     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10872   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+            5901   16773
24 months   ki1000108-IRC              INDIA                          1               89     409
24 months   ki1000108-IRC              INDIA                          2+             320     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              423     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+             155     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             157     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6
24 months   ki1148112-LCNI-5           MALAWI                         1              277     555
24 months   ki1148112-LCNI-5           MALAWI                         2+             278     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5434    8593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+            3159    8593


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
![](/tmp/8c9dc414-5abe-4d5a-9565-d4292a1ff3d8/d25bc3d0-3daa-4ccb-b1eb-3ad166178fcc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8c9dc414-5abe-4d5a-9565-d4292a1ff3d8/d25bc3d0-3daa-4ccb-b1eb-3ad166178fcc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8c9dc414-5abe-4d5a-9565-d4292a1ff3d8/d25bc3d0-3daa-4ccb-b1eb-3ad166178fcc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -1.0927551   -1.5631389   -0.6223714
Birth       ki1000108-IRC              INDIA                          2+                   NA                -0.9925803   -1.1994685   -0.7856921
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.0633333   -1.6993429   -0.4273238
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.1650000   -0.6730802    0.3430802
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7183101   -0.7464977   -0.6901224
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.6998890   -0.7435955   -0.6561825
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.5549424   -0.8624457   -0.2474392
6 months    ki1000108-IRC              INDIA                          2+                   NA                -0.6116660   -0.7636396   -0.4596923
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1362845   -0.2494737   -0.0230954
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.3778284   -0.5453343   -0.2103226
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0817663   -0.0148021    0.1783348
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.0735178   -0.2199659    0.0729303
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0675981    0.0005609    0.1346354
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                 0.1608321    0.0346055    0.2870588
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.5550724    0.4521756    0.6579692
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                 0.3551049    0.2540326    0.4561773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.5587740   -0.5864287   -0.5311193
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.6473058   -0.6918740   -0.6027376
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.7730871   -0.9979697   -0.5482045
24 months   ki1000108-IRC              INDIA                          2+                   NA                -0.7386177   -0.8386101   -0.6386252
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8724321   -0.9908062   -0.7540580
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.7868156   -0.9620856   -0.6115457
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.5769688   -0.6949228   -0.4590147
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.7186473   -0.9106108   -0.5266839
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0341761   -0.0834005    0.1517527
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -0.1135947   -0.2309422    0.0037528
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.2995714   -1.3355215   -1.2636213
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.2471966   -1.2985503   -1.1958430


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.7508696   -1.2358912   -0.2658480
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7238781   -0.7437238   -0.7040324
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0801680    0.0273223    0.1330136
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4379901    0.3664653    0.5095150
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5932472   -0.6127728   -0.5737215
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0548108   -0.1370859    0.0274643
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2972908   -1.3206179   -1.2739638


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                  0.1001749   -0.4147995    0.6151492
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.8983333    0.0842979    1.7123687
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.0184211   -0.0335084    0.0703505
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 -0.0567235   -0.4001734    0.2867263
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.2415439   -0.4450526   -0.0380353
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.1552841   -0.3323104    0.0217422
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0932340   -0.0500119    0.2364800
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.1999675   -0.3450215   -0.0549135
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0885318   -0.1404161   -0.0366475
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                  0.0344695   -0.2118935    0.2808325
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                  0.0856164   -0.1254563    0.2966892
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.1416785   -0.3657603    0.0824032
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.1477708   -0.3154650    0.0199235
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.0523748   -0.0091671    0.1139167


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.0821720   -0.3313333    0.4956774
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.3124638   -0.0224015    0.6473291
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0055681   -0.0237798    0.0126437
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0439873   -0.3150789    0.2271043
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0720861   -0.1430665   -0.0011056
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0520041   -0.1069496    0.0029414
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0125699   -0.0287881    0.0539278
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1170823   -0.1934169   -0.0407476
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0344732   -0.0537448   -0.0152015
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0272721   -0.1674741    0.2220183
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0155091   -0.0910601    0.0600419
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0333814   -0.1028811    0.0361183
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0889869   -0.1732103   -0.0047635
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0022806   -0.0240934    0.0286546
