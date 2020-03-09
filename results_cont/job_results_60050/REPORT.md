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

agecat      studyid         country      nhh          n_cell     n
----------  --------------  -----------  ----------  -------  ----
Birth       IRC             INDIA        3 or less        54   388
Birth       IRC             INDIA        4-5             150   388
Birth       IRC             INDIA        6-7             103   388
Birth       IRC             INDIA        8+               81   388
Birth       NIH-Birth       BANGLADESH   3 or less       112   608
Birth       NIH-Birth       BANGLADESH   4-5             255   608
Birth       NIH-Birth       BANGLADESH   6-7             138   608
Birth       NIH-Birth       BANGLADESH   8+              103   608
Birth       NIH-Crypto      BANGLADESH   3 or less       108   732
Birth       NIH-Crypto      BANGLADESH   4-5             328   732
Birth       NIH-Crypto      BANGLADESH   6-7             176   732
Birth       NIH-Crypto      BANGLADESH   8+              120   732
Birth       PROVIDE         BANGLADESH   3 or less       104   539
Birth       PROVIDE         BANGLADESH   4-5             251   539
Birth       PROVIDE         BANGLADESH   6-7             116   539
Birth       PROVIDE         BANGLADESH   8+               68   539
6 months    IRC             INDIA        3 or less        58   407
6 months    IRC             INDIA        4-5             158   407
6 months    IRC             INDIA        6-7             106   407
6 months    IRC             INDIA        8+               85   407
6 months    LCNI-5          MALAWI       3 or less       224   816
6 months    LCNI-5          MALAWI       4-5             340   816
6 months    LCNI-5          MALAWI       6-7             182   816
6 months    LCNI-5          MALAWI       8+               70   816
6 months    NIH-Birth       BANGLADESH   3 or less        95   537
6 months    NIH-Birth       BANGLADESH   4-5             227   537
6 months    NIH-Birth       BANGLADESH   6-7             128   537
6 months    NIH-Birth       BANGLADESH   8+               87   537
6 months    NIH-Crypto      BANGLADESH   3 or less       104   715
6 months    NIH-Crypto      BANGLADESH   4-5             326   715
6 months    NIH-Crypto      BANGLADESH   6-7             170   715
6 months    NIH-Crypto      BANGLADESH   8+              115   715
6 months    PROVIDE         BANGLADESH   3 or less       105   604
6 months    PROVIDE         BANGLADESH   4-5             289   604
6 months    PROVIDE         BANGLADESH   6-7             130   604
6 months    PROVIDE         BANGLADESH   8+               80   604
6 months    SAS-FoodSuppl   INDIA        3 or less        33   380
6 months    SAS-FoodSuppl   INDIA        4-5             166   380
6 months    SAS-FoodSuppl   INDIA        6-7             115   380
6 months    SAS-FoodSuppl   INDIA        8+               66   380
24 months   IRC             INDIA        3 or less        58   409
24 months   IRC             INDIA        4-5             158   409
24 months   IRC             INDIA        6-7             107   409
24 months   IRC             INDIA        8+               86   409
24 months   LCNI-5          MALAWI       3 or less       159   574
24 months   LCNI-5          MALAWI       4-5             237   574
24 months   LCNI-5          MALAWI       6-7             129   574
24 months   LCNI-5          MALAWI       8+               49   574
24 months   NIH-Birth       BANGLADESH   3 or less        75   429
24 months   NIH-Birth       BANGLADESH   4-5             184   429
24 months   NIH-Birth       BANGLADESH   6-7             100   429
24 months   NIH-Birth       BANGLADESH   8+               70   429
24 months   NIH-Crypto      BANGLADESH   3 or less        69   514
24 months   NIH-Crypto      BANGLADESH   4-5             232   514
24 months   NIH-Crypto      BANGLADESH   6-7             130   514
24 months   NIH-Crypto      BANGLADESH   8+               83   514
24 months   PROVIDE         BANGLADESH   3 or less       106   578
24 months   PROVIDE         BANGLADESH   4-5             273   578
24 months   PROVIDE         BANGLADESH   6-7             117   578
24 months   PROVIDE         BANGLADESH   8+               82   578


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
![](/tmp/2060a04a-89cf-4400-8b8c-c92dd0847f7d/6ff5651d-3206-4e41-a24d-f52f2bc264f2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2060a04a-89cf-4400-8b8c-c92dd0847f7d/6ff5651d-3206-4e41-a24d-f52f2bc264f2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2060a04a-89cf-4400-8b8c-c92dd0847f7d/6ff5651d-3206-4e41-a24d-f52f2bc264f2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            NA                 0.0259362   -0.3581039    0.4099763
Birth       IRC             INDIA        4-5                  NA                -0.4441440   -0.7136863   -0.1746017
Birth       IRC             INDIA        6-7                  NA                -0.4399975   -0.7743161   -0.1056790
Birth       IRC             INDIA        8+                   NA                -0.1200700   -0.4254758    0.1853358
Birth       NIH-Birth       BANGLADESH   3 or less            NA                -0.9633861   -1.2225787   -0.7041936
Birth       NIH-Birth       BANGLADESH   4-5                  NA                -0.9474330   -1.0851150   -0.8097509
Birth       NIH-Birth       BANGLADESH   6-7                  NA                -0.8104208   -0.9901823   -0.6306592
Birth       NIH-Birth       BANGLADESH   8+                   NA                -0.9851750   -1.2092727   -0.7610772
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                -1.0250372   -1.1833072   -0.8667671
Birth       NIH-Crypto      BANGLADESH   4-5                  NA                -0.8791785   -1.0038504   -0.7545065
Birth       NIH-Crypto      BANGLADESH   6-7                  NA                -0.8514178   -1.0673873   -0.6354482
Birth       NIH-Crypto      BANGLADESH   8+                   NA                -0.9990532   -1.1534560   -0.8446503
Birth       PROVIDE         BANGLADESH   3 or less            NA                -0.9800228   -1.1387988   -0.8212467
Birth       PROVIDE         BANGLADESH   4-5                  NA                -0.8590272   -0.9706458   -0.7474086
Birth       PROVIDE         BANGLADESH   6-7                  NA                -0.8570672   -1.0332134   -0.6809210
Birth       PROVIDE         BANGLADESH   8+                   NA                -0.8634048   -1.0711820   -0.6556275
6 months    IRC             INDIA        3 or less            NA                -0.9961711   -1.3477227   -0.6446196
6 months    IRC             INDIA        4-5                  NA                -1.3742445   -1.5780006   -1.1704884
6 months    IRC             INDIA        6-7                  NA                -1.2442882   -1.4920641   -0.9965123
6 months    IRC             INDIA        8+                   NA                -1.0857178   -1.3881397   -0.7832959
6 months    LCNI-5          MALAWI       3 or less            NA                -1.6115017   -1.7551847   -1.4678186
6 months    LCNI-5          MALAWI       4-5                  NA                -1.6672706   -1.7742463   -1.5602950
6 months    LCNI-5          MALAWI       6-7                  NA                -1.6507125   -1.7979723   -1.5034527
6 months    LCNI-5          MALAWI       8+                   NA                -1.6335075   -1.9417010   -1.3253140
6 months    NIH-Birth       BANGLADESH   3 or less            NA                -1.3888416   -1.6195467   -1.1581364
6 months    NIH-Birth       BANGLADESH   4-5                  NA                -1.5539395   -1.6907868   -1.4170923
6 months    NIH-Birth       BANGLADESH   6-7                  NA                -1.2820419   -1.4618284   -1.1022554
6 months    NIH-Birth       BANGLADESH   8+                   NA                -1.3261598   -1.5649704   -1.0873493
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -1.3288321   -1.5244505   -1.1332136
6 months    NIH-Crypto      BANGLADESH   4-5                  NA                -1.1984982   -1.3197608   -1.0772355
6 months    NIH-Crypto      BANGLADESH   6-7                  NA                -1.0733390   -1.2714442   -0.8752339
6 months    NIH-Crypto      BANGLADESH   8+                   NA                -1.4322774   -1.6230041   -1.2415506
6 months    PROVIDE         BANGLADESH   3 or less            NA                -1.1118904   -1.2896902   -0.9340906
6 months    PROVIDE         BANGLADESH   4-5                  NA                -1.0963807   -1.2059298   -0.9868316
6 months    PROVIDE         BANGLADESH   6-7                  NA                -1.0646404   -1.2241054   -0.9051753
6 months    PROVIDE         BANGLADESH   8+                   NA                -1.1065073   -1.3438580   -0.8691566
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                -1.5102617   -1.8731091   -1.1474143
6 months    SAS-FoodSuppl   INDIA        4-5                  NA                -1.9101199   -2.0764759   -1.7437640
6 months    SAS-FoodSuppl   INDIA        6-7                  NA                -2.0234718   -2.2595438   -1.7873998
6 months    SAS-FoodSuppl   INDIA        8+                   NA                -1.8951482   -2.1546846   -1.6356118
24 months   IRC             INDIA        3 or less            NA                -1.4889312   -1.7395393   -1.2383230
24 months   IRC             INDIA        4-5                  NA                -1.8807325   -2.0256015   -1.7358636
24 months   IRC             INDIA        6-7                  NA                -1.7561543   -1.9593239   -1.5529846
24 months   IRC             INDIA        8+                   NA                -1.8905452   -2.0826642   -1.6984261
24 months   LCNI-5          MALAWI       3 or less            NA                -1.9398204   -2.0912484   -1.7883925
24 months   LCNI-5          MALAWI       4-5                  NA                -1.9153994   -2.0453175   -1.7854813
24 months   LCNI-5          MALAWI       6-7                  NA                -1.7841416   -1.9504638   -1.6178195
24 months   LCNI-5          MALAWI       8+                   NA                -1.8086766   -2.1162641   -1.5010891
24 months   NIH-Birth       BANGLADESH   3 or less            NA                -2.0802628   -2.3290401   -1.8314855
24 months   NIH-Birth       BANGLADESH   4-5                  NA                -2.3714383   -2.5181888   -2.2246879
24 months   NIH-Birth       BANGLADESH   6-7                  NA                -2.1034149   -2.3336647   -1.8731650
24 months   NIH-Birth       BANGLADESH   8+                   NA                -2.1452510   -2.4133636   -1.8771384
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                -1.4439493   -1.6736845   -1.2142141
24 months   NIH-Crypto      BANGLADESH   4-5                  NA                -1.4380168   -1.5642155   -1.3118181
24 months   NIH-Crypto      BANGLADESH   6-7                  NA                -1.3953838   -1.5697279   -1.2210398
24 months   NIH-Crypto      BANGLADESH   8+                   NA                -1.4769668   -1.6815519   -1.2723816
24 months   PROVIDE         BANGLADESH   3 or less            NA                -1.5370796   -1.7376890   -1.3364702
24 months   PROVIDE         BANGLADESH   4-5                  NA                -1.6347425   -1.7567442   -1.5127408
24 months   PROVIDE         BANGLADESH   6-7                  NA                -1.6213632   -1.8022305   -1.4404958
24 months   PROVIDE         BANGLADESH   8+                   NA                -1.5444774   -1.7794888   -1.3094661


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
Birth       IRC             INDIA        4-5                  3 or less         -0.4700802   -0.9395117   -0.0006487
Birth       IRC             INDIA        6-7                  3 or less         -0.4659337   -0.9754493    0.0435819
Birth       IRC             INDIA        8+                   3 or less         -0.1460062   -0.6372354    0.3452230
Birth       NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       NIH-Birth       BANGLADESH   4-5                  3 or less          0.0159532   -0.2770966    0.3090030
Birth       NIH-Birth       BANGLADESH   6-7                  3 or less          0.1529653   -0.1619802    0.4679109
Birth       NIH-Birth       BANGLADESH   8+                   3 or less         -0.0217888   -0.3641522    0.3205745
Birth       NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto      BANGLADESH   4-5                  3 or less          0.1458587   -0.0552261    0.3469435
Birth       NIH-Crypto      BANGLADESH   6-7                  3 or less          0.1736194   -0.0939555    0.4411943
Birth       NIH-Crypto      BANGLADESH   8+                   3 or less          0.0259840   -0.1934553    0.2454233
Birth       PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       PROVIDE         BANGLADESH   4-5                  3 or less          0.1209956   -0.0727878    0.3147790
Birth       PROVIDE         BANGLADESH   6-7                  3 or less          0.1229555   -0.1134122    0.3593233
Birth       PROVIDE         BANGLADESH   8+                   3 or less          0.1166180   -0.1444241    0.3776601
6 months    IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    IRC             INDIA        4-5                  3 or less         -0.3780734   -0.7833897    0.0272430
6 months    IRC             INDIA        6-7                  3 or less         -0.2481171   -0.6773822    0.1811481
6 months    IRC             INDIA        8+                   3 or less         -0.0895467   -0.5528283    0.3737350
6 months    LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    LCNI-5          MALAWI       4-5                  3 or less         -0.0557689   -0.2349878    0.1234499
6 months    LCNI-5          MALAWI       6-7                  3 or less         -0.0392109   -0.2450840    0.1666623
6 months    LCNI-5          MALAWI       8+                   3 or less         -0.0220058   -0.3620944    0.3180828
6 months    NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    NIH-Birth       BANGLADESH   4-5                  3 or less         -0.1650979   -0.4323830    0.1021871
6 months    NIH-Birth       BANGLADESH   6-7                  3 or less          0.1067997   -0.1836812    0.3972806
6 months    NIH-Birth       BANGLADESH   8+                   3 or less          0.0626817   -0.2680725    0.3934359
6 months    NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto      BANGLADESH   4-5                  3 or less          0.1303339   -0.0982384    0.3589062
6 months    NIH-Crypto      BANGLADESH   6-7                  3 or less          0.2554930   -0.0220093    0.5329953
6 months    NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1034453   -0.3748632    0.1679726
6 months    PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    PROVIDE         BANGLADESH   4-5                  3 or less          0.0155097   -0.1935557    0.2245752
6 months    PROVIDE         BANGLADESH   6-7                  3 or less          0.0472500   -0.1917021    0.2862021
6 months    PROVIDE         BANGLADESH   8+                   3 or less          0.0053831   -0.2911459    0.3019122
6 months    SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.3998582   -0.7992581   -0.0004584
6 months    SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.5132101   -0.9458922   -0.0805281
6 months    SAS-FoodSuppl   INDIA        8+                   3 or less         -0.3848865   -0.8309800    0.0612069
24 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   IRC             INDIA        4-5                  3 or less         -0.3918014   -0.6810575   -0.1025452
24 months   IRC             INDIA        6-7                  3 or less         -0.2672231   -0.5889724    0.0545262
24 months   IRC             INDIA        8+                   3 or less         -0.4016140   -0.7172900   -0.0859381
24 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   LCNI-5          MALAWI       4-5                  3 or less          0.0244210   -0.1751865    0.2240285
24 months   LCNI-5          MALAWI       6-7                  3 or less          0.1556788   -0.0693877    0.3807453
24 months   LCNI-5          MALAWI       8+                   3 or less          0.1311439   -0.2118591    0.4741468
24 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         -0.2911755   -0.5784769   -0.0038742
24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0231521   -0.3599898    0.3136856
24 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0649882   -0.4290750    0.2990986
24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0059325   -0.2554551    0.2673200
24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0485655   -0.2396490    0.3367799
24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0330175   -0.3405798    0.2745448
24 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0976629   -0.3312729    0.1359470
24 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.0842836   -0.3535021    0.1849349
24 months   PROVIDE         BANGLADESH   8+                   3 or less         -0.0073979   -0.3154547    0.3006590


### Parameter: PAR


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            NA                -0.3339774   -0.6991475    0.0311926
Birth       NIH-Birth       BANGLADESH   3 or less            NA                 0.0323664   -0.1993069    0.2640396
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                 0.1155426   -0.0401964    0.2712816
Birth       PROVIDE         BANGLADESH   3 or less            NA                 0.0949207   -0.0517203    0.2415617
6 months    IRC             INDIA        3 or less            NA                -0.2382351   -0.5624072    0.0859371
6 months    LCNI-5          MALAWI       3 or less            NA                -0.0311944   -0.1545146    0.0921257
6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0185405   -0.2281740    0.1910930
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                 0.1301537   -0.0595590    0.3198665
6 months    PROVIDE         BANGLADESH   3 or less            NA                 0.0201989   -0.1441253    0.1845231
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                -0.3884225   -0.7407039   -0.0361411
24 months   IRC             INDIA        3 or less            NA                -0.3098463   -0.5413582   -0.0783345
24 months   LCNI-5          MALAWI       3 or less            NA                 0.0575556   -0.0726627    0.1877739
24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.1387951   -0.3659490    0.0883589
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0026847   -0.2125302    0.2178997
24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0653426   -0.2459410    0.1152559
