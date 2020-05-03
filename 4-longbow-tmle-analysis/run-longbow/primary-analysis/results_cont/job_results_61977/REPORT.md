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
![](/tmp/f8d2bf9f-1248-45f0-9f98-1f2d134bee8b/29db1639-2ea4-4619-8453-ff6df0b93cd6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f8d2bf9f-1248-45f0-9f98-1f2d134bee8b/29db1639-2ea4-4619-8453-ff6df0b93cd6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f8d2bf9f-1248-45f0-9f98-1f2d134bee8b/29db1639-2ea4-4619-8453-ff6df0b93cd6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            NA                -1.2495106   -1.7558541   -0.7431670
Birth       IRC             INDIA        4-5                  NA                -0.9822783   -1.2903816   -0.6741749
Birth       IRC             INDIA        6-7                  NA                -0.8393378   -1.1955930   -0.4830826
Birth       IRC             INDIA        8+                   NA                -1.1119259   -1.5278852   -0.6959666
Birth       NIH-Birth       BANGLADESH   3 or less            NA                -1.7693917   -2.0113425   -1.5274408
Birth       NIH-Birth       BANGLADESH   4-5                  NA                -1.3354292   -1.4721055   -1.1987528
Birth       NIH-Birth       BANGLADESH   6-7                  NA                -1.3208016   -1.5230498   -1.1185535
Birth       NIH-Birth       BANGLADESH   8+                   NA                -1.1322759   -1.4267530   -0.8377988
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                -1.2472770   -1.4650925   -1.0294614
Birth       NIH-Crypto      BANGLADESH   4-5                  NA                -1.3039707   -1.4552325   -1.1527088
Birth       NIH-Crypto      BANGLADESH   6-7                  NA                -1.1843948   -1.4142720   -0.9545176
Birth       NIH-Crypto      BANGLADESH   8+                   NA                -1.2936304   -1.4527330   -1.1345278
Birth       PROVIDE         BANGLADESH   3 or less            NA                -1.3164415   -1.4819079   -1.1509750
Birth       PROVIDE         BANGLADESH   4-5                  NA                -1.3260393   -1.4424432   -1.2096354
Birth       PROVIDE         BANGLADESH   6-7                  NA                -1.2726432   -1.4307503   -1.1145362
Birth       PROVIDE         BANGLADESH   8+                   NA                -1.2267042   -1.4721657   -0.9812427
6 months    IRC             INDIA        3 or less            NA                -0.5875265   -0.9435024   -0.2315507
6 months    IRC             INDIA        4-5                  NA                -0.5667645   -0.7748497   -0.3586793
6 months    IRC             INDIA        6-7                  NA                -0.5151279   -0.7880413   -0.2422145
6 months    IRC             INDIA        8+                   NA                -0.7981219   -1.1060920   -0.4901519
6 months    LCNI-5          MALAWI       3 or less            NA                 0.5711047    0.4291746    0.7130348
6 months    LCNI-5          MALAWI       4-5                  NA                 0.4536273    0.3435223    0.5637322
6 months    LCNI-5          MALAWI       6-7                  NA                 0.3895251    0.2403819    0.5386683
6 months    LCNI-5          MALAWI       8+                   NA                 0.2306725   -0.0670366    0.5283817
6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.5728420   -0.7608115   -0.3848726
6 months    NIH-Birth       BANGLADESH   4-5                  NA                -0.5064846   -0.6462395   -0.3667297
6 months    NIH-Birth       BANGLADESH   6-7                  NA                -0.4153042   -0.6218886   -0.2087197
6 months    NIH-Birth       BANGLADESH   8+                   NA                -0.4255358   -0.7081040   -0.1429676
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                 0.1506824   -0.0526391    0.3540039
6 months    NIH-Crypto      BANGLADESH   4-5                  NA                -0.0332231   -0.1856279    0.1191816
6 months    NIH-Crypto      BANGLADESH   6-7                  NA                 0.0080175   -0.1842972    0.2003322
6 months    NIH-Crypto      BANGLADESH   8+                   NA                 0.2914288    0.1242555    0.4586021
6 months    PROVIDE         BANGLADESH   3 or less            NA                -0.0870782   -0.2831503    0.1089939
6 months    PROVIDE         BANGLADESH   4-5                  NA                -0.1748153   -0.2908314   -0.0587993
6 months    PROVIDE         BANGLADESH   6-7                  NA                -0.2624294   -0.4505492   -0.0743096
6 months    PROVIDE         BANGLADESH   8+                   NA                -0.3185620   -0.5880067   -0.0491173
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                -0.5758507   -0.9291334   -0.2225681
6 months    SAS-FoodSuppl   INDIA        4-5                  NA                -1.0296404   -1.2061965   -0.8530842
6 months    SAS-FoodSuppl   INDIA        6-7                  NA                -1.1408767   -1.3796978   -0.9020557
6 months    SAS-FoodSuppl   INDIA        8+                   NA                -1.0279683   -1.3029567   -0.7529799
24 months   IRC             INDIA        3 or less            NA                -0.6110843   -0.8716323   -0.3505363
24 months   IRC             INDIA        4-5                  NA                -0.8308229   -0.9838986   -0.6777471
24 months   IRC             INDIA        6-7                  NA                -0.6630965   -0.8305536   -0.4956395
24 months   IRC             INDIA        8+                   NA                -0.7870996   -0.9928198   -0.5813793
24 months   LCNI-5          MALAWI       3 or less            NA                -0.0111575   -0.1802426    0.1579277
24 months   LCNI-5          MALAWI       4-5                  NA                -0.0308210   -0.1601747    0.0985328
24 months   LCNI-5          MALAWI       6-7                  NA                -0.0355936   -0.2039033    0.1327161
24 months   LCNI-5          MALAWI       8+                   NA                -0.1311509   -0.4146950    0.1523931
24 months   NIH-Birth       BANGLADESH   3 or less            NA                -1.0456967   -1.2775886   -0.8138048
24 months   NIH-Birth       BANGLADESH   4-5                  NA                -0.8579910   -1.0027580   -0.7132240
24 months   NIH-Birth       BANGLADESH   6-7                  NA                -0.8896840   -1.1105908   -0.6687773
24 months   NIH-Birth       BANGLADESH   8+                   NA                -0.9798289   -1.2833451   -0.6763128
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.6092209   -0.8194975   -0.3989443
24 months   NIH-Crypto      BANGLADESH   4-5                  NA                -0.6460531   -0.7931980   -0.4989082
24 months   NIH-Crypto      BANGLADESH   6-7                  NA                -0.5292946   -0.7365197   -0.3220694
24 months   NIH-Crypto      BANGLADESH   8+                   NA                -0.6117991   -0.8416653   -0.3819330
24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.7911550   -0.9870813   -0.5952287
24 months   PROVIDE         BANGLADESH   4-5                  NA                -0.8968305   -1.0096239   -0.7840371
24 months   PROVIDE         BANGLADESH   6-7                  NA                -0.9274306   -1.1304813   -0.7243799
24 months   PROVIDE         BANGLADESH   8+                   NA                -0.9214922   -1.1452596   -0.6977248


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
Birth       IRC             INDIA        4-5                  3 or less          0.2672323   -0.3237742    0.8582388
Birth       IRC             INDIA        6-7                  3 or less          0.4101728   -0.2081173    1.0284629
Birth       IRC             INDIA        8+                   3 or less          0.1375847   -0.5170596    0.7922289
Birth       NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       NIH-Birth       BANGLADESH   4-5                  3 or less          0.4339625    0.1556461    0.7122790
Birth       NIH-Birth       BANGLADESH   6-7                  3 or less          0.4485900    0.1323693    0.7648108
Birth       NIH-Birth       BANGLADESH   8+                   3 or less          0.6371158    0.2553967    1.0188349
Birth       NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0566937   -0.3210982    0.2077108
Birth       NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0628821   -0.2534362    0.3792005
Birth       NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0463534   -0.3151603    0.2224535
Birth       PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       PROVIDE         BANGLADESH   4-5                  3 or less         -0.0095979   -0.2120624    0.1928666
Birth       PROVIDE         BANGLADESH   6-7                  3 or less          0.0437982   -0.1850570    0.2726534
Birth       PROVIDE         BANGLADESH   8+                   3 or less          0.0897373   -0.2062790    0.3857535
6 months    IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    IRC             INDIA        4-5                  3 or less          0.0207621   -0.3919195    0.4334436
6 months    IRC             INDIA        6-7                  3 or less          0.0723986   -0.3762518    0.5210491
6 months    IRC             INDIA        8+                   3 or less         -0.2105954   -0.6817730    0.2605822
6 months    LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    LCNI-5          MALAWI       4-5                  3 or less         -0.1174774   -0.2969822    0.0620273
6 months    LCNI-5          MALAWI       6-7                  3 or less         -0.1815796   -0.3874956    0.0243364
6 months    LCNI-5          MALAWI       8+                   3 or less         -0.3404322   -0.6702542   -0.0106101
6 months    NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    NIH-Birth       BANGLADESH   4-5                  3 or less          0.0663574   -0.1681249    0.3008398
6 months    NIH-Birth       BANGLADESH   6-7                  3 or less          0.1575379   -0.1213424    0.4364181
6 months    NIH-Birth       BANGLADESH   8+                   3 or less          0.1473062   -0.1913181    0.4859305
6 months    NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1839055   -0.4380762    0.0702652
6 months    NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1426649   -0.4224823    0.1371526
6 months    NIH-Crypto      BANGLADESH   8+                   3 or less          0.1407465   -0.1228951    0.4043881
6 months    PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    PROVIDE         BANGLADESH   4-5                  3 or less         -0.0877371   -0.3157723    0.1402980
6 months    PROVIDE         BANGLADESH   6-7                  3 or less         -0.1753512   -0.4472059    0.0965034
6 months    PROVIDE         BANGLADESH   8+                   3 or less         -0.2314838   -0.5648872    0.1019195
6 months    SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.4537897   -0.8486203   -0.0589591
6 months    SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.5650260   -0.9919010   -0.1381511
6 months    SAS-FoodSuppl   INDIA        8+                   3 or less         -0.4521176   -0.8991853   -0.0050499
24 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   IRC             INDIA        4-5                  3 or less         -0.2197385   -0.5219493    0.0824723
24 months   IRC             INDIA        6-7                  3 or less         -0.0520122   -0.3617451    0.2577206
24 months   IRC             INDIA        8+                   3 or less         -0.1760153   -0.5082097    0.1561792
24 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0196635   -0.2321176    0.1927907
24 months   LCNI-5          MALAWI       6-7                  3 or less         -0.0244361   -0.2627077    0.2138355
24 months   LCNI-5          MALAWI       8+                   3 or less         -0.1199934   -0.4501563    0.2101694
24 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   NIH-Birth       BANGLADESH   4-5                  3 or less          0.1877057   -0.0820491    0.4574605
24 months   NIH-Birth       BANGLADESH   6-7                  3 or less          0.1560127   -0.1625620    0.4745873
24 months   NIH-Birth       BANGLADESH   8+                   3 or less          0.0658678   -0.3146640    0.4463996
24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0368322   -0.2932325    0.2195681
24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0799263   -0.2150248    0.3748774
24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0025782   -0.3139231    0.3087666
24 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.1056755   -0.3299990    0.1186480
24 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.1362756   -0.4170862    0.1445351
24 months   PROVIDE         BANGLADESH   8+                   3 or less         -0.1303372   -0.4274296    0.1667552


### Parameter: PAR


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            NA                 0.2389275   -0.2239585    0.7018134
Birth       NIH-Birth       BANGLADESH   3 or less            NA                 0.4194699    0.1997076    0.6392323
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                 0.0031256   -0.2072861    0.2135373
Birth       PROVIDE         BANGLADESH   3 or less            NA                 0.0179828   -0.1346127    0.1705783
6 months    IRC             INDIA        3 or less            NA                -0.0114032   -0.3457454    0.3229390
6 months    LCNI-5          MALAWI       3 or less            NA                -0.1293400   -0.2502900   -0.0083900
6 months    NIH-Birth       BANGLADESH   3 or less            NA                 0.1254383   -0.0515355    0.3024120
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.1209201   -0.3192314    0.0773912
6 months    PROVIDE         BANGLADESH   3 or less            NA                -0.1120125   -0.2913378    0.0673129
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                -0.4363072   -0.7822762   -0.0903381
24 months   IRC             INDIA        3 or less            NA                -0.1347307   -0.3755315    0.1060702
24 months   LCNI-5          MALAWI       3 or less            NA                -0.0366293   -0.1771683    0.1039098
24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.1341177   -0.0789655    0.3472008
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0011293   -0.2043419    0.2020833
24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.1017120   -0.2787378    0.0753138
