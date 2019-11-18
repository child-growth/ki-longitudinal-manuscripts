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

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country      nhh          n_cell     n  outcome_variable 
----------  -------------------------  -----------  ----------  -------  ----  -----------------
Birth       ki1000108-IRC              INDIA        3 or less        52   343  whz              
Birth       ki1000108-IRC              INDIA        4-5             131   343  whz              
Birth       ki1000108-IRC              INDIA        6-7              84   343  whz              
Birth       ki1000108-IRC              INDIA        8+               76   343  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less       104   575  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5             244   575  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7             130   575  whz              
Birth       ki1017093-NIH-Birth        BANGLADESH   8+               97   575  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less       103   532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5             249   532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7             114   532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH   8+               66   532  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less       103   707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5             318   707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7             167   707  whz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+              119   707  whz              
6 months    ki1000108-IRC              INDIA        3 or less        57   408  whz              
6 months    ki1000108-IRC              INDIA        4-5             157   408  whz              
6 months    ki1000108-IRC              INDIA        6-7             107   408  whz              
6 months    ki1000108-IRC              INDIA        8+               87   408  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        33   380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             166   380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7             115   380  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               66   380  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less        95   537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5             227   537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7             128   537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH   8+               87   537  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less       105   603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5             289   603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7             130   603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH   8+               79   603  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less       104   715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5             326   715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7             170   715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+              115   715  whz              
6 months    ki1148112-LCNI-5           MALAWI       3 or less       224   816  whz              
6 months    ki1148112-LCNI-5           MALAWI       4-5             340   816  whz              
6 months    ki1148112-LCNI-5           MALAWI       6-7             182   816  whz              
6 months    ki1148112-LCNI-5           MALAWI       8+               70   816  whz              
24 months   ki1000108-IRC              INDIA        3 or less        58   409  whz              
24 months   ki1000108-IRC              INDIA        4-5             158   409  whz              
24 months   ki1000108-IRC              INDIA        6-7             107   409  whz              
24 months   ki1000108-IRC              INDIA        8+               86   409  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        74   428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5             184   428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7             100   428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH   8+               70   428  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less       106   579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             273   579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7             117   579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH   8+               83   579  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        69   514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             232   514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             130   514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               83   514  whz              
24 months   ki1148112-LCNI-5           MALAWI       3 or less       157   558  whz              
24 months   ki1148112-LCNI-5           MALAWI       4-5             230   558  whz              
24 months   ki1148112-LCNI-5           MALAWI       6-7             123   558  whz              
24 months   ki1148112-LCNI-5           MALAWI       8+               48   558  whz              


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/59d9792e-5d51-4545-886d-eb5c261c6d32/ca2e70c0-37fb-4a3b-94b1-689c0700943d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/59d9792e-5d51-4545-886d-eb5c261c6d32/ca2e70c0-37fb-4a3b-94b1-689c0700943d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/59d9792e-5d51-4545-886d-eb5c261c6d32/ca2e70c0-37fb-4a3b-94b1-689c0700943d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                -1.2177278   -1.7569077   -0.6785479
Birth       ki1000108-IRC              INDIA        4-5                  NA                -0.9724118   -1.2823594   -0.6624642
Birth       ki1000108-IRC              INDIA        6-7                  NA                -0.8250725   -1.1792601   -0.4708849
Birth       ki1000108-IRC              INDIA        8+                   NA                -1.0702858   -1.5048974   -0.6356741
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -1.8086310   -2.0509798   -1.5662823
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -1.3282919   -1.4669421   -1.1896416
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -1.2991307   -1.4982604   -1.1000010
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -1.1581445   -1.4597276   -0.8565613
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -1.3191813   -1.4803226   -1.1580400
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -1.3219203   -1.4397581   -1.2040825
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -1.2715126   -1.4266060   -1.1164191
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.2888184   -1.5166529   -1.0609839
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -1.3267515   -1.5367517   -1.1167512
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -1.3174493   -1.4657500   -1.1691486
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -1.1172602   -1.3221679   -0.9123526
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -1.1486223   -1.3295769   -0.9676677
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.5183597   -0.8881744   -0.1485450
6 months    ki1000108-IRC              INDIA        4-5                  NA                -0.5531398   -0.7673257   -0.3389540
6 months    ki1000108-IRC              INDIA        6-7                  NA                -0.5813424   -0.8568137   -0.3058711
6 months    ki1000108-IRC              INDIA        8+                   NA                -0.7164103   -1.0304071   -0.4024136
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.4617637   -0.8508791   -0.0726483
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                -1.0277073   -1.2032793   -0.8521352
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                -1.1690139   -1.4064033   -0.9316244
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                -1.0701918   -1.3469349   -0.7934487
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.5540966   -0.7384830   -0.3697101
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.4841245   -0.6208647   -0.3473842
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.4184020   -0.6241086   -0.2126954
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.3977583   -0.6640425   -0.1314742
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.2278888   -0.4884398    0.0326622
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.1450042   -0.2878880   -0.0021204
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.3280105   -0.5754171   -0.0806040
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.4686050   -0.8238010   -0.1134091
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1628099   -0.0573152    0.3829350
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.0222717   -0.1712042    0.1266608
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                 0.0064314   -0.1802168    0.1930796
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                 0.1400020   -0.0332209    0.3132248
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.5590613    0.4135123    0.7046104
6 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                 0.4641273    0.3527823    0.5754724
6 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                 0.3894306    0.2371624    0.5416987
6 months    ki1148112-LCNI-5           MALAWI       8+                   NA                 0.2208312   -0.0608914    0.5025538
24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.6102681   -0.8843296   -0.3362067
24 months   ki1000108-IRC              INDIA        4-5                  NA                -0.8353097   -0.9869528   -0.6836667
24 months   ki1000108-IRC              INDIA        6-7                  NA                -0.6689076   -0.8470554   -0.4907597
24 months   ki1000108-IRC              INDIA        8+                   NA                -0.7394646   -0.9633158   -0.5156135
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.9535624   -1.1841511   -0.7229736
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.8813110   -1.0282274   -0.7343946
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.9204581   -1.1260025   -0.7149137
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.9498686   -1.2387243   -0.6610129
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.6708842   -0.9083818   -0.4333865
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.8710419   -0.9975226   -0.7445613
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -1.0556119   -1.2981603   -0.8130634
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.2960006   -1.5521547   -1.0398465
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.6439668   -0.8259271   -0.4620064
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.5778390   -0.7510912   -0.4045868
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.5697460   -0.8099985   -0.3294935
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.8830682   -1.0634685   -0.7026680
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0221210   -0.1891106    0.1448686
24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                -0.0327561   -0.1611266    0.0956143
24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                -0.0544159   -0.2223366    0.1135049
24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                -0.0865709   -0.3487392    0.1755974


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.2441513   -1.3281130   -1.1601897
6 months    ki1000108-IRC              INDIA        NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1148112-LCNI-5           MALAWI       NA                   NA                 0.4417647    0.3702742    0.5132552
24 months   ki1000108-IRC              INDIA        NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                -0.0477867   -0.1301103    0.0345368


