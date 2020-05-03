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
![](/tmp/8abf5d8b-c381-476e-bd4e-b2d1bde15260/096a0c99-2846-42b7-8067-2382035889c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8abf5d8b-c381-476e-bd4e-b2d1bde15260/096a0c99-2846-42b7-8067-2382035889c4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8abf5d8b-c381-476e-bd4e-b2d1bde15260/096a0c99-2846-42b7-8067-2382035889c4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -1.1135099   -1.5768202   -0.6501996
Birth       IRC              INDIA                          2+                   NA                -0.9801344   -1.1872337   -0.7730350
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.7754562   -0.8016291   -0.7492833
Birth       JiVitA-3         BANGLADESH                     2+                   NA                -0.7479942   -0.7879194   -0.7080690
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -1.2408792   -1.3440070   -1.1377513
Birth       NIH-Crypto       BANGLADESH                     2+                   NA                -1.2024289   -1.3581165   -1.0467413
Birth       PROVIDE          BANGLADESH                     1                    NA                -1.3297981   -1.4328459   -1.2267503
Birth       PROVIDE          BANGLADESH                     2+                   NA                -1.2717604   -1.4357938   -1.1077271
6 months    IRC              INDIA                          1                    NA                -0.5776610   -0.8748926   -0.2804293
6 months    IRC              INDIA                          2+                   NA                -0.6105304   -0.7623887   -0.4586722
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.5660898   -0.5932701   -0.5389096
6 months    JiVitA-3         BANGLADESH                     2+                   NA                -0.6494724   -0.6939191   -0.6050258
6 months    LCNI-5           MALAWI                         1                    NA                 0.5475572    0.4439551    0.6511593
6 months    LCNI-5           MALAWI                         2+                   NA                 0.3354020    0.2355835    0.4352204
6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0640700   -0.0320378    0.1601777
6 months    NIH-Crypto       BANGLADESH                     2+                   NA                -0.0724312   -0.2218025    0.0769401
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.1538342   -0.2581980   -0.0494705
6 months    PROVIDE          BANGLADESH                     2+                   NA                -0.6028070   -0.7717229   -0.4338911
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0767121    0.0105353    0.1428890
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                 0.1496567    0.0212992    0.2780141
24 months   IRC              INDIA                          1                    NA                -0.7758554   -0.9979327   -0.5537781
24 months   IRC              INDIA                          2+                   NA                -0.7394571   -0.8394887   -0.6394255
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.3006439   -1.3369479   -1.2643398
24 months   JiVitA-3         BANGLADESH                     2+                   NA                -1.2379544   -1.2913408   -1.1845681
24 months   LCNI-5           MALAWI                         1                    NA                 0.0042109   -0.1172222    0.1256440
24 months   LCNI-5           MALAWI                         2+                   NA                -0.0781524   -0.2032993    0.0469944
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.5653568   -0.6817676   -0.4489460
24 months   NIH-Crypto       BANGLADESH                     2+                   NA                -0.7290069   -0.9138934   -0.5441203
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.8888810   -0.9968729   -0.7808892
24 months   PROVIDE          BANGLADESH                     2+                   NA                -1.0044147   -1.1794252   -0.8294042


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
Birth       IRC              INDIA                          2+                   1                  0.1333755   -0.3739381    0.6406891
Birth       JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     2+                   1                  0.0274620   -0.0191864    0.0741103
Birth       NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     2+                   1                  0.0384502   -0.1484521    0.2253526
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2+                   1                  0.0580376   -0.1357906    0.2518658
6 months    IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          2+                   1                 -0.0328695   -0.3667795    0.3010406
6 months    JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     2+                   1                 -0.0833826   -0.1346176   -0.0321476
6 months    LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         2+                   1                 -0.2121552   -0.3558704   -0.0684401
6 months    NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     2+                   1                 -0.1365012   -0.3136577    0.0406553
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2+                   1                 -0.4489728   -0.6480976   -0.2498479
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0729446   -0.0716820    0.2175711
24 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          2+                   1                  0.0363983   -0.2074056    0.2802022
24 months   JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     2+                   1                  0.0626894   -0.0011364    0.1265153
24 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         2+                   1                 -0.0823633   -0.2561898    0.0914632
24 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.1636501   -0.3813292    0.0540290
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2+                   1                 -0.1155336   -0.3206350    0.0895677


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                 0.1029268   -0.3031859    0.5090395
Birth       JiVitA-3         BANGLADESH                     1                    NA                -0.0022104   -0.0189801    0.0145593
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.0032722   -0.0586211    0.0520767
Birth       PROVIDE          BANGLADESH                     1                    NA                 0.0313394   -0.0357837    0.0984625
6 months    IRC              INDIA                          1                    NA                -0.0212688   -0.2833803    0.2408428
6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0271574   -0.0455382   -0.0087765
6 months    LCNI-5           MALAWI                         1                    NA                -0.1095918   -0.1860009   -0.0331826
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0343077   -0.0880136    0.0193981
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0452564   -0.1089373    0.0184244
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0034559   -0.0371278    0.0440396
24 months   IRC              INDIA                          1                    NA                 0.0300404   -0.1620272    0.2221080
24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0033531   -0.0241770    0.0308832
24 months   LCNI-5           MALAWI                         1                    NA                -0.0589406   -0.1459425    0.0280613
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0449934   -0.1138503    0.0238635
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0039860   -0.0694025    0.0614306
