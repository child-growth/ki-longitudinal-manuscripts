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

agecat      studyid          country                        nchldlt5    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------  -------  ------  -----------------
Birth       IRC              INDIA                          1               72     343  whz              
Birth       IRC              INDIA                          2+             271     343  whz              
Birth       JiVitA-3         BANGLADESH                     1            10878   17991  whz              
Birth       JiVitA-3         BANGLADESH                     2+            7113   17991  whz              
Birth       NIH-Crypto       BANGLADESH                     1              504     707  whz              
Birth       NIH-Crypto       BANGLADESH                     2+             203     707  whz              
Birth       PROVIDE          BANGLADESH                     1              385     532  whz              
Birth       PROVIDE          BANGLADESH                     2+             147     532  whz              
6 months    IRC              INDIA                          1               88     408  whz              
6 months    IRC              INDIA                          2+             320     408  whz              
6 months    JiVitA-3         BANGLADESH                     1            10872   16773  whz              
6 months    JiVitA-3         BANGLADESH                     2+            5901   16773  whz              
6 months    LCNI-5           MALAWI                         1              390     811  whz              
6 months    LCNI-5           MALAWI                         2+             421     811  whz              
6 months    NIH-Crypto       BANGLADESH                     1              507     715  whz              
6 months    NIH-Crypto       BANGLADESH                     2+             208     715  whz              
6 months    PROVIDE          BANGLADESH                     1              438     603  whz              
6 months    PROVIDE          BANGLADESH                     2+             165     603  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1390    2019  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2019  whz              
24 months   IRC              INDIA                          1               89     409  whz              
24 months   IRC              INDIA                          2+             320     409  whz              
24 months   JiVitA-3         BANGLADESH                     1             5434    8593  whz              
24 months   JiVitA-3         BANGLADESH                     2+            3159    8593  whz              
24 months   LCNI-5           MALAWI                         1              277     555  whz              
24 months   LCNI-5           MALAWI                         2+             278     555  whz              
24 months   NIH-Crypto       BANGLADESH                     1              357     514  whz              
24 months   NIH-Crypto       BANGLADESH                     2+             157     514  whz              
24 months   PROVIDE          BANGLADESH                     1              424     579  whz              
24 months   PROVIDE          BANGLADESH                     2+             155     579  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6  whz              


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
![](/tmp/10ea127c-2e72-4595-b381-5cd435d9141d/5cb98684-3d1e-4bb6-9475-7813904d832d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/10ea127c-2e72-4595-b381-5cd435d9141d/5cb98684-3d1e-4bb6-9475-7813904d832d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/10ea127c-2e72-4595-b381-5cd435d9141d/5cb98684-3d1e-4bb6-9475-7813904d832d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -1.1148248   -1.5843859   -0.6452638
Birth       IRC              INDIA                          2+                   NA                -0.9832910   -1.1898561   -0.7767259
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.7751156   -0.8010455   -0.7491857
Birth       JiVitA-3         BANGLADESH                     2+                   NA                -0.7573168   -0.7991306   -0.7155030
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -1.2419426   -1.3444939   -1.1393913
Birth       NIH-Crypto       BANGLADESH                     2+                   NA                -1.2652803   -1.4403266   -1.0902341
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.3325324   -1.4386170   -1.2264478
Birth       PROVIDE          BANGLADESH                     2+                   NA                -1.2011910   -1.3501634   -1.0522186
6 months    IRC              INDIA                          1                    NA                -0.5732971   -0.8789113   -0.2676828
6 months    IRC              INDIA                          2+                   NA                -0.6042427   -0.7566648   -0.4518206
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.5652261   -0.5921560   -0.5382963
6 months    JiVitA-3         BANGLADESH                     2+                   NA                -0.6473330   -0.6934993   -0.6011668
6 months    LCNI-5           MALAWI                         1                    NA                 0.5626390    0.4596247    0.6656533
6 months    LCNI-5           MALAWI                         2+                   NA                 0.3349671    0.2338781    0.4360561
6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0728697   -0.0234615    0.1692008
6 months    NIH-Crypto       BANGLADESH                     2+                   NA                -0.0714983   -0.2185483    0.0755517
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.1494748   -0.2606405   -0.0383090
6 months    PROVIDE          BANGLADESH                     2+                   NA                -0.7672725   -0.9279087   -0.6066364
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0657289   -0.0017193    0.1331771
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                 0.1343616    0.0068461    0.2618771
24 months   IRC              INDIA                          1                    NA                -0.7652214   -0.9939050   -0.5365379
24 months   IRC              INDIA                          2+                   NA                -0.7376955   -0.8367625   -0.6386285
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.2976166   -1.3328703   -1.2623629
24 months   JiVitA-3         BANGLADESH                     2+                   NA                -1.2338070   -1.2870364   -1.1805777
24 months   LCNI-5           MALAWI                         1                    NA                 0.0114160   -0.1062824    0.1291143
24 months   LCNI-5           MALAWI                         2+                   NA                -0.0938575   -0.2122178    0.0245027
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.5556092   -0.6726347   -0.4385837
24 months   NIH-Crypto       BANGLADESH                     2+                   NA                -0.7405719   -0.9139857   -0.5671581
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.8971845   -1.0103103   -0.7840588
24 months   PROVIDE          BANGLADESH                     2+                   NA                -0.8425811   -0.9989448   -0.6862175


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
Birth       IRC              INDIA                          2+                   1                  0.1315338   -0.3816958    0.6447635
Birth       JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     2+                   1                  0.0177988   -0.0307205    0.0663180
Birth       NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     2+                   1                 -0.0233377   -0.2263550    0.1796796
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2+                   1                  0.1313413   -0.0517930    0.3144757
6 months    IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          2+                   1                 -0.0309456   -0.3732065    0.3113153
6 months    JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     2+                   1                 -0.0821069   -0.1349532   -0.0292607
6 months    LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         2+                   1                 -0.2276719   -0.3716927   -0.0836511
6 months    NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     2+                   1                 -0.1443680   -0.3200079    0.0312720
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2+                   1                 -0.6177978   -0.8137251   -0.4218705
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0686327   -0.0758301    0.2130955
24 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          2+                   1                  0.0275260   -0.2221324    0.2771843
24 months   JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     2+                   1                  0.0638096    0.0000894    0.1275297
24 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         2+                   1                 -0.1052735   -0.2706340    0.0600870
24 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.1849627   -0.3920232    0.0220979
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2+                   1                  0.0546034   -0.1357424    0.2449493


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                 0.1042417   -0.3089185    0.5174020
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.0025510   -0.0189895    0.0138875
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.0022087   -0.0577605    0.0533431
Birth       PROVIDE          BANGLADESH                     1                    NA                 0.0340737   -0.0345463    0.1026937
6 months    IRC              INDIA                          1                    NA                -0.0256327   -0.2949749    0.2437095
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0280211   -0.0462672   -0.0097749
6 months    LCNI-5           MALAWI                         1                    NA                -0.1246735   -0.2007707   -0.0485764
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0431074   -0.0970695    0.0108546
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0496159   -0.1218102    0.0225784
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0144391   -0.0273575    0.0562357
24 months   IRC              INDIA                          1                    NA                 0.0194064   -0.1794716    0.2182845
24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0003258   -0.0260908    0.0267423
24 months   LCNI-5           MALAWI                         1                    NA                -0.0661457   -0.1492475    0.0169561
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0547409   -0.1242454    0.0147635
24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0043175   -0.0644689    0.0731040
