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
![](/tmp/2b592c6d-3a96-4804-8664-5aad566fadad/3e85fd56-efbe-494c-ac2c-48b8312ab3a6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2b592c6d-3a96-4804-8664-5aad566fadad/3e85fd56-efbe-494c-ac2c-48b8312ab3a6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2b592c6d-3a96-4804-8664-5aad566fadad/3e85fd56-efbe-494c-ac2c-48b8312ab3a6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.2284500   -0.6261371    0.1692372
Birth       IRC              INDIA                          2+                   NA                -0.3263822   -0.5028470   -0.1499175
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.6329493   -1.6603800   -1.6055185
Birth       JiVitA-3         BANGLADESH                     2+                   NA                -1.5304065   -1.5726878   -1.4881251
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9271318   -1.0144334   -0.8398301
Birth       NIH-Crypto       BANGLADESH                     2+                   NA                -0.8765996   -1.0112121   -0.7419870
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9194922   -1.0220958   -0.8168885
Birth       PROVIDE          BANGLADESH                     2+                   NA                -0.6602047   -0.8106505   -0.5097589
6 months    IRC              INDIA                          1                    NA                -1.2894681   -1.5943913   -0.9845448
6 months    IRC              INDIA                          2+                   NA                -1.2263285   -1.3661946   -1.0864625
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3146486   -1.3433786   -1.2859187
6 months    JiVitA-3         BANGLADESH                     2+                   NA                -1.3208428   -1.3708687   -1.2708169
6 months    LCNI-5           MALAWI                         1                    NA                -1.6162384   -1.7163486   -1.5161283
6 months    LCNI-5           MALAWI                         2+                   NA                -1.6639811   -1.7642193   -1.5637430
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.1523464   -1.2393235   -1.0653693
6 months    NIH-Crypto       BANGLADESH                     2+                   NA                -1.3576541   -1.4995901   -1.2157181
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.0701443   -1.1698426   -0.9704459
6 months    PROVIDE          BANGLADESH                     2+                   NA                -1.1847853   -1.3448852   -1.0246855
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5075367   -0.5676496   -0.4474238
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.5993967   -0.6976186   -0.5011747
24 months   IRC              INDIA                          1                    NA                -1.6381955   -1.8566362   -1.4197549
24 months   IRC              INDIA                          2+                   NA                -1.8538507   -1.9580686   -1.7496327
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.9693133   -2.0047904   -1.9338362
24 months   JiVitA-3         BANGLADESH                     2+                   NA                -2.0662397   -2.1319086   -2.0005709
24 months   LCNI-5           MALAWI                         1                    NA                -1.8366451   -1.9549617   -1.7183284
24 months   LCNI-5           MALAWI                         2+                   NA                -1.9295004   -2.0435067   -1.8154941
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.3679947   -1.4698893   -1.2661000
24 months   NIH-Crypto       BANGLADESH                     2+                   NA                -1.6213312   -1.7977957   -1.4448668
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.5467043   -1.6558610   -1.4375476
24 months   PROVIDE          BANGLADESH                     2+                   NA                -1.9758830   -2.1488915   -1.8028746


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
Birth       IRC              INDIA                          2+                   1                 -0.0979323   -0.5335990    0.3377344
Birth       JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     2+                   1                  0.1025428    0.0533379    0.1517477
Birth       NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     2+                   1                  0.0505322   -0.1099616    0.2110261
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2+                   1                  0.2592875    0.0773084    0.4412666
6 months    IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          2+                   1                  0.0631396   -0.2719416    0.3982207
6 months    JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     2+                   1                 -0.0061942   -0.0593963    0.0470080
6 months    LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         2+                   1                 -0.0477427   -0.1892768    0.0937914
6 months    NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     2+                   1                 -0.2053077   -0.3718155   -0.0387999
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2+                   1                 -0.1146411   -0.3031814    0.0738992
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0918600   -0.2061736    0.0224537
24 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          2+                   1                 -0.2156551   -0.4579586    0.0266483
24 months   JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     2+                   1                 -0.0969264   -0.1684720   -0.0253809
24 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         2+                   1                 -0.0928553   -0.2572123    0.0715017
24 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.2533365   -0.4541182   -0.0525549
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2+                   1                 -0.4291787   -0.6323423   -0.2260151


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.0795913   -0.4240368    0.2648542
Birth       JiVitA-3         BANGLADESH                     1                    NA                 0.0432462    0.0259699    0.0605225
Birth       NIH-Crypto       BANGLADESH                     1                    NA                 0.0176372   -0.0279512    0.0632257
Birth       PROVIDE          BANGLADESH                     1                    NA                 0.0343901   -0.0309405    0.0997208
6 months    IRC              INDIA                          1                    NA                 0.0550619   -0.2085342    0.3186580
6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0015111   -0.0149936    0.0180159
6 months    LCNI-5           MALAWI                         1                    NA                -0.0269181   -0.1012308    0.0473945
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0463319   -0.0949753    0.0023115
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0215472   -0.0853080    0.0422135
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0366865   -0.0740184    0.0006454
24 months   IRC              INDIA                          1                    NA                -0.1605820   -0.3529545    0.0317905
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0441151   -0.0660411   -0.0221892
24 months   LCNI-5           MALAWI                         1                    NA                -0.0440379   -0.1280420    0.0399662
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0732699   -0.1323719   -0.0141678
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0557178   -0.1229204    0.0114848
