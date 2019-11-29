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

**Outcome Variable:** y_rate_haz

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

agecat         studyid                    country                        nchldlt5    n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  ---------  -------  ------  -----------------
0-3 months     ki1000108-IRC              INDIA                          1               82     377  y_rate_haz       
0-3 months     ki1000108-IRC              INDIA                          2+             295     377  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              471     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2+             169     640  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              512     721  y_rate_haz       
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+             209     721  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            12371   19861  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2+            7490   19861  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          1               87     397  y_rate_haz       
3-6 months     ki1000108-IRC              INDIA                          2+             310     397  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              434     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2+             164     598  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              492     695  y_rate_haz       
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+             203     695  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1146    1656  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             510    1656  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             8103   12572  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2+            4469   12572  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          1               89     407  y_rate_haz       
6-9 months     ki1000108-IRC              INDIA                          2+             318     407  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1              410     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2+             155     565  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              488     688  y_rate_haz       
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+             200     688  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1036    1480  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             444    1480  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         1              261     557  y_rate_haz       
6-9 months     ki1148112-LCNI-5           MALAWI                         2+             296     557  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          1               88     400  y_rate_haz       
9-12 months    ki1000108-IRC              INDIA                          2+             312     400  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              413     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2+             153     566  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              475     674  y_rate_haz       
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+             199     674  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              764    1075  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             311    1075  y_rate_haz       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1              364    1101  y_rate_haz       
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   2+             737    1101  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         1              179     383  y_rate_haz       
9-12 months    ki1148112-LCNI-5           MALAWI                         2+             204     383  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          1               82     390  y_rate_haz       
12-15 months   ki1000108-IRC              INDIA                          2+             308     390  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1              391     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2+             141     532  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              463     660  y_rate_haz       
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             197     660  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              570     786  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             216     786  y_rate_haz       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1              324     958  y_rate_haz       
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+             634     958  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         1               52     125  y_rate_haz       
12-15 months   ki1148112-LCNI-5           MALAWI                         2+              73     125  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          1               78     382  y_rate_haz       
15-18 months   ki1000108-IRC              INDIA                          2+             304     382  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1              388     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2+             140     528  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              425     604  y_rate_haz       
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             179     604  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              481     662  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             181     662  y_rate_haz       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1              329    1006  y_rate_haz       
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+             677    1006  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         1               51     118  y_rate_haz       
15-18 months   ki1148112-LCNI-5           MALAWI                         2+              67     118  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          1               82     379  y_rate_haz       
18-21 months   ki1000108-IRC              INDIA                          2+             297     379  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1              394     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2+             147     541  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              387     546  y_rate_haz       
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             159     546  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                8       9  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       9  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         1              241     472  y_rate_haz       
18-21 months   ki1148112-LCNI-5           MALAWI                         2+             231     472  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          1               84     389  y_rate_haz       
21-24 months   ki1000108-IRC              INDIA                          2+             305     389  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              342     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+             129     471  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              340     490  y_rate_haz       
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             150     490  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         1              213     403  y_rate_haz       
21-24 months   ki1148112-LCNI-5           MALAWI                         2+             190     403  y_rate_haz       


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/601bf5df-4a92-47d7-870f-8c5e9d7c8fd2/80d7a9fd-6aa8-410e-820f-1e2f79f0c4d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/601bf5df-4a92-47d7-870f-8c5e9d7c8fd2/80d7a9fd-6aa8-410e-820f-1e2f79f0c4d4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/601bf5df-4a92-47d7-870f-8c5e9d7c8fd2/80d7a9fd-6aa8-410e-820f-1e2f79f0c4d4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2603247   -0.3978074   -0.1228421
0-3 months     ki1000108-IRC              INDIA                          2+                   NA                -0.2531914   -0.3132056   -0.1931773
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1844709   -0.2074149   -0.1615269
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.2060102   -0.2442793   -0.1677411
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.2205412   -0.2412969   -0.1997856
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.2559976   -0.2885640   -0.2234312
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0691705    0.0627194    0.0756217
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                 0.0369553    0.0247345    0.0491760
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0421265   -0.1067681    0.0225150
3-6 months     ki1000108-IRC              INDIA                          2+                   NA                -0.0532462   -0.0872242   -0.0192683
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0103407   -0.0315167    0.0108353
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.0878227   -0.1190011   -0.0566444
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0348096    0.0149473    0.0546718
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                 0.0048651   -0.0288917    0.0386218
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0853316   -0.1065611   -0.0641021
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.0798754   -0.1115687   -0.0481821
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0011068   -0.0057597    0.0079733
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.0058586   -0.0188215    0.0071043
6-9 months     ki1000108-IRC              INDIA                          1                    NA                -0.0367169   -0.0869415    0.0135077
6-9 months     ki1000108-IRC              INDIA                          2+                   NA                -0.0130953   -0.0375372    0.0113466
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0580866   -0.0729572   -0.0432161
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.1014714   -0.1257946   -0.0771482
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0302085   -0.0448832   -0.0155338
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.0308126   -0.0563797   -0.0052455
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0541079   -0.0740966   -0.0341192
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.0617635   -0.0941368   -0.0293903
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0411829    0.0161478    0.0662181
6-9 months     ki1148112-LCNI-5           MALAWI                         2+                   NA                 0.0148756   -0.0069354    0.0366865
9-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0124052   -0.0537900    0.0289796
9-12 months    ki1000108-IRC              INDIA                          2+                   NA                -0.0427583   -0.0609718   -0.0245449
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0592532   -0.0741560   -0.0443503
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.0550895   -0.0769350   -0.0332440
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0321135   -0.0453550   -0.0188720
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.0330916   -0.0549002   -0.0112831
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0739214   -0.0905137   -0.0573291
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.0574498   -0.0876708   -0.0272287
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0390220   -0.0562051   -0.0218390
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                -0.0558471   -0.0760535   -0.0356407
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0472400   -0.0773268   -0.0171531
9-12 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                -0.0383136   -0.0642969   -0.0123304
12-15 months   ki1000108-IRC              INDIA                          1                    NA                -0.0121693   -0.0565717    0.0322330
12-15 months   ki1000108-IRC              INDIA                          2+                   NA                -0.0554869   -0.0724910   -0.0384829
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0370401   -0.0495596   -0.0245206
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.0759860   -0.0938003   -0.0581718
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0379624   -0.0493263   -0.0265984
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.0358260   -0.0543720   -0.0172801
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0670625   -0.0841320   -0.0499930
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.0486684   -0.0803773   -0.0169596
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0448814   -0.0658893   -0.0238734
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                -0.0429448   -0.0683738   -0.0175157
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0009610   -0.0541980    0.0561199
12-15 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -0.0728160   -0.1233515   -0.0222805
15-18 months   ki1000108-IRC              INDIA                          1                    NA                -0.0403460   -0.0713971   -0.0092950
15-18 months   ki1000108-IRC              INDIA                          2+                   NA                -0.0385175   -0.0547685   -0.0222665
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0391262   -0.0503921   -0.0278603
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.0331692   -0.0514922   -0.0148461
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0183289   -0.0283749   -0.0082828
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.0182340   -0.0344377   -0.0020303
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0092647   -0.0276226    0.0090933
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.0345357   -0.0685340   -0.0005375
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0120653   -0.0341056    0.0099750
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                -0.0225523   -0.0362174   -0.0088871
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0349162   -0.0801104    0.0102781
15-18 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -0.0457068   -0.0814910   -0.0099225
18-21 months   ki1000108-IRC              INDIA                          1                    NA                -0.0187037   -0.0538383    0.0164310
18-21 months   ki1000108-IRC              INDIA                          2+                   NA                -0.0445620   -0.0593317   -0.0297924
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0074241   -0.0180054    0.0031571
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.0199065   -0.0354614   -0.0043516
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0299009   -0.0394652   -0.0203365
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.0240641   -0.0396567   -0.0084715
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0098474   -0.0312629    0.0115682
18-21 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -0.0190603   -0.0422461    0.0041256
21-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0197269   -0.0588331    0.0193792
21-24 months   ki1000108-IRC              INDIA                          2+                   NA                -0.0118518   -0.0263154    0.0026118
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0482154    0.0374929    0.0589378
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                 0.0395753    0.0217645    0.0573860
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0606434    0.0503705    0.0709163
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                 0.0524612    0.0373482    0.0675742
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0248349    0.0021548    0.0475150
21-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                 0.0253136    0.0048090    0.0458183


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0588634    0.0539415    0.0637854
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856607   -0.1022688   -0.0690525
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0034167   -0.0082813    0.0014478
6-9 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0516546   -0.0677408   -0.0355685
6-9 months     ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.0291520    0.0132692    0.0450348
9-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0659765   -0.0802683   -0.0516847
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0495887   -0.0642303   -0.0349470
9-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0433141   -0.0626948   -0.0239333
12-15 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0644098   -0.0788912   -0.0499283
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0429646   -0.0592166   -0.0267126
12-15 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0399695   -0.0773378   -0.0026011
15-18 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0193878   -0.0347002   -0.0040754
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0178586   -0.0309796   -0.0047376
15-18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0474219   -0.0733675   -0.0214763
18-21 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0144661   -0.0307469    0.0018148
21-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.0254759    0.0100795    0.0408724


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2+                   1                  0.0071333   -0.1430138    0.1572804
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0215393   -0.0662306    0.0231520
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0354564   -0.0740270    0.0031143
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0322153   -0.0456248   -0.0188058
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2+                   1                 -0.0111197   -0.0845642    0.0623247
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0774820   -0.1151876   -0.0397765
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0299445   -0.0690315    0.0091425
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0054562   -0.0327670    0.0436794
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0069654   -0.0213662    0.0074354
6-9 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000108-IRC              INDIA                          2+                   1                  0.0236216   -0.0321201    0.0793633
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0433847   -0.0719975   -0.0147720
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0006041   -0.0299560    0.0287477
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0076556   -0.0458507    0.0305395
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0263074   -0.0596908    0.0070760
9-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000108-IRC              INDIA                          2+                   1                 -0.0303531   -0.0755114    0.0148051
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                  0.0041637   -0.0222219    0.0305493
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0009781   -0.0266989    0.0247426
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0164717   -0.0180975    0.0510409
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0168251   -0.0425779    0.0089277
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1148112-LCNI-5           MALAWI                         2+                   1                  0.0089263   -0.0312943    0.0491469
12-15 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000108-IRC              INDIA                          2+                   1                 -0.0433176   -0.0907813    0.0041461
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0389460   -0.0607686   -0.0171233
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.0021363   -0.0197060    0.0239786
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0183941   -0.0176488    0.0544369
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                  0.0019366   -0.0321531    0.0360263
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0737770   -0.1491793    0.0016253
15-18 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000108-IRC              INDIA                          2+                   1                  0.0018286   -0.0333368    0.0369939
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                  0.0059570   -0.0157835    0.0276975
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.0000949   -0.0191290    0.0193187
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0252711   -0.0639448    0.0134026
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0104870   -0.0317503    0.0107764
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0107906   -0.0700276    0.0484464
18-21 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1000108-IRC              INDIA                          2+                   1                 -0.0258584   -0.0643139    0.0125971
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0124824   -0.0312782    0.0063134
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.0058368   -0.0124327    0.0241062
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0092129   -0.0412348    0.0228090
21-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1000108-IRC              INDIA                          2+                   1                  0.0078751   -0.0337340    0.0494842
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0086401   -0.0294992    0.0122190
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.0081822   -0.0265543    0.0101899
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                  0.0004788   -0.0305065    0.0314640


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          1                    NA                 0.0044976   -0.1139582    0.1229534
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0035693   -0.0180892    0.0109506
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0107195   -0.0215238    0.0000848
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0103071   -0.0146334   -0.0059808
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0097653   -0.0669131    0.0473825
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0166218   -0.0296426   -0.0036010
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0080355   -0.0193991    0.0033280
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0003291   -0.0124837    0.0118255
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0045236   -0.0091967    0.0001496
6-9 months     ki1000108-IRC              INDIA                          1                    NA                 0.0204492   -0.0233925    0.0642909
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0033397   -0.0128049    0.0061254
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0011553   -0.0096295    0.0073190
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0024533   -0.0098158    0.0147224
6-9 months     ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0120310   -0.0302987    0.0062368
9-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0237261   -0.0589909    0.0115387
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0037939   -0.0128101    0.0052224
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0021860   -0.0098885    0.0055165
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0079449   -0.0025009    0.0183907
9-12 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0105666   -0.0275856    0.0064523
9-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0039259   -0.0173305    0.0251823
12-15 months   ki1000108-IRC              INDIA                          1                    NA                -0.0332826   -0.0703038    0.0037387
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0038706   -0.0108982    0.0031569
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0003690   -0.0068865    0.0061485
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0026527   -0.0071365    0.0124419
12-15 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0019167   -0.0200924    0.0239259
12-15 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0409304   -0.0856119    0.0037511
15-18 months   ki1000108-IRC              INDIA                          1                    NA                 0.0018294   -0.0257619    0.0294206
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0014825   -0.0050039    0.0079689
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0014215   -0.0044692    0.0073122
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0101232   -0.0204383    0.0001919
15-18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0057933   -0.0204548    0.0088682
15-18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0125057   -0.0474746    0.0224631
18-21 months   ki1000108-IRC              INDIA                          1                    NA                -0.0213780   -0.0523247    0.0095687
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0035158   -0.0099225    0.0028909
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0019321   -0.0033968    0.0072611
18-21 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0046187   -0.0215041    0.0122666
21-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0058188   -0.0278449    0.0394824
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0019811   -0.0087991    0.0048368
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0018813   -0.0075115    0.0037489
21-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0006411   -0.0137044    0.0149865
