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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        nchldlt5    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ---------  ----------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                   0       79     291
0-24 months   ki1000108-IRC              INDIA                          1                   1       10     291
0-24 months   ki1000108-IRC              INDIA                          2+                  0      176     291
0-24 months   ki1000108-IRC              INDIA                          2+                  1       26     291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      459     479
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       10     479
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  0        9     479
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  1        1     479
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      504     525
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       16     525
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  0        5     525
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  1        0     525
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1440    1546
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       38    1546
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0       64    1546
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1        4    1546
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      488     970
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1       62     970
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                  0      368     970
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                  1       52     970
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   0      337     399
0-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4     399
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                  0       58     399
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                  1        0     399
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9461   10387
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      596   10387
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  0      309   10387
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  1       21   10387
0-6 months    ki1000108-IRC              INDIA                          1                   0       69     284
0-6 months    ki1000108-IRC              INDIA                          1                   1       16     284
0-6 months    ki1000108-IRC              INDIA                          2+                  0      171     284
0-6 months    ki1000108-IRC              INDIA                          2+                  1       28     284
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      458     477
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        9     477
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                  0        9     477
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                  1        1     477
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      193     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1        4     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                  0        1     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                  1        0     198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1372    1472
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       36    1472
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0       61    1472
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1        3    1472
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0       28      32
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1        1      32
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                  0        2      32
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                  1        1      32
6-24 months   ki1000108-IRC              INDIA                          1                   0       79     291
6-24 months   ki1000108-IRC              INDIA                          1                   1       10     291
6-24 months   ki1000108-IRC              INDIA                          2+                  0      176     291
6-24 months   ki1000108-IRC              INDIA                          2+                  1       26     291
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      459     479
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       10     479
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  0        9     479
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                  1        1     479
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      504     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       16     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  0        5     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                  1        0     525
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0     1440    1546
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       38    1546
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  0       64    1546
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                  1        4    1546
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   0      488     970
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                   1       62     970
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                  0      368     970
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                  1       52     970
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   0      337     399
6-24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4     399
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                  0       58     399
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                  1        0     399
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     9461   10387
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      596   10387
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  0      309   10387
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                  1       21   10387


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/5bf93425-1b38-4bc7-8d70-d842dfc9ad60/59ce8b92-274c-4c06-8673-2ae05a955794/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5bf93425-1b38-4bc7-8d70-d842dfc9ad60/59ce8b92-274c-4c06-8673-2ae05a955794/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5bf93425-1b38-4bc7-8d70-d842dfc9ad60/59ce8b92-274c-4c06-8673-2ae05a955794/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5bf93425-1b38-4bc7-8d70-d842dfc9ad60/59ce8b92-274c-4c06-8673-2ae05a955794/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC          INDIA          1                    NA                0.1040480   0.0365517   0.1715443
0-24 months   ki1000108-IRC          INDIA          2+                   NA                0.1263298   0.0799713   0.1726882
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                0.1118178   0.0649173   0.1587182
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   NA                0.1218682   0.0741223   0.1696141
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                0.0591785   0.0537564   0.0646006
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     2+                   NA                0.0683076   0.0407875   0.0958277
0-6 months    ki1000108-IRC          INDIA          1                    NA                0.2048057   0.1127623   0.2968491
0-6 months    ki1000108-IRC          INDIA          2+                   NA                0.1410127   0.0916729   0.1903525
6-24 months   ki1000108-IRC          INDIA          1                    NA                0.1059732   0.0363024   0.1756441
6-24 months   ki1000108-IRC          INDIA          2+                   NA                0.1275111   0.0808184   0.1742039
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                0.1081850   0.0647697   0.1516002
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   NA                0.1208736   0.0707897   0.1709575
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                0.0592065   0.0537822   0.0646307
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     2+                   NA                0.0654508   0.0384059   0.0924958


### Parameter: E(Y)


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC          INDIA          NA                   NA                0.1237113   0.0858167   0.1616060
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   NA                   NA                0.1175258   0.0808822   0.1541694
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     NA                   NA                0.0594012   0.0540955   0.0647069
0-6 months    ki1000108-IRC          INDIA          NA                   NA                0.1549296   0.1127727   0.1970865
6-24 months   ki1000108-IRC          INDIA          NA                   NA                0.1237113   0.0858167   0.1616060
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   NA                   NA                0.1175258   0.0808822   0.1541694
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     NA                   NA                0.0594012   0.0540955   0.0647069


### Parameter: RR


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC          INDIA          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC          INDIA          2+                   1                 1.2141490   0.5753628   2.562136
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   1                 1.0898824   0.6603707   1.798753
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     2+                   1                 1.1542635   0.7627395   1.746762
0-6 months    ki1000108-IRC          INDIA          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC          INDIA          2+                   1                 0.6885194   0.3889907   1.218690
6-24 months   ki1000108-IRC          INDIA          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC          INDIA          2+                   1                 1.2032393   0.5662787   2.556665
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   1                 1.1172866   0.6666198   1.872626
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     2+                   1                 1.1054671   0.7229306   1.690422


### Parameter: PAR


agecat        studyid                country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC          INDIA          1                    NA                 0.0196633   -0.0400833   0.0794100
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0057080   -0.0246192   0.0360352
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0002227   -0.0006487   0.0010940
0-6 months    ki1000108-IRC          INDIA          1                    NA                -0.0498761   -0.1264344   0.0266821
6-24 months   ki1000108-IRC          INDIA          1                    NA                 0.0177381   -0.0438851   0.0793613
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0093408   -0.0187043   0.0373859
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0001947   -0.0006772   0.0010666


### Parameter: PAF


agecat        studyid                country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC          INDIA          1                    NA                 0.1589453   -0.4892651   0.5250188
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0485682   -0.2478845   0.2745943
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0037483   -0.0110509   0.0183309
0-6 months    ki1000108-IRC          INDIA          1                    NA                -0.3219277   -0.9159359   0.0879169
6-24 months   ki1000108-IRC          INDIA          1                    NA                 0.1433831   -0.5293235   0.5201849
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0794786   -0.1907796   0.2883993
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0032776   -0.0115278   0.0178664
