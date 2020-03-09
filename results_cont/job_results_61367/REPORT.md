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

agecat      studyid          country                        nchldlt5    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  -------  ------  -----------------
Birth       IRC              INDIA                          1               84     388  haz              
Birth       IRC              INDIA                          2+             304     388  haz              
Birth       JiVitA-3         BANGLADESH                     1            13986   22431  haz              
Birth       JiVitA-3         BANGLADESH                     2+            8445   22431  haz              
Birth       NIH-Crypto       BANGLADESH                     1              522     732  haz              
Birth       NIH-Crypto       BANGLADESH                     2+             210     732  haz              
Birth       PROVIDE          BANGLADESH                     1              391     539  haz              
Birth       PROVIDE          BANGLADESH                     2+             148     539  haz              
6 months    IRC              INDIA                          1               89     407  haz              
6 months    IRC              INDIA                          2+             318     407  haz              
6 months    JiVitA-3         BANGLADESH                     1            10887   16800  haz              
6 months    JiVitA-3         BANGLADESH                     2+            5913   16800  haz              
6 months    LCNI-5           MALAWI                         1              390     811  haz              
6 months    LCNI-5           MALAWI                         2+             421     811  haz              
6 months    NIH-Crypto       BANGLADESH                     1              507     715  haz              
6 months    NIH-Crypto       BANGLADESH                     2+             208     715  haz              
6 months    PROVIDE          BANGLADESH                     1              438     604  haz              
6 months    PROVIDE          BANGLADESH                     2+             166     604  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1391    2020  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2020  haz              
24 months   IRC              INDIA                          1               89     409  haz              
24 months   IRC              INDIA                          2+             320     409  haz              
24 months   JiVitA-3         BANGLADESH                     1             5454    8622  haz              
24 months   JiVitA-3         BANGLADESH                     2+            3168    8622  haz              
24 months   LCNI-5           MALAWI                         1              283     571  haz              
24 months   LCNI-5           MALAWI                         2+             288     571  haz              
24 months   NIH-Crypto       BANGLADESH                     1              357     514  haz              
24 months   NIH-Crypto       BANGLADESH                     2+             157     514  haz              
24 months   PROVIDE          BANGLADESH                     1              424     578  haz              
24 months   PROVIDE          BANGLADESH                     2+             154     578  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6  haz              


The following strata were considered:

* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/610ff265-876a-4a94-9b86-b901383b85c9/feffcb7e-5708-49c8-aa85-7fb8d1169a2b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/610ff265-876a-4a94-9b86-b901383b85c9/feffcb7e-5708-49c8-aa85-7fb8d1169a2b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/610ff265-876a-4a94-9b86-b901383b85c9/feffcb7e-5708-49c8-aa85-7fb8d1169a2b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.2350337   -0.6396521    0.1695847
Birth       IRC              INDIA                          2+                   NA                -0.3242614   -0.4987946   -0.1497283
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.6344739   -1.6619129   -1.6070349
Birth       JiVitA-3         BANGLADESH                     2+                   NA                -1.5301645   -1.5702299   -1.4900991
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9225622   -1.0107218   -0.8344027
Birth       NIH-Crypto       BANGLADESH                     2+                   NA                -0.8530484   -0.9956765   -0.7104203
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9276054   -1.0300207   -0.8251902
Birth       PROVIDE          BANGLADESH                     2+                   NA                -0.6863683   -0.8521896   -0.5205471
6 months    IRC              INDIA                          1                    NA                -1.3004979   -1.6019261   -0.9990696
6 months    IRC              INDIA                          2+                   NA                -1.2223748   -1.3642615   -1.0804881
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3158124   -1.3443041   -1.2873207
6 months    JiVitA-3         BANGLADESH                     2+                   NA                -1.3145637   -1.3627985   -1.2663288
6 months    LCNI-5           MALAWI                         1                    NA                -1.6336945   -1.7320381   -1.5353510
6 months    LCNI-5           MALAWI                         2+                   NA                -1.6503943   -1.7481226   -1.5526660
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.1521635   -1.2383203   -1.0660067
6 months    NIH-Crypto       BANGLADESH                     2+                   NA                -1.3193072   -1.4597397   -1.1788746
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.0714574   -1.1770619   -0.9658529
6 months    PROVIDE          BANGLADESH                     2+                   NA                -1.1114532   -1.2767391   -0.9461674
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5202551   -0.5801923   -0.4603180
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.6072183   -0.7082066   -0.5062300
24 months   IRC              INDIA                          1                    NA                -1.6300055   -1.8431181   -1.4168929
24 months   IRC              INDIA                          2+                   NA                -1.8496257   -1.9535451   -1.7457064
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.9711882   -2.0079166   -1.9344597
24 months   JiVitA-3         BANGLADESH                     2+                   NA                -2.0766556   -2.1337381   -2.0195731
24 months   LCNI-5           MALAWI                         1                    NA                -1.8449894   -1.9641161   -1.7258626
24 months   LCNI-5           MALAWI                         2+                   NA                -1.9248165   -2.0389611   -1.8106719
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.3710289   -1.4764405   -1.2656174
24 months   NIH-Crypto       BANGLADESH                     2+                   NA                -1.5723384   -1.7474946   -1.3971822
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.5600230   -1.6698971   -1.4501489
24 months   PROVIDE          BANGLADESH                     2+                   NA                -1.8756285   -2.0420876   -1.7091694


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5897031   -1.6089786   -1.5704276
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3131375   -1.3362767   -1.2899983
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6431566   -1.7128296   -1.5734836
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5442232   -0.5932373   -0.4952090
24 months   IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0134284   -2.0411019   -1.9857549
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8806830   -1.9625334   -1.7988326
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          2+                   1                 -0.0892277   -0.5301922    0.3517367
Birth       JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     2+                   1                  0.1043094    0.0568289    0.1517899
Birth       NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     2+                   1                  0.0695138   -0.0982776    0.2373052
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2+                   1                  0.2412371    0.0463472    0.4361270
6 months    IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          2+                   1                  0.0781231   -0.2542388    0.4104850
6 months    JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     2+                   1                  0.0012487   -0.0502680    0.0527654
6 months    LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         2+                   1                 -0.0166998   -0.1529751    0.1195756
6 months    NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     2+                   1                 -0.1671437   -0.3311194   -0.0031679
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2+                   1                 -0.0399959   -0.2362934    0.1563017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0869632   -0.2033806    0.0294543
24 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          2+                   1                 -0.2196203   -0.4569339    0.0176934
24 months   JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     2+                   1                 -0.1054675   -0.1697072   -0.0412277
24 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         2+                   1                 -0.0798271   -0.2449030    0.0852489
24 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.2013094   -0.4046965    0.0020776
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2+                   1                 -0.3156055   -0.5142400   -0.1169710


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.0730075   -0.4221309    0.2761159
Birth       JiVitA-3         BANGLADESH                     1                    NA                 0.0447708    0.0274998    0.0620418
Birth       NIH-Crypto       BANGLADESH                     1                    NA                 0.0130677   -0.0338068    0.0599422
Birth       PROVIDE          BANGLADESH                     1                    NA                 0.0425034   -0.0247517    0.1097585
6 months    IRC              INDIA                          1                    NA                 0.0660916   -0.1933133    0.3254965
6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0026749   -0.0135544    0.0189042
6 months    LCNI-5           MALAWI                         1                    NA                -0.0094621   -0.0810167    0.0620926
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0465149   -0.0939118    0.0008821
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0202341   -0.0903847    0.0499165
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0239680   -0.0610466    0.0131105
24 months   IRC              INDIA                          1                    NA                -0.1687720   -0.3553240    0.0177799
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0422403   -0.0656828   -0.0187978
24 months   LCNI-5           MALAWI                         1                    NA                -0.0356936   -0.1201604    0.0487732
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0702357   -0.1331098   -0.0073616
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0423992   -0.1103025    0.0255042
