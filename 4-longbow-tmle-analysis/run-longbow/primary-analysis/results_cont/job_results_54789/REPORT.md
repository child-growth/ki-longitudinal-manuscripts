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

**Outcome Variable:** haz

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
Birth       ki1000108-IRC              INDIA        3 or less        54   388  haz              
Birth       ki1000108-IRC              INDIA        4-5             150   388  haz              
Birth       ki1000108-IRC              INDIA        6-7             103   388  haz              
Birth       ki1000108-IRC              INDIA        8+               81   388  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less       112   608  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5             255   608  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7             138   608  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH   8+              103   608  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less       104   539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5             251   539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7             116   539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH   8+               68   539  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less       108   732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5             328   732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7             176   732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+              120   732  haz              
6 months    ki1000108-IRC              INDIA        3 or less        58   407  haz              
6 months    ki1000108-IRC              INDIA        4-5             158   407  haz              
6 months    ki1000108-IRC              INDIA        6-7             106   407  haz              
6 months    ki1000108-IRC              INDIA        8+               85   407  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        33   380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             166   380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7             115   380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               66   380  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less        95   537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5             227   537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7             128   537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH   8+               87   537  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less       105   604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5             289   604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7             130   604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH   8+               80   604  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less       104   715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5             326   715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7             170   715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+              115   715  haz              
6 months    ki1148112-LCNI-5           MALAWI       3 or less       224   816  haz              
6 months    ki1148112-LCNI-5           MALAWI       4-5             340   816  haz              
6 months    ki1148112-LCNI-5           MALAWI       6-7             182   816  haz              
6 months    ki1148112-LCNI-5           MALAWI       8+               70   816  haz              
24 months   ki1000108-IRC              INDIA        3 or less        58   409  haz              
24 months   ki1000108-IRC              INDIA        4-5             158   409  haz              
24 months   ki1000108-IRC              INDIA        6-7             107   409  haz              
24 months   ki1000108-IRC              INDIA        8+               86   409  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        75   429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5             184   429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7             100   429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH   8+               70   429  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less       106   578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             273   578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7             117   578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH   8+               82   578  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        69   514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             232   514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             130   514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               83   514  haz              
24 months   ki1148112-LCNI-5           MALAWI       3 or less       159   574  haz              
24 months   ki1148112-LCNI-5           MALAWI       4-5             237   574  haz              
24 months   ki1148112-LCNI-5           MALAWI       6-7             129   574  haz              
24 months   ki1148112-LCNI-5           MALAWI       8+               49   574  haz              


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
![](/tmp/123a6506-8293-40c5-91ec-28060c059aaf/9c95ab0a-2896-4daf-ad65-77454321b92f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/123a6506-8293-40c5-91ec-28060c059aaf/9c95ab0a-2896-4daf-ad65-77454321b92f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/123a6506-8293-40c5-91ec-28060c059aaf/9c95ab0a-2896-4daf-ad65-77454321b92f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                -0.0175604   -0.4029511    0.3678302
Birth       ki1000108-IRC              INDIA        4-5                  NA                -0.4545725   -0.7255025   -0.1836425
Birth       ki1000108-IRC              INDIA        6-7                  NA                -0.4208779   -0.7530049   -0.0887509
Birth       ki1000108-IRC              INDIA        8+                   NA                -0.1335928   -0.4361951    0.1690096
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.9613369   -1.2203281   -0.7023457
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.9367672   -1.0715159   -0.8020185
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.8421080   -1.0364418   -0.6477743
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -1.0077313   -1.2434010   -0.7720616
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.9942946   -1.1668465   -0.8217427
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.8443250   -0.9545966   -0.7340534
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.8774567   -1.0519684   -0.7029450
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.8991974   -1.1042086   -0.6941862
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -1.0056515   -1.1759864   -0.8353166
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.8861946   -0.9971433   -0.7752458
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.8565459   -1.0451352   -0.6679566
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.9956890   -1.1719595   -0.8194185
6 months    ki1000108-IRC              INDIA        3 or less            NA                -1.0672708   -1.4105332   -0.7240083
6 months    ki1000108-IRC              INDIA        4-5                  NA                -1.3758621   -1.5845522   -1.1671720
6 months    ki1000108-IRC              INDIA        6-7                  NA                -1.1824156   -1.4408029   -0.9240283
6 months    ki1000108-IRC              INDIA        8+                   NA                -1.0490151   -1.3462357   -0.7517944
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -1.5119499   -1.8633807   -1.1605192
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                -1.9105913   -2.0781775   -1.7430051
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                -2.0486465   -2.2865147   -1.8107783
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                -1.9136801   -2.1767509   -1.6506094
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -1.3698829   -1.6067663   -1.1329996
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -1.5563426   -1.6903865   -1.4222987
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -1.3016089   -1.4832294   -1.1199884
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -1.3011517   -1.5462366   -1.0560669
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -1.1266323   -1.3469211   -0.9063436
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -1.0842108   -1.2068170   -0.9616046
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -1.0550923   -1.2745457   -0.8356388
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.3287011   -1.6576596   -0.9997427
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -1.3385302   -1.5406246   -1.1364359
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -1.2008666   -1.3207866   -1.0809467
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -1.0910571   -1.2937496   -0.8883646
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -1.4043369   -1.5861954   -1.2224784
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -1.6058074   -1.7483875   -1.4632274
6 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                -1.6570833   -1.7646339   -1.5495326
6 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                -1.6541707   -1.8069626   -1.5013787
6 months    ki1148112-LCNI-5           MALAWI       8+                   NA                -1.6028957   -1.8849042   -1.3208871
24 months   ki1000108-IRC              INDIA        3 or less            NA                -1.5404297   -1.8001358   -1.2807236
24 months   ki1000108-IRC              INDIA        4-5                  NA                -1.8862863   -2.0325112   -1.7400615
24 months   ki1000108-IRC              INDIA        6-7                  NA                -1.7401106   -1.9443242   -1.5358970
24 months   ki1000108-IRC              INDIA        8+                   NA                -1.8550904   -2.0428606   -1.6673201
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -2.1139068   -2.3553120   -1.8725015
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -2.3662851   -2.5108633   -2.2217069
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -2.0833300   -2.3109534   -1.8557066
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -2.1447225   -2.4035827   -1.8858624
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -1.5328834   -1.7706601   -1.2951068
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -1.5722790   -1.7091781   -1.4353799
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -1.6617189   -1.9203363   -1.4031015
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.7647611   -1.9948312   -1.5346909
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -1.3812551   -1.5651546   -1.1973556
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -1.4243402   -1.5574275   -1.2912529
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -1.4043862   -1.6028494   -1.2059230
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -1.6390259   -1.8303869   -1.4476649
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -1.9720902   -2.1184747   -1.8257058
24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                -1.8988542   -2.0256470   -1.7720613
24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                -1.7618999   -1.9274947   -1.5963050
24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                -1.8332804   -2.2011700   -1.4653908


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.9094945   -0.9809370   -0.8380521
6 months    ki1000108-IRC              INDIA        NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1148112-LCNI-5           MALAWI       NA                   NA                -1.6426961   -1.7120603   -1.5733318
24 months   ki1000108-IRC              INDIA        NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                -1.8822648   -1.9637218   -1.8008078


### Parameter: ATE


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        4-5                  3 or less         -0.4370120   -0.9079188    0.0338947
Birth       ki1000108-IRC              INDIA        6-7                  3 or less         -0.4033175   -0.9119849    0.1053500
Birth       ki1000108-IRC              INDIA        8+                   3 or less         -0.1160323   -0.6071561    0.3750914
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0245697   -0.2674559    0.3165953
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.1192289   -0.2046575    0.4431152
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0463944   -0.3965365    0.3037477
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.1499696   -0.0545089    0.3544481
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.1168379   -0.1284180    0.3620938
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less          0.0950972   -0.1726567    0.3628510
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.1194569   -0.0833685    0.3222823
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.1491056   -0.1046673    0.4028785
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0099625   -0.2345990    0.2545239
6 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        4-5                  3 or less         -0.3085913   -0.7091947    0.0920121
6 months    ki1000108-IRC              INDIA        6-7                  3 or less         -0.1151448   -0.5433319    0.3130422
6 months    ki1000108-IRC              INDIA        8+                   3 or less          0.0182557   -0.4324546    0.4689660
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.3986414   -0.7879690   -0.0093138
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.5366965   -0.9608599   -0.1125332
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.4017302   -0.8414393    0.0379789
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.1864597   -0.4586497    0.0857304
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0682741   -0.2294849    0.3660331
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0687312   -0.2716847    0.4091471
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0424216   -0.2099260    0.2947692
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0715401   -0.2391095    0.3821896
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.2020688   -0.5982119    0.1940742
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.1376636   -0.0974934    0.3728205
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.2474731   -0.0390152    0.5339614
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0658067   -0.3378744    0.2062610
6 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0512758   -0.2299861    0.1274344
6 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0483632   -0.2573687    0.1606422
6 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.0029118   -0.3132499    0.3190734
24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.3458566   -0.6435293   -0.0481839
24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.1996809   -0.5292169    0.1298551
24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.3146607   -0.6347694    0.0054481
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.2523783   -0.5319236    0.0271669
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0305768   -0.2989373    0.3600908
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0308157   -0.3831381    0.3215066
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0393956   -0.3129251    0.2341339
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.1288354   -0.4795426    0.2218718
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.2318776   -0.5617108    0.0979556
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0430851   -0.2685659    0.1823957
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0231311   -0.2922656    0.2460034
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.2577708   -0.5215084    0.0059668
24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0732361   -0.1199334    0.2664055
24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.2101904   -0.0104311    0.4308119
24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.1388098   -0.2566840    0.5343037


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                -0.2904808   -0.6573632    0.0764015
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0303172   -0.2026213    0.2632556
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1091925   -0.0496569    0.2680420
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0961570   -0.0705629    0.2628768
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.1671355   -0.4828335    0.1485626
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.3867343   -0.7282876   -0.0451809
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0374991   -0.2528954    0.1778972
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0349408   -0.1734742    0.2433558
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1398519   -0.0569135    0.3366172
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0368886   -0.1588388    0.0850615
24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.2583478   -0.4980695   -0.0186261
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1051511   -0.3250336    0.1147314
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0695387   -0.2910586    0.1519813
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0600095   -0.2377075    0.1176885
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0898254   -0.0379943    0.2176451
