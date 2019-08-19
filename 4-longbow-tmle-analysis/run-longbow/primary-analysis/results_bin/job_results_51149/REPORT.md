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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        nchldlt5    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                      0       35     291
0-24 months   ki1000108-IRC              INDIA                          1                      1       54     291
0-24 months   ki1000108-IRC              INDIA                          2+                     0       70     291
0-24 months   ki1000108-IRC              INDIA                          2+                     1      132     291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      295     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1      217     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0        9     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1        3     524
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      298     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      243     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0        4     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        2     547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1077    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      560    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0       51    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       28    1716
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0      711    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1      362    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     0      496    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     1      347    1916
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      145     454
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1      246     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0       24     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1       39     454
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     8565   18054
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     8849   18054
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0      348   18054
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      292   18054
0-6 months    ki1000108-IRC              INDIA                          1                      0       49     291
0-6 months    ki1000108-IRC              INDIA                          1                      1       40     291
0-6 months    ki1000108-IRC              INDIA                          2+                     0      118     291
0-6 months    ki1000108-IRC              INDIA                          2+                     1       84     291
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0      384     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1      128     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                     0       10     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                     1        2     524
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      386     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      155     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0        6     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        0     547
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1311    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      326    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0       66    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       13    1716
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0       81     145
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1       41     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                     0       13     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                     1       10     145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     9822   18002
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     7541   18002
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     0      413   18002
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      226   18002
6-24 months   ki1000108-IRC              INDIA                          1                      0       35     167
6-24 months   ki1000108-IRC              INDIA                          1                      1       14     167
6-24 months   ki1000108-IRC              INDIA                          2+                     0       70     167
6-24 months   ki1000108-IRC              INDIA                          2+                     1       48     167
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      238     335
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       89     335
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0        7     335
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1        1     335
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      280     373
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       88     373
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0        3     373
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        2     373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      858    1145
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      234    1145
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0       38    1145
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       15    1145
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0      711    1916
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1      362    1916
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     0      496    1916
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     1      347    1916
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      138     395
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1      205     395
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0       23     395
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1       29     395
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     5247    6804
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1308    6804
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0      183    6804
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1       66    6804


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
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/fce98eec-50a3-4916-b1ed-b706e09f49f3/ce4537da-be56-4666-b2e1-39778822863c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fce98eec-50a3-4916-b1ed-b706e09f49f3/ce4537da-be56-4666-b2e1-39778822863c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fce98eec-50a3-4916-b1ed-b706e09f49f3/ce4537da-be56-4666-b2e1-39778822863c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fce98eec-50a3-4916-b1ed-b706e09f49f3/ce4537da-be56-4666-b2e1-39778822863c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.6035812   0.5004145   0.7067479
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.6548292   0.5892283   0.7204300
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3425979   0.3196115   0.3655843
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.3623410   0.2546873   0.4699947
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3243771   0.2384247   0.4103296
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.4227507   0.3807771   0.4647242
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.6306257   0.5828469   0.6784044
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.6142000   0.4926076   0.7357925
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5063853   0.4969178   0.5158528
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.4655349   0.4377061   0.4933636
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.4467987   0.3422272   0.5513703
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.4174010   0.3487018   0.4861002
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1992771   0.1799422   0.2186119
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1690136   0.0856539   0.2523733
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3367691   0.2520428   0.4214955
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.4331482   0.2199801   0.6463164
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4319598   0.4227583   0.4411613
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.4074603   0.3805533   0.4343673
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2762342   0.1466574   0.4058110
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.4111658   0.3216012   0.5007303
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2140239   0.1896860   0.2383618
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.3216587   0.1980736   0.4452438
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3239184   0.2493777   0.3984591
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.4260055   0.3801550   0.4718560
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.5990868   0.5473388   0.6508348
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.5482984   0.4046689   0.6919279
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2001032   0.1884508   0.2117556
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2431769   0.1959418   0.2904121


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6391753   0.5839030   0.6944475
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3426573   0.3201957   0.3651190
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3700418   0.3180183   0.4220652
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6277533   0.5832380   0.6722686
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5063144   0.4970144   0.5156143
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4261168   0.3692020   0.4830316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1975524   0.1787088   0.2163961
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3517241   0.2737325   0.4297157
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4314521   0.4224311   0.4404731
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3712575   0.2977607   0.4447542
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2174672   0.1935626   0.2413719
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3700418   0.3180183   0.4220652
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5924051   0.5438847   0.6409254
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2019400   0.1906597   0.2132204


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.0849064   0.8909075   1.3211495
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0576277   0.7804452   1.4332541
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.3032690   0.9953609   1.7064265
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 0.9739535   0.7892807   1.2018353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9193294   0.8654237   0.9765927
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.9342037   0.7027921   1.2418133
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8481338   0.5133214   1.4013264
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 1.2861876   0.7419228   2.2297179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9432829   0.8817220   1.0091420
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.4884678   0.8882207   2.4943534
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.5029101   1.0071269   2.2427549
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.3151630   1.0364089   1.6688911
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 0.9152237   0.6957206   1.2039809
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.2152576   0.9976835   1.4802801


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0355940   -0.0496643   0.1208523
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0000595   -0.0048243   0.0049433
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0456646    0.0035599   0.0877693
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0028724   -0.0201394   0.0143947
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0000709   -0.0017177   0.0015759
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0206819   -0.1074448   0.0660810
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0017246   -0.0055857   0.0021365
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0149550   -0.0204332   0.0503432
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0005078   -0.0021453   0.0011298
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0950233   -0.0173993   0.2074458
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0034433   -0.0023202   0.0092068
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0461233    0.0147832   0.0774635
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0066817   -0.0251591   0.0117956
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0018368   -0.0008910   0.0045647


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0556874   -0.0878689   0.1802999
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0001735   -0.0141813   0.0143252
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1234040   -0.0120691   0.2407430
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0045756   -0.0324631   0.0225586
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0001400   -0.0033979   0.0031072
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0485358   -0.2732540   0.1365216
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0087300   -0.0284610   0.0106224
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0425192   -0.0637645   0.1381838
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0011769   -0.0049791   0.0026109
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.2559497   -0.1183788   0.5049881
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0158338   -0.0110079   0.0419628
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1246436    0.0233901   0.2153992
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0112790   -0.0429789   0.0194575
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0090960   -0.0045237   0.0225309
