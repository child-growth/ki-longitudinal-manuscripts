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
0-24 months   ki1000108-IRC              INDIA                          1                       0       64     291
0-24 months   ki1000108-IRC              INDIA                          1                       1       25     291
0-24 months   ki1000108-IRC              INDIA                          2+                      0      150     291
0-24 months   ki1000108-IRC              INDIA                          2+                      1       52     291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0      443     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1       69     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                      0       12     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                      1        0     524
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                       0      475     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                       1       66     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                      0        6     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                      1        0     547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0     1479    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1      158    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                      0       74    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                      1        5    1716
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                       0      977    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                       1       96    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                      0      729    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                      1      114    1916
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       0      327     454
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       1       64     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                      0       46     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                      1       17     454
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0    13954   18054
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3460   18054
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                      0      533   18054
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                      1      107   18054
0-6 months    ki1000108-IRC              INDIA                          1                       0       68     291
0-6 months    ki1000108-IRC              INDIA                          1                       1       21     291
0-6 months    ki1000108-IRC              INDIA                          2+                      0      177     291
0-6 months    ki1000108-IRC              INDIA                          2+                      1       25     291
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       0      488     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       1       24     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                      0       12     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                      1        0     524
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                       0      506     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                       1       35     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                      0        6     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                      1        0     547
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0     1564    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       73    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                      0       78    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                      1        1    1716
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       0      111     145
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       1       11     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                      0       21     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                      1        2     145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       0    14486   18002
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     2877   18002
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                      0      565   18002
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                      1       74   18002


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/57820aa6-0c11-4171-b401-f8c83adf1d35/5bb54fc7-aa1b-4861-b5f9-c1ddbf278ef2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/57820aa6-0c11-4171-b401-f8c83adf1d35/5bb54fc7-aa1b-4861-b5f9-c1ddbf278ef2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/57820aa6-0c11-4171-b401-f8c83adf1d35/5bb54fc7-aa1b-4861-b5f9-c1ddbf278ef2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/57820aa6-0c11-4171-b401-f8c83adf1d35/5bb54fc7-aa1b-4861-b5f9-c1ddbf278ef2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2723818   0.1785157   0.3662478
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.2615410   0.1998902   0.3231918
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0965180   0.0822089   0.1108272
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0632911   0.0095836   0.1169986
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0857436   0.0573383   0.1141488
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.1356566   0.1018095   0.1695037
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.1642258   0.1274322   0.2010195
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.2451129   0.1318376   0.3583881
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1973966   0.1904912   0.2043019
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1634098   0.1444697   0.1823499
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.2163788   0.1297950   0.3029626
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.1294430   0.0823616   0.1765244
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1643810   0.1579206   0.1708414
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1309784   0.1130017   0.1489551


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2646048   0.2138347   0.3153749
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0949883   0.0811119   0.1088648
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1096033   0.0864982   0.1327084
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1784141   0.1431575   0.2136707
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1975739   0.1908584   0.2042895
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1580756   0.1160883   0.2000629
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1639262   0.1576778   0.1701746


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.9602001   0.6324582   1.4577787
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.6557443   0.2770891   1.5518492
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.5821200   1.0524751   2.3783018
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.4925355   0.8920464   2.4972492
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8278251   0.7339072   0.9337616
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.5982242   0.3490268   1.0253431
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.7967977   0.6901165   0.9199702


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0077769   -0.0859064   0.0703526
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0015297   -0.0041096   0.0010503
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0238598    0.0052746   0.0424449
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0141883   -0.0023695   0.0307460
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0001774   -0.0012238   0.0015786
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0583032   -0.1262732   0.0096668
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0004548   -0.0016375   0.0007280


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0293908   -0.3713129    0.2272767
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0161038   -0.0435482    0.0106188
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.2176918    0.0254521    0.3720103
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0795244   -0.0171553    0.1670147
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0008978   -0.0062206    0.0079658
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.3688310   -0.8630465   -0.0057175
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0027742   -0.0100070    0.0044067
