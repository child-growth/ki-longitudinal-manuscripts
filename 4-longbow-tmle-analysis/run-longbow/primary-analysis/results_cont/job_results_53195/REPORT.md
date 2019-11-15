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
![](/tmp/0271a246-f031-43cd-a6ba-e03caaff6788/ac64f3b8-162d-463d-a1fc-a9e25dd14954/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0271a246-f031-43cd-a6ba-e03caaff6788/ac64f3b8-162d-463d-a1fc-a9e25dd14954/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0271a246-f031-43cd-a6ba-e03caaff6788/ac64f3b8-162d-463d-a1fc-a9e25dd14954/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                -1.2517198   -1.7748928   -0.7285468
Birth       ki1000108-IRC              INDIA        4-5                  NA                -0.9902459   -1.3001751   -0.6803168
Birth       ki1000108-IRC              INDIA        6-7                  NA                -0.8405974   -1.1937894   -0.4874054
Birth       ki1000108-IRC              INDIA        8+                   NA                -1.0761464   -1.5062769   -0.6460160
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -1.7716523   -1.9999903   -1.5433143
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -1.3225547   -1.4620239   -1.1830855
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -1.3227883   -1.5253171   -1.1202596
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -1.1399397   -1.4357860   -0.8440933
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -1.3075604   -1.4716371   -1.1434837
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -1.3274465   -1.4462673   -1.2086258
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -1.2671660   -1.4218720   -1.1124601
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.2737363   -1.5266201   -1.0208526
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -1.2794884   -1.5001109   -1.0588659
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -1.3037740   -1.4511139   -1.1564342
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -1.1518312   -1.3583247   -0.9453376
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -1.2269802   -1.4065118   -1.0474485
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.5460102   -0.8910939   -0.2009266
6 months    ki1000108-IRC              INDIA        4-5                  NA                -0.5584246   -0.7728220   -0.3440272
6 months    ki1000108-IRC              INDIA        6-7                  NA                -0.5528705   -0.8257650   -0.2799760
6 months    ki1000108-IRC              INDIA        8+                   NA                -0.6850124   -0.9955007   -0.3745242
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.4930519   -0.8444916   -0.1416122
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                -1.0244502   -1.2002208   -0.8486796
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                -1.1571092   -1.3924192   -0.9217993
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                -1.0266406   -1.3096537   -0.7436275
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.4826228   -0.6652706   -0.2999751
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.4825474   -0.6193628   -0.3457319
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.4057728   -0.6092533   -0.2022922
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.4492995   -0.7142121   -0.1843869
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.2132609   -0.4711153    0.0445934
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.1677215   -0.3050003   -0.0304426
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -0.2706769   -0.5183373   -0.0230165
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -0.4468610   -0.7973210   -0.0964010
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1507866   -0.0386456    0.3402188
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.0294291   -0.1741241    0.1152660
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                 0.0270729   -0.1555614    0.2097071
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                 0.1099345   -0.0570728    0.2769417
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.5746189    0.4358543    0.7133835
6 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                 0.4588864    0.3464628    0.5713101
6 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                 0.3638870    0.2100126    0.5177614
6 months    ki1148112-LCNI-5           MALAWI       8+                   NA                 0.2970892    0.0122901    0.5818883
24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.6147578   -0.9027154   -0.3268002
24 months   ki1000108-IRC              INDIA        4-5                  NA                -0.8637682   -1.0224927   -0.7050437
24 months   ki1000108-IRC              INDIA        6-7                  NA                -0.6607026   -0.8376635   -0.4837416
24 months   ki1000108-IRC              INDIA        8+                   NA                -0.7061642   -0.9232698   -0.4890585
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -1.0112948   -1.2479451   -0.7746445
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -0.8877619   -1.0358827   -0.7396410
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -0.9176784   -1.1312712   -0.7040857
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -0.9220795   -1.2207801   -0.6233789
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.7394038   -1.0112085   -0.4675991
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -0.8965288   -1.0266243   -0.7664333
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -1.0171788   -1.2670794   -0.7672782
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.1836917   -1.4207791   -0.9466044
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.6464968   -0.8497915   -0.4432021
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -0.5706122   -0.7470373   -0.3941871
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -0.5499373   -0.7843293   -0.3155452
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -0.9561500   -1.1345351   -0.7777649
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0219719   -0.1895620    0.1456183
24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                -0.0326265   -0.1605630    0.0953099
24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                -0.0695002   -0.2366970    0.0976966
24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                -0.0891596   -0.3524674    0.1741481


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
Birth       ki1000108-IRC              INDIA        4-5                  3 or less          0.2614738   -0.3464668    0.8694145
Birth       ki1000108-IRC              INDIA        6-7                  3 or less          0.4111224   -0.2195358    1.0417807
Birth       ki1000108-IRC              INDIA        8+                   3 or less          0.1755733   -0.5040598    0.8552065
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.4490976    0.1811778    0.7170174
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.4488639    0.1431237    0.7546042
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.6317126    0.2574538    1.0059715
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0198861   -0.2226641    0.1828918
Birth       ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0403944   -0.1846865    0.2654752
Birth       ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less          0.0338241   -0.2671078    0.3347559
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.0242857   -0.2889701    0.2403987
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.1276572   -0.1742021    0.4295165
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less          0.0525082   -0.2313973    0.3364137
6 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        4-5                  3 or less         -0.0124144   -0.4182097    0.3933810
6 months    ki1000108-IRC              INDIA        6-7                  3 or less         -0.0068602   -0.4450389    0.4313184
6 months    ki1000108-IRC              INDIA        8+                   3 or less         -0.1390022   -0.6050403    0.3270360
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.5313983   -0.9241998   -0.1385968
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.6640573   -1.0873111   -0.2408035
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.5335887   -0.9844858   -0.0826916
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.0000754   -0.2271648    0.2273157
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0768501   -0.1955403    0.3492405
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0333233   -0.2876069    0.3542535
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0455395   -0.2460494    0.3371283
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.0574160   -0.4145241    0.2996922
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.2336001   -0.6678284    0.2006283
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         -0.1802156   -0.4186516    0.0582203
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         -0.1237137   -0.3873995    0.1399720
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.0408521   -0.2935794    0.2118752
6 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.1157325   -0.2943216    0.0628567
6 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.2107319   -0.4169201   -0.0045437
6 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.2775297   -0.5940300    0.0389706
24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.2490104   -0.5783508    0.0803300
24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.0459448   -0.3843948    0.2925052
24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.0914064   -0.4550537    0.2722409
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less          0.1235330   -0.1536186    0.4006845
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0936164   -0.2237575    0.4109903
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0892153   -0.2903306    0.4687612
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.1571250   -0.4581566    0.1439067
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.2777750   -0.6461147    0.0905646
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.4442879   -0.8039942   -0.0845817
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0758846   -0.1932984    0.3450675
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0965595   -0.2118856    0.4050046
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.3096532   -0.5809338   -0.0383727
24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0106547   -0.2219648    0.2006555
24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         -0.0475283   -0.2848629    0.1898063
24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         -0.0671878   -0.3783244    0.2439488


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                 0.2411367   -0.2373772    0.7196506
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.4217306    0.2147486    0.6287125
Birth       ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0091017   -0.1425155    0.1607190
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0353370   -0.1757207    0.2463948
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0529195   -0.3766526    0.2708136
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.5191060   -0.8632534   -0.1749585
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0352190   -0.1357889    0.2062270
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0141703   -0.2284395    0.2567800
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -0.1210244   -0.3056489    0.0636002
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.1328542   -0.2512608   -0.0144476
24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.1310572   -0.3981440    0.1360295
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0997158   -0.1172690    0.3167005
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.1534632   -0.4093724    0.1024460
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0361466   -0.1676638    0.2399570
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0258149   -0.1645346    0.1129049
