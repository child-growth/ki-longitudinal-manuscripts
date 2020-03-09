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

agecat      studyid         country      nhh          n_cell     n  outcome_variable 
----------  --------------  -----------  ----------  -------  ----  -----------------
Birth       IRC             INDIA        3 or less        52   343  whz              
Birth       IRC             INDIA        4-5             131   343  whz              
Birth       IRC             INDIA        6-7              84   343  whz              
Birth       IRC             INDIA        8+               76   343  whz              
Birth       NIH-Birth       BANGLADESH   3 or less       104   575  whz              
Birth       NIH-Birth       BANGLADESH   4-5             244   575  whz              
Birth       NIH-Birth       BANGLADESH   6-7             130   575  whz              
Birth       NIH-Birth       BANGLADESH   8+               97   575  whz              
Birth       NIH-Crypto      BANGLADESH   3 or less       103   707  whz              
Birth       NIH-Crypto      BANGLADESH   4-5             318   707  whz              
Birth       NIH-Crypto      BANGLADESH   6-7             167   707  whz              
Birth       NIH-Crypto      BANGLADESH   8+              119   707  whz              
Birth       PROVIDE         BANGLADESH   3 or less       103   532  whz              
Birth       PROVIDE         BANGLADESH   4-5             249   532  whz              
Birth       PROVIDE         BANGLADESH   6-7             114   532  whz              
Birth       PROVIDE         BANGLADESH   8+               66   532  whz              
6 months    IRC             INDIA        3 or less        57   408  whz              
6 months    IRC             INDIA        4-5             157   408  whz              
6 months    IRC             INDIA        6-7             107   408  whz              
6 months    IRC             INDIA        8+               87   408  whz              
6 months    LCNI-5          MALAWI       3 or less       224   816  whz              
6 months    LCNI-5          MALAWI       4-5             340   816  whz              
6 months    LCNI-5          MALAWI       6-7             182   816  whz              
6 months    LCNI-5          MALAWI       8+               70   816  whz              
6 months    NIH-Birth       BANGLADESH   3 or less        95   537  whz              
6 months    NIH-Birth       BANGLADESH   4-5             227   537  whz              
6 months    NIH-Birth       BANGLADESH   6-7             128   537  whz              
6 months    NIH-Birth       BANGLADESH   8+               87   537  whz              
6 months    NIH-Crypto      BANGLADESH   3 or less       104   715  whz              
6 months    NIH-Crypto      BANGLADESH   4-5             326   715  whz              
6 months    NIH-Crypto      BANGLADESH   6-7             170   715  whz              
6 months    NIH-Crypto      BANGLADESH   8+              115   715  whz              
6 months    PROVIDE         BANGLADESH   3 or less       105   603  whz              
6 months    PROVIDE         BANGLADESH   4-5             289   603  whz              
6 months    PROVIDE         BANGLADESH   6-7             130   603  whz              
6 months    PROVIDE         BANGLADESH   8+               79   603  whz              
6 months    SAS-FoodSuppl   INDIA        3 or less        33   380  whz              
6 months    SAS-FoodSuppl   INDIA        4-5             166   380  whz              
6 months    SAS-FoodSuppl   INDIA        6-7             115   380  whz              
6 months    SAS-FoodSuppl   INDIA        8+               66   380  whz              
24 months   IRC             INDIA        3 or less        58   409  whz              
24 months   IRC             INDIA        4-5             158   409  whz              
24 months   IRC             INDIA        6-7             107   409  whz              
24 months   IRC             INDIA        8+               86   409  whz              
24 months   LCNI-5          MALAWI       3 or less       157   558  whz              
24 months   LCNI-5          MALAWI       4-5             230   558  whz              
24 months   LCNI-5          MALAWI       6-7             123   558  whz              
24 months   LCNI-5          MALAWI       8+               48   558  whz              
24 months   NIH-Birth       BANGLADESH   3 or less        74   428  whz              
24 months   NIH-Birth       BANGLADESH   4-5             184   428  whz              
24 months   NIH-Birth       BANGLADESH   6-7             100   428  whz              
24 months   NIH-Birth       BANGLADESH   8+               70   428  whz              
24 months   NIH-Crypto      BANGLADESH   3 or less        69   514  whz              
24 months   NIH-Crypto      BANGLADESH   4-5             232   514  whz              
24 months   NIH-Crypto      BANGLADESH   6-7             130   514  whz              
24 months   NIH-Crypto      BANGLADESH   8+               83   514  whz              
24 months   PROVIDE         BANGLADESH   3 or less       106   579  whz              
24 months   PROVIDE         BANGLADESH   4-5             273   579  whz              
24 months   PROVIDE         BANGLADESH   6-7             117   579  whz              
24 months   PROVIDE         BANGLADESH   8+               83   579  whz              


