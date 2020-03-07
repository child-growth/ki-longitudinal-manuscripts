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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        nchldlt5    ever_wasted   n_cell       n
------------  ---------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                     0      838    3189
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                     1      235    3189
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                    0     1624    3189
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                    1      492    3189
0-24 months   IRC              INDIA                          1                     0       25     410
0-24 months   IRC              INDIA                          1                     1       64     410
0-24 months   IRC              INDIA                          2+                    0      116     410
0-24 months   IRC              INDIA                          2+                    1      205     410
0-24 months   JiVitA-3         BANGLADESH                     1                     0    12739   26929
0-24 months   JiVitA-3         BANGLADESH                     1                     1     4485   26929
0-24 months   JiVitA-3         BANGLADESH                     2+                    0     7242   26929
0-24 months   JiVitA-3         BANGLADESH                     2+                    1     2463   26929
0-24 months   LCNI-5           MALAWI                         1                     0      366     812
0-24 months   LCNI-5           MALAWI                         1                     1       25     812
0-24 months   LCNI-5           MALAWI                         2+                    0      380     812
0-24 months   LCNI-5           MALAWI                         2+                    1       41     812
0-24 months   NIH-Crypto       BANGLADESH                     1                     0      369     758
0-24 months   NIH-Crypto       BANGLADESH                     1                     1      172     758
0-24 months   NIH-Crypto       BANGLADESH                     2+                    0      139     758
0-24 months   NIH-Crypto       BANGLADESH                     2+                    1       78     758
0-24 months   PROVIDE          BANGLADESH                     1                     0      327     700
0-24 months   PROVIDE          BANGLADESH                     1                     1      185     700
0-24 months   PROVIDE          BANGLADESH                     2+                    0      127     700
0-24 months   PROVIDE          BANGLADESH                     2+                    1       61     700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1242    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      395    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0      579    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1      169    2385
0-6 months    IRC              INDIA                          1                     0       37     410
0-6 months    IRC              INDIA                          1                     1       52     410
0-6 months    IRC              INDIA                          2+                    0      150     410
0-6 months    IRC              INDIA                          2+                    1      171     410
0-6 months    JiVitA-3         BANGLADESH                     1                     0    14046   26832
0-6 months    JiVitA-3         BANGLADESH                     1                     1     3099   26832
0-6 months    JiVitA-3         BANGLADESH                     2+                    0     8058   26832
0-6 months    JiVitA-3         BANGLADESH                     2+                    1     1629   26832
0-6 months    LCNI-5           MALAWI                         1                     0      121     267
0-6 months    LCNI-5           MALAWI                         1                     1        1     267
0-6 months    LCNI-5           MALAWI                         2+                    0      142     267
0-6 months    LCNI-5           MALAWI                         2+                    1        3     267
0-6 months    NIH-Crypto       BANGLADESH                     1                     0      405     758
0-6 months    NIH-Crypto       BANGLADESH                     1                     1      136     758
0-6 months    NIH-Crypto       BANGLADESH                     2+                    0      158     758
0-6 months    NIH-Crypto       BANGLADESH                     2+                    1       59     758
0-6 months    PROVIDE          BANGLADESH                     1                     0      375     700
0-6 months    PROVIDE          BANGLADESH                     1                     1      137     700
0-6 months    PROVIDE          BANGLADESH                     2+                    0      144     700
0-6 months    PROVIDE          BANGLADESH                     2+                    1       44     700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1407    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      230    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0      646    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1      102    2385
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                     0      838    3189
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                     1      235    3189
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                    0     1624    3189
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                    1      492    3189
6-24 months   IRC              INDIA                          1                     0       56     410
6-24 months   IRC              INDIA                          1                     1       33     410
6-24 months   IRC              INDIA                          2+                    0      227     410
6-24 months   IRC              INDIA                          2+                    1       94     410
6-24 months   JiVitA-3         BANGLADESH                     1                     0     9417   17286
6-24 months   JiVitA-3         BANGLADESH                     1                     1     1787   17286
6-24 months   JiVitA-3         BANGLADESH                     2+                    0     5037   17286
6-24 months   JiVitA-3         BANGLADESH                     2+                    1     1045   17286
6-24 months   LCNI-5           MALAWI                         1                     0      360     800
6-24 months   LCNI-5           MALAWI                         1                     1       24     800
6-24 months   LCNI-5           MALAWI                         2+                    0      377     800
6-24 months   LCNI-5           MALAWI                         2+                    1       39     800
6-24 months   NIH-Crypto       BANGLADESH                     1                     0      460     730
6-24 months   NIH-Crypto       BANGLADESH                     1                     1       60     730
6-24 months   NIH-Crypto       BANGLADESH                     2+                    0      174     730
6-24 months   NIH-Crypto       BANGLADESH                     2+                    1       36     730
6-24 months   PROVIDE          BANGLADESH                     1                     0      380     615
6-24 months   PROVIDE          BANGLADESH                     1                     1       68     615
6-24 months   PROVIDE          BANGLADESH                     2+                    0      136     615
6-24 months   PROVIDE          BANGLADESH                     2+                    1       31     615
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1154    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      229    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0      533    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       94    2010


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d5e26b86-5545-499a-b500-3d4d8f551ada/fce6be40-6660-4f97-bf9e-8dfd5d57bf62/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d5e26b86-5545-499a-b500-3d4d8f551ada/fce6be40-6660-4f97-bf9e-8dfd5d57bf62/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d5e26b86-5545-499a-b500-3d4d8f551ada/fce6be40-6660-4f97-bf9e-8dfd5d57bf62/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d5e26b86-5545-499a-b500-3d4d8f551ada/fce6be40-6660-4f97-bf9e-8dfd5d57bf62/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2202825   0.1754925   0.2650725
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2291344   0.2008211   0.2574477
0-24 months   IRC              INDIA                          1                    NA                0.7207712   0.6273930   0.8141495
0-24 months   IRC              INDIA                          2+                   NA                0.6384361   0.5857850   0.6910872
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.2549759   0.2465977   0.2633542
0-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.2595061   0.2440374   0.2749747
0-24 months   LCNI-5           MALAWI                         1                    NA                0.0620216   0.0382791   0.0857641
0-24 months   LCNI-5           MALAWI                         2+                   NA                0.0958229   0.0677549   0.1238909
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.3123864   0.2727620   0.3520108
0-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.3798325   0.3137363   0.4459287
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.3654061   0.3236431   0.4071692
0-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.3406065   0.2735399   0.4076732
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2421004   0.2199470   0.2642537
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2352998   0.1980465   0.2725532
0-6 months    IRC              INDIA                          1                    NA                0.5906391   0.4875605   0.6937177
0-6 months    IRC              INDIA                          2+                   NA                0.5317036   0.4767748   0.5866323
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.1771900   0.1695315   0.1848486
0-6 months    JiVitA-3         BANGLADESH                     2+                   NA                0.1742959   0.1600986   0.1884933
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.2474735   0.2106627   0.2842843
0-6 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.2869913   0.2240480   0.3499346
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.2694254   0.2307546   0.3080961
0-6 months    PROVIDE          BANGLADESH                     2+                   NA                0.2312883   0.1700398   0.2925368
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1387313   0.1209490   0.1565135
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1591197   0.1261389   0.1921006
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2215149   0.1787572   0.2642725
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2298760   0.2018132   0.2579387
6-24 months   IRC              INDIA                          1                    NA                0.3740138   0.2705628   0.4774647
6-24 months   IRC              INDIA                          2+                   NA                0.2923398   0.2424644   0.3422153
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.1566489   0.1483381   0.1649597
6-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.1645470   0.1491277   0.1799662
6-24 months   LCNI-5           MALAWI                         1                    NA                0.0606360   0.0368760   0.0843959
6-24 months   LCNI-5           MALAWI                         2+                   NA                0.0922291   0.0643866   0.1200716
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1148500   0.0870181   0.1426820
6-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.1678087   0.1140109   0.2216066
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1534116   0.1201918   0.1866314
6-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.2003455   0.1416634   0.2590275
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1653502   0.1445574   0.1861431
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1410983   0.1106965   0.1715000


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2279712   0.2010014   0.2549409
0-24 months   IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2580118   0.2515422   0.2644814
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0812808   0.0624736   0.1000879
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2364780   0.2194210   0.2535349
0-6 months    IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1762075   0.1705779   0.1818372
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2572559   0.2261171   0.2883948
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1392034   0.1253080   0.1530987
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2279712   0.2010014   0.2549409
6-24 months   IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1638320   0.1577093   0.1699547
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0787500   0.0600738   0.0974262
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1606965   0.1446374   0.1767556


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.0401843   0.8479408   1.276013
0-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA                          2+                   1                 0.8857680   0.7595181   1.033004
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     2+                   1                 1.0177669   0.9545513   1.085169
0-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         2+                   1                 1.5449915   0.9559928   2.496879
0-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.2159061   0.9816376   1.506083
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     2+                   1                 0.9321315   0.7439331   1.167940
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9719103   0.8095575   1.166822
0-6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA                          2+                   1                 0.9002174   0.7348613   1.102781
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     2+                   1                 0.9836666   0.9000975   1.074995
0-6 months    NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     2+                   1                 1.1596851   0.8903486   1.510498
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     2+                   1                 0.8584503   0.6350445   1.160449
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.1469637   0.8989265   1.463441
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.0377451   0.8540617   1.260933
6-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   IRC              INDIA                          2+                   1                 0.7816285   0.5648122   1.081675
6-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     2+                   1                 1.0504189   0.9458412   1.166559
6-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   LCNI-5           MALAWI                         2+                   1                 1.5210299   0.9297386   2.488368
6-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.4611117   0.9780351   2.182792
6-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     2+                   1                 1.3059339   0.9062687   1.881852
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8533298   0.6651668   1.094720


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0076886   -0.0234094   0.0387867
0-24 months   IRC              INDIA                          1                    NA                -0.0646737   -0.1490329   0.0196855
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0030359   -0.0025740   0.0086458
0-24 months   LCNI-5           MALAWI                         1                    NA                 0.0192592    0.0001501   0.0383683
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0174289   -0.0045317   0.0393895
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0139775   -0.0352547   0.0072996
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0056224   -0.0191187   0.0078740
0-6 months    IRC              INDIA                          1                    NA                -0.0467366   -0.1386383   0.0451650
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0009825   -0.0059388   0.0039737
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0097825   -0.0106183   0.0301832
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0108539   -0.0305085   0.0088007
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0004721   -0.0103529   0.0112971
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0064563   -0.0229039   0.0358165
6-24 months   IRC              INDIA                          1                    NA                -0.0642577   -0.1552083   0.0266930
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0071831    0.0011086   0.0132577
6-24 months   LCNI-5           MALAWI                         1                    NA                 0.0181140   -0.0009691   0.0371972
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0166568   -0.0006804   0.0339940
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0075640   -0.0109764   0.0261043
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0046537   -0.0171049   0.0077974


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0337264   -0.1137032   0.1616396
0-24 months   IRC              INDIA                          1                    NA                -0.0985733   -0.2357014   0.0233375
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0117664   -0.0102063   0.0332612
0-24 months   LCNI-5           MALAWI                         1                    NA                 0.2369462   -0.0309289   0.4352170
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0528445   -0.0162357   0.1172288
0-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0397735   -0.1021467   0.0190699
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0237754   -0.0824260   0.0316972
0-6 months    IRC              INDIA                          1                    NA                -0.0859284   -0.2691023   0.0708075
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0055760   -0.0340931   0.0221547
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0380261   -0.0446596   0.1141673
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0419765   -0.1207797   0.0312859
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0033914   -0.0774950   0.0782057
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0283206   -0.1100190   0.1494192
6-24 months   IRC              INDIA                          1                    NA                -0.2074460   -0.5398203   0.0531844
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0438444    0.0061224   0.0801346
6-24 months   LCNI-5           MALAWI                         1                    NA                 0.2300197   -0.0475697   0.4340522
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.1266611   -0.0139711   0.2477884
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0469883   -0.0750305   0.1551576
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0289596   -0.1093407   0.0455972
