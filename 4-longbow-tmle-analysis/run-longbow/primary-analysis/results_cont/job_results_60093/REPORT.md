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
Birth       IRC              INDIA                          1               72     343
Birth       IRC              INDIA                          2+             271     343
Birth       JiVitA-3         BANGLADESH                     1            10878   17991
Birth       JiVitA-3         BANGLADESH                     2+            7113   17991
Birth       NIH-Crypto       BANGLADESH                     1              504     707
Birth       NIH-Crypto       BANGLADESH                     2+             203     707
Birth       PROVIDE          BANGLADESH                     1              385     532
Birth       PROVIDE          BANGLADESH                     2+             147     532
6 months    IRC              INDIA                          1               88     408
6 months    IRC              INDIA                          2+             320     408
6 months    JiVitA-3         BANGLADESH                     1            10872   16773
6 months    JiVitA-3         BANGLADESH                     2+            5901   16773
6 months    LCNI-5           MALAWI                         1              390     811
6 months    LCNI-5           MALAWI                         2+             421     811
6 months    NIH-Crypto       BANGLADESH                     1              507     715
6 months    NIH-Crypto       BANGLADESH                     2+             208     715
6 months    PROVIDE          BANGLADESH                     1              438     603
6 months    PROVIDE          BANGLADESH                     2+             165     603
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1390    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2019
24 months   IRC              INDIA                          1               89     409
24 months   IRC              INDIA                          2+             320     409
24 months   JiVitA-3         BANGLADESH                     1             5434    8593
24 months   JiVitA-3         BANGLADESH                     2+            3159    8593
24 months   LCNI-5           MALAWI                         1              277     555
24 months   LCNI-5           MALAWI                         2+             278     555
24 months   NIH-Crypto       BANGLADESH                     1              357     514
24 months   NIH-Crypto       BANGLADESH                     2+             157     514
24 months   PROVIDE          BANGLADESH                     1              424     579
24 months   PROVIDE          BANGLADESH                     2+             155     579
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
![](/tmp/c926ff82-404f-42c2-93fb-9748c4df7d48/7bfb0e18-b261-44c5-9327-258ab4dd0599/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c926ff82-404f-42c2-93fb-9748c4df7d48/7bfb0e18-b261-44c5-9327-258ab4dd0599/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c926ff82-404f-42c2-93fb-9748c4df7d48/7bfb0e18-b261-44c5-9327-258ab4dd0599/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -1.1047550   -1.5667221   -0.6427880
Birth       IRC              INDIA                          2+                   NA                -0.9858880   -1.1914271   -0.7803490
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.7739819   -0.8000534   -0.7479104
Birth       JiVitA-3         BANGLADESH                     2+                   NA                -0.7589360   -0.7993748   -0.7184971
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -1.2366744   -1.3391132   -1.1342357
Birth       NIH-Crypto       BANGLADESH                     2+                   NA                -1.1779125   -1.3394817   -1.0163433
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.3209715   -1.4328135   -1.2091295
Birth       PROVIDE          BANGLADESH                     2+                   NA                -1.3851851   -1.5256328   -1.2447373
6 months    IRC              INDIA                          1                    NA                -0.5845799   -0.8799679   -0.2891920
6 months    IRC              INDIA                          2+                   NA                -0.6049017   -0.7574022   -0.4524012
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.5657601   -0.5930604   -0.5384599
6 months    JiVitA-3         BANGLADESH                     2+                   NA                -0.6513058   -0.6962128   -0.6063988
6 months    LCNI-5           MALAWI                         1                    NA                 0.5550083    0.4505682    0.6594484
6 months    LCNI-5           MALAWI                         2+                   NA                 0.3495012    0.2480866    0.4509158
6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0704282   -0.0240668    0.1649232
6 months    NIH-Crypto       BANGLADESH                     2+                   NA                -0.0413562   -0.1878147    0.1051022
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.1434820   -0.2535178   -0.0334462
6 months    PROVIDE          BANGLADESH                     2+                   NA                -0.6883916   -0.8474883   -0.5292950
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0721912    0.0056933    0.1386891
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                 0.1283389    0.0049350    0.2517428
24 months   IRC              INDIA                          1                    NA                -0.7743804   -1.0082847   -0.5404761
24 months   IRC              INDIA                          2+                   NA                -0.7405875   -0.8403638   -0.6408111
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.3026391   -1.3400557   -1.2652224
24 months   JiVitA-3         BANGLADESH                     2+                   NA                -1.2444487   -1.2987845   -1.1901130
24 months   LCNI-5           MALAWI                         1                    NA                -0.0004917   -0.1213172    0.1203339
24 months   LCNI-5           MALAWI                         2+                   NA                -0.0879582   -0.2070874    0.0311710
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.5519016   -0.6705805   -0.4332228
24 months   NIH-Crypto       BANGLADESH                     2+                   NA                -0.7678574   -0.9499654   -0.5857494
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.8917264   -1.0168250   -0.7666278
24 months   PROVIDE          BANGLADESH                     2+                   NA                -0.8639582   -1.0217396   -0.7061768


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7776666   -0.7966629   -0.7586703
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
6 months    IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5932472   -0.6127728   -0.5737215
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4379655    0.3664533    0.5094777
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0801680    0.0273223    0.1330136
24 months   IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2972908   -1.3206179   -1.2739638
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0547297   -0.1370054    0.0275459
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          2+                   1                  0.1188670   -0.3869644    0.6246984
Birth       JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     2+                   1                  0.0150459   -0.0323030    0.0623948
Birth       NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     2+                   1                  0.0587619   -0.1332416    0.2507655
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2+                   1                 -0.0642136   -0.2433328    0.1149057
6 months    IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          2+                   1                 -0.0203217   -0.3529521    0.3123086
6 months    JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     2+                   1                 -0.0855457   -0.1372081   -0.0338832
6 months    LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         2+                   1                 -0.2055071   -0.3512651   -0.0597490
6 months    NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     2+                   1                 -0.1117845   -0.2855015    0.0619326
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2+                   1                 -0.5449097   -0.7389730   -0.3508463
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0561477   -0.0843269    0.1966223
24 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          2+                   1                  0.0337929   -0.2206008    0.2881866
24 months   JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     2+                   1                  0.0581904   -0.0081818    0.1245626
24 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         2+                   1                 -0.0874665   -0.2569486    0.0820155
24 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.2159558   -0.4331352    0.0012237
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2+                   1                  0.0277682   -0.1714917    0.2270280


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                 0.0941719   -0.3103168    0.4986606
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.0036847   -0.0202859    0.0129165
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.0074769   -0.0632621    0.0483083
Birth       PROVIDE          BANGLADESH                     1                    NA                 0.0225129   -0.0526453    0.0976710
6 months    IRC              INDIA                          1                    NA                -0.0143498   -0.2750514    0.2463517
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0274870   -0.0459390   -0.0090351
6 months    LCNI-5           MALAWI                         1                    NA                -0.1170428   -0.1948855   -0.0392001
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0406660   -0.0927371    0.0114051
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0556087   -0.1259214    0.0147040
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0079768   -0.0329843    0.0489379
24 months   IRC              INDIA                          1                    NA                 0.0285654   -0.1749582    0.2320890
24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0053483   -0.0243542    0.0350508
24 months   LCNI-5           MALAWI                         1                    NA                -0.0542381   -0.1402368    0.0317607
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0584486   -0.1304992    0.0136020
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0011406   -0.0857039    0.0834227