The following strata were considered:

* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/6b3432c1-b509-4b9c-a2dc-3aa9a3c2a722/f3834655-2263-4fd7-b25a-99ecadf985bf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6b3432c1-b509-4b9c-a2dc-3aa9a3c2a722/f3834655-2263-4fd7-b25a-99ecadf985bf/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6b3432c1-b509-4b9c-a2dc-3aa9a3c2a722/f3834655-2263-4fd7-b25a-99ecadf985bf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            NA                -1.1918794   -1.7122003   -0.6715586
Birth       IRC             INDIA        4-5                  NA                -0.9795179   -1.2882586   -0.6707772
Birth       IRC             INDIA        6-7                  NA                -0.8375729   -1.1897833   -0.4853626
Birth       IRC             INDIA        8+                   NA                -1.1046667   -1.5150170   -0.6943165
Birth       NIH-Birth       BANGLADESH   3 or less            NA                -1.7387977   -1.9671252   -1.5104702
Birth       NIH-Birth       BANGLADESH   4-5                  NA                -1.3269223   -1.4648917   -1.1889529
Birth       NIH-Birth       BANGLADESH   6-7                  NA                -1.3406388   -1.5425876   -1.1386899
Birth       NIH-Birth       BANGLADESH   8+                   NA                -1.0888284   -1.3943237   -0.7833330
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                -1.3283551   -1.5432040   -1.1135061
Birth       NIH-Crypto      BANGLADESH   4-5                  NA                -1.3004081   -1.4540406   -1.1467756
Birth       NIH-Crypto      BANGLADESH   6-7                  NA                -1.1414238   -1.3536779   -0.9291698
Birth       NIH-Crypto      BANGLADESH   8+                   NA                -1.3283343   -1.4955200   -1.1611487
Birth       PROVIDE         BANGLADESH   3 or less            NA                -1.2837118   -1.4451393   -1.1222842
Birth       PROVIDE         BANGLADESH   4-5                  NA                -1.3204935   -1.4377084   -1.2032786
Birth       PROVIDE         BANGLADESH   6-7                  NA                -1.2728437   -1.4289547   -1.1167326
Birth       PROVIDE         BANGLADESH   8+                   NA                -1.2537670   -1.5041965   -1.0033376
6 months    IRC             INDIA        3 or less            NA                -0.6365941   -0.9962366   -0.2769515
6 months    IRC             INDIA        4-5                  NA                -0.5596592   -0.7684167   -0.3509018
6 months    IRC             INDIA        6-7                  NA                -0.5223799   -0.8013629   -0.2433969
6 months    IRC             INDIA        8+                   NA                -0.7517209   -1.0616852   -0.4417565
6 months    LCNI-5          MALAWI       3 or less            NA                 0.5710697    0.4301210    0.7120184
6 months    LCNI-5          MALAWI       4-5                  NA                 0.4545749    0.3455699    0.5635798
6 months    LCNI-5          MALAWI       6-7                  NA                 0.3921625    0.2455272    0.5387978
6 months    LCNI-5          MALAWI       8+                   NA                 0.2311667   -0.0498322    0.5121656
6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.5634965   -0.7587051   -0.3682880
6 months    NIH-Birth       BANGLADESH   4-5                  NA                -0.4734041   -0.6120381   -0.3347701
6 months    NIH-Birth       BANGLADESH   6-7                  NA                -0.4171058   -0.6058306   -0.2283810
6 months    NIH-Birth       BANGLADESH   8+                   NA                -0.4488872   -0.7426632   -0.1551111
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                 0.1577926   -0.0326470    0.3482322
6 months    NIH-Crypto      BANGLADESH   4-5                  NA                -0.0333120   -0.1825747    0.1159507
6 months    NIH-Crypto      BANGLADESH   6-7                  NA                -0.0044477   -0.1957002    0.1868047
6 months    NIH-Crypto      BANGLADESH   8+                   NA                 0.1524798   -0.0145423    0.3195019
6 months    PROVIDE         BANGLADESH   3 or less            NA                -0.0861997   -0.2793566    0.1069572
6 months    PROVIDE         BANGLADESH   4-5                  NA                -0.1807058   -0.2957369   -0.0656747
6 months    PROVIDE         BANGLADESH   6-7                  NA                -0.2468256   -0.4320620   -0.0615892
6 months    PROVIDE         BANGLADESH   8+                   NA                -0.3192256   -0.5837536   -0.0546976
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                -0.5287128   -0.8683474   -0.1890781
6 months    SAS-FoodSuppl   INDIA        4-5                  NA                -1.0018946   -1.1775061   -0.8262830
6 months    SAS-FoodSuppl   INDIA        6-7                  NA                -1.1818262   -1.4162934   -0.9473589
6 months    SAS-FoodSuppl   INDIA        8+                   NA                -1.0398285   -1.3139594   -0.7656977
24 months   IRC             INDIA        3 or less            NA                -0.6128442   -0.8897541   -0.3359344
24 months   IRC             INDIA        4-5                  NA                -0.8166332   -0.9655910   -0.6676755
24 months   IRC             INDIA        6-7                  NA                -0.6683603   -0.8374404   -0.4992803
24 months   IRC             INDIA        8+                   NA                -0.7829958   -0.9868543   -0.5791373
24 months   LCNI-5          MALAWI       3 or less            NA                -0.0171458   -0.1857673    0.1514757
24 months   LCNI-5          MALAWI       4-5                  NA                -0.0339739   -0.1623684    0.0944205
24 months   LCNI-5          MALAWI       6-7                  NA                -0.0094133   -0.1769217    0.1580951
24 months   LCNI-5          MALAWI       8+                   NA                -0.1450331   -0.4240330    0.1339668
24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.9980961   -1.2496569   -0.7465352
24 months   NIH-Birth       BANGLADESH   4-5                  NA                -0.8841273   -1.0340247   -0.7342299
24 months   NIH-Birth       BANGLADESH   6-7                  NA                -0.9166147   -1.1260617   -0.7071678
24 months   NIH-Birth       BANGLADESH   8+                   NA                -0.9375793   -1.2240503   -0.6511083
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.5994877   -0.8006917   -0.3982837
24 months   NIH-Crypto      BANGLADESH   4-5                  NA                -0.6317056   -0.7791238   -0.4842873
24 months   NIH-Crypto      BANGLADESH   6-7                  NA                -0.5185720   -0.7238047   -0.3133393
24 months   NIH-Crypto      BANGLADESH   8+                   NA                -0.6872268   -0.9128220   -0.4616316
24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.7764939   -0.9709887   -0.5819992
24 months   PROVIDE         BANGLADESH   4-5                  NA                -0.8944771   -1.0101008   -0.7788534
24 months   PROVIDE         BANGLADESH   6-7                  NA                -0.9338035   -1.1339069   -0.7337001
24 months   PROVIDE         BANGLADESH   8+                   NA                -0.9234344   -1.1412678   -0.7056009


