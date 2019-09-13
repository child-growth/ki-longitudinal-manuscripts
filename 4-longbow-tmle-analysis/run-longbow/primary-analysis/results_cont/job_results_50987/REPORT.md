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
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less         7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5              11    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7               7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                3    28
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less         8    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5               9    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7               7    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                3    27
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
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less       102   583
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5             277   583
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7             126   583
6 months    ki1017093b-PROVIDE         BANGLADESH   8+               78   583
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
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less       105   577
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5             273   577
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7             117   577
24 months   ki1017093b-PROVIDE         BANGLADESH   8+               82   577
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
![](/tmp/a6b90fff-4832-45dc-a272-242169e20c5c/a497f086-1f0a-4692-9b98-88d4199eff44/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a6b90fff-4832-45dc-a272-242169e20c5c/a497f086-1f0a-4692-9b98-88d4199eff44/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a6b90fff-4832-45dc-a272-242169e20c5c/a497f086-1f0a-4692-9b98-88d4199eff44/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                -0.0261894   -0.4008505    0.3484717
Birth       ki1000108-IRC              INDIA        4-5                  NA                -0.4308838   -0.7010805   -0.1606870
Birth       ki1000108-IRC              INDIA        6-7                  NA                -0.4334230   -0.7708700   -0.0959760
Birth       ki1000108-IRC              INDIA        8+                   NA                -0.1276978   -0.4475248    0.1921292
6 months    ki1000108-IRC              INDIA        3 or less            NA                -1.0918055   -1.4508429   -0.7327682
6 months    ki1000108-IRC              INDIA        4-5                  NA                -1.3860701   -1.5928259   -1.1793143
6 months    ki1000108-IRC              INDIA        6-7                  NA                -1.1856926   -1.4372502   -0.9341350
6 months    ki1000108-IRC              INDIA        8+                   NA                -1.0721735   -1.3511421   -0.7932048
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -1.4894974   -1.8394261   -1.1395686
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                -1.9205215   -2.0905070   -1.7505360
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                -2.0312187   -2.2697366   -1.7927009
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                -1.8885357   -2.1523271   -1.6247442
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -1.3541230   -1.5916181   -1.1166279
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -1.5591504   -1.6916556   -1.4266452
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -1.2877921   -1.4668971   -1.1086871
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -1.2927908   -1.5403108   -1.0452709
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -1.1470329   -1.3787786   -0.9152873
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -1.0919585   -1.2168542   -0.9670628
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -1.0596626   -1.2804499   -0.8388753
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.2727396   -1.5561300   -0.9893493
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -1.2314127   -1.4229065   -1.0399190
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -1.2136232   -1.3361859   -1.0910605
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -1.0807093   -1.2837544   -0.8776642
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -1.4261369   -1.5989832   -1.2532906
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -1.6294699   -1.7711277   -1.4878122
6 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                -1.6577940   -1.7645947   -1.5509934
6 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                -1.6255479   -1.7669687   -1.4841271
6 months    ki1148112-LCNI-5           MALAWI       8+                   NA                -1.5637758   -1.8551074   -1.2724441
24 months   ki1000108-IRC              INDIA        3 or less            NA                -1.5262229   -1.7817671   -1.2706787
24 months   ki1000108-IRC              INDIA        4-5                  NA                -1.8792512   -2.0252745   -1.7332280
24 months   ki1000108-IRC              INDIA        6-7                  NA                -1.7217659   -1.9214058   -1.5221261
24 months   ki1000108-IRC              INDIA        8+                   NA                -1.8311152   -2.0220942   -1.6401363
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -2.0246626   -2.2615115   -1.7878137
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                -2.3456265   -2.4914658   -2.1997872
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                -2.0741275   -2.2970348   -1.8512202
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                -2.0767413   -2.3385841   -1.8148985
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -1.5100214   -1.7596335   -1.2604093
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                -1.5547723   -1.6899494   -1.4195952
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                -1.6695849   -1.9626996   -1.3764702
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                -1.7939670   -2.0332010   -1.5547331
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                -1.4476149   -1.6753067   -1.2199230
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                -1.4183534   -1.5484301   -1.2882766
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                -1.3863811   -1.5947429   -1.1780193
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                -1.6314357   -1.8171391   -1.4457323
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                -1.9752201   -2.1185448   -1.8318953
24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                -1.8768860   -2.0058293   -1.7479428
24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                -1.7646899   -1.9290722   -1.6003076
24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                -1.7877089   -2.1149049   -1.4605129


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        NA                   NA                -0.3080412   -0.4687931   -0.1472894
6 months    ki1000108-IRC              INDIA        NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1148112-LCNI-5           MALAWI       NA                   NA                -1.6426961   -1.7120603   -1.5733318
24 months   ki1000108-IRC              INDIA        NA                   NA                -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                -1.8714634   -1.9528558   -1.7900711


### Parameter: ATE


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        4-5                  3 or less         -0.4046944   -0.8673541    0.0579653
Birth       ki1000108-IRC              INDIA        6-7                  3 or less         -0.4072336   -0.9123962    0.0979290
Birth       ki1000108-IRC              INDIA        8+                   3 or less         -0.1015084   -0.5955801    0.3925633
6 months    ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        4-5                  3 or less         -0.2942646   -0.7060078    0.1174787
6 months    ki1000108-IRC              INDIA        6-7                  3 or less         -0.0938871   -0.5323710    0.3445968
6 months    ki1000108-IRC              INDIA        8+                   3 or less          0.0196320   -0.4310970    0.4703611
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         -0.4310241   -0.8203210   -0.0417273
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         -0.5417214   -0.9650859   -0.1183569
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         -0.3990383   -0.8375590    0.0394824
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.2050274   -0.4763108    0.0662561
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less          0.0663309   -0.2298758    0.3625376
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less          0.0613322   -0.2807642    0.4034286
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less          0.0550744   -0.2083758    0.3185246
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less          0.0873703   -0.2328858    0.4076265
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.1257067   -0.4918425    0.2404291
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0177895   -0.2084421    0.2440211
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.1507034   -0.1276398    0.4290466
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1947242   -0.4510104    0.0615621
6 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         -0.0283241   -0.2040290    0.1473808
6 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.0039220   -0.1945169    0.2023609
6 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.0656941   -0.2562430    0.3876313
24 months   ki1000108-IRC              INDIA        3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        4-5                  3 or less         -0.3530284   -0.6470877   -0.0589690
24 months   ki1000108-IRC              INDIA        6-7                  3 or less         -0.1955431   -0.5196097    0.1285236
24 months   ki1000108-IRC              INDIA        8+                   3 or less         -0.3048924   -0.6236341    0.0138493
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         -0.3209639   -0.5971916   -0.0447363
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         -0.0494649   -0.3723563    0.2734264
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         -0.0520787   -0.4036597    0.2995023
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         -0.0447509   -0.3283064    0.2388047
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         -0.1595635   -0.5444051    0.2252781
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         -0.2839456   -0.6293176    0.0614264
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less          0.0292615   -0.2327695    0.2912925
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less          0.0612338   -0.2473374    0.3698050
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         -0.1838209   -0.4770974    0.1094556
24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less          0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less          0.0983340   -0.0934496    0.2901176
24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less          0.2105302   -0.0069360    0.4279963
24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less          0.1875112   -0.1683369    0.5433593


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        3 or less            NA                -0.2818519   -0.6389826    0.0752789
6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.1426007   -0.4729862    0.1877848
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.4091868   -0.7493903   -0.0689834
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0532590   -0.2685103    0.1619922
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0599289   -0.1582894    0.2781471
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0327344   -0.1532034    0.2186722
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                -0.0132261   -0.1334700    0.1070177
24 months   ki1000108-IRC              INDIA        3 or less            NA                -0.2562547   -0.4917557   -0.0207537
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1561319   -0.3723868    0.0601230
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.0760964   -0.3077610    0.1555682
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0180818   -0.2025993    0.2387629
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.1037566   -0.0203315    0.2278448
