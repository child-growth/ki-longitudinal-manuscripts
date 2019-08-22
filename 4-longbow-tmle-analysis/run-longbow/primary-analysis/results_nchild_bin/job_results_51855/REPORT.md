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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        nchldlt5    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki1000108-IRC              INDIA                          1                 0       72     388
Birth       ki1000108-IRC              INDIA                          1                 1       12     388
Birth       ki1000108-IRC              INDIA                          2+                0      271     388
Birth       ki1000108-IRC              INDIA                          2+                1       33     388
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       14      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        8      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        1      27
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     7865   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     4239   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                0     5393   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                1     2094   19591
6 months    ki1000108-IRC              INDIA                          1                 0       67     407
6 months    ki1000108-IRC              INDIA                          1                 1       22     407
6 months    ki1000108-IRC              INDIA                          2+                0      240     407
6 months    ki1000108-IRC              INDIA                          2+                1       78     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      357     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       69     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                0      132     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                1       25     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      400     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1      107     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      165     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                1       43     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1267    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      124    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      558    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1       71    2020
6 months    ki1148112-LCNI-5           MALAWI                         1                 0      263     811
6 months    ki1148112-LCNI-5           MALAWI                         1                 1      127     811
6 months    ki1148112-LCNI-5           MALAWI                         2+                0      253     811
6 months    ki1148112-LCNI-5           MALAWI                         2+                1      168     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     8093   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2794   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                0     4484   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                1     1429   16800
24 months   ki1000108-IRC              INDIA                          1                 0       58     409
24 months   ki1000108-IRC              INDIA                          1                 1       31     409
24 months   ki1000108-IRC              INDIA                          2+                0      181     409
24 months   ki1000108-IRC              INDIA                          2+                1      139     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      298     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1      125     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                0       89     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                1       65     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      276     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       81     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      106     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                1       51     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        0       6
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      163     571
24 months   ki1148112-LCNI-5           MALAWI                         1                 1      120     571
24 months   ki1148112-LCNI-5           MALAWI                         2+                0      158     571
24 months   ki1148112-LCNI-5           MALAWI                         2+                1      130     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2892    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2562    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0     1499    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1     1669    8622


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/bd5dd949-8f96-4215-a150-cb66928d585d/fd920c53-a3ee-4f2f-93bb-b56d45761216/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bd5dd949-8f96-4215-a150-cb66928d585d/fd920c53-a3ee-4f2f-93bb-b56d45761216/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bd5dd949-8f96-4215-a150-cb66928d585d/fd920c53-a3ee-4f2f-93bb-b56d45761216/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bd5dd949-8f96-4215-a150-cb66928d585d/fd920c53-a3ee-4f2f-93bb-b56d45761216/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                0.1337761   0.0631019   0.2044503
Birth       ki1000108-IRC              INDIA                          2+                   NA                0.1087019   0.0737491   0.1436547
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3328352   0.3216325   0.3440379
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.3111264   0.2932414   0.3290114
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2448336   0.1523671   0.3373000
6 months    ki1000108-IRC              INDIA                          2+                   NA                0.2452094   0.1977301   0.2926886
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1621438   0.1270530   0.1972346
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1661300   0.1067986   0.2254615
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2095233   0.1734003   0.2456463
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.2341225   0.1733608   0.2948841
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0927557   0.0760459   0.1094656
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1089442   0.0796105   0.1382780
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3307681   0.2833162   0.3782201
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.3881116   0.3412230   0.4350002
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2500050   0.2391976   0.2608124
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2631319   0.2429238   0.2833400
24 months   ki1000108-IRC              INDIA                          1                    NA                0.3588896   0.2579511   0.4598282
24 months   ki1000108-IRC              INDIA                          2+                   NA                0.4317077   0.3772901   0.4861252
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2917004   0.2450843   0.3383164
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.3756079   0.2951886   0.4560273
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2390252   0.1930117   0.2850386
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.3687113   0.2928478   0.4445749
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4325063   0.3753301   0.4896825
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.4448566   0.3873487   0.5023646
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4675876   0.4490713   0.4861039
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.5261714   0.4970178   0.5553250


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3232607   0.3156042   0.3309171
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965347   0.0836528   0.1094165
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3637485   0.3306185   0.3968784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513690   0.2432434   0.2594947
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4378284   0.3971000   0.4785567
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907214   0.4775947   0.5038481


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 0.8125657   0.4377327   1.5083702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9347761   0.8755131   0.9980505
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 1.0015349   0.6547472   1.5319992
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.0245846   0.6764899   1.5517950
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.1174054   0.8184585   1.5255446
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.1745286   0.8494550   1.6240030
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 1.1733644   0.9732110   1.4146820
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.0525067   0.9665321   1.1461289
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 1.2028982   0.8842792   1.6363203
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.2876500   0.9873027   1.6793658
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.5425627   1.1672435   2.0385634
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.0285553   0.8564036   1.2353123
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.1252895   1.0545627   1.2007596


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0177967   -0.0792682    0.0436747
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0095745   -0.0168361   -0.0023129
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0008667   -0.0810318    0.0827651
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0009088   -0.0191089    0.0172913
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0002669   -0.0197500    0.0202838
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0037789   -0.0072420    0.0147999
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0329803   -0.0024986    0.0684592
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0013641   -0.0056011    0.0083293
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0567583   -0.0333388    0.1468554
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0375891    0.0086532    0.0665249
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0177842   -0.0104659    0.0460343
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0053221   -0.0351916    0.0458357
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0231338    0.0106991    0.0355685


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.1534475   -0.8255315    0.2712034
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0296186   -0.0522488   -0.0074750
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0035273   -0.3923341    0.2868394
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0056366   -0.1250923    0.1011360
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0012724   -0.0988501    0.0922721
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0391459   -0.0820441    0.1467625
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0906679   -0.0122721    0.1831397
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0054266   -0.0226762    0.0327571
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1365538   -0.1100713    0.3283860
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1141521    0.0215677    0.1979757
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0692505   -0.0474588    0.1729558
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0121556   -0.0848459    0.1004837
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0471425    0.0213677    0.0722384
