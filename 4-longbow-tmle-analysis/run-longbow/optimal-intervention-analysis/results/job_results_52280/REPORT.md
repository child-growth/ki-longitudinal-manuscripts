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



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/c7c87ea0-c413-457f-989f-98880bc7fb2a/e3a070fc-c217-41c4-99c6-90644b7fd314/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.4148550   -0.7643065   -0.0654035
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7146908   -0.8629965   -0.5663850
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8750420   -0.9946782   -0.7554057
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1094562   -1.1648897   -1.0540226
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.3376057   -1.5054763   -1.1697351
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0589857   -1.1638382   -0.9541331
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1470088   -1.2366807   -1.0573370
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5183559   -0.5782465   -0.4584653
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6863125   -1.7868855   -1.5857395
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3871531   -1.4314752   -1.3428311
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6597643   -1.8727119   -1.4468167
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5296379   -1.6463194   -1.4129565
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3694256   -1.4754245   -1.2634267
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8490659   -1.9665145   -1.7316173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9741049   -2.0102035   -1.9380063


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1729473   -1.2010166   -1.1448781
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5442232   -0.5932373   -0.4952090
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6431566   -1.7128296   -1.5734836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3356337   -1.3587165   -1.3125509
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8806830   -1.9625334   -1.7988326
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0193641   -2.0469959   -1.9917323


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.1068138   -0.1899635    0.4035910
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1704113   -0.3040925   -0.0367300
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0344526   -0.1351028    0.0661977
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0634912   -0.1142960   -0.0126864
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1031994   -0.0255569    0.2319558
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0327058   -0.1019463    0.0365346
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0516695   -0.1026365   -0.0007025
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0258673   -0.0631377    0.0114031
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0431559   -0.0309477    0.1172596
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0515194    0.0126658    0.0903730
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1390132   -0.3246527    0.0466263
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0727842   -0.1565661    0.0109977
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0718390   -0.1359206   -0.0077575
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0316171   -0.1155816    0.0523475
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0452592   -0.0689144   -0.0216040
