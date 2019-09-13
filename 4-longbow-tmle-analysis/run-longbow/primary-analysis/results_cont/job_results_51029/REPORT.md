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
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less         7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5              11    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7               7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                3    28
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less         8    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5               7    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7               5    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                3    23
6 months    ki1000108-IRC              INDIA        3 or less        57   408
6 months    ki1000108-IRC              INDIA        4-5             157   408
6 months    ki1000108-IRC              INDIA        6-7             107   408
6 months    ki1000108-IRC              INDIA        8+               87   408
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less        33   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5             166   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7             115   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+               66   380
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less        95   536
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5             227   536
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7             127   536
6 months    ki1017093-NIH-Birth        BANGLADESH   8+               87   536
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less       102   582
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5             277   582
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7             126   582
6 months    ki1017093b-PROVIDE         BANGLADESH   8+               77   582
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
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less       105   578
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             273   578
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7             117   578
24 months   ki1017093b-PROVIDE         BANGLADESH   8+               83   578
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/827537ba-3e5b-49d9-a654-fe22ee186f1a/20077725-2b3d-4d37-ba66-c56f84a2408f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/827537ba-3e5b-49d9-a654-fe22ee186f1a/20077725-2b3d-4d37-ba66-c56f84a2408f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/827537ba-3e5b-49d9-a654-fe22ee186f1a/20077725-2b3d-4d37-ba66-c56f84a2408f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                -1.2083669   -1.7295554   -0.6871785
Birth       ki1000108-IRC              INDIA        4-5                  NA                -0.9833949   -1.2919000   -0.6748898
Birth       ki1000108-IRC              INDIA        6-7                  NA                -0.8497628   -1.2124112   -0.4871143
Birth       ki1000108-IRC              INDIA        8+                   NA                -1.0359715   -1.4622657   -0.6096774
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.5357196   -0.8991976   -0.1722416
6 months    ki1000108-IRC              INDIA        4-5                  NA                -0.5553731   -0.7680618   -0.3426843
6 months    ki1000108-IRC              INDIA        6-7                  NA                -0.5627437   -0.8360617   -0.2894257
6 months    ki1000108-IRC              INDIA        8+                   NA                -0.6723126   -0.9893095   -0.3553157
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.5652545   -0.9264149   -0.2040941
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                -1.0445019   -1.2213448   -0.8676589
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                -1.1261964   -1.3636967   -0.8886961
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                -1.0229847   -1.3106963   -0.7352732
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.5249194   -0.7218856   -0.3279531
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.4825988   -0.6188741   -0.3463235
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.3684197   -0.5521132   -0.1847262
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.4336485   -0.7013727   -0.1659243
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.1649081   -0.4222098    0.0923935
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.1937077   -0.3394458   -0.0479697
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.2584774   -0.4996068   -0.0173480
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.4276089   -0.7911394   -0.0640784
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1648042   -0.0432928    0.3729012
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.0019662   -0.1515454    0.1476130
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.0034328   -0.1846765    0.1778109
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                 0.1348915   -0.0409746    0.3107576
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.5591348    0.4135514    0.7047183
6 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                 0.4657509    0.3561097    0.5753920
6 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                 0.3992284    0.2522234    0.5462334
6 months    ki1148112-LCNI-5           MALAWI       8+                   NA                 0.2616611   -0.0244659    0.5477880
24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.6012791   -0.8859242   -0.3166341
24 months   ki1000108-IRC              INDIA        4-5                  NA                -0.8565385   -1.0124268   -0.7006502
24 months   ki1000108-IRC              INDIA        6-7                  NA                -0.6542829   -0.8348069   -0.4737590
24 months   ki1000108-IRC              INDIA        8+                   NA                -0.7100863   -0.9222661   -0.4979065
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -1.0493263   -1.2883900   -0.8102626
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.8667054   -1.0097701   -0.7236407
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.9198314   -1.1262010   -0.7134618
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.9507391   -1.2524571   -0.6490211
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.6832480   -0.9211685   -0.4453275
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.8699295   -1.0056423   -0.7342167
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.9439108   -1.1864804   -0.7013413
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.1843746   -1.4196653   -0.9490840
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.5991798   -0.8137690   -0.3845907
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.6018081   -0.7715640   -0.4320522
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.5477930   -0.7884649   -0.3071210
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.8569172   -1.0366534   -0.6771810
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0263754   -0.1944374    0.1416866
24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                -0.0327595   -0.1609418    0.0954229
24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                -0.0582584   -0.2256445    0.1091277
24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                -0.1168768   -0.3835954    0.1498417


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        NA                   NA                -1.0105831   -1.1973019   -0.8238643
6 months    ki1000108-IRC              INDIA        NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1148112-LCNI-5           MALAWI       NA                   NA                 0.4418137    0.3703100    0.5133174
24 months   ki1000108-IRC              INDIA        NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                -0.0478674   -0.1301904    0.0344557


### Parameter: ATE


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        4-5                  3 or less          0.2249720   -0.3783725    0.8283165
Birth       ki1000108-IRC              INDIA        6-7                  3 or less          0.3586042   -0.2775605    0.9947688
Birth       ki1000108-IRC              INDIA        8+                   3 or less          0.1723954   -0.5030430    0.8478338
6 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        4-5                  3 or less         -0.0196535   -0.4404984    0.4011915
6 months    ki1000108-IRC              INDIA        6-7                  3 or less         -0.0270241   -0.4818314    0.4277832
6 months    ki1000108-IRC              INDIA        8+                   3 or less         -0.1365930   -0.6221717    0.3489857
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.4792473   -0.8830532   -0.0754415
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.5609419   -0.9940744   -0.1278094
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.4577302   -0.9204883    0.0050279
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0423206   -0.1964228    0.2810640
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.1564997   -0.1118625    0.4248619
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0912709   -0.2404398    0.4229815
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0287996   -0.3246417    0.2670425
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0935693   -0.4462909    0.2591524
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.2627007   -0.7076439    0.1822424
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1667704   -0.4231311    0.0895903
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1682370   -0.4443155    0.1078415
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0299127   -0.3024816    0.2426561
6 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0933839   -0.2756660    0.0888982
6 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.1599064   -0.3669043    0.0470915
6 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.2974738   -0.6184217    0.0234742
24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.2552594   -0.5797485    0.0692297
24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.0530038   -0.3908489    0.2848413
24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.1088071   -0.4654841    0.2478698
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.1826209   -0.0925160    0.4577577
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.1294948   -0.1841210    0.4431107
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0985872   -0.2853450    0.4825193
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.1866815   -0.4586312    0.0852681
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.2606629   -0.5989634    0.0776376
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.5011266   -0.8339462   -0.1683070
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0026282   -0.2753570    0.2701006
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0513869   -0.2691539    0.3719277
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.2577373   -0.5385958    0.0231212
24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0063841   -0.2184902    0.2057220
24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0318830   -0.2694694    0.2057034
24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0905015   -0.4052105    0.2242076


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                 0.1977839   -0.2784471    0.6740149
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0632101   -0.4047494    0.2783292
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.4469034   -0.8009300   -0.0928768
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0860092   -0.0974108    0.2694293
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0434624   -0.2852379    0.1983131
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.1350420   -0.3375889    0.0675049
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.1173211   -0.2419226    0.0072804
24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.1445359   -0.4082568    0.1191851
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.1377472   -0.0809478    0.3564422
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.2046932   -0.4270413    0.0176549
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.0111703   -0.2247300    0.2023893
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0214920   -0.1606654    0.1176814
