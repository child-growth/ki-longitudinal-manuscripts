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
Birth       ki1000108-IRC              INDIA                          1               72     245
Birth       ki1000108-IRC              INDIA                          2+             173     245
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               15      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               1      16
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             9384    9772
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+             388    9772
6 months    ki1000108-IRC              INDIA                          1               88     289
6 months    ki1000108-IRC              INDIA                          2+             201     289
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              426     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               9     435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               5     512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1390    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+              62    1452
6 months    ki1148112-LCNI-5           MALAWI                         1              390     453
6 months    ki1148112-LCNI-5           MALAWI                         2+              63     453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10872   11234
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+             362   11234
24 months   ki1000108-IRC              INDIA                          1               89     290
24 months   ki1000108-IRC              INDIA                          2+             201     290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              423     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               8     431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               4     361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0       5
24 months   ki1148112-LCNI-5           MALAWI                         1              277     321
24 months   ki1148112-LCNI-5           MALAWI                         2+              44     321
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5434    5654
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+             220    5654


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
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/679ed833-d514-4446-b1b7-5a8d5f9d1001/f528d783-c65f-4ba4-9bf0-2d44f2de1ed6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9699321   -1.2233078   -0.7165564
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6611831   -0.7267576   -0.5956086
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.7484118   -0.9898789   -0.5069448
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1362946   -0.2362773   -0.0363120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0648927   -0.0302799    0.1600653
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0076302   -0.1145665    0.1298268
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.6062536    0.4358993    0.7766079
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5613219   -0.5877137   -0.5349300
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.6769968   -0.8468428   -0.5071508
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0516057   -1.1564293   -0.9467822
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0614627   -0.1148515    0.2377769
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5350877   -1.5879936   -1.4821818


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0094286   -1.2311616   -0.7876956
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7487659   -0.7726563   -0.7248754
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.6243253   -0.7833786   -0.4652719
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1469923   -0.2464550   -0.0475297
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0572461   -0.0359459    0.1504381
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0817637    0.0194495    0.1440778
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4996468    0.4052394    0.5940542
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5754055   -0.5983356   -0.5524753
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7841264   -0.8946395   -0.6736134
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8670766   -0.9643669   -0.7697862
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0275234   -0.1369083    0.0818616
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3091670   -1.3388782   -1.2794557


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0394965   -0.1904286    0.1114356
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0875827   -0.1541642   -0.0210013
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1240866   -0.0916152    0.3397884
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0106977   -0.0307447    0.0093492
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0076466   -0.0166392    0.0013460
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0741335   -0.0317759    0.1800429
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1066068   -0.2504892    0.0372756
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0140836   -0.0272940   -0.0008732
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1071296   -0.2418598    0.0276006
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1845292    0.1132848    0.2557735
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0889861   -0.2285440    0.0505719
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.2259207    0.1765864    0.2752551
