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

agecat      studyid          country                        nchldlt5    n_cell       n
----------  ---------------  -----------------------------  ---------  -------  ------
Birth       IRC              INDIA                          1               84     388
Birth       IRC              INDIA                          2+             304     388
Birth       JiVitA-3         BANGLADESH                     1            13986   22431
Birth       JiVitA-3         BANGLADESH                     2+            8445   22431
Birth       NIH-Crypto       BANGLADESH                     1              522     732
Birth       NIH-Crypto       BANGLADESH                     2+             210     732
Birth       PROVIDE          BANGLADESH                     1              391     539
Birth       PROVIDE          BANGLADESH                     2+             148     539
6 months    IRC              INDIA                          1               89     407
6 months    IRC              INDIA                          2+             318     407
6 months    JiVitA-3         BANGLADESH                     1            10887   16800
6 months    JiVitA-3         BANGLADESH                     2+            5913   16800
6 months    LCNI-5           MALAWI                         1              390     811
6 months    LCNI-5           MALAWI                         2+             421     811
6 months    NIH-Crypto       BANGLADESH                     1              507     715
6 months    NIH-Crypto       BANGLADESH                     2+             208     715
6 months    PROVIDE          BANGLADESH                     1              438     604
6 months    PROVIDE          BANGLADESH                     2+             166     604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1391    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2020
24 months   IRC              INDIA                          1               89     409
24 months   IRC              INDIA                          2+             320     409
24 months   JiVitA-3         BANGLADESH                     1             5454    8622
24 months   JiVitA-3         BANGLADESH                     2+            3168    8622
24 months   LCNI-5           MALAWI                         1              283     571
24 months   LCNI-5           MALAWI                         2+             288     571
24 months   NIH-Crypto       BANGLADESH                     1              357     514
24 months   NIH-Crypto       BANGLADESH                     2+             157     514
24 months   PROVIDE          BANGLADESH                     1              424     578
24 months   PROVIDE          BANGLADESH                     2+             154     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6


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
![](/tmp/255f220b-3b94-463a-89a8-ff978ef3bdc4/eed31e75-6462-4676-9563-df22df761e23/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/255f220b-3b94-463a-89a8-ff978ef3bdc4/eed31e75-6462-4676-9563-df22df761e23/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/255f220b-3b94-463a-89a8-ff978ef3bdc4/eed31e75-6462-4676-9563-df22df761e23/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.1739079   -0.5971709    0.2493551
Birth       IRC              INDIA                          2+                   NA                -0.3293562   -0.5044360   -0.1542763
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.6329022   -1.6602306   -1.6055739
Birth       JiVitA-3         BANGLADESH                     2+                   NA                -1.5238310   -1.5657263   -1.4819356
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9260046   -1.0137973   -0.8382119
Birth       NIH-Crypto       BANGLADESH                     2+                   NA                -0.9049357   -1.0506154   -0.7592560
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9131117   -1.0103459   -0.8158775
Birth       PROVIDE          BANGLADESH                     2+                   NA                -0.7434046   -0.8780842   -0.6087250
6 months    IRC              INDIA                          1                    NA                -1.2889096   -1.6039613   -0.9738579
6 months    IRC              INDIA                          2+                   NA                -1.2235704   -1.3642150   -1.0829258
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3156306   -1.3442891   -1.2869720
6 months    JiVitA-3         BANGLADESH                     2+                   NA                -1.3249096   -1.3741010   -1.2757183
6 months    LCNI-5           MALAWI                         1                    NA                -1.6224836   -1.7256730   -1.5192941
6 months    LCNI-5           MALAWI                         2+                   NA                -1.6575800   -1.7582977   -1.5568624
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.1526691   -1.2396169   -1.0657212
6 months    NIH-Crypto       BANGLADESH                     2+                   NA                -1.3628240   -1.5072726   -1.2183755
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.0652180   -1.1672812   -0.9631549
6 months    PROVIDE          BANGLADESH                     2+                   NA                -1.3033704   -1.4795378   -1.1272030
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5161935   -0.5759446   -0.4564424
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.6048453   -0.7036693   -0.5060214
24 months   IRC              INDIA                          1                    NA                -1.6480259   -1.8589144   -1.4371374
24 months   IRC              INDIA                          2+                   NA                -1.8481005   -1.9516993   -1.7445016
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.9730378   -2.0098100   -1.9362656
24 months   JiVitA-3         BANGLADESH                     2+                   NA                -2.0557616   -2.1193218   -1.9922014
24 months   LCNI-5           MALAWI                         1                    NA                -1.8418281   -1.9588808   -1.7247754
24 months   LCNI-5           MALAWI                         2+                   NA                -1.9204075   -2.0336108   -1.8072042
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.3783945   -1.4824376   -1.2743515
24 months   NIH-Crypto       BANGLADESH                     2+                   NA                -1.6612909   -1.8303737   -1.4922081
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.5518831   -1.6582094   -1.4455567
24 months   PROVIDE          BANGLADESH                     2+                   NA                -1.8728200   -2.0365135   -1.7091264


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
Birth       IRC              INDIA                          2+                   1                 -0.1554482   -0.6152538    0.3043573
Birth       JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     2+                   1                  0.1090713    0.0601805    0.1579620
Birth       NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     2+                   1                  0.0210689   -0.1490675    0.1912054
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2+                   1                  0.1697071    0.0054752    0.3339389
6 months    IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          2+                   1                  0.0653392   -0.2790896    0.4097681
6 months    JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     2+                   1                 -0.0092791   -0.0619287    0.0433705
6 months    LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         2+                   1                 -0.0350965   -0.1784540    0.1082610
6 months    NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     2+                   1                 -0.2101549   -0.3778624   -0.0424474
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2+                   1                 -0.2381523   -0.4407428   -0.0355619
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0886518   -0.2032295    0.0259259
24 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          2+                   1                 -0.2000746   -0.4346303    0.0344811
24 months   JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     2+                   1                 -0.0827238   -0.1524796   -0.0129680
24 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         2+                   1                 -0.0785794   -0.2415166    0.0843578
24 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.2828963   -0.4785651   -0.0872276
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2+                   1                 -0.3209369   -0.5139992   -0.1278746


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.1341333   -0.5021736    0.2339070
Birth       JiVitA-3         BANGLADESH                     1                    NA                 0.0431992    0.0258890    0.0605093
Birth       NIH-Crypto       BANGLADESH                     1                    NA                 0.0165101   -0.0307581    0.0637783
Birth       PROVIDE          BANGLADESH                     1                    NA                 0.0280096   -0.0320869    0.0881062
6 months    IRC              INDIA                          1                    NA                 0.0545034   -0.2153258    0.3243326
6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0024931   -0.0148052    0.0197913
6 months    LCNI-5           MALAWI                         1                    NA                -0.0206730   -0.0972150    0.0558689
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0460092   -0.0946027    0.0025842
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0264735   -0.0920278    0.0390809
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0280297   -0.0648982    0.0088388
24 months   IRC              INDIA                          1                    NA                -0.1507516   -0.3355475    0.0340443
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0403906   -0.0636736   -0.0171077
24 months   LCNI-5           MALAWI                         1                    NA                -0.0388549   -0.1217920    0.0440821
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0628700   -0.1235868   -0.0021533
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0505391   -0.1148705    0.0137923
