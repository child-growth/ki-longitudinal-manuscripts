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

agecat      studyid                    country                        nchldlt5    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki1000108-IRC              INDIA                          1               72     343
Birth       ki1000108-IRC              INDIA                          2+             271     343
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               15      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               8      23
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             9384   15688
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+            6304   15688
6 months    ki1000108-IRC              INDIA                          1               88     408
6 months    ki1000108-IRC              INDIA                          2+             320     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              426     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+             156     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+             208     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1390    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2019
6 months    ki1148112-LCNI-5           MALAWI                         1              390     811
6 months    ki1148112-LCNI-5           MALAWI                         2+             421     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10872   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+            5901   16773
24 months   ki1000108-IRC              INDIA                          1               89     409
24 months   ki1000108-IRC              INDIA                          2+             320     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              423     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+             155     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             157     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6
24 months   ki1148112-LCNI-5           MALAWI                         1              277     555
24 months   ki1148112-LCNI-5           MALAWI                         2+             278     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5434    8593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+            3159    8593


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

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/492e85f5-4541-4992-a80b-af5ed2302105/ee4b89ef-3a61-45a6-a13e-351a15ab7e52/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9886806   -1.1955858   -0.7817755
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2029108   -0.7374984    0.3316769
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6826899   -0.7253825   -0.6399973
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.8283428   -1.1011303   -0.5555553
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0110449   -0.1488643    0.1267745
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0762960   -0.0346429    0.1872348
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1455922    0.0245887    0.2665957
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5602926    0.4563124    0.6642729
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5651666   -0.5945675   -0.5357656
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.8081876   -0.9604675   -0.6559076
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6420073   -0.7738657   -0.5101490
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5900675   -0.7296620   -0.4504729
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0595814   -0.0613711    0.1805340
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2455757   -1.2954670   -1.1956844


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.7508696   -1.2358912   -0.2658480
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7238781   -0.7437238   -0.7040324
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0801680    0.0273223    0.1330136
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4379901    0.3664653    0.5095150
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5932472   -0.6127728   -0.5737215
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0548108   -0.1370859    0.0274643
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2972908   -1.3206179   -1.2739638


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0219024   -0.1260498    0.0822449
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5479588   -1.1318762    0.0359586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0411882   -0.0813430   -0.0010335
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.2294131   -0.0030104    0.4618365
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1973257   -0.3041770   -0.0904744
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0465337   -0.1217984    0.0287310
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0654242   -0.1700854    0.0392369
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1223025   -0.1997671   -0.0448379
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0280806   -0.0495856   -0.0065756
24 months   ki1000108-IRC              INDIA                          optimal              observed           0.0623726   -0.0536357    0.1783808
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2459338   -0.3556876   -0.1361800
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0202827   -0.1143152    0.0737497
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1143922   -0.1986346   -0.0301499
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0517151   -0.0958610   -0.0075692