### Parameter: ATE


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        4-5                  3 or less          0.2453160   -0.3755617    0.8661937
Birth       ki1000108-IRC              INDIA        6-7                  3 or less          0.3926553   -0.2540744    1.0393850
Birth       ki1000108-IRC              INDIA        8+                   3 or less          0.1474420   -0.5474083    0.8422924
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.4803392    0.2009659    0.7597124
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.5095003    0.1951304    0.8238702
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.6504866    0.2633809    1.0375923
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0027390   -0.2024022    0.1969241
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0476687   -0.1753607    0.2706981
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less          0.0303628   -0.2478946    0.3086202
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0093021   -0.2478373    0.2664416
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.2094912   -0.0839148    0.5028972
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.1781292   -0.0982769    0.4545353
6 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        4-5                  3 or less         -0.0347801   -0.4625423    0.3929820
6 months    ki1000108-IRC              INDIA        6-7                  3 or less         -0.0629827   -0.5230054    0.3970400
6 months    ki1000108-IRC              INDIA        8+                   3 or less         -0.1980506   -0.6867095    0.2906083
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.5659436   -0.9930484   -0.1388388
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.7072502   -1.1640053   -0.2504951
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.6084281   -1.0856798   -0.1311765
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0699721   -0.1585181    0.2984622
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.1356946   -0.1392491    0.4106383
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.1563382   -0.1667284    0.4794048
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0828846   -0.2140450    0.3798143
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.1001217   -0.4594841    0.2592407
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.2407162   -0.6807407    0.1993083
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1850816   -0.4508910    0.0807278
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1563785   -0.4449861    0.1322291
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0228079   -0.3029660    0.2573502
6 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0949340   -0.2783380    0.0884700
6 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.1696307   -0.3804081    0.0411466
6 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.3382301   -0.6553402   -0.0211201
24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.2250416   -0.5383651    0.0882819
24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.0586394   -0.3851395    0.2678606
24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.1291965   -0.4837824    0.2253894
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0722514   -0.2005155    0.3450184
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0331043   -0.2755885    0.3417970
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0036938   -0.3655695    0.3729570
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.2001578   -0.4662283    0.0659127
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.3847277   -0.7221182   -0.0473372
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.6251164   -0.9735273   -0.2767056
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0661278   -0.1844424    0.3166979
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0742207   -0.2259922    0.3744337
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.2391015   -0.4950579    0.0168550
24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0106351   -0.2218437    0.2005734
24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0322949   -0.2691304    0.2045407
24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0644499   -0.3743525    0.2454527


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                 0.2071447   -0.2866768    0.7009662
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.4587093    0.2384157    0.6790029
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0207226   -0.1278003    0.1692455
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0826001   -0.1192960    0.2844962
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0805700   -0.4275701    0.2664301
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.5503942   -0.9309737   -0.1698148
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.1066928   -0.0668060    0.2801916
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0287982   -0.2170248    0.2746212
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.1330476   -0.3474753    0.0813800
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.1172966   -0.2415504    0.0069571
24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.1355469   -0.3890298    0.1179361
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0419833   -0.1696253    0.2535919
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.2219829   -0.4425673   -0.0013984
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0336166   -0.1500784    0.2173116
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0256657   -0.1637944    0.1124629