### Parameter: E(Y)


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       NIH-Birth       BANGLADESH   NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto      BANGLADESH   NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE         BANGLADESH   NA                   NA                -1.2984586   -1.3752758   -1.2216415
6 months    IRC             INDIA        NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    LCNI-5          MALAWI       NA                   NA                 0.4417647    0.3702742    0.5132552
6 months    NIH-Birth       BANGLADESH   NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto      BANGLADESH   NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROVIDE         BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-FoodSuppl   INDIA        NA                   NA                -1.0121579   -1.1280429   -0.8962729
24 months   IRC             INDIA        NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   LCNI-5          MALAWI       NA                   NA                -0.0477867   -0.1301103    0.0345368
24 months   NIH-Birth       BANGLADESH   NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto      BANGLADESH   NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE         BANGLADESH   NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       IRC             INDIA        4-5                  3 or less          0.2123615   -0.3930384    0.8177614
Birth       IRC             INDIA        6-7                  3 or less          0.3543065   -0.2732050    0.9818180
Birth       IRC             INDIA        8+                   3 or less          0.0872127   -0.5741389    0.7485643
Birth       NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       NIH-Birth       BANGLADESH   4-5                  3 or less          0.4118754    0.1452493    0.6785016
Birth       NIH-Birth       BANGLADESH   6-7                  3 or less          0.3981590    0.0930662    0.7032517
Birth       NIH-Birth       BANGLADESH   8+                   3 or less          0.6499694    0.2688670    1.0310718
Birth       NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0279469   -0.2359509    0.2918448
Birth       NIH-Crypto      BANGLADESH   6-7                  3 or less          0.1869312   -0.1149858    0.4888482
Birth       NIH-Crypto      BANGLADESH   8+                   3 or less          0.0000207   -0.2719528    0.2719942
Birth       PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       PROVIDE         BANGLADESH   4-5                  3 or less         -0.0367818   -0.2363280    0.1627645
Birth       PROVIDE         BANGLADESH   6-7                  3 or less          0.0108681   -0.2134871    0.2352233
Birth       PROVIDE         BANGLADESH   8+                   3 or less          0.0299447   -0.2680490    0.3279384
6 months    IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    IRC             INDIA        4-5                  3 or less          0.0769348   -0.3388713    0.4927409
6 months    IRC             INDIA        6-7                  3 or less          0.1142142   -0.3409120    0.5693403
6 months    IRC             INDIA        8+                   3 or less         -0.1151268   -0.5903580    0.3601044
6 months    LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    LCNI-5          MALAWI       4-5                  3 or less         -0.1164949   -0.2940569    0.0610672
6 months    LCNI-5          MALAWI       6-7                  3 or less         -0.1789072   -0.3818224    0.0240080
6 months    LCNI-5          MALAWI       8+                   3 or less         -0.3399030   -0.6541102   -0.0256958
6 months    NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    NIH-Birth       BANGLADESH   4-5                  3 or less          0.0900924   -0.1490320    0.3292169
6 months    NIH-Birth       BANGLADESH   6-7                  3 or less          0.1463907   -0.1234810    0.4162624
6 months    NIH-Birth       BANGLADESH   8+                   3 or less          0.1146094   -0.2372600    0.4664788
6 months    NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1911046   -0.4328983    0.0506890
6 months    NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1622403   -0.4318342    0.1073535
6 months    NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0053128   -0.2583865    0.2477609
6 months    PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    PROVIDE         BANGLADESH   4-5                  3 or less         -0.0945061   -0.3188198    0.1298075
6 months    PROVIDE         BANGLADESH   6-7                  3 or less         -0.1606259   -0.4279948    0.1067430
6 months    PROVIDE         BANGLADESH   8+                   3 or less         -0.2330259   -0.5602835    0.0942316
6 months    SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.4731818   -0.8554293   -0.0909343
6 months    SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.6531134   -1.0667060   -0.2395208
6 months    SAS-FoodSuppl   INDIA        8+                   3 or less         -0.5111157   -0.9473648   -0.0748667
24 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   IRC             INDIA        4-5                  3 or less         -0.2037890   -0.5183061    0.1107281
24 months   IRC             INDIA        6-7                  3 or less         -0.0555161   -0.3799767    0.2689445
24 months   IRC             INDIA        8+                   3 or less         -0.1701516   -0.5141567    0.1738536
24 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0168281   -0.2285983    0.1949422
24 months   LCNI-5          MALAWI       6-7                  3 or less          0.0077325   -0.2300282    0.2454933
24 months   LCNI-5          MALAWI       8+                   3 or less         -0.1278872   -0.4537594    0.1979849
24 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   NIH-Birth       BANGLADESH   4-5                  3 or less          0.1139688   -0.1784652    0.4064027
24 months   NIH-Birth       BANGLADESH   6-7                  3 or less          0.0814813   -0.2454515    0.4084142
24 months   NIH-Birth       BANGLADESH   8+                   3 or less          0.0605167   -0.3202019    0.4412354
24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0322179   -0.2813095    0.2168738
24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0809157   -0.2056638    0.3674953
24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0877391   -0.3895628    0.2140847
24 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.1179832   -0.3427622    0.1067959
24 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.1573096   -0.4362205    0.1216014
24 months   PROVIDE         BANGLADESH   8+                   3 or less         -0.1469404   -0.4389354    0.1450546


