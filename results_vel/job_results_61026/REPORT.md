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

**Outcome Variable:** y_rate_haz

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

agecat         studyid          country                        nchldlt5    n_cell       n
-------------  ---------------  -----------------------------  ---------  -------  ------
0-3 months     IRC              INDIA                          1               82     377
0-3 months     IRC              INDIA                          2+             295     377
0-3 months     JiVitA-3         BANGLADESH                     1            12370   19860
0-3 months     JiVitA-3         BANGLADESH                     2+            7490   19860
0-3 months     NIH-Crypto       BANGLADESH                     1              512     721
0-3 months     NIH-Crypto       BANGLADESH                     2+             209     721
0-3 months     PROVIDE          BANGLADESH                     1              471     640
0-3 months     PROVIDE          BANGLADESH                     2+             169     640
3-6 months     IRC              INDIA                          1               87     397
3-6 months     IRC              INDIA                          2+             310     397
3-6 months     JiVitA-3         BANGLADESH                     1             8103   12572
3-6 months     JiVitA-3         BANGLADESH                     2+            4469   12572
3-6 months     NIH-Crypto       BANGLADESH                     1              492     695
3-6 months     NIH-Crypto       BANGLADESH                     2+             203     695
3-6 months     PROVIDE          BANGLADESH                     1              434     598
3-6 months     PROVIDE          BANGLADESH                     2+             164     598
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1146    1656
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             510    1656
6-9 months     IRC              INDIA                          1               89     407
6-9 months     IRC              INDIA                          2+             318     407
6-9 months     LCNI-5           MALAWI                         1              261     557
6-9 months     LCNI-5           MALAWI                         2+             296     557
6-9 months     NIH-Crypto       BANGLADESH                     1              488     688
6-9 months     NIH-Crypto       BANGLADESH                     2+             200     688
6-9 months     PROVIDE          BANGLADESH                     1              410     565
6-9 months     PROVIDE          BANGLADESH                     2+             155     565
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1036    1480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             444    1480
9-12 months    iLiNS-Zinc       BURKINA FASO                   1              364    1101
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+             737    1101
9-12 months    IRC              INDIA                          1               88     400
9-12 months    IRC              INDIA                          2+             312     400
9-12 months    LCNI-5           MALAWI                         1              179     383
9-12 months    LCNI-5           MALAWI                         2+             204     383
9-12 months    NIH-Crypto       BANGLADESH                     1              475     674
9-12 months    NIH-Crypto       BANGLADESH                     2+             199     674
9-12 months    PROVIDE          BANGLADESH                     1              413     566
9-12 months    PROVIDE          BANGLADESH                     2+             153     566
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              764    1075
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             311    1075
12-15 months   iLiNS-Zinc       BURKINA FASO                   1              324     958
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+             634     958
12-15 months   IRC              INDIA                          1               82     390
12-15 months   IRC              INDIA                          2+             308     390
12-15 months   LCNI-5           MALAWI                         1               52     125
12-15 months   LCNI-5           MALAWI                         2+              73     125
12-15 months   NIH-Crypto       BANGLADESH                     1              463     660
12-15 months   NIH-Crypto       BANGLADESH                     2+             197     660
12-15 months   PROVIDE          BANGLADESH                     1              391     532
12-15 months   PROVIDE          BANGLADESH                     2+             141     532
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              570     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             216     786
15-18 months   iLiNS-Zinc       BURKINA FASO                   1              329    1006
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+             677    1006
15-18 months   IRC              INDIA                          1               78     382
15-18 months   IRC              INDIA                          2+             304     382
15-18 months   LCNI-5           MALAWI                         1               51     118
15-18 months   LCNI-5           MALAWI                         2+              67     118
15-18 months   NIH-Crypto       BANGLADESH                     1              425     604
15-18 months   NIH-Crypto       BANGLADESH                     2+             179     604
15-18 months   PROVIDE          BANGLADESH                     1              388     528
15-18 months   PROVIDE          BANGLADESH                     2+             140     528
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              481     662
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             181     662
18-21 months   IRC              INDIA                          1               82     379
18-21 months   IRC              INDIA                          2+             297     379
18-21 months   LCNI-5           MALAWI                         1              241     472
18-21 months   LCNI-5           MALAWI                         2+             231     472
18-21 months   NIH-Crypto       BANGLADESH                     1              387     546
18-21 months   NIH-Crypto       BANGLADESH                     2+             159     546
18-21 months   PROVIDE          BANGLADESH                     1              394     541
18-21 months   PROVIDE          BANGLADESH                     2+             147     541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                8       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       9
21-24 months   IRC              INDIA                          1               84     389
21-24 months   IRC              INDIA                          2+             305     389
21-24 months   LCNI-5           MALAWI                         1              213     403
21-24 months   LCNI-5           MALAWI                         2+             190     403
21-24 months   NIH-Crypto       BANGLADESH                     1              340     490
21-24 months   NIH-Crypto       BANGLADESH                     2+             150     490
21-24 months   PROVIDE          BANGLADESH                     1              342     471
21-24 months   PROVIDE          BANGLADESH                     2+             129     471


