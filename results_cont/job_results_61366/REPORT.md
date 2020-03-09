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
![](/tmp/bc540115-c73a-418a-8f1f-251b08847f88/a6c426ae-2968-459f-8c19-fb2ef83ac8d9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bc540115-c73a-418a-8f1f-251b08847f88/a6c426ae-2968-459f-8c19-fb2ef83ac8d9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/bc540115-c73a-418a-8f1f-251b08847f88/a6c426ae-2968-459f-8c19-fb2ef83ac8d9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            NA                 0.0382908   -0.3689384    0.4455200
Birth       IRC             INDIA        4-5                  NA                -0.4466575   -0.7182916   -0.1750234
Birth       IRC             INDIA        6-7                  NA                -0.4176356   -0.7503857   -0.0848856
Birth       IRC             INDIA        8+                   NA                -0.1565937   -0.4445068    0.1313193
Birth       NIH-Birth       BANGLADESH   3 or less            NA                -0.8997940   -1.1566108   -0.6429773
Birth       NIH-Birth       BANGLADESH   4-5                  NA                -0.9476135   -1.0827600   -0.8124669
Birth       NIH-Birth       BANGLADESH   6-7                  NA                -0.8133367   -0.9902771   -0.6363963
Birth       NIH-Birth       BANGLADESH   8+                   NA                -1.0064614   -1.2490314   -0.7638913
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                -1.0416737   -1.2422172   -0.8411301
Birth       NIH-Crypto      BANGLADESH   4-5                  NA                -0.8765687   -0.9982628   -0.7548746
Birth       NIH-Crypto      BANGLADESH   6-7                  NA                -0.8537446   -1.0691357   -0.6383536
Birth       NIH-Crypto      BANGLADESH   8+                   NA                -0.9692655   -1.1412322   -0.7972987
Birth       PROVIDE         BANGLADESH   3 or less            NA                -0.9577151   -1.1150316   -0.8003985
Birth       PROVIDE         BANGLADESH   4-5                  NA                -0.8439698   -0.9541850   -0.7337546
Birth       PROVIDE         BANGLADESH   6-7                  NA                -0.8647732   -1.0395910   -0.6899554
Birth       PROVIDE         BANGLADESH   8+                   NA                -0.9071293   -1.1194463   -0.6948124
6 months    IRC             INDIA        3 or less            NA                -1.0017675   -1.3598801   -0.6436550
6 months    IRC             INDIA        4-5                  NA                -1.3812264   -1.5791027   -1.1833502
6 months    IRC             INDIA        6-7                  NA                -1.2242678   -1.4732060   -0.9753295
6 months    IRC             INDIA        8+                   NA                -1.0566794   -1.3619706   -0.7513883
6 months    LCNI-5          MALAWI       3 or less            NA                -1.5972920   -1.7329056   -1.4616783
6 months    LCNI-5          MALAWI       4-5                  NA                -1.6594950   -1.7635943   -1.5553958
6 months    LCNI-5          MALAWI       6-7                  NA                -1.6360723   -1.7871962   -1.4849484
6 months    LCNI-5          MALAWI       8+                   NA                -1.6457208   -1.9122230   -1.3792187
6 months    NIH-Birth       BANGLADESH   3 or less            NA                -1.3784028   -1.6243008   -1.1325048
6 months    NIH-Birth       BANGLADESH   4-5                  NA                -1.5672309   -1.7015414   -1.4329203
6 months    NIH-Birth       BANGLADESH   6-7                  NA                -1.2763006   -1.4612601   -1.0913411
6 months    NIH-Birth       BANGLADESH   8+                   NA                -1.3005194   -1.5329838   -1.0680551
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -1.3777538   -1.5728371   -1.1826705
6 months    NIH-Crypto      BANGLADESH   4-5                  NA                -1.1813568   -1.3041749   -1.0585386
6 months    NIH-Crypto      BANGLADESH   6-7                  NA                -1.0951599   -1.3045730   -0.8857468
6 months    NIH-Crypto      BANGLADESH   8+                   NA                -1.4848365   -1.6930544   -1.2766185
6 months    PROVIDE         BANGLADESH   3 or less            NA                -1.1043769   -1.2803333   -0.9284204
6 months    PROVIDE         BANGLADESH   4-5                  NA                -1.0942610   -1.2037861   -0.9847358
6 months    PROVIDE         BANGLADESH   6-7                  NA                -1.0621679   -1.2197645   -0.9045714
6 months    PROVIDE         BANGLADESH   8+                   NA                -1.1187657   -1.3555925   -0.8819390
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                -1.4502456   -1.7975796   -1.1029116
6 months    SAS-FoodSuppl   INDIA        4-5                  NA                -1.9097727   -2.0781080   -1.7414374
6 months    SAS-FoodSuppl   INDIA        6-7                  NA                -2.0262263   -2.2684066   -1.7840460
6 months    SAS-FoodSuppl   INDIA        8+                   NA                -1.9093417   -2.1590473   -1.6596362
24 months   IRC             INDIA        3 or less            NA                -1.4983141   -1.7549002   -1.2417280
24 months   IRC             INDIA        4-5                  NA                -1.8950682   -2.0406509   -1.7494855
24 months   IRC             INDIA        6-7                  NA                -1.7470915   -1.9490425   -1.5451406
24 months   IRC             INDIA        8+                   NA                -1.8729169   -2.0572126   -1.6886211
24 months   LCNI-5          MALAWI       3 or less            NA                -1.9337622   -2.0879925   -1.7795320
24 months   LCNI-5          MALAWI       4-5                  NA                -1.9122552   -2.0421268   -1.7823835
24 months   LCNI-5          MALAWI       6-7                  NA                -1.7822134   -1.9478314   -1.6165954
24 months   LCNI-5          MALAWI       8+                   NA                -1.8120138   -2.1175419   -1.5064857
24 months   NIH-Birth       BANGLADESH   3 or less            NA                -2.0786392   -2.3369736   -1.8203047
24 months   NIH-Birth       BANGLADESH   4-5                  NA                -2.3596857   -2.5040567   -2.2153146
24 months   NIH-Birth       BANGLADESH   6-7                  NA                -2.0874962   -2.3157195   -1.8592729
24 months   NIH-Birth       BANGLADESH   8+                   NA                -2.1523333   -2.4320650   -1.8726015
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                -1.4688214   -1.6935458   -1.2440970
24 months   NIH-Crypto      BANGLADESH   4-5                  NA                -1.4309072   -1.5568323   -1.3049820
24 months   NIH-Crypto      BANGLADESH   6-7                  NA                -1.3975568   -1.5707509   -1.2243626
24 months   NIH-Crypto      BANGLADESH   8+                   NA                -1.4970031   -1.6890336   -1.3049725
24 months   PROVIDE         BANGLADESH   3 or less            NA                -1.5075636   -1.7101248   -1.3050025
24 months   PROVIDE         BANGLADESH   4-5                  NA                -1.6274273   -1.7472014   -1.5076532
24 months   PROVIDE         BANGLADESH   6-7                  NA                -1.6243562   -1.8089079   -1.4398046
24 months   PROVIDE         BANGLADESH   8+                   NA                -1.5570665   -1.7775099   -1.3366232


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
Birth       IRC             INDIA        4-5                  3 or less         -0.4849483   -0.9742141    0.0043174
Birth       IRC             INDIA        6-7                  3 or less         -0.4559264   -0.9822874    0.0704346
Birth       IRC             INDIA        8+                   3 or less         -0.1948845   -0.6945810    0.3048119
Birth       NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       NIH-Birth       BANGLADESH   4-5                  3 or less         -0.0478194   -0.3371987    0.2415599
Birth       NIH-Birth       BANGLADESH   6-7                  3 or less          0.0864573   -0.2244501    0.3973647
Birth       NIH-Birth       BANGLADESH   8+                   3 or less         -0.1066673   -0.4592307    0.2458961
Birth       NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto      BANGLADESH   4-5                  3 or less          0.1651050   -0.0693404    0.3995504
Birth       NIH-Crypto      BANGLADESH   6-7                  3 or less          0.1879290   -0.1062812    0.4821393
Birth       NIH-Crypto      BANGLADESH   8+                   3 or less          0.0724082   -0.1915682    0.3363846
Birth       PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       PROVIDE         BANGLADESH   4-5                  3 or less          0.1137453   -0.0769962    0.3044867
Birth       PROVIDE         BANGLADESH   6-7                  3 or less          0.0929419   -0.1404314    0.3263152
Birth       PROVIDE         BANGLADESH   8+                   3 or less          0.0505857   -0.2130037    0.3141752
6 months    IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    IRC             INDIA        4-5                  3 or less         -0.3794589   -0.7882615    0.0293437
6 months    IRC             INDIA        6-7                  3 or less         -0.2225002   -0.6579112    0.2129107
6 months    IRC             INDIA        8+                   3 or less         -0.0549119   -0.5255047    0.4156810
6 months    LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    LCNI-5          MALAWI       4-5                  3 or less         -0.0622031   -0.2316107    0.1072046
6 months    LCNI-5          MALAWI       6-7                  3 or less         -0.0387803   -0.2408490    0.1632883
6 months    LCNI-5          MALAWI       8+                   3 or less         -0.0484289   -0.3453924    0.2485346
6 months    NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    NIH-Birth       BANGLADESH   4-5                  3 or less         -0.1888281   -0.4682968    0.0906407
6 months    NIH-Birth       BANGLADESH   6-7                  3 or less          0.1021022   -0.2044268    0.4086312
6 months    NIH-Birth       BANGLADESH   8+                   3 or less          0.0778834   -0.2595974    0.4153641
6 months    NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto      BANGLADESH   4-5                  3 or less          0.1963971   -0.0334423    0.4262365
6 months    NIH-Crypto      BANGLADESH   6-7                  3 or less          0.2825939   -0.0038934    0.5690812
6 months    NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1070827   -0.3912221    0.1770568
6 months    PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    PROVIDE         BANGLADESH   4-5                  3 or less          0.0101159   -0.1972235    0.2174553
6 months    PROVIDE         BANGLADESH   6-7                  3 or less          0.0422089   -0.1940798    0.2784977
6 months    PROVIDE         BANGLADESH   8+                   3 or less         -0.0143889   -0.3093952    0.2806175
6 months    SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.4595270   -0.8458425   -0.0732116
6 months    SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.5759807   -0.9996427   -0.1523187
6 months    SAS-FoodSuppl   INDIA        8+                   3 or less         -0.4590961   -0.8870666   -0.0311256
24 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   IRC             INDIA        4-5                  3 or less         -0.3967541   -0.6918261   -0.1016822
24 months   IRC             INDIA        6-7                  3 or less         -0.2487774   -0.5752589    0.0777041
24 months   IRC             INDIA        8+                   3 or less         -0.3746028   -0.6906732   -0.0585323
24 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   LCNI-5          MALAWI       4-5                  3 or less          0.0215071   -0.1802595    0.2232736
24 months   LCNI-5          MALAWI       6-7                  3 or less          0.1515488   -0.0749309    0.3780286
24 months   LCNI-5          MALAWI       8+                   3 or less          0.1217484   -0.2203503    0.4638472
24 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   NIH-Birth       BANGLADESH   4-5                  3 or less         -0.2810465   -0.5757352    0.0136423
24 months   NIH-Birth       BANGLADESH   6-7                  3 or less         -0.0088570   -0.3527613    0.3350472
24 months   NIH-Birth       BANGLADESH   8+                   3 or less         -0.0736941   -0.4538298    0.3064416
24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0379142   -0.2184740    0.2943025
24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0712646   -0.2110268    0.3535560
24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0281817   -0.3226876    0.2663242
24 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.1198637   -0.3529888    0.1132615
24 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.1167926   -0.3890593    0.1554742
24 months   PROVIDE         BANGLADESH   8+                   3 or less         -0.0495029   -0.3472883    0.2482826


### Parameter: PAR


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            NA                -0.3463320   -0.7326175    0.0399534
Birth       NIH-Birth       BANGLADESH   3 or less            NA                -0.0312257   -0.2615940    0.1991426
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                 0.1321792   -0.0636591    0.3280174
Birth       PROVIDE         BANGLADESH   3 or less            NA                 0.0726130   -0.0726746    0.2179006
6 months    IRC             INDIA        3 or less            NA                -0.2326387   -0.5635755    0.0982981
6 months    LCNI-5          MALAWI       3 or less            NA                -0.0454041   -0.1607186    0.0699104
6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.0289793   -0.2531843    0.1952258
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                 0.1790755   -0.0102817    0.3684327
6 months    PROVIDE         BANGLADESH   3 or less            NA                 0.0126854   -0.1498430    0.1752137
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                -0.4484386   -0.7861467   -0.1107305
24 months   IRC             INDIA        3 or less            NA                -0.3004634   -0.5373541   -0.0635727
24 months   LCNI-5          MALAWI       3 or less            NA                 0.0514974   -0.0810764    0.1840713
24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.1404187   -0.3772504    0.0964130
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                 0.0275568   -0.1822570    0.2373706
24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.0948585   -0.2767203    0.0870033