### Parameter: PAR


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            NA                 0.1812963   -0.2948129    0.6574056
Birth       NIH-Birth       BANGLADESH   3 or less            NA                 0.3888760    0.1819466    0.5958054
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                 0.0842037   -0.1233328    0.2917403
Birth       PROVIDE         BANGLADESH   3 or less            NA                -0.0147469   -0.1638213    0.1343275
6 months    IRC             INDIA        3 or less            NA                 0.0376643   -0.3004501    0.3757787
6 months    LCNI-5          MALAWI       3 or less            NA                -0.1293050   -0.2489030   -0.0097070
6 months    NIH-Birth       BANGLADESH   3 or less            NA                 0.1160927   -0.0669516    0.2991371
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.1280304   -0.3144971    0.0584364
6 months    PROVIDE         BANGLADESH   3 or less            NA                -0.1128910   -0.2888709    0.0630889
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                -0.4834451   -0.8165421   -0.1503481
24 months   IRC             INDIA        3 or less            NA                -0.1329707   -0.3894572    0.1235157
24 months   LCNI-5          MALAWI       3 or less            NA                -0.0306409   -0.1708733    0.1095915
24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0865170   -0.1447928    0.3178269
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0108625   -0.2063881    0.1846631
24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.1163731   -0.2924198    0.0596736
