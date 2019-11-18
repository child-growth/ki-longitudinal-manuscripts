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

agecat      studyid                    country                        nchldlt5    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  -------  ------  -----------------
Birth       ki1000108-IRC              INDIA                          1               72     343  whz              
Birth       ki1000108-IRC              INDIA                          2+             271     343  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              385     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+             147     532  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              504     707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+             203     707  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            10878   17991  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+            7113   17991  whz              
6 months    ki1000108-IRC              INDIA                          1               88     408  whz              
6 months    ki1000108-IRC              INDIA                          2+             320     408  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              438     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+             165     603  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+             208     715  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1390    2019  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2019  whz              
6 months    ki1148112-LCNI-5           MALAWI                         1              390     811  whz              
6 months    ki1148112-LCNI-5           MALAWI                         2+             421     811  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10872   16773  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+            5901   16773  whz              
24 months   ki1000108-IRC              INDIA                          1               89     409  whz              
24 months   ki1000108-IRC              INDIA                          2+             320     409  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              424     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+             155     579  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             157     514  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6  whz              
24 months   ki1148112-LCNI-5           MALAWI                         1              277     555  whz              
24 months   ki1148112-LCNI-5           MALAWI                         2+             278     555  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5434    8593  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+            3159    8593  whz              


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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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







# Results Detail

## Results Plots
![](/tmp/c7776983-94d7-44f4-befa-2a8e09427e4b/9bffd32c-5abc-4435-972b-4de223ddcfff/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c7776983-94d7-44f4-befa-2a8e09427e4b/9bffd32c-5abc-4435-972b-4de223ddcfff/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c7776983-94d7-44f4-befa-2a8e09427e4b/9bffd32c-5abc-4435-972b-4de223ddcfff/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -1.0787657   -1.5368863   -0.6206451
Birth       ki1000108-IRC              INDIA                          2+                   NA                -0.9901724   -1.1965122   -0.7838327
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.3143433   -1.4236858   -1.2050007
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -1.3104813   -1.4613582   -1.1596043
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2445490   -1.3449207   -1.1441772
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -1.2350740   -1.3912979   -1.0788501
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7745586   -0.8007638   -0.7483534
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.7655344   -0.8067155   -0.7243532
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.5619732   -0.8801804   -0.2437659
6 months    ki1000108-IRC              INDIA                          2+                   NA                -0.6094567   -0.7622004   -0.4567130
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1375115   -0.2435692   -0.0314537
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.3452905   -0.5138177   -0.1767632
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0747554   -0.0200112    0.1695221
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.0612099   -0.2097375    0.0873177
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0673297    0.0000617    0.1345977
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                 0.0953410   -0.0282564    0.2189383
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.5618084    0.4591374    0.6644793
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                 0.3410853    0.2405883    0.4415823
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.5616964   -0.5886372   -0.5347557
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.6538588   -0.6977260   -0.6099915
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.7784111   -1.0019448   -0.5548775
24 months   ki1000108-IRC              INDIA                          2+                   NA                -0.7367074   -0.8367433   -0.6366714
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8805969   -0.9943146   -0.7668793
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.9131526   -1.0709952   -0.7553099
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.5573684   -0.6710669   -0.4436700
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.7133783   -0.8950941   -0.5316626
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0073264   -0.1094449    0.1240976
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -0.1023410   -0.2194266    0.0147446
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3056484   -1.3414910   -1.2698058
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.2531669   -1.3068755   -1.1994582


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7776666   -0.7966629   -0.7586703
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0801680    0.0273223    0.1330136
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4379655    0.3664533    0.5094777
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5932472   -0.6127728   -0.5737215
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0547297   -0.1370054    0.0275459
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2972908   -1.3206179   -1.2739638


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                  0.0885933   -0.4143212    0.5915077
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   1                  0.0038620   -0.1824074    0.1901314
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.0094750   -0.1754641    0.1944140
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.0090242   -0.0387657    0.0568142
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 -0.0474835   -0.4031007    0.3081336
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.2077790   -0.4071455   -0.0084125
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.1359653   -0.3114524    0.0395218
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0280113   -0.1129072    0.1689298
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.2207231   -0.3645947   -0.0768514
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0921623   -0.1429168   -0.0414078
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                  0.0417038   -0.2036777    0.2870852
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0325556   -0.2245764    0.1594652
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.1560099   -0.3691530    0.0571332
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.1096674   -0.2737641    0.0544294
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.0524815   -0.0116592    0.1166222


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.0681826   -0.3328664    0.4692316
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0158846   -0.0555604    0.0873296
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0003976   -0.0524637    0.0532589
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0031080   -0.0200013    0.0137853
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0369566   -0.3194001    0.2454869
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0615792   -0.1267423    0.0035839
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0449932   -0.0967519    0.0067655
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0128383   -0.0287023    0.0543789
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1238429   -0.1999079   -0.0477779
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0315508   -0.0496763   -0.0134252
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0325961   -0.1608220    0.2260143
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0122701   -0.0811718    0.0566316
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0529818   -0.1188319    0.0128684
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0620561   -0.1440444    0.0199322
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0083576   -0.0182596    0.0349747
