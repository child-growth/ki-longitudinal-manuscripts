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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        nchldlt5    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki1000108-IRC              INDIA                          1                 0       72     274
Birth       ki1000108-IRC              INDIA                          1                 1       12     274
Birth       ki1000108-IRC              INDIA                          2+                0      171     274
Birth       ki1000108-IRC              INDIA                          2+                1       19     274
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       14      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        4      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        1      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0      19
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     7865   12571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     4239   12571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                0      345   12571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                1      122   12571
6 months    ki1000108-IRC              INDIA                          1                 0       67     288
6 months    ki1000108-IRC              INDIA                          1                 1       22     288
6 months    ki1000108-IRC              INDIA                          2+                0      150     288
6 months    ki1000108-IRC              INDIA                          2+                1       49     288
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      357     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       69     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                0        8     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                1        1     435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      400     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1      107     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        5     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0     512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1267    1453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      124    1453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0       55    1453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        7    1453
6 months    ki1148112-LCNI-5           MALAWI                         1                 0      263     453
6 months    ki1148112-LCNI-5           MALAWI                         1                 1      127     453
6 months    ki1148112-LCNI-5           MALAWI                         2+                0       37     453
6 months    ki1148112-LCNI-5           MALAWI                         2+                1       26     453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     8093   11252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2794   11252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                0      272   11252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                1       93   11252
24 months   ki1000108-IRC              INDIA                          1                 0       58     290
24 months   ki1000108-IRC              INDIA                          1                 1       31     290
24 months   ki1000108-IRC              INDIA                          2+                0      108     290
24 months   ki1000108-IRC              INDIA                          2+                1       93     290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      298     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1      125     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                0        6     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                1        2     431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      276     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       81     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        3     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        1     361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        4       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0        0       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        0       5
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      163     327
24 months   ki1148112-LCNI-5           MALAWI                         1                 1      120     327
24 months   ki1148112-LCNI-5           MALAWI                         2+                0       21     327
24 months   ki1148112-LCNI-5           MALAWI                         2+                1       23     327
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2892    5673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2562    5673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0       98    5673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1      121    5673


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

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/28f4c116-4e26-4b72-9ffb-965d242a47bb/ccd0abf4-c622-4c8d-9d24-cf68e6163cf1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/28f4c116-4e26-4b72-9ffb-965d242a47bb/ccd0abf4-c622-4c8d-9d24-cf68e6163cf1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/28f4c116-4e26-4b72-9ffb-965d242a47bb/ccd0abf4-c622-4c8d-9d24-cf68e6163cf1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/28f4c116-4e26-4b72-9ffb-965d242a47bb/ccd0abf4-c622-4c8d-9d24-cf68e6163cf1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                0.1240643   0.0538943   0.1942342
Birth       ki1000108-IRC              INDIA                          2+                   NA                0.1044573   0.0598505   0.1490640
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3483194   0.3383034   0.3583354
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2858721   0.2541091   0.3176351
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2410755   0.1504387   0.3317124
6 months    ki1000108-IRC              INDIA                          2+                   NA                0.2500054   0.1888824   0.3111283
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0891445   0.0741647   0.1041243
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1129032   0.0341006   0.1917058
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3261253   0.2797216   0.3725290
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.4089830   0.2816176   0.5363484
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2557420   0.2456732   0.2658107
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2454706   0.2152106   0.2757306
24 months   ki1000108-IRC              INDIA                          1                    NA                0.3454450   0.2464154   0.4444746
24 months   ki1000108-IRC              INDIA                          2+                   NA                0.4619044   0.3924436   0.5313653
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4274028   0.3696637   0.4851419
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.5048614   0.3504239   0.6592988
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4683397   0.4514981   0.4851813
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.5809094   0.5200968   0.6417220


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1131387   0.0755636   0.1507138
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3469096   0.3373971   0.3564220
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2465278   0.1966653   0.2963902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0901583   0.0754267   0.1048899
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3377483   0.2941483   0.3813484
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2565766   0.2468050   0.2663482
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4275862   0.3705480   0.4846244
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4373089   0.3834610   0.4911567
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4729420   0.4569089   0.4889751


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 0.8419609   0.4144966   1.7102631
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8207183   0.7325382   0.9195132
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 1.0370416   0.6616323   1.6254578
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.2665193   0.6177715   2.5965442
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 1.2540671   0.8932473   1.7606369
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9598371   0.8459910   1.0890035
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 1.3371287   0.9675193   1.8479354
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.1812309   0.8469816   1.6473868
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.2403592   1.1112116   1.3845167


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0109256   -0.0676762   0.0458250
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0014099   -0.0035612   0.0007415
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0054522   -0.0706349   0.0815394
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0010138   -0.0024179   0.0044454
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0116231   -0.0064318   0.0296779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0008346   -0.0010453   0.0027145
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0821412   -0.0021931   0.1664755
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0099061   -0.0111692   0.0309813
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0046023    0.0006588   0.0085459


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0965680   -0.7307422   0.3052337
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0040641   -0.0102714   0.0021051
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0221162   -0.3407749   0.2867879
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0112446   -0.0275229   0.0485494
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0344134   -0.0205259   0.0863950
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0032530   -0.0041099   0.0105619
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1921044   -0.0315145   0.3672457
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0226524   -0.0268206   0.0697417
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0097313    0.0013222   0.0180696
