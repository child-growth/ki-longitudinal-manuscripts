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

agecat      studyid                    country      nhh          n_cell     n
----------  -------------------------  -----------  ----------  -------  ----
Birth       ki1000108-IRC              INDIA        3 or less        54   388
Birth       ki1000108-IRC              INDIA        4-5             150   388
Birth       ki1000108-IRC              INDIA        6-7             103   388
Birth       ki1000108-IRC              INDIA        8+               81   388
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less       112   608
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5             255   608
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7             138   608
Birth       ki1017093-NIH-Birth        BANGLADESH   8+              103   608
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less       104   539
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5             251   539
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7             116   539
Birth       ki1017093b-PROVIDE         BANGLADESH   8+               68   539
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less       108   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5             328   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7             176   732
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+              120   732
6 months    ki1000108-IRC              INDIA        3 or less        58   407
6 months    ki1000108-IRC              INDIA        4-5             158   407
6 months    ki1000108-IRC              INDIA        6-7             106   407
6 months    ki1000108-IRC              INDIA        8+               85   407
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        33   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             166   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7             115   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               66   380
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less        95   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5             227   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7             128   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+               87   537
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less       105   604
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5             289   604
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7             130   604
6 months    ki1017093b-PROVIDE         BANGLADESH   8+               80   604
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
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less        75   429
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5             184   429
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7             100   429
24 months   ki1017093-NIH-Birth        BANGLADESH   8+               70   429
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less       106   578
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             273   578
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7             117   578
24 months   ki1017093b-PROVIDE         BANGLADESH   8+               82   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less        69   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5             232   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7             130   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+               83   514
24 months   ki1148112-LCNI-5           MALAWI       3 or less       159   574
24 months   ki1148112-LCNI-5           MALAWI       4-5             237   574
24 months   ki1148112-LCNI-5           MALAWI       6-7             129   574
24 months   ki1148112-LCNI-5           MALAWI       8+               49   574


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
![](/tmp/c5d8e19c-835e-4580-a825-6abff1d2991b/782e0730-9683-4e14-9671-48e6711dbea9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c5d8e19c-835e-4580-a825-6abff1d2991b/782e0730-9683-4e14-9671-48e6711dbea9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c5d8e19c-835e-4580-a825-6abff1d2991b/782e0730-9683-4e14-9671-48e6711dbea9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                -0.0276876   -0.4132710    0.3578958
Birth       ki1000108-IRC              INDIA        4-5                  NA                -0.4450396   -0.7153601   -0.1747192
Birth       ki1000108-IRC              INDIA        6-7                  NA                -0.4304966   -0.7693018   -0.0916914
Birth       ki1000108-IRC              INDIA        8+                   NA                -0.1182310   -0.4327995    0.1963376
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.9647268   -1.2047113   -0.7247424
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.9248500   -1.0614924   -0.7882076
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.8461407   -1.0283974   -0.6638841
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.9982066   -1.2373151   -0.7590981
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.9946865   -1.1514097   -0.8379632
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.8410465   -0.9523449   -0.7297480
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.8643703   -1.0339599   -0.6947806
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.9078690   -1.1160327   -0.6997053
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.9344088   -1.0879686   -0.7808490
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.8802546   -0.9933578   -0.7671514
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.8540886   -1.0507365   -0.6574407
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -1.0066260   -1.1673265   -0.8459255
6 months    ki1000108-IRC              INDIA        3 or less            NA                -1.0212604   -1.3751886   -0.6673323
6 months    ki1000108-IRC              INDIA        4-5                  NA                -1.3758427   -1.5821921   -1.1694934
6 months    ki1000108-IRC              INDIA        6-7                  NA                -1.2245796   -1.4760992   -0.9730601
6 months    ki1000108-IRC              INDIA        8+                   NA                -1.0179657   -1.3063157   -0.7296156
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -1.5235550   -1.8861696   -1.1609403
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                -1.9143275   -2.0841025   -1.7445526
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                -2.0358117   -2.2743593   -1.7972640
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                -1.9221146   -2.1867352   -1.6574940
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -1.3970125   -1.6295009   -1.1645240
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -1.5493028   -1.6838119   -1.4147937
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -1.3113352   -1.4919225   -1.1307480
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -1.3109993   -1.5440516   -1.0779471
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -1.1277524   -1.3527618   -0.9027429
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -1.1049982   -1.2269290   -0.9830675
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -1.0720595   -1.2867913   -0.8573276
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.2041778   -1.4611663   -0.9471892
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -1.3822574   -1.5787937   -1.1857211
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -1.2003095   -1.3195995   -1.0810194
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -1.0966874   -1.3020743   -0.8913005
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -1.3964555   -1.5945082   -1.1984027
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -1.6051280   -1.7459916   -1.4642643
6 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                -1.6585133   -1.7642734   -1.5527533
6 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                -1.6459647   -1.7896126   -1.5023168
6 months    ki1148112-LCNI-5           MALAWI       8+                   NA                -1.6083367   -1.8956786   -1.3209947
24 months   ki1000108-IRC              INDIA        3 or less            NA                -1.5465055   -1.8031036   -1.2899074
24 months   ki1000108-IRC              INDIA        4-5                  NA                -1.8927782   -2.0369798   -1.7485765
24 months   ki1000108-IRC              INDIA        6-7                  NA                -1.7401734   -1.9443959   -1.5359509
24 months   ki1000108-IRC              INDIA        8+                   NA                -1.8553257   -2.0427578   -1.6678935
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -2.0697056   -2.3110309   -1.8283802
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -2.3698428   -2.5150817   -2.2246040
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -2.0953114   -2.3133410   -1.8772818
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -2.1244371   -2.3896757   -1.8591985
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -1.5541392   -1.8000896   -1.3081889
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -1.5869772   -1.7224014   -1.4515530
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -1.6713401   -1.9366820   -1.4059981
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.7777451   -1.9913742   -1.5641159
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -1.3316661   -1.5110104   -1.1523217
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -1.4161079   -1.5488445   -1.2833713
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -1.4106075   -1.6257373   -1.1954776
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -1.5660779   -1.7718788   -1.3602769
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -1.9535406   -2.0993983   -1.8076829
24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                -1.8935242   -2.0219180   -1.7651304
24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                -1.7682007   -1.9341251   -1.6022763
24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                -1.8334981   -2.2142293   -1.4527669


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
Birth       ki1000108-IRC              INDIA        4-5                  3 or less         -0.4173520   -0.8889240    0.0542199
Birth       ki1000108-IRC              INDIA        6-7                  3 or less         -0.4028090   -0.9167985    0.1111804
Birth       ki1000108-IRC              INDIA        8+                   3 or less         -0.0905434   -0.5886253    0.4075386
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0398768   -0.2345432    0.3142968
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.1185861   -0.1805704    0.4177426
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0334798   -0.3731923    0.3062328
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.1536400   -0.0370102    0.3442902
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.1303162   -0.0991163    0.3597487
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less          0.0868175   -0.1726806    0.3463156
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0541542   -0.1367801    0.2450884
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0803202   -0.1692269    0.3298672
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0722172   -0.2938971    0.1494627
6 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        4-5                  3 or less         -0.3545823   -0.7622185    0.0530539
6 months    ki1000108-IRC              INDIA        6-7                  3 or less         -0.2033192   -0.6369933    0.2303549
6 months    ki1000108-IRC              INDIA        8+                   3 or less          0.0032948   -0.4504480    0.4570375
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.3907726   -0.7910158    0.0094707
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.5122567   -0.9459965   -0.0785169
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.3985596   -0.8471210    0.0500018
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.1522903   -0.4201411    0.1155604
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0856772   -0.2070460    0.3784004
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0860131   -0.2420237    0.4140500
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0227541   -0.2332871    0.2787953
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0556929   -0.2550698    0.3664556
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.0764254   -0.4176225    0.2647717
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.1819479   -0.0481259    0.4120217
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.2855699    0.0008605    0.5702794
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0141981   -0.2935214    0.2651251
6 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0533853   -0.2296088    0.1228382
6 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0408367   -0.2420333    0.1603599
6 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0032087   -0.3233461    0.3169287
24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.3462726   -0.6406942   -0.0518511
24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.1936679   -0.5216098    0.1342740
24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.3088202   -0.6266674    0.0090270
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.3001373   -0.5795370   -0.0207375
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0256059   -0.3486824    0.2974707
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0547315   -0.4121896    0.3027265
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0328380   -0.3133401    0.2476641
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.1172008   -0.4788075    0.2444059
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.2236058   -0.5488502    0.1016386
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0844419   -0.3074126    0.1385289
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.0789414   -0.3584030    0.2005202
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.2344118   -0.5071335    0.0383098
24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0600164   -0.1343972    0.2544301
24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.1853399   -0.0356616    0.4063414
24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.1200425   -0.2876576    0.5277426


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                -0.2803536   -0.6474944    0.0867871
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0337071   -0.1803294    0.2477435
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1095844   -0.0345003    0.2536691
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0249143   -0.1255793    0.1754078
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.2131458   -0.5387161    0.1124245
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.3751292   -0.7271793   -0.0230792
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0103696   -0.2209163    0.2001771
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0360609   -0.1766936    0.2488153
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1835790   -0.0076253    0.3747834
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0375681   -0.1577132    0.0825770
24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.2522720   -0.4890472   -0.0154968
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1493523   -0.3690413    0.0703367
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0482829   -0.2786792    0.1821134
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.1095985   -0.2831188    0.0639217
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0712758   -0.0560434    0.1985949
