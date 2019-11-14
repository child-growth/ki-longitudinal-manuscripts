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

agecat      studyid                    country                        nchldlt5    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki1000108-IRC              INDIA                          1               84     388
Birth       ki1000108-IRC              INDIA                          2+             304     388
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              391     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+             148     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              522     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+             210     732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            16975   26641
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+            9666   26641
6 months    ki1000108-IRC              INDIA                          1               89     407
6 months    ki1000108-IRC              INDIA                          2+             318     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              438     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+             166     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+             208     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1391    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2020
6 months    ki1148112-LCNI-5           MALAWI                         1              390     811
6 months    ki1148112-LCNI-5           MALAWI                         2+             421     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10849   16742
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+            5893   16742
24 months   ki1000108-IRC              INDIA                          1               89     409
24 months   ki1000108-IRC              INDIA                          2+             320     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              424     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+             154     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             157     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6
24 months   ki1148112-LCNI-5           MALAWI                         1              283     571
24 months   ki1148112-LCNI-5           MALAWI                         2+             288     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5412    8555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+            3143    8555


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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b9e82e79-7531-4d76-9bc2-4b1aa1538781/4c62f31e-8840-4a59-a9da-61c960bac0c0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b9e82e79-7531-4d76-9bc2-4b1aa1538781/4c62f31e-8840-4a59-a9da-61c960bac0c0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b9e82e79-7531-4d76-9bc2-4b1aa1538781/4c62f31e-8840-4a59-a9da-61c960bac0c0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.2645557   -0.6675306    0.1384193
Birth       ki1000108-IRC              INDIA                          2+                   NA                -0.3180083   -0.4926267   -0.1433899
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9129961   -1.0146885   -0.8113038
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.7822520   -0.9586006   -0.6059034
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.9233090   -1.0091031   -0.8375149
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.8704783   -1.0037591   -0.7371974
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.2181162   -1.2542739   -1.1819584
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.1144913   -1.1703114   -1.0586712
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2580818   -1.5653321   -0.9508314
6 months    ki1000108-IRC              INDIA                          2+                   NA                -1.2178169   -1.3598284   -1.0758054
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.0512549   -1.1448519   -0.9576580
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -1.2034187   -1.3730705   -1.0337668
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.1512416   -1.2373146   -1.0651687
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -1.3332337   -1.4667824   -1.1996851
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5160617   -0.5758913   -0.4562322
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.6026135   -0.7014960   -0.5037310
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -1.6287457   -1.7292527   -1.5282386
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                -1.6538687   -1.7501275   -1.5576099
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3317106   -1.3603757   -1.3030456
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.3553650   -1.4066592   -1.3040708
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.6196327   -1.8388629   -1.4004025
24 months   ki1000108-IRC              INDIA                          2+                   NA                -1.8488467   -1.9535730   -1.7441205
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.5492127   -1.6561790   -1.4422465
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -1.8410102   -2.0248600   -1.6571604
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.3626438   -1.4668607   -1.2584268
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -1.6173085   -1.7805043   -1.4541127
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -1.8405783   -1.9560500   -1.7251065
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -1.9360347   -2.0506812   -1.8213882
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.9706544   -2.0064999   -1.9348089
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -2.0780264   -2.1434238   -2.0126291


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1729473   -1.2010166   -1.1448781
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5442232   -0.5932373   -0.4952090
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6431566   -1.7128296   -1.5734836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3356337   -1.3587165   -1.3125509
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8806830   -1.9625334   -1.7988326
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0193641   -2.0469959   -1.9917323


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 -0.0534526   -0.4927934    0.3858882
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   1                  0.1307441   -0.0708401    0.3323283
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.0528308   -0.1054637    0.2111252
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.1036249    0.0409679    0.1662818
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                  0.0402648   -0.2967220    0.3772516
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.1521637   -0.3458240    0.0414966
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.1819921   -0.3409755   -0.0230087
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0865518   -0.2012022    0.0280987
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0251230   -0.1624313    0.1121853
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0236544   -0.0782124    0.0309037
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 -0.2292140   -0.4723342    0.0139062
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.2917975   -0.5042416   -0.0793534
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.2546647   -0.4479640   -0.0613654
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0954565   -0.2582726    0.0673597
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.1073720   -0.1786950   -0.0360490


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0434855   -0.3904279    0.3034569
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0278941   -0.0364541    0.0922423
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0138145   -0.0311425    0.0587715
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0451688    0.0250752    0.0652624
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0236755   -0.2391226    0.2864737
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0404366   -0.0963468    0.0154736
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0474367   -0.0947339   -0.0001394
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0281615   -0.0653837    0.0090608
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0144109   -0.0876438    0.0588219
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0039231   -0.0209223    0.0130761
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.1791448   -0.3714714    0.0131818
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0532094   -0.1179356    0.0115167
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0786208   -0.1393226   -0.0179190
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0401048   -0.1220929    0.0418834
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0487097   -0.0708756   -0.0265439
