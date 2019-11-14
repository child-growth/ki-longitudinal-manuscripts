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

agecat      studyid                    country                        nchldlt5    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki1000108-IRC              INDIA                          1               72     343
Birth       ki1000108-IRC              INDIA                          2+             271     343
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              385     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+             147     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              504     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+             203     707
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            13759   22058
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+            8299   22058
6 months    ki1000108-IRC              INDIA                          1               88     408
6 months    ki1000108-IRC              INDIA                          2+             320     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              438     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+             165     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+             208     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1390    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2019
6 months    ki1148112-LCNI-5           MALAWI                         1              390     811
6 months    ki1148112-LCNI-5           MALAWI                         2+             421     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10834   16715
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+            5881   16715
24 months   ki1000108-IRC              INDIA                          1               89     409
24 months   ki1000108-IRC              INDIA                          2+             320     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              424     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+             155     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             157     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6
24 months   ki1148112-LCNI-5           MALAWI                         1              277     555
24 months   ki1148112-LCNI-5           MALAWI                         2+             278     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5393    8528
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+            3135    8528


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
![](/tmp/250da015-0664-49c8-94f1-5af3dd16a948/495c73c6-7b3e-4019-a05a-38b36ff8774d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -1.1259943   -1.4079072   -0.8440813
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1283311   -1.2636676   -0.9929945
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2922013   -1.4340588   -1.1503437
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7323518   -0.7713024   -0.6934013
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.8018405   -1.0790661   -0.5246148
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1469682   -0.2514508   -0.0424855
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0664905   -0.0275585    0.1605396
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0894105   -0.0061647    0.1849857
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5750753    0.4710593    0.6790913
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5727221   -0.6028582   -0.5425861
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.7959583   -0.9650302   -0.6268864
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8663430   -0.9939553   -0.7387308
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5394711   -0.6593852   -0.4195571
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0193590   -0.0976575    0.1363755
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2665524   -1.3186643   -1.2144406


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2441513   -1.3281130   -1.1601897
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7500100   -0.7678535   -0.7321665
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0801680    0.0273223    0.1330136
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4379655    0.3664533    0.5094777
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5927505   -0.6123059   -0.5731952
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0547297   -0.1370054    0.0275459
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2989071   -1.3223072   -1.2755070


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.1154112   -0.0677188    0.2985412
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1701276   -0.2921105   -0.0481447
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0480499   -0.0665667    0.1626666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0176581   -0.0532537    0.0179374
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.2029107   -0.0304783    0.4362998
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0521225   -0.1145039    0.0102589
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0367283   -0.0878649    0.0144083
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0092425   -0.0850229    0.0665379
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1371098   -0.2133394   -0.0608802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0200284   -0.0421047    0.0020480
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.0501433   -0.0838671    0.1841537
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0265240   -0.1260402    0.0729923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0708790   -0.1438512    0.0020931
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0740888   -0.1571016    0.0089241
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0323547   -0.0791976    0.0144882
