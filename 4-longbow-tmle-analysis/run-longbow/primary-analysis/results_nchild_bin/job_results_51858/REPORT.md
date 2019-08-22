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

**Outcome Variable:** ever_sstunted

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

agecat        studyid                    country                        nchldlt5    ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  --------------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                       0       64     410
0-24 months   ki1000108-IRC              INDIA                          1                       1       25     410
0-24 months   ki1000108-IRC              INDIA                          2+                      0      244     410
0-24 months   ki1000108-IRC              INDIA                          2+                      1       77     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0      443     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1       69     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                      0      163     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                      1       25     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                       0      475     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                       1       66     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                      0      184     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                      1       33     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0     1479    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1      158    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                      0      669    2385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                      1       79    2385
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                       0      977    3188
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                       1       96    3188
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                      0     1879    3188
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                      1      236    3188
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       0      327     812
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       1       64     812
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                      0      315     812
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                      1      106     812
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    13954   27209
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3460   27209
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                      0     8253   27209
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                      1     1542   27209
0-6 months    ki1000108-IRC              INDIA                          1                       0       68     410
0-6 months    ki1000108-IRC              INDIA                          1                       1       21     410
0-6 months    ki1000108-IRC              INDIA                          2+                      0      280     410
0-6 months    ki1000108-IRC              INDIA                          2+                      1       41     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       0      488     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       1       24     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                      0      181     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                      1        7     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                       0      506     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                       1       35     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                      0      205     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                      1       12     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0     1564    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       73    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                      0      718    2385
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                      1       30    2385
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       0      111     267
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       1       11     267
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                      0      137     267
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                      1        8     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    14486   27143
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     2877   27143
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                      0     8674   27143
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                      1     1106   27143


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH



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
![](/tmp/a752e203-b711-495d-8033-2c88d45aee67/d209ebed-d250-45b7-977f-7b94d2b1bcf4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a752e203-b711-495d-8033-2c88d45aee67/d209ebed-d250-45b7-977f-7b94d2b1bcf4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a752e203-b711-495d-8033-2c88d45aee67/d209ebed-d250-45b7-977f-7b94d2b1bcf4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a752e203-b711-495d-8033-2c88d45aee67/d209ebed-d250-45b7-977f-7b94d2b1bcf4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2752131   0.1785582   0.3718681
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.2409814   0.1940530   0.2879098
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1352915   0.1057899   0.1647930
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1248863   0.0761569   0.1736157
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1175166   0.0903072   0.1447260
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1734456   0.1188470   0.2280441
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1009922   0.0849145   0.1170699
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1079438   0.0819592   0.1339284
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0850820   0.0556745   0.1144895
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1145740   0.0933798   0.1357682
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1651870   0.1281945   0.2021794
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.2462310   0.2049714   0.2874907
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1889106   0.1813799   0.1964413
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1712148   0.1570400   0.1853896
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.2288479   0.1397099   0.3179860
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.1287830   0.0920834   0.1654826
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0468750   0.0285532   0.0651968
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0372340   0.0101502   0.0643179
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0660496   0.0453317   0.0867674
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0602981   0.0303659   0.0902304
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0436472   0.0337747   0.0535197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0432374   0.0282705   0.0582044
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.0901639   0.0392448   0.1410831
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0551724   0.0179404   0.0924044
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1552790   0.1482556   0.1623023
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1324722   0.1189100   0.1460345


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1342857   0.1090095   0.1595619
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0993711   0.0873623   0.1113798
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1041405   0.0842158   0.1240653
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2093596   0.1813586   0.2373606
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1838362   0.1782586   0.1894138
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0442857   0.0290345   0.0595370
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0431866   0.0350267   0.0513464
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0711610   0.0402653   0.1020568
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1467413   0.1417260   0.1517566


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.8756173   0.5860954   1.3081585
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.9230908   0.5906533   1.4426341
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.4759242   1.0013918   2.1753246
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0688327   0.8008255   1.4265322
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.3466306   0.9511968   1.9064552
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.4906202   1.1297189   1.9668154
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9063273   0.8278484   0.9922458
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.5627449   0.3476473   0.9109284
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.7943262   0.3478373   1.8139348
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.9129224   0.5076968   1.6415849
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9906113   0.6552059   1.4977135
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 0.6119122   0.2538214   1.4751968
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8531243   0.7623645   0.9546891


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0264327   -0.1114913    0.0586260
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0010058   -0.0164075    0.0143960
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0130903   -0.0027231    0.0289037
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0016212   -0.0117891    0.0085468
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0190585   -0.0006982    0.0388153
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0441726    0.0152291    0.0731162
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0050744   -0.0100087   -0.0001400
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0776284   -0.1534281   -0.0018287
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0025893   -0.0113770    0.0061984
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0040443   -0.0146204    0.0065318
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0004606   -0.0058301    0.0049088
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0190029   -0.0533233    0.0153176
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0085376   -0.0130075   -0.0040677


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.1062489   -0.5063113    0.1875606
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0074898   -0.1289883    0.1009334
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1002267   -0.0285896    0.2129105
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0163143   -0.1238894    0.0809641
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1830079   -0.0388518    0.3574866
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.2109892    0.0617222    0.3365100
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0276028   -0.0547913   -0.0011151
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.5133492   -1.0958157   -0.0927611
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0584677   -0.2756059    0.1217084
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0652251   -0.2500336    0.0922608
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0106660   -0.1429330    0.1062944
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.2670406   -0.8374155    0.1262772
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0581814   -0.0889602   -0.0282726
