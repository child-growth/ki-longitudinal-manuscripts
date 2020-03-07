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

agecat      studyid         country      nhh          n_cell     n
----------  --------------  -----------  ----------  -------  ----
Birth       IRC             INDIA        3 or less        52   343
Birth       IRC             INDIA        4-5             131   343
Birth       IRC             INDIA        6-7              84   343
Birth       IRC             INDIA        8+               76   343
Birth       NIH-Birth       BANGLADESH   3 or less       104   575
Birth       NIH-Birth       BANGLADESH   4-5             244   575
Birth       NIH-Birth       BANGLADESH   6-7             130   575
Birth       NIH-Birth       BANGLADESH   8+               97   575
Birth       NIH-Crypto      BANGLADESH   3 or less       103   707
Birth       NIH-Crypto      BANGLADESH   4-5             318   707
Birth       NIH-Crypto      BANGLADESH   6-7             167   707
Birth       NIH-Crypto      BANGLADESH   8+              119   707
Birth       PROVIDE         BANGLADESH   3 or less       103   532
Birth       PROVIDE         BANGLADESH   4-5             249   532
Birth       PROVIDE         BANGLADESH   6-7             114   532
Birth       PROVIDE         BANGLADESH   8+               66   532
6 months    IRC             INDIA        3 or less        57   408
6 months    IRC             INDIA        4-5             157   408
6 months    IRC             INDIA        6-7             107   408
6 months    IRC             INDIA        8+               87   408
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
6 months    PROVIDE         BANGLADESH   3 or less       105   603
6 months    PROVIDE         BANGLADESH   4-5             289   603
6 months    PROVIDE         BANGLADESH   6-7             130   603
6 months    PROVIDE         BANGLADESH   8+               79   603
6 months    SAS-FoodSuppl   INDIA        3 or less        33   380
6 months    SAS-FoodSuppl   INDIA        4-5             166   380
6 months    SAS-FoodSuppl   INDIA        6-7             115   380
6 months    SAS-FoodSuppl   INDIA        8+               66   380
24 months   IRC             INDIA        3 or less        58   409
24 months   IRC             INDIA        4-5             158   409
24 months   IRC             INDIA        6-7             107   409
24 months   IRC             INDIA        8+               86   409
24 months   LCNI-5          MALAWI       3 or less       157   558
24 months   LCNI-5          MALAWI       4-5             230   558
24 months   LCNI-5          MALAWI       6-7             123   558
24 months   LCNI-5          MALAWI       8+               48   558
24 months   NIH-Birth       BANGLADESH   3 or less        74   428
24 months   NIH-Birth       BANGLADESH   4-5             184   428
24 months   NIH-Birth       BANGLADESH   6-7             100   428
24 months   NIH-Birth       BANGLADESH   8+               70   428
24 months   NIH-Crypto      BANGLADESH   3 or less        69   514
24 months   NIH-Crypto      BANGLADESH   4-5             232   514
24 months   NIH-Crypto      BANGLADESH   6-7             130   514
24 months   NIH-Crypto      BANGLADESH   8+               83   514
24 months   PROVIDE         BANGLADESH   3 or less       106   579
24 months   PROVIDE         BANGLADESH   4-5             273   579
24 months   PROVIDE         BANGLADESH   6-7             117   579
24 months   PROVIDE         BANGLADESH   8+               83   579


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
![](/tmp/be074dfc-28de-424e-9b47-5d638c549010/4b363853-6985-4092-91f1-d4b0f0689c1b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/be074dfc-28de-424e-9b47-5d638c549010/4b363853-6985-4092-91f1-d4b0f0689c1b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/be074dfc-28de-424e-9b47-5d638c549010/4b363853-6985-4092-91f1-d4b0f0689c1b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            NA                -1.1920093   -1.6900987   -0.6939199
Birth       IRC             INDIA        4-5                  NA                -0.9686767   -1.2792991   -0.6580543
Birth       IRC             INDIA        6-7                  NA                -0.8313385   -1.1978924   -0.4647847
Birth       IRC             INDIA        8+                   NA                -1.1167785   -1.5283221   -0.7052350
Birth       NIH-Birth       BANGLADESH   3 or less            NA                -1.7660595   -2.0123607   -1.5197583
Birth       NIH-Birth       BANGLADESH   4-5                  NA                -1.3473103   -1.4882075   -1.2064131
Birth       NIH-Birth       BANGLADESH   6-7                  NA                -1.3267839   -1.5304408   -1.1231270
Birth       NIH-Birth       BANGLADESH   8+                   NA                -1.1188843   -1.4091714   -0.8285973
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                -1.2574535   -1.4696286   -1.0452783
Birth       NIH-Crypto      BANGLADESH   4-5                  NA                -1.2892905   -1.4392829   -1.1392982
Birth       NIH-Crypto      BANGLADESH   6-7                  NA                -1.1765723   -1.4154761   -0.9376685
Birth       NIH-Crypto      BANGLADESH   8+                   NA                -1.2562383   -1.4357231   -1.0767536
Birth       PROVIDE         BANGLADESH   3 or less            NA                -1.3067616   -1.4725492   -1.1409740
Birth       PROVIDE         BANGLADESH   4-5                  NA                -1.3162615   -1.4340158   -1.1985073
Birth       PROVIDE         BANGLADESH   6-7                  NA                -1.2742300   -1.4238975   -1.1245624
Birth       PROVIDE         BANGLADESH   8+                   NA                -1.2235137   -1.4682083   -0.9788190
6 months    IRC             INDIA        3 or less            NA                -0.5954882   -0.9541254   -0.2368510
6 months    IRC             INDIA        4-5                  NA                -0.5624512   -0.7702897   -0.3546128
6 months    IRC             INDIA        6-7                  NA                -0.5142380   -0.7951239   -0.2333521
6 months    IRC             INDIA        8+                   NA                -0.7860282   -1.0813107   -0.4907456
6 months    LCNI-5          MALAWI       3 or less            NA                 0.5554973    0.4155939    0.6954006
6 months    LCNI-5          MALAWI       4-5                  NA                 0.4595646    0.3487039    0.5704254
6 months    LCNI-5          MALAWI       6-7                  NA                 0.3895058    0.2380070    0.5410046
6 months    LCNI-5          MALAWI       8+                   NA                 0.2110031   -0.0761556    0.4981618
6 months    NIH-Birth       BANGLADESH   3 or less            NA                -0.5175555   -0.7170753   -0.3180357
6 months    NIH-Birth       BANGLADESH   4-5                  NA                -0.4909574   -0.6330597   -0.3488551
6 months    NIH-Birth       BANGLADESH   6-7                  NA                -0.4190658   -0.6209963   -0.2171353
6 months    NIH-Birth       BANGLADESH   8+                   NA                -0.4321853   -0.7092026   -0.1551680
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                 0.1793813   -0.0346045    0.3933671
6 months    NIH-Crypto      BANGLADESH   4-5                  NA                -0.0103654   -0.1743486    0.1536178
6 months    NIH-Crypto      BANGLADESH   6-7                  NA                -0.0095936   -0.1908564    0.1716693
6 months    NIH-Crypto      BANGLADESH   8+                   NA                 0.1634809    0.0203013    0.3066606
6 months    PROVIDE         BANGLADESH   3 or less            NA                -0.0988992   -0.2877012    0.0899028
6 months    PROVIDE         BANGLADESH   4-5                  NA                -0.1768720   -0.2920184   -0.0617256
6 months    PROVIDE         BANGLADESH   6-7                  NA                -0.2452541   -0.4337472   -0.0567609
6 months    PROVIDE         BANGLADESH   8+                   NA                -0.3392753   -0.6178344   -0.0607162
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                -0.5406296   -0.8955819   -0.1856772
6 months    SAS-FoodSuppl   INDIA        4-5                  NA                -1.0027560   -1.1778442   -0.8276677
6 months    SAS-FoodSuppl   INDIA        6-7                  NA                -1.1772204   -1.4108143   -0.9436266
6 months    SAS-FoodSuppl   INDIA        8+                   NA                -1.0521361   -1.3258098   -0.7784624
24 months   IRC             INDIA        3 or less            NA                -0.6159330   -0.8784526   -0.3534134
24 months   IRC             INDIA        4-5                  NA                -0.8360863   -0.9888954   -0.6832773
24 months   IRC             INDIA        6-7                  NA                -0.6495209   -0.8203186   -0.4787232
24 months   IRC             INDIA        8+                   NA                -0.7722953   -0.9798149   -0.5647758
24 months   LCNI-5          MALAWI       3 or less            NA                -0.0251247   -0.1931937    0.1429443
24 months   LCNI-5          MALAWI       4-5                  NA                -0.0354607   -0.1629533    0.0920319
24 months   LCNI-5          MALAWI       6-7                  NA                -0.0354453   -0.2008263    0.1299357
24 months   LCNI-5          MALAWI       8+                   NA                -0.1363150   -0.4045630    0.1319331
24 months   NIH-Birth       BANGLADESH   3 or less            NA                -0.9674964   -1.2267775   -0.7082154
24 months   NIH-Birth       BANGLADESH   4-5                  NA                -0.9077737   -1.0569777   -0.7585697
24 months   NIH-Birth       BANGLADESH   6-7                  NA                -0.9263718   -1.1348954   -0.7178483
24 months   NIH-Birth       BANGLADESH   8+                   NA                -0.9005576   -1.1927025   -0.6084126
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.5847694   -0.7999357   -0.3696031
24 months   NIH-Crypto      BANGLADESH   4-5                  NA                -0.6377546   -0.7842913   -0.4912179
24 months   NIH-Crypto      BANGLADESH   6-7                  NA                -0.5200123   -0.7215111   -0.3185134
24 months   NIH-Crypto      BANGLADESH   8+                   NA                -0.6957573   -0.9222576   -0.4692569
24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.7789887   -0.9726132   -0.5853642
24 months   PROVIDE         BANGLADESH   4-5                  NA                -0.8783954   -0.9913409   -0.7654499
24 months   PROVIDE         BANGLADESH   6-7                  NA                -0.9142529   -1.1179958   -0.7105100
24 months   PROVIDE         BANGLADESH   8+                   NA                -0.9915431   -1.2290630   -0.7540232


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
Birth       IRC             INDIA        4-5                  3 or less          0.2233326   -0.3628334    0.8094986
Birth       IRC             INDIA        6-7                  3 or less          0.3606708   -0.2565865    0.9779280
Birth       IRC             INDIA        8+                   3 or less          0.0752308   -0.5685812    0.7190428
Birth       NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       NIH-Birth       BANGLADESH   4-5                  3 or less          0.4187492    0.1345769    0.7029215
Birth       NIH-Birth       BANGLADESH   6-7                  3 or less          0.4392756    0.1185972    0.7599540
Birth       NIH-Birth       BANGLADESH   8+                   3 or less          0.6471752    0.2662897    1.0280606
Birth       NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0318371   -0.2916049    0.2279308
Birth       NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0808812   -0.2385658    0.4003281
Birth       NIH-Crypto      BANGLADESH   8+                   3 or less          0.0012151   -0.2765836    0.2790138
Birth       PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       PROVIDE         BANGLADESH   4-5                  3 or less         -0.0094999   -0.2126796    0.1936797
Birth       PROVIDE         BANGLADESH   6-7                  3 or less          0.0325317   -0.1904735    0.2555368
Birth       PROVIDE         BANGLADESH   8+                   3 or less          0.0832480   -0.2119082    0.3784042
6 months    IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    IRC             INDIA        4-5                  3 or less          0.0330370   -0.3815312    0.4476051
6 months    IRC             INDIA        6-7                  3 or less          0.0812502   -0.3743201    0.5368205
6 months    IRC             INDIA        8+                   3 or less         -0.1905400   -0.6555198    0.2744399
6 months    LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    LCNI-5          MALAWI       4-5                  3 or less         -0.0959326   -0.2744947    0.0826294
6 months    LCNI-5          MALAWI       6-7                  3 or less         -0.1659915   -0.3722596    0.0402767
6 months    LCNI-5          MALAWI       8+                   3 or less         -0.3444942   -0.6640043   -0.0249840
6 months    NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    NIH-Birth       BANGLADESH   4-5                  3 or less          0.0265981   -0.2185978    0.2717940
6 months    NIH-Birth       BANGLADESH   6-7                  3 or less          0.0984897   -0.1849430    0.3819224
6 months    NIH-Birth       BANGLADESH   8+                   3 or less          0.0853702   -0.2556275    0.4263679
6 months    NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1897467   -0.4595792    0.0800858
6 months    NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1889749   -0.4697405    0.0917907
6 months    NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0159004   -0.2741067    0.2423058
6 months    PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    PROVIDE         BANGLADESH   4-5                  3 or less         -0.0779728   -0.2984897    0.1425441
6 months    PROVIDE         BANGLADESH   6-7                  3 or less         -0.1463549   -0.4128019    0.1200922
6 months    PROVIDE         BANGLADESH   8+                   3 or less         -0.2403761   -0.5765155    0.0957633
6 months    SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.4621264   -0.8579461   -0.0663066
6 months    SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.6365908   -1.0621079   -0.2110738
6 months    SAS-FoodSuppl   INDIA        8+                   3 or less         -0.5115065   -0.9597192   -0.0632937
24 months   IRC             INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   IRC             INDIA        4-5                  3 or less         -0.2201533   -0.5238581    0.0835514
24 months   IRC             INDIA        6-7                  3 or less         -0.0335879   -0.3466493    0.2794734
24 months   IRC             INDIA        8+                   3 or less         -0.1563623   -0.4907277    0.1780030
24 months   LCNI-5          MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   LCNI-5          MALAWI       4-5                  3 or less         -0.0103360   -0.2208493    0.2001773
24 months   LCNI-5          MALAWI       6-7                  3 or less         -0.0103206   -0.2457907    0.2251495
24 months   LCNI-5          MALAWI       8+                   3 or less         -0.1111903   -0.4276669    0.2052864
24 months   NIH-Birth       BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   NIH-Birth       BANGLADESH   4-5                  3 or less          0.0597228   -0.2393045    0.3587500
24 months   NIH-Birth       BANGLADESH   6-7                  3 or less          0.0411246   -0.2915205    0.3737697
24 months   NIH-Birth       BANGLADESH   8+                   3 or less          0.0669389   -0.3230698    0.4569475
24 months   NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0529852   -0.3128674    0.2068970
24 months   NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0647571   -0.2289211    0.3584354
24 months   NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1109879   -0.4224555    0.2004798
24 months   PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   PROVIDE         BANGLADESH   4-5                  3 or less         -0.0994067   -0.3212218    0.1224084
24 months   PROVIDE         BANGLADESH   6-7                  3 or less         -0.1352642   -0.4159604    0.1454320
24 months   PROVIDE         BANGLADESH   8+                   3 or less         -0.2125544   -0.5197015    0.0945927


### Parameter: PAR


agecat      studyid         country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC             INDIA        3 or less            NA                 0.1814262   -0.2740980    0.6369504
Birth       NIH-Birth       BANGLADESH   3 or less            NA                 0.4161378    0.1928955    0.6393800
Birth       NIH-Crypto      BANGLADESH   3 or less            NA                 0.0133021   -0.1932270    0.2198313
Birth       PROVIDE         BANGLADESH   3 or less            NA                 0.0083030   -0.1445595    0.1611654
6 months    IRC             INDIA        3 or less            NA                -0.0034415   -0.3406012    0.3337181
6 months    LCNI-5          MALAWI       3 or less            NA                -0.1137326   -0.2328989    0.0054338
6 months    NIH-Birth       BANGLADESH   3 or less            NA                 0.0701517   -0.1177691    0.2580726
6 months    NIH-Crypto      BANGLADESH   3 or less            NA                -0.1496191   -0.3592515    0.0600133
6 months    PROVIDE         BANGLADESH   3 or less            NA                -0.1001915   -0.2724556    0.0720726
6 months    SAS-FoodSuppl   INDIA        3 or less            NA                -0.4715283   -0.8191189   -0.1239377
24 months   IRC             INDIA        3 or less            NA                -0.1298820   -0.3721441    0.1123801
24 months   LCNI-5          MALAWI       3 or less            NA                -0.0226621   -0.1622144    0.1168903
24 months   NIH-Birth       BANGLADESH   3 or less            NA                 0.0559174   -0.1822255    0.2940603
24 months   NIH-Crypto      BANGLADESH   3 or less            NA                -0.0255808   -0.2325938    0.1814322
24 months   PROVIDE         BANGLADESH   3 or less            NA                -0.1138783   -0.2888896    0.0611330
