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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            13986   22431
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+            8445   22431
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10887   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+            5913   16800
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
![](/tmp/646eb0a9-aa6d-41b9-8482-b06bdd4bb750/be20583f-7a93-400b-8998-af4470a86fed/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.5850587   -0.9099760   -0.2601413
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6387016   -0.7895179   -0.4878853
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9148953   -1.0273488   -0.8024419
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5244412   -1.5648102   -1.4840721
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.3942826   -1.5941965   -1.1943687
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0599580   -1.1577408   -0.9621752
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1149131   -1.2020731   -1.0277531
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5090314   -0.5692113   -0.4488515
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6609440   -1.7630952   -1.5587928
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3444035   -1.3877199   -1.3010871
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6985981   -1.9001870   -1.4970092
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5572370   -1.6713951   -1.4430789
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3777546   -1.4812568   -1.2742524
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.8276440   -1.9415969   -1.7136910
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9678370   -2.0039620   -1.9317120


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5897031   -1.6089786   -1.5704276
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5442232   -0.5932373   -0.4952090
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6431566   -1.7128296   -1.5734836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3131375   -1.3362767   -1.2899983
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8806830   -1.9625334   -1.7988326
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0134284   -2.0411019   -1.9857549


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.2770174   -0.0089850    0.5630199
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2464005   -0.3856558   -0.1071451
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0054008   -0.0933303    0.1041319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0652619   -0.1034899   -0.0270340
6 months    ki1000108-IRC              INDIA                          optimal              observed           0.1598764    0.0128465    0.3069063
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0317335   -0.0914426    0.0279756
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0837652   -0.1338826   -0.0336478
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0351918   -0.0724504    0.0020669
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0177874   -0.0575513    0.0931260
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0312660   -0.0064057    0.0689377
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1001794   -0.2756980    0.0753392
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0451851   -0.1186086    0.0282383
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0635100   -0.1232454   -0.0037746
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0530390   -0.1327381    0.0266601
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0455914   -0.0684953   -0.0226875