The following strata were considered:

* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4e6da103-1e39-406c-ad87-c7da9b0b9831/8663a7b5-29ae-4cda-a135-2aee90be189e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4e6da103-1e39-406c-ad87-c7da9b0b9831/8663a7b5-29ae-4cda-a135-2aee90be189e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4e6da103-1e39-406c-ad87-c7da9b0b9831/8663a7b5-29ae-4cda-a135-2aee90be189e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC              INDIA                          1                    NA                -0.2857214   -0.4265509   -0.1448920
0-3 months     IRC              INDIA                          2+                   NA                -0.2464776   -0.3069067   -0.1860485
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                 0.0835490    0.0768871    0.0902109
0-3 months     JiVitA-3         BANGLADESH                     2+                   NA                 0.0509447    0.0385674    0.0633219
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.2229706   -0.2436821   -0.2022591
0-3 months     NIH-Crypto       BANGLADESH                     2+                   NA                -0.2590280   -0.2914610   -0.2265950
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.1823825   -0.2067391   -0.1580258
0-3 months     PROVIDE          BANGLADESH                     2+                   NA                -0.2487390   -0.2833541   -0.2141239
3-6 months     IRC              INDIA                          1                    NA                -0.0390428   -0.1062073    0.0281216
3-6 months     IRC              INDIA                          2+                   NA                -0.0549366   -0.0891346   -0.0207386
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                 0.0005541   -0.0065395    0.0076477
3-6 months     JiVitA-3         BANGLADESH                     2+                   NA                -0.0055425   -0.0189400    0.0078549
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                 0.0393642    0.0189370    0.0597915
3-6 months     NIH-Crypto       BANGLADESH                     2+                   NA                 0.0020247   -0.0315986    0.0356480
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0127989   -0.0343396    0.0087418
3-6 months     PROVIDE          BANGLADESH                     2+                   NA                -0.0896050   -0.1187049   -0.0605050
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0844801   -0.1056365   -0.0633237
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.0784554   -0.1102783   -0.0466324
6-9 months     IRC              INDIA                          1                    NA                -0.0370341   -0.0876078    0.0135397
6-9 months     IRC              INDIA                          2+                   NA                -0.0116647   -0.0357068    0.0123773
6-9 months     LCNI-5           MALAWI                         1                    NA                 0.0421611    0.0177143    0.0666079
6-9 months     LCNI-5           MALAWI                         2+                   NA                 0.0153632   -0.0063880    0.0371143
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0316016   -0.0467193   -0.0164840
6-9 months     NIH-Crypto       BANGLADESH                     2+                   NA                -0.0183092   -0.0455790    0.0089605
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0565315   -0.0727171   -0.0403458
6-9 months     PROVIDE          BANGLADESH                     2+                   NA                -0.0913095   -0.1183156   -0.0643035
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0506750   -0.0703834   -0.0309666
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.0666371   -0.0996026   -0.0336715
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0399764   -0.0577267   -0.0222261
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+                   NA                -0.0551322   -0.0757989   -0.0344655
9-12 months    IRC              INDIA                          1                    NA                -0.0134375   -0.0556606    0.0287857
9-12 months    IRC              INDIA                          2+                   NA                -0.0425550   -0.0608363   -0.0242738
9-12 months    LCNI-5           MALAWI                         1                    NA                -0.0364098   -0.0662361   -0.0065835
9-12 months    LCNI-5           MALAWI                         2+                   NA                -0.0459147   -0.0704122   -0.0214172
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0322232   -0.0451356   -0.0193109
9-12 months    NIH-Crypto       BANGLADESH                     2+                   NA                -0.0376621   -0.0596685   -0.0156557
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0579785   -0.0725932   -0.0433638
9-12 months    PROVIDE          BANGLADESH                     2+                   NA                -0.0584421   -0.0829091   -0.0339750
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0707963   -0.0875863   -0.0540062
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.0561698   -0.0868001   -0.0255396
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0425349   -0.0633159   -0.0217538
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                -0.0436519   -0.0692407   -0.0180630
12-15 months   IRC              INDIA                          1                    NA                -0.0002873   -0.0523496    0.0517750
12-15 months   IRC              INDIA                          2+                   NA                -0.0558103   -0.0727411   -0.0388794
12-15 months   LCNI-5           MALAWI                         1                    NA                -0.0032425   -0.0577780    0.0512930
12-15 months   LCNI-5           MALAWI                         2+                   NA                -0.0648783   -0.1155547   -0.0142019
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0379631   -0.0491978   -0.0267283
12-15 months   NIH-Crypto       BANGLADESH                     2+                   NA                -0.0383488   -0.0563264   -0.0203712
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0413124   -0.0537504   -0.0288744
12-15 months   PROVIDE          BANGLADESH                     2+                   NA                -0.0759731   -0.1023342   -0.0496120
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0677816   -0.0849140   -0.0506493
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.0451928   -0.0767655   -0.0136202
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0108930   -0.0335773    0.0117912
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                -0.0227502   -0.0365803   -0.0089201
15-18 months   IRC              INDIA                          1                    NA                -0.0434177   -0.0744591   -0.0123763
15-18 months   IRC              INDIA                          2+                   NA                -0.0390331   -0.0554366   -0.0226296
15-18 months   LCNI-5           MALAWI                         1                    NA                -0.0257274   -0.0793689    0.0279142
15-18 months   LCNI-5           MALAWI                         2+                   NA                -0.0442070   -0.0790937   -0.0093204
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0165919   -0.0265722   -0.0066116
15-18 months   NIH-Crypto       BANGLADESH                     2+                   NA                -0.0204347   -0.0370496   -0.0038198
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0385388   -0.0500403   -0.0270374
15-18 months   PROVIDE          BANGLADESH                     2+                   NA                -0.0408702   -0.0560193   -0.0257210
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0112646   -0.0294531    0.0069240
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.0363434   -0.0720556   -0.0006311
18-21 months   IRC              INDIA                          1                    NA                -0.0240823   -0.0583393    0.0101747
18-21 months   IRC              INDIA                          2+                   NA                -0.0443403   -0.0592628   -0.0294177
18-21 months   LCNI-5           MALAWI                         1                    NA                -0.0042154   -0.0252835    0.0168526
18-21 months   LCNI-5           MALAWI                         2+                   NA                -0.0241257   -0.0509408    0.0026894
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0304639   -0.0400145   -0.0209132
18-21 months   NIH-Crypto       BANGLADESH                     2+                   NA                -0.0242635   -0.0403901   -0.0081370
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0081214   -0.0187940    0.0025512
18-21 months   PROVIDE          BANGLADESH                     2+                   NA                -0.0417210   -0.0574401   -0.0260018
21-24 months   IRC              INDIA                          1                    NA                -0.0134214   -0.0520766    0.0252339
21-24 months   IRC              INDIA                          2+                   NA                -0.0132025   -0.0276113    0.0012063
21-24 months   LCNI-5           MALAWI                         1                    NA                 0.0281006    0.0054039    0.0507972
21-24 months   LCNI-5           MALAWI                         2+                   NA                 0.0209931    0.0005728    0.0414134
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0626434    0.0521725    0.0731142
21-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                 0.0461875    0.0298759    0.0624991
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0465991    0.0352352    0.0579630
21-24 months   PROVIDE          BANGLADESH                     2+                   NA                 0.0316937    0.0144245    0.0489629


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                 0.0740796    0.0691417    0.0790174
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
3-6 months     IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                -0.0034167   -0.0082813    0.0014478
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856607   -0.1022688   -0.0690525
6-9 months     IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     LCNI-5           MALAWI                         NA                   NA                 0.0291520    0.0132692    0.0450348
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0516546   -0.0677408   -0.0355685
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0495887   -0.0642303   -0.0349470
9-12 months    IRC              INDIA                          NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    LCNI-5           MALAWI                         NA                   NA                -0.0433141   -0.0626948   -0.0239333
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0659765   -0.0802683   -0.0516847
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0429646   -0.0592166   -0.0267126
12-15 months   IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   LCNI-5           MALAWI                         NA                   NA                -0.0399695   -0.0773378   -0.0026011
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0644098   -0.0788912   -0.0499283
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0178586   -0.0309796   -0.0047376
15-18 months   IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   LCNI-5           MALAWI                         NA                   NA                -0.0474219   -0.0733675   -0.0214763
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0193878   -0.0347002   -0.0040754
18-21 months   IRC              INDIA                          NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   LCNI-5           MALAWI                         NA                   NA                -0.0144661   -0.0307469    0.0018148
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
21-24 months   IRC              INDIA                          NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   LCNI-5           MALAWI                         NA                   NA                 0.0254759    0.0100795    0.0408724
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          2+                   1                  0.0392438   -0.1137536    0.1922413
0-3 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     2+                   1                 -0.0326044   -0.0462453   -0.0189634
0-3 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     2+                   1                 -0.0360574   -0.0745128    0.0023980
0-3 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     2+                   1                 -0.0663565   -0.1087071   -0.0240059
3-6 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          2+                   1                 -0.0158938   -0.0917070    0.0599194
3-6 months     JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     2+                   1                 -0.0060966   -0.0212385    0.0090453
3-6 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     2+                   1                 -0.0373395   -0.0765992    0.0019201
3-6 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     2+                   1                 -0.0768061   -0.1129582   -0.0406539
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0060247   -0.0323164    0.0443658
6-9 months     IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          2+                   1                  0.0253693   -0.0309994    0.0817381
6-9 months     LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         2+                   1                 -0.0267979   -0.0597088    0.0061129
6-9 months     NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     2+                   1                  0.0132924   -0.0179382    0.0445229
6-9 months     PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     2+                   1                 -0.0347781   -0.0663609   -0.0031952
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0159621   -0.0545232    0.0225991
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0151558   -0.0408990    0.0105875
9-12 months    IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          2+                   1                 -0.0291176   -0.0751545    0.0169193
9-12 months    LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         2+                   1                 -0.0095049   -0.0482552    0.0292455
9-12 months    NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     2+                   1                 -0.0054389   -0.0311240    0.0202462
9-12 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     2+                   1                 -0.0004636   -0.0290956    0.0281685
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0146264   -0.0205617    0.0498146
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0011170   -0.0347554    0.0325214
12-15 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          2+                   1                 -0.0555229   -0.1104516   -0.0005943
12-15 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         2+                   1                 -0.0616358   -0.1361962    0.0129246
12-15 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.0003858   -0.0215566    0.0207850
12-15 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     2+                   1                 -0.0346607   -0.0640117   -0.0053098
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0225888   -0.0136559    0.0588335
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 -0.0118572   -0.0342757    0.0105613
15-18 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          2+                   1                  0.0043846   -0.0308460    0.0396152
15-18 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         2+                   1                 -0.0184797   -0.0844565    0.0474971
15-18 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.0038428   -0.0232520    0.0155665
15-18 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     2+                   1                 -0.0023313   -0.0213898    0.0167272
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0250788   -0.0652709    0.0151134
18-21 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          2+                   1                 -0.0202579   -0.0581861    0.0176703
18-21 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         2+                   1                 -0.0199103   -0.0543437    0.0145232
18-21 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     2+                   1                  0.0062003   -0.0125623    0.0249629
18-21 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     2+                   1                 -0.0335996   -0.0526285   -0.0145707
21-24 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          2+                   1                  0.0002189   -0.0407868    0.0412245
21-24 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         2+                   1                 -0.0071075   -0.0382411    0.0240262
21-24 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.0164559   -0.0357711    0.0028594
21-24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     2+                   1                 -0.0149055   -0.0356456    0.0058347


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     IRC              INDIA                          1                    NA                 0.0298943   -0.0917733    0.1515620
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0094694   -0.0140559   -0.0048830
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0082902   -0.0193018    0.0027215
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.0056577   -0.0218686    0.0105532
3-6 months     IRC              INDIA                          1                    NA                -0.0128490   -0.0723825    0.0466845
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                -0.0039708   -0.0089196    0.0009779
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0125902   -0.0245576   -0.0006228
3-6 months     PROVIDE          BANGLADESH                     1                    NA                -0.0141636   -0.0276485   -0.0006787
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0011806   -0.0133580    0.0109968
6-9 months     IRC              INDIA                          1                    NA                 0.0207664   -0.0234671    0.0649999
6-9 months     LCNI-5           MALAWI                         1                    NA                -0.0130091   -0.0307608    0.0047427
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                 0.0002378   -0.0089638    0.0094395
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0048949   -0.0159727    0.0061829
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0009796   -0.0130759    0.0111166
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0096122   -0.0267838    0.0075593
9-12 months    IRC              INDIA                          1                    NA                -0.0226938   -0.0588058    0.0134181
9-12 months    LCNI-5           MALAWI                         1                    NA                -0.0069042   -0.0283329    0.0145244
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0020762   -0.0096490    0.0054965
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0050685   -0.0140172    0.0038801
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0048197   -0.0057657    0.0154051
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0004298   -0.0218884    0.0210289
12-15 months   IRC              INDIA                          1                    NA                -0.0451646   -0.0896379   -0.0006913
12-15 months   LCNI-5           MALAWI                         1                    NA                -0.0367269   -0.0811731    0.0077192
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0003683   -0.0068163    0.0060797
12-15 months   PROVIDE          BANGLADESH                     1                    NA                 0.0004017   -0.0067143    0.0075177
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0033719   -0.0066024    0.0133461
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0069656   -0.0226719    0.0087407
15-18 months   IRC              INDIA                          1                    NA                 0.0049010   -0.0227422    0.0325442
15-18 months   LCNI-5           MALAWI                         1                    NA                -0.0216945   -0.0645297    0.0211406
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0003154   -0.0061812    0.0055503
15-18 months   PROVIDE          BANGLADESH                     1                    NA                 0.0008951   -0.0057120    0.0075022
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0081233   -0.0182920    0.0020455
18-21 months   IRC              INDIA                          1                    NA                -0.0159993   -0.0462320    0.0142333
18-21 months   LCNI-5           MALAWI                         1                    NA                -0.0102507   -0.0269680    0.0064667
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0024951   -0.0028859    0.0078761
18-21 months   PROVIDE          BANGLADESH                     1                    NA                -0.0028185   -0.0092417    0.0036047
21-24 months   IRC              INDIA                          1                    NA                -0.0004868   -0.0336013    0.0326277
21-24 months   LCNI-5           MALAWI                         1                    NA                -0.0026246   -0.0170506    0.0118014
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0038813   -0.0098946    0.0021320
21-24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0003649   -0.0076727    0.0069429
