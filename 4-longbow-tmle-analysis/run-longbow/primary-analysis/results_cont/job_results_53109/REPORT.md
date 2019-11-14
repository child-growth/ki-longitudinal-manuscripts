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

agecat      studyid                    country      nhh          n_cell     n
----------  -------------------------  -----------  ----------  -------  ----
Birth       ki1000108-IRC              INDIA        3 or less        52   343
Birth       ki1000108-IRC              INDIA        4-5             131   343
Birth       ki1000108-IRC              INDIA        6-7              84   343
Birth       ki1000108-IRC              INDIA        8+               76   343
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less       104   575
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5             244   575
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7             130   575
Birth       ki1017093-NIH-Birth        BANGLADESH   8+               97   575
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less       103   532
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5             249   532
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7             114   532
Birth       ki1017093b-PROVIDE         BANGLADESH   8+               66   532
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less       103   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5             318   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7             167   707
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+              119   707
6 months    ki1000108-IRC              INDIA        3 or less        57   408
6 months    ki1000108-IRC              INDIA        4-5             157   408
6 months    ki1000108-IRC              INDIA        6-7             107   408
6 months    ki1000108-IRC              INDIA        8+               87   408
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        33   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             166   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7             115   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               66   380
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less        95   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5             227   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7             128   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+               87   537
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less       105   603
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5             289   603
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7             130   603
6 months    ki1017093b-PROVIDE         BANGLADESH   8+               79   603
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less       104   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5             326   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7             170   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+              115   715
6 months    ki1148112-LCNI-5           MALAWI       3 or less       224   816
6 months    ki1148112-LCNI-5           MALAWI       4-5             340   816
6 months    ki1148112-LCNI-5           MALAWI       6-7             182   816
6 months    ki1148112-LCNI-5           MALAWI       8+               70   816
24 months   ki1000108-IRC              INDIA        3 or less        58   409
24 months   ki1000108-IRC              INDIA        4-5             158   409
24 months   ki1000108-IRC              INDIA        6-7             107   409
24 months   ki1000108-IRC              INDIA        8+               86   409
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        74   428
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5             184   428
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7             100   428
24 months   ki1017093-NIH-Birth        BANGLADESH   8+               70   428
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less       106   579
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             273   579
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7             117   579
24 months   ki1017093b-PROVIDE         BANGLADESH   8+               83   579
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        69   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             232   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             130   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               83   514
24 months   ki1148112-LCNI-5           MALAWI       3 or less       157   558
24 months   ki1148112-LCNI-5           MALAWI       4-5             230   558
24 months   ki1148112-LCNI-5           MALAWI       6-7             123   558
24 months   ki1148112-LCNI-5           MALAWI       8+               48   558


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
![](/tmp/2fef0f43-565b-4965-b84e-78e4b44fee43/e29e9883-035c-44df-a254-95b3ed73406f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2fef0f43-565b-4965-b84e-78e4b44fee43/e29e9883-035c-44df-a254-95b3ed73406f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2fef0f43-565b-4965-b84e-78e4b44fee43/e29e9883-035c-44df-a254-95b3ed73406f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                -1.2357988   -1.7576369   -0.7139606
Birth       ki1000108-IRC              INDIA        4-5                  NA                -0.9780233   -1.2835209   -0.6725256
Birth       ki1000108-IRC              INDIA        6-7                  NA                -0.8672804   -1.2186828   -0.5158779
Birth       ki1000108-IRC              INDIA        8+                   NA                -1.0434858   -1.4642524   -0.6227193
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -1.7641511   -1.9989730   -1.5293291
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -1.3446372   -1.4837215   -1.2055530
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -1.3257538   -1.5217388   -1.1297688
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -1.1083087   -1.4003498   -0.8162676
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -1.3240286   -1.4927317   -1.1553254
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -1.3227672   -1.4397599   -1.2057744
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -1.2731691   -1.4250547   -1.1212836
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.2456144   -1.4813618   -1.0098669
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -1.3211961   -1.5363741   -1.1060181
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -1.3104007   -1.4638874   -1.1569141
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -1.1159401   -1.3202181   -0.9116620
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -1.2092211   -1.4020410   -1.0164013
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.5282961   -0.8926221   -0.1639700
6 months    ki1000108-IRC              INDIA        4-5                  NA                -0.5703593   -0.7795053   -0.3612133
6 months    ki1000108-IRC              INDIA        6-7                  NA                -0.5484273   -0.8193836   -0.2774711
6 months    ki1000108-IRC              INDIA        8+                   NA                -0.7137344   -1.0101432   -0.4173257
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.5913069   -0.9335303   -0.2490835
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                -1.0187187   -1.1935728   -0.8438645
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                -1.1682773   -1.3997725   -0.9367821
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                -1.0766254   -1.3615319   -0.7917189
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.5243036   -0.7026163   -0.3459910
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.4917135   -0.6296207   -0.3538064
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.4154115   -0.6127525   -0.2180705
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.4225883   -0.6855471   -0.1596295
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.1699001   -0.4308168    0.0910166
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.1435432   -0.2875453    0.0004588
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.2971768   -0.5552904   -0.0390632
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.5282991   -0.8646793   -0.1919189
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1706055   -0.0285310    0.3697420
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.0290673   -0.1724055    0.1142709
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                 0.0361273   -0.1598097    0.2320643
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                 0.1901925    0.0102000    0.3701851
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.5756116    0.4288204    0.7224029
6 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                 0.4598785    0.3495056    0.5702515
6 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                 0.3781748    0.2278061    0.5285436
6 months    ki1148112-LCNI-5           MALAWI       8+                   NA                 0.2387079   -0.0413734    0.5187893
24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.6063219   -0.8947220   -0.3179218
24 months   ki1000108-IRC              INDIA        4-5                  NA                -0.8438728   -1.0010581   -0.6866875
24 months   ki1000108-IRC              INDIA        6-7                  NA                -0.6712159   -0.8447653   -0.4976666
24 months   ki1000108-IRC              INDIA        8+                   NA                -0.6927979   -0.9132498   -0.4723460
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.9984737   -1.2286006   -0.7683468
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.8981220   -1.0431596   -0.7530845
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.9178661   -1.1244015   -0.7113307
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.9053154   -1.2020647   -0.6085661
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.6811411   -0.9186739   -0.4436082
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.8919769   -1.0215744   -0.7623794
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.9587542   -1.2277276   -0.6897807
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.1574742   -1.3703788   -0.9445695
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.6522301   -0.8285961   -0.4758641
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.6044671   -0.7765820   -0.4323522
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.5562256   -0.8088418   -0.3036094
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.7521678   -0.9712931   -0.5330425
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0241080   -0.1910640    0.1428480
24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                -0.0339262   -0.1614603    0.0936078
24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                -0.0635964   -0.2332471    0.1060544
24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                -0.1054398   -0.3741582    0.1632786


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
Birth       ki1000108-IRC              INDIA        4-5                  3 or less          0.2577755   -0.3461929    0.8617438
Birth       ki1000108-IRC              INDIA        6-7                  3 or less          0.3685184   -0.2599519    0.9969887
Birth       ki1000108-IRC              INDIA        8+                   3 or less          0.1923129   -0.4810909    0.8657167
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.4195138    0.1459350    0.6930926
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.4383973    0.1319091    0.7448854
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.6558423    0.2803909    1.0312938
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0012614   -0.2040455    0.2065683
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0508594   -0.1755951    0.2773140
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less          0.0784142   -0.2107592    0.3675876
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0107954   -0.2536223    0.2752130
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.2052560   -0.0913870    0.5018991
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.1119750   -0.1770243    0.4009742
6 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        4-5                  3 or less         -0.0420633   -0.4609158    0.3767893
6 months    ki1000108-IRC              INDIA        6-7                  3 or less         -0.0201313   -0.4737503    0.4334878
6 months    ki1000108-IRC              INDIA        8+                   3 or less         -0.1854384   -0.6554807    0.2846039
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.4274118   -0.8116869   -0.0431366
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.5769703   -0.9909226   -0.1630181
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.4853185   -0.9301275   -0.0405095
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0325901   -0.1927853    0.2579655
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.1088921   -0.1566408    0.3744251
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.1017153   -0.2157478    0.4191785
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0263569   -0.2717148    0.3244286
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.1272767   -0.4943867    0.2398334
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.3583990   -0.7837362    0.0669383
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1996728   -0.4452197    0.0458742
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1344781   -0.4136514    0.1446951
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0195871   -0.2490321    0.2882062
6 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.1157331   -0.2990704    0.0676042
6 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.1974368   -0.4071122    0.0122386
6 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.3369037   -0.6529132   -0.0208942
24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.2375509   -0.5657050    0.0906032
24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.0648940   -0.4021734    0.2723853
24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0864760   -0.4527202    0.2797682
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.1003517   -0.1697856    0.3704890
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0806077   -0.2273161    0.3885314
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0931583   -0.2804895    0.4668061
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.2108358   -0.4793502    0.0576785
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.2776131   -0.6343480    0.0791219
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.4763331   -0.7936735   -0.1589927
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0477630   -0.1983012    0.2938272
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0960045   -0.2117872    0.4037962
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0999377   -0.3811379    0.1812625
24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0098183   -0.2203531    0.2007166
24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0394884   -0.2778523    0.1988755
24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0813318   -0.3968504    0.2341867


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                 0.2252157   -0.2520197    0.7024511
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.4142293    0.2018490    0.6266096
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0255699   -0.1297906    0.1809305
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0770448   -0.1305665    0.2846560
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0706337   -0.4131130    0.2718456
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.4208510   -0.7565062   -0.0851957
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0768999   -0.0906968    0.2444965
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0291905   -0.2742726    0.2158915
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.1408432   -0.3353244    0.0536379
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.1338469   -0.2589754   -0.0087185
24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.1394931   -0.4068513    0.1278651
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0868947   -0.1235605    0.2973499
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.2117259   -0.4331015    0.0096496
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0418799   -0.1386252    0.2223850
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0236788   -0.1618021    0.1144446
