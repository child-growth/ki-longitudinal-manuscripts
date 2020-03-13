---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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
![](/tmp/e8757284-09c3-4e5b-9d4f-18693c9da668/bdfde04c-c3a9-416d-a01d-e6b59d3d038d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          optimal              observed          -1.1546719   -1.3903458   -0.9189981
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.7399656   -0.7789577   -0.7009736
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -1.2448973   -1.3821503   -1.1076443
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.6653967   -0.7999406   -0.5308529
6 months    IRC              INDIA                          optimal              observed          -0.6314657   -0.8430723   -0.4198591
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.5436739   -0.5729839   -0.5143639
6 months    LCNI-5           MALAWI                         optimal              observed           0.5563593    0.4546417    0.6580769
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.0119231   -0.1139056    0.1377517
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0198747   -0.1435112    0.1037619
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0620234   -0.0497887    0.1738354
24 months   IRC              INDIA                          optimal              observed          -0.8851870   -1.0523742   -0.7179997
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.2888466   -1.3419079   -1.2357853
24 months   LCNI-5           MALAWI                         optimal              observed           0.0141575   -0.1043964    0.1327113
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.6122128   -0.7596175   -0.4648082
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.7596518   -0.8952506   -0.6240531


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     observed             observed          -0.7776666   -0.7966629   -0.7586703
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE          BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
6 months    IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-3         BANGLADESH                     observed             observed          -0.5932472   -0.6127728   -0.5737215
6 months    LCNI-5           MALAWI                         observed             observed           0.4379655    0.3664533    0.5094777
6 months    NIH-Crypto       BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    PROVIDE          BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0801680    0.0273223    0.1330136
24 months   IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     observed             observed          -1.2972908   -1.3206179   -1.2739638
24 months   LCNI-5           MALAWI                         observed             observed          -0.0547297   -0.1370054    0.0275459
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE          BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          optimal              observed           0.1440889    0.0025384    0.2856393
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0377010   -0.0734672   -0.0019347
Birth       NIH-Crypto       BANGLADESH                     optimal              observed           0.0007460   -0.1092780    0.1107699
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.6330619   -0.7610590   -0.5050648
6 months    IRC              INDIA                          optimal              observed           0.0325360   -0.1458699    0.2109418
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0495733   -0.0717808   -0.0273657
6 months    LCNI-5           MALAWI                         optimal              observed          -0.1183938   -0.1941845   -0.0426032
6 months    NIH-Crypto       BANGLADESH                     optimal              observed           0.0178392   -0.0725046    0.1081830
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.1792160   -0.2792968   -0.0791352
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0181446   -0.0768845    0.1131737
24 months   IRC              INDIA                          optimal              observed           0.1393720    0.0100347    0.2687093
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0084442   -0.0562698    0.0393814
24 months   LCNI-5           MALAWI                         optimal              observed          -0.0688872   -0.1562693    0.0184949
24 months   NIH-Crypto       BANGLADESH                     optimal              observed           0.0018627   -0.1041529    0.1078782
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.1332152   -0.2400746   -0.0263558
