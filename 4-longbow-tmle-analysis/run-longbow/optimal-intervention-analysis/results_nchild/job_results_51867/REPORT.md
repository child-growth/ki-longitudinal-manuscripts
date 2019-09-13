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
Birth       ki1000108-IRC              INDIA                          1               84     388
Birth       ki1000108-IRC              INDIA                          2+             304     388
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               18      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               9      27
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            12104   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+            7487   19591
6 months    ki1000108-IRC              INDIA                          1               89     407
6 months    ki1000108-IRC              INDIA                          2+             318     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              426     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+             157     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+             208     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1391    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2020
6 months    ki1148112-LCNI-5           MALAWI                         1              390     811
6 months    ki1148112-LCNI-5           MALAWI                         2+             421     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10887   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+            5913   16800
24 months   ki1000108-IRC              INDIA                          1               89     409
24 months   ki1000108-IRC              INDIA                          2+             320     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              423     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+             154     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+             157     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6
24 months   ki1148112-LCNI-5           MALAWI                         1              283     571
24 months   ki1148112-LCNI-5           MALAWI                         2+             288     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5454    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+            3168    8622


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
![](/tmp/55abcb04-c4b4-4492-b41a-f0cf76dff314/cc7b9451-bf0f-4f13-8f8b-076b79724154/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.4009586   -0.7658894   -0.0360278
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.7022365   -1.4906450    0.0861719
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5100676   -1.5536145   -1.4665206
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.3283683   -1.5248799   -1.1318567
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9004340   -1.0310109   -0.7698571
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1363294   -1.2230992   -1.0495596
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5366897   -0.6115884   -0.4617909
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6206240   -1.7215219   -1.5197261
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3353652   -1.3734305   -1.2972999
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6936151   -1.8989632   -1.4882670
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.4815289   -1.6168928   -1.3461650
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3665492   -1.4726774   -1.2604210
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8296362   -1.9479725   -1.7112999
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9658949   -2.0022458   -1.9295440


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1100000   -1.5086894   -0.7113106
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5750396   -1.5948141   -1.5552650
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5442232   -0.5932373   -0.4952090
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6431566   -1.7128296   -1.5734836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3131375   -1.3362767   -1.2899983
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8698249   -1.9516088   -1.7880409
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0124252   -2.0401279   -1.9847225


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.0929174   -0.2228934    0.4087282
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4077635   -1.0481661    0.2326392
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0649720   -0.1068920   -0.0230520
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.0939621   -0.0691009    0.2570250
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1866701   -0.2907997   -0.0825404
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0623489   -0.1112690   -0.0134288
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0075335   -0.0618525    0.0467855
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0225326   -0.0964082    0.0513429
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0222277   -0.0081855    0.0526409
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0888625   -0.2691462    0.0914213
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1045889   -0.2104099    0.0012320
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0629839   -0.1259153   -0.0000525
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0401887   -0.1233597    0.0429824
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0465303   -0.0700741   -0.0229864
