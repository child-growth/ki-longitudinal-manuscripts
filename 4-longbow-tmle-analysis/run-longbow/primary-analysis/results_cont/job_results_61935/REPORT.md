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

agecat      studyid         country      nhh          n_cell     n  outcome_variable 
----------  --------------  -----------  ----------  -------  ----  -----------------
Birth       IRC             INDIA        3 or less        54   388  haz              
Birth       IRC             INDIA        4-5             150   388  haz              
Birth       IRC             INDIA        6-7             103   388  haz              
Birth       IRC             INDIA        8+               81   388  haz              
Birth       NIH-Birth       BANGLADESH   3 or less       112   608  haz              
Birth       NIH-Birth       BANGLADESH   4-5             255   608  haz              
Birth       NIH-Birth       BANGLADESH   6-7             138   608  haz              
Birth       NIH-Birth       BANGLADESH   8+              103   608  haz              
Birth       NIH-Crypto      BANGLADESH   3 or less       108   732  haz              
Birth       NIH-Crypto      BANGLADESH   4-5             328   732  haz              
Birth       NIH-Crypto      BANGLADESH   6-7             176   732  haz              
Birth       NIH-Crypto      BANGLADESH   8+              120   732  haz              
Birth       PROVIDE         BANGLADESH   3 or less       104   539  haz              
Birth       PROVIDE         BANGLADESH   4-5             251   539  haz              
Birth       PROVIDE         BANGLADESH   6-7             116   539  haz              
Birth       PROVIDE         BANGLADESH   8+               68   539  haz              
6 months    IRC             INDIA        3 or less        58   407  haz              
6 months    IRC             INDIA        4-5             158   407  haz              
6 months    IRC             INDIA        6-7             106   407  haz              
6 months    IRC             INDIA        8+               85   407  haz              
6 months    LCNI-5          MALAWI       3 or less       224   816  haz              
6 months    LCNI-5          MALAWI       4-5             340   816  haz              
6 months    LCNI-5          MALAWI       6-7             182   816  haz              
6 months    LCNI-5          MALAWI       8+               70   816  haz              
6 months    NIH-Birth       BANGLADESH   3 or less        95   537  haz              
6 months    NIH-Birth       BANGLADESH   4-5             227   537  haz              
6 months    NIH-Birth       BANGLADESH   6-7             128   537  haz              
6 months    NIH-Birth       BANGLADESH   8+               87   537  haz              
6 months    NIH-Crypto      BANGLADESH   3 or less       104   715  haz              
6 months    NIH-Crypto      BANGLADESH   4-5             326   715  haz              
6 months    NIH-Crypto      BANGLADESH   6-7             170   715  haz              
6 months    NIH-Crypto      BANGLADESH   8+              115   715  haz              
6 months    PROVIDE         BANGLADESH   3 or less       105   604  haz              
6 months    PROVIDE         BANGLADESH   4-5             289   604  haz              
6 months    PROVIDE         BANGLADESH   6-7             130   604  haz              
6 months    PROVIDE         BANGLADESH   8+               80   604  haz              
6 months    SAS-FoodSuppl   INDIA        3 or less        33   380  haz              
6 months    SAS-FoodSuppl   INDIA        4-5             166   380  haz              
6 months    SAS-FoodSuppl   INDIA        6-7             115   380  haz              
6 months    SAS-FoodSuppl   INDIA        8+               66   380  haz              
24 months   IRC             INDIA        3 or less        58   409  haz              
24 months   IRC             INDIA        4-5             158   409  haz              
24 months   IRC             INDIA        6-7             107   409  haz              
24 months   IRC             INDIA        8+               86   409  haz              
24 months   LCNI-5          MALAWI       3 or less       159   574  haz              
24 months   LCNI-5          MALAWI       4-5             237   574  haz              
24 months   LCNI-5          MALAWI       6-7             129   574  haz              
24 months   LCNI-5          MALAWI       8+               49   574  haz              
24 months   NIH-Birth       BANGLADESH   3 or less        75   429  haz              
24 months   NIH-Birth       BANGLADESH   4-5             184   429  haz              
24 months   NIH-Birth       BANGLADESH   6-7             100   429  haz              
24 months   NIH-Birth       BANGLADESH   8+               70   429  haz              
24 months   NIH-Crypto      BANGLADESH   3 or less        69   514  haz              
24 months   NIH-Crypto      BANGLADESH   4-5             232   514  haz              
24 months   NIH-Crypto      BANGLADESH   6-7             130   514  haz              
24 months   NIH-Crypto      BANGLADESH   8+               83   514  haz              
24 months   PROVIDE         BANGLADESH   3 or less       106   578  haz              
24 months   PROVIDE         BANGLADESH   4-5             273   578  haz              
24 months   PROVIDE         BANGLADESH   6-7             117   578  haz              
24 months   PROVIDE         BANGLADESH   8+               82   578  haz              


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
![](/tmp/f40a5cd8-289f-418a-90d4-2199b8f5b852/64adfd8e-c261-4242-be5f-54b11d65ffba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f40a5cd8-289f-418a-90d4-2199b8f5b852/64adfd8e-c261-4242-be5f-54b11d65ffba/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f40a5cd8-289f-418a-90d4-2199b8f5b852/64adfd8e-c261-4242-be5f-54b11d65ffba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            NA                -0.0234253   -0.4093395    0.3624889
Birth       IRC             INDIA        4-5                  NA                -0.4399820   -0.7123462   -0.1676178
Birth       IRC             INDIA        6-7                  NA                -0.4236205   -0.7614707   -0.0857702
Birth       IRC             INDIA        8+                   NA                -0.1044614   -0.4112806    0.2023577
Birth       NIH-Birth       BANGLADESH   3 or less            NA                -1.0108610   -1.2568843   -0.7648377
Birth       NIH-Birth       BANGLADESH   4-5                  NA                -0.9438945   -1.0820247   -0.8057644
Birth       NIH-Birth       BANGLADESH   6-7                  NA                -0.8132164   -0.9892705   -0.6371623
Birth       NIH-Birth       BANGLADESH   8+                   NA                -0.9881216   -1.2267494   -0.7494937
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                -0.9978794   -1.1693178   -0.8264410
Birth       NIH-Crypto      BANGLADESH   4-5                  NA                -0.9110010   -1.0324327   -0.7895693
Birth       NIH-Crypto      BANGLADESH   6-7                  NA                -0.8622648   -1.0748510   -0.6496786
Birth       NIH-Crypto      BANGLADESH   8+                   NA                -1.0930810   -1.2716409   -0.9145210
Birth       PROVIDE         BANGLADESH   3 or less            NA                -0.9850062   -1.1484008   -0.8216116
Birth       PROVIDE         BANGLADESH   4-5                  NA                -0.8414125   -0.9513302   -0.7314949
Birth       PROVIDE         BANGLADESH   6-7                  NA                -0.8864178   -1.0590308   -0.7138047
Birth       PROVIDE         BANGLADESH   8+                   NA                -0.8801050   -1.0868081   -0.6734018
6 months    IRC             INDIA        3 or less            NA                -1.0008798   -1.3423065   -0.6594532
6 months    IRC             INDIA        4-5                  NA                -1.3809651   -1.5780673   -1.1838629
6 months    IRC             INDIA        6-7                  NA                -1.2391595   -1.4913334   -0.9869856
6 months    IRC             INDIA        8+                   NA                -1.0970049   -1.4008515   -0.7931582
6 months    LCNI-5          MALAWI       3 or less            NA                -1.5937460   -1.7343548   -1.4531372
6 months    LCNI-5          MALAWI       4-5                  NA                -1.6603524   -1.7663241   -1.5543807
6 months    LCNI-5          MALAWI       6-7                  NA                -1.6533072   -1.8005671   -1.5060472
6 months    LCNI-5          MALAWI       8+                   NA                -1.6458845   -1.9268241   -1.3649449
6 months    NIH-Birth       BANGLADESH   3 or less            NA                -1.4032513   -1.6413512   -1.1651513
6 months    NIH-Birth       BANGLADESH   4-5                  NA                -1.5572265   -1.6887500   -1.4257030
6 months    NIH-Birth       BANGLADESH   6-7                  NA                -1.2774021   -1.4628576   -1.0919466
6 months    NIH-Birth       BANGLADESH   8+                   NA                -1.2997397   -1.5416988   -1.0577806
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -1.3557683   -1.5675496   -1.1439870
6 months    NIH-Crypto      BANGLADESH   4-5                  NA                -1.1884863   -1.3120391   -1.0649335
6 months    NIH-Crypto      BANGLADESH   6-7                  NA                -1.0946978   -1.3054073   -0.8839882
6 months    NIH-Crypto      BANGLADESH   8+                   NA                -1.5413427   -1.7296796   -1.3530059
6 months    PROVIDE         BANGLADESH   3 or less            NA                -1.1195286   -1.2961407   -0.9429166
6 months    PROVIDE         BANGLADESH   4-5                  NA                -1.0916229   -1.2010879   -0.9821579
6 months    PROVIDE         BANGLADESH   6-7                  NA                -1.0570834   -1.2190239   -0.8951430
6 months    PROVIDE         BANGLADESH   8+                   NA                -1.0991792   -1.3284402   -0.8699183
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                -1.4569971   -1.8516866   -1.0623077
6 months    SAS-FoodSuppl   INDIA        4-5                  NA                -1.9342730   -2.1028776   -1.7656683
6 months    SAS-FoodSuppl   INDIA        6-7                  NA                -1.9996764   -2.2508245   -1.7485283
6 months    SAS-FoodSuppl   INDIA        8+                   NA                -1.8742867   -2.1367916   -1.6117819
24 months   IRC             INDIA        3 or less            NA                -1.5121572   -1.7862944   -1.2380201
24 months   IRC             INDIA        4-5                  NA                -1.8884751   -2.0337594   -1.7431908
24 months   IRC             INDIA        6-7                  NA                -1.7427927   -1.9514487   -1.5341368
24 months   IRC             INDIA        8+                   NA                -1.8826426   -2.0663068   -1.6989784
24 months   LCNI-5          MALAWI       3 or less            NA                -1.9409313   -2.0922779   -1.7895847
24 months   LCNI-5          MALAWI       4-5                  NA                -1.9147668   -2.0449193   -1.7846143
24 months   LCNI-5          MALAWI       6-7                  NA                -1.7968410   -1.9605925   -1.6330894
24 months   LCNI-5          MALAWI       8+                   NA                -1.8248459   -2.1363789   -1.5133130
24 months   NIH-Birth       BANGLADESH   3 or less            NA                -2.1029686   -2.3556934   -1.8502438
24 months   NIH-Birth       BANGLADESH   4-5                  NA                -2.3666940   -2.5099078   -2.2234802
24 months   NIH-Birth       BANGLADESH   6-7                  NA                -2.1021251   -2.3201845   -1.8840657
24 months   NIH-Birth       BANGLADESH   8+                   NA                -2.1392985   -2.3992986   -1.8792985
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                -1.4702574   -1.6948002   -1.2457146
24 months   NIH-Crypto      BANGLADESH   4-5                  NA                -1.4395680   -1.5646591   -1.3144770
24 months   NIH-Crypto      BANGLADESH   6-7                  NA                -1.3986454   -1.5727995   -1.2244914
24 months   NIH-Crypto      BANGLADESH   8+                   NA                -1.4837517   -1.6921111   -1.2753922
24 months   PROVIDE         BANGLADESH   3 or less            NA                -1.5386110   -1.7317750   -1.3454471
24 months   PROVIDE         BANGLADESH   4-5                  NA                -1.6290421   -1.7513555   -1.5067287
24 months   PROVIDE         BANGLADESH   6-7                  NA                -1.6310096   -1.8145567   -1.4474625
24 months   PROVIDE         BANGLADESH   8+                   NA                -1.5403430   -1.7714085   -1.3092775


### Parameter: E(Y)


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       NIH-Birth       BANGLADESH   NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto      BANGLADESH   NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE         BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    IRC             INDIA        NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    LCNI-5          MALAWI       NA                   NA                -1.6426961   -1.7120603   -1.5733318
6 months    NIH-Birth       BANGLADESH   NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto      BANGLADESH   NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE         BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-FoodSuppl   INDIA        NA                   NA                -1.8986842   -2.0118892   -1.7854792
24 months   IRC             INDIA        NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   LCNI-5          MALAWI       NA                   NA                -1.8822648   -1.9637218   -1.8008078
24 months   NIH-Birth       BANGLADESH   NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto      BANGLADESH   NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE         BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       IRC             INDIA        4-5                  3 or less         -0.4165567   -0.8904351    0.0573217
Birth       IRC             INDIA        6-7                  3 or less         -0.4001952   -0.9129404    0.1125501
Birth       IRC             INDIA        8+                   3 or less         -0.0810361   -0.5746408    0.4125686
Birth       NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       NIH-Birth       BANGLADESH   4-5                  3 or less          0.0669665   -0.2146042    0.3485371
Birth       NIH-Birth       BANGLADESH   6-7                  3 or less          0.1976446   -0.1039226    0.4992118
Birth       NIH-Birth       BANGLADESH   8+                   3 or less          0.0227394   -0.3207037    0.3661825
Birth       NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0868784   -0.1233732    0.2971300
Birth       NIH-Crypto      BANGLADESH   6-7                  3 or less          0.1356147   -0.1377678    0.4089972
Birth       NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0952015   -0.3425775    0.1521744
Birth       PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       PROVIDE         BANGLADESH   4-5                  3 or less          0.1435937   -0.0528028    0.3399901
Birth       PROVIDE         BANGLADESH   6-7                  3 or less          0.0985884   -0.1384488    0.3356257
Birth       PROVIDE         BANGLADESH   8+                   3 or less          0.1049013   -0.1581545    0.3679570
6 months    IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    IRC             INDIA        4-5                  3 or less         -0.3800852   -0.7740907    0.0139203
6 months    IRC             INDIA        6-7                  3 or less         -0.2382797   -0.6624223    0.1858630
6 months    IRC             INDIA        8+                   3 or less         -0.0961250   -0.5531006    0.3608505
6 months    LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    LCNI-5          MALAWI       4-5                  3 or less         -0.0666064   -0.2424495    0.1092367
6 months    LCNI-5          MALAWI       6-7                  3 or less         -0.0595612   -0.2629907    0.1438684
6 months    LCNI-5          MALAWI       8+                   3 or less         -0.0521385   -0.3661059    0.2618288
6 months    NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    NIH-Birth       BANGLADESH   4-5                  3 or less         -0.1539753   -0.4259461    0.1179956
6 months    NIH-Birth       BANGLADESH   6-7                  3 or less          0.1258491   -0.1752500    0.4269483
6 months    NIH-Birth       BANGLADESH   8+                   3 or less          0.1035116   -0.2352894    0.4423125
6 months    NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto      BANGLADESH   4-5                  3 or less          0.1672820   -0.0779117    0.4124757
6 months    NIH-Crypto      BANGLADESH   6-7                  3 or less          0.2610705   -0.0380214    0.5601624
6 months    NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1855745   -0.4689031    0.0977542
6 months    PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    PROVIDE         BANGLADESH   4-5                  3 or less          0.0279057   -0.1798950    0.2357065
6 months    PROVIDE         BANGLADESH   6-7                  3 or less          0.0624452   -0.1771732    0.3020636
6 months    PROVIDE         BANGLADESH   8+                   3 or less          0.0203494   -0.2691341    0.3098329
6 months    SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.4772758   -0.9068204   -0.0477312
6 months    SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.5426792   -1.0115508   -0.0738077
6 months    SAS-FoodSuppl   INDIA        8+                   3 or less         -0.4172896   -0.8921576    0.0575783
24 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   IRC             INDIA        4-5                  3 or less         -0.3763179   -0.6865955   -0.0660402
24 months   IRC             INDIA        6-7                  3 or less         -0.2306355   -0.5749969    0.1137259
24 months   IRC             INDIA        8+                   3 or less         -0.3704854   -0.7004714   -0.0404994
24 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   LCNI-5          MALAWI       4-5                  3 or less          0.0261645   -0.1736612    0.2259901
24 months   LCNI-5          MALAWI       6-7                  3 or less          0.1440903   -0.0790117    0.3671923
24 months   LCNI-5          MALAWI       8+                   3 or less          0.1160854   -0.2302285    0.4623992
24 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         -0.2637254   -0.5518730    0.0244222
24 months   NIH-Birth       BANGLADESH   6-7                  3 or less          0.0008435   -0.3294801    0.3311671
24 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0363300   -0.3962666    0.3236066
24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0306894   -0.2259797    0.2873585
24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0716120   -0.2122859    0.3555098
24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0134943   -0.3196184    0.2926299
24 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0904310   -0.3185373    0.1376752
24 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.0923986   -0.3585133    0.1737161
24 months   PROVIDE         BANGLADESH   8+                   3 or less         -0.0017320   -0.3027043    0.2992404


### Parameter: PAR


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            NA                -0.2846159   -0.6515875    0.0823556
Birth       NIH-Birth       BANGLADESH   3 or less            NA                 0.0798412   -0.1394287    0.2991112
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                 0.0883849   -0.0802499    0.2570197
Birth       PROVIDE         BANGLADESH   3 or less            NA                 0.0999042   -0.0505344    0.2503428
6 months    IRC             INDIA        3 or less            NA                -0.2335264   -0.5487454    0.0816926
6 months    LCNI-5          MALAWI       3 or less            NA                -0.0489501   -0.1685469    0.0706468
6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0041308   -0.2206482    0.2123866
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                 0.1570899   -0.0495326    0.3637125
6 months    PROVIDE         BANGLADESH   3 or less            NA                 0.0278371   -0.1352406    0.1909149
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                -0.4416871   -0.8250729   -0.0583013
24 months   IRC             INDIA        3 or less            NA                -0.2866203   -0.5401624   -0.0330781
24 months   LCNI-5          MALAWI       3 or less            NA                 0.0586665   -0.0715015    0.1888344
24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.1160893   -0.3453314    0.1131528
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0289928   -0.1810586    0.2390442
24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0638111   -0.2378715    0.1102493
