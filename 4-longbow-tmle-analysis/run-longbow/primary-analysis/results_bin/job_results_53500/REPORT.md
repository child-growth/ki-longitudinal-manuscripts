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
* W_mwtkg
* W_mbmi
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
* delta_W_mwtkg
* delta_W_mbmi
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0      442     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1       70     700
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    13936   27200
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3474   27200
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                      0     8244   27200
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                      1     1546   27200
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    14467   27134
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     2892   27134
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                      0     8665   27134
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                      1     1110   27134


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
![](/tmp/41bf6d37-5eea-43bf-b5d6-3eee69f9bd7c/f0115696-ca0d-4af8-8dcf-e34f6fd1a1b6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/41bf6d37-5eea-43bf-b5d6-3eee69f9bd7c/f0115696-ca0d-4af8-8dcf-e34f6fd1a1b6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/41bf6d37-5eea-43bf-b5d6-3eee69f9bd7c/f0115696-ca0d-4af8-8dcf-e34f6fd1a1b6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/41bf6d37-5eea-43bf-b5d6-3eee69f9bd7c/f0115696-ca0d-4af8-8dcf-e34f6fd1a1b6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2728124   0.1785374   0.3670874
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.2414702   0.1946243   0.2883161
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1367230   0.1069736   0.1664723
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1362572   0.0870955   0.1854188
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1191954   0.0916554   0.1467355
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1724350   0.1200993   0.2247707
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0977464   0.0823522   0.1131406
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1149512   0.0865431   0.1433592
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0863603   0.0569541   0.1157664
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1126675   0.0913440   0.1339911
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1695005   0.1306951   0.2083059
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.2491591   0.2076189   0.2906994
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1898969   0.1824192   0.1973746
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1766488   0.1624542   0.1908435
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.2279412   0.1390737   0.3168086
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.1296382   0.0928653   0.1664111
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0468750   0.0285532   0.0651968
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0372340   0.0101502   0.0643179
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0655577   0.0448138   0.0863015
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.0602254   0.0302047   0.0902461
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0440720   0.0340734   0.0540707
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0421388   0.0276111   0.0566665
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.0901639   0.0392448   0.1410831
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0551724   0.0179404   0.0924044
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1577590   0.1506551   0.1648628
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1348015   0.1212499   0.1483531


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0993711   0.0873623   0.1113798
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1041405   0.0842158   0.1240653
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2093596   0.1813586   0.2373606
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1845588   0.1789526   0.1901651
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0442857   0.0290345   0.0595370
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0431866   0.0350267   0.0513464
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0711610   0.0402653   0.1020568
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1474902   0.1424375   0.1525429


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.8851143   0.5958799   1.3147403
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.9965932   0.6539754   1.5187087
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.4466579   0.9908582   2.1121277
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.1760147   0.8775291   1.5760280
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.3046223   0.9189216   1.8522137
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.4699612   1.1109931   1.9449138
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9302354   0.8517830   1.0159136
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.5687354   0.3513810   0.9205392
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.7943262   0.3478373   1.8139348
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.9186631   0.5090389   1.6579121
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9561338   0.6331224   1.4439418
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 0.6119122   0.2538214   1.4751968
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8544777   0.7655144   0.9537797


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0240319   -0.1067756    0.0587117
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0010087   -0.0163071    0.0142898
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0114114   -0.0044901    0.0273130
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0016247   -0.0080081    0.0112574
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0177802   -0.0036260    0.0391865
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0398591    0.0094631    0.0702551
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0053381   -0.0100807   -0.0005955
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0767216   -0.1524035   -0.0010398
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0025893   -0.0113770    0.0061984
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0035524   -0.0141407    0.0070359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0008855   -0.0063241    0.0045532
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0190029   -0.0533233    0.0153176
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0102687   -0.0147796   -0.0057578


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0965989   -0.4847748    0.1900932
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0074323   -0.1267033    0.0992129
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0873724   -0.0423853    0.2009777
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0163496   -0.0855471    0.1086815
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1707332   -0.0663066    0.3550791
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1903859    0.0323159    0.3226354
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0289235   -0.0549256   -0.0035623
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.5073528   -1.0899782   -0.0871465
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0584677   -0.2756059    0.1217084
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0572918   -0.2423048    0.1001676
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0205029   -0.1544151    0.0978754
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.2670406   -0.8374155    0.1262772
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0696231   -0.1004975   -0.0396149
