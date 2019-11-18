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

agecat      studyid                    country                        nchldlt5    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  -------  ------  -----------------
Birth       ki1000108-IRC              INDIA                          1               84     388  haz              
Birth       ki1000108-IRC              INDIA                          2+             304     388  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              391     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+             148     539  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              522     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+             210     732  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            13986   22431  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+            8445   22431  haz              
6 months    ki1000108-IRC              INDIA                          1               89     407  haz              
6 months    ki1000108-IRC              INDIA                          2+             318     407  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              438     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+             166     604  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+             208     715  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1391    2020  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2020  haz              
6 months    ki1148112-LCNI-5           MALAWI                         1              390     811  haz              
6 months    ki1148112-LCNI-5           MALAWI                         2+             421     811  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10887   16800  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+            5913   16800  haz              
24 months   ki1000108-IRC              INDIA                          1               89     409  haz              
24 months   ki1000108-IRC              INDIA                          2+             320     409  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              424     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+             154     578  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             157     514  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6  haz              
24 months   ki1148112-LCNI-5           MALAWI                         1              283     571  haz              
24 months   ki1148112-LCNI-5           MALAWI                         2+             288     571  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5454    8622  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+            3168    8622  haz              


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
![](/tmp/98182b72-2c55-46dc-8dd5-09c2933b777d/f391c8d9-3b7d-46fa-9327-db12b26443d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/98182b72-2c55-46dc-8dd5-09c2933b777d/f391c8d9-3b7d-46fa-9327-db12b26443d4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/98182b72-2c55-46dc-8dd5-09c2933b777d/f391c8d9-3b7d-46fa-9327-db12b26443d4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.2693393   -0.6660984    0.1274198
Birth       ki1000108-IRC              INDIA                          2+                   NA                -0.3182650   -0.4927818   -0.1437482
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9213458   -1.0279473   -0.8147444
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.5371007   -0.6893939   -0.3848074
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.9170857   -1.0033019   -0.8308696
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.8698448   -1.0070798   -0.7326098
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.6293006   -1.6567472   -1.6018541
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.5455200   -1.5850382   -1.5060019
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2616015   -1.5745169   -0.9486861
6 months    ki1000108-IRC              INDIA                          2+                   NA                -1.2217224   -1.3635166   -1.0799282
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.0462907   -1.1410778   -0.9515035
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -1.1319584   -1.2973256   -0.9665912
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.1434061   -1.2294567   -1.0573554
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -1.3376098   -1.4703442   -1.2048755
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5127490   -0.5727034   -0.4527947
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.5896521   -0.6919121   -0.4873920
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -1.6172374   -1.7170077   -1.5174672
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                -1.6534694   -1.7534818   -1.5534570
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3107613   -1.3387516   -1.2827709
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.3202438   -1.3713032   -1.2691844
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.6271406   -1.8401524   -1.4141288
24 months   ki1000108-IRC              INDIA                          2+                   NA                -1.8481693   -1.9523344   -1.7440042
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.5588112   -1.6751450   -1.4424773
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -1.8275705   -1.9902538   -1.6648872
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.3749850   -1.4763177   -1.2736523
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -1.6175451   -1.7725493   -1.4625409
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -1.8430622   -1.9617183   -1.7244061
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -1.9250902   -2.0391165   -1.8110638
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.9662458   -2.0016862   -1.9308054
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -2.0542190   -2.1198288   -1.9886092


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5897031   -1.6089786   -1.5704276
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5442232   -0.5932373   -0.4952090
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6431566   -1.7128296   -1.5734836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3131375   -1.3362767   -1.2899983
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8806830   -1.9625334   -1.7988326
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0134284   -2.0411019   -1.9857549


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 -0.0489257   -0.4823617    0.3845103
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   1                  0.3842452    0.1978760    0.5706144
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                  0.0472409   -0.1142651    0.2087470
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.0837806    0.0369208    0.1306404
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                  0.0398791   -0.3016172    0.3813754
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.0856677   -0.2766152    0.1052798
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.1942038   -0.3514420   -0.0369655
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0769030   -0.1945451    0.0407391
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0362319   -0.1776113    0.1051474
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0094825   -0.0634134    0.0444483
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 -0.2210287   -0.4582307    0.0161733
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.2687593   -0.4674594   -0.0700593
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.2425601   -0.4259329   -0.0591873
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.0820279   -0.2468991    0.0828432
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0879733   -0.1592811   -0.0166654


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0387019   -0.3793002    0.3018964
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0362438   -0.0339299    0.1064175
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0075912   -0.0376344    0.0528168
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0395976    0.0220826    0.0571125
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0271953   -0.2399873    0.2943779
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0454008   -0.1029657    0.0121640
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0552723   -0.1022868   -0.0082577
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0314741   -0.0687485    0.0058002
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0259192   -0.1001976    0.0483592
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0023762   -0.0181889    0.0134364
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.1716369   -0.3576578    0.0143840
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0436110   -0.1196847    0.0324627
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0662796   -0.1234164   -0.0091429
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0376208   -0.1223030    0.0470614
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0471827   -0.0688636   -0.0255018
