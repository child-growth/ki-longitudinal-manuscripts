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

**Outcome Variable:** dead

## Predictor Variables

**Intervention Variable:** ever_stunted024

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_stunted024    dead   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ----------------  -----  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                     0      103     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     0                     1        0     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                     0      159     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                     1        3     265  dead             
ki0047075b-MAL-ED           INDIA                          0                     0       98     251  dead             
ki0047075b-MAL-ED           INDIA                          0                     1        1     251  dead             
ki0047075b-MAL-ED           INDIA                          1                     0      151     251  dead             
ki0047075b-MAL-ED           INDIA                          1                     1        1     251  dead             
ki0047075b-MAL-ED           PERU                           0                     0      114     303  dead             
ki0047075b-MAL-ED           PERU                           0                     1        1     303  dead             
ki0047075b-MAL-ED           PERU                           1                     0      187     303  dead             
ki0047075b-MAL-ED           PERU                           1                     1        1     303  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     0      138     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     1        0     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     0      175     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     1        1     314  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0       39     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        1     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0      220     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        2     262  dead             
ki1000109-EE                PAKISTAN                       0                     0       41     379  dead             
ki1000109-EE                PAKISTAN                       0                     1        0     379  dead             
ki1000109-EE                PAKISTAN                       1                     0      334     379  dead             
ki1000109-EE                PAKISTAN                       1                     1        4     379  dead             
ki1000304-VITAMIN-A         INDIA                          0                     0     1665    3907  dead             
ki1000304-VITAMIN-A         INDIA                          0                     1       27    3907  dead             
ki1000304-VITAMIN-A         INDIA                          1                     0     2165    3907  dead             
ki1000304-VITAMIN-A         INDIA                          1                     1       50    3907  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                     0      461    1533  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                     1       12    1533  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                     0     1022    1533  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                     1       38    1533  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                     0       71     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                     1        1     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                     0      341     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                     1        5     418  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                     0      391     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                     1        4     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                     0      305     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                     1        0     700  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     1566    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      829    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396  dead             
ki1101329-Keneba            GAMBIA                         0                     0     1393    2915  dead             
ki1101329-Keneba            GAMBIA                         0                     1       28    2915  dead             
ki1101329-Keneba            GAMBIA                         1                     0     1458    2915  dead             
ki1101329-Keneba            GAMBIA                         1                     1       36    2915  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     0     4568    7164  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     1       22    7164  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     0     2557    7164  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     1       17    7164  dead             
ki1113344-GMS-Nepal         NEPAL                          0                     0      249     698  dead             
ki1113344-GMS-Nepal         NEPAL                          0                     1        3     698  dead             
ki1113344-GMS-Nepal         NEPAL                          1                     0      441     698  dead             
ki1113344-GMS-Nepal         NEPAL                          1                     1        5     698  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                     0     7642   14074  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                     1      561   14074  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                     0     5326   14074  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                     1      545   14074  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                     0      902    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                     1       62    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                     0      901    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                     1       66    1931  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     0      615    1204  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     1       19    1204  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     0      550    1204  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     1       20    1204  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                     0    13488   27227  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                     1      253   27227  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                     0    12937   27227  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                     1      549   27227  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                     0     2264    5442  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                     1       15    5442  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                     0     3129    5442  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                     1       34    5442  dead             


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/d252da5e-ffa0-472c-bbe8-bf3c88db4f82/2a266ae0-dfa2-4ff9-be36-a8eae9bfcf4e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d252da5e-ffa0-472c-bbe8-bf3c88db4f82/2a266ae0-dfa2-4ff9-be36-a8eae9bfcf4e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d252da5e-ffa0-472c-bbe8-bf3c88db4f82/2a266ae0-dfa2-4ff9-be36-a8eae9bfcf4e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d252da5e-ffa0-472c-bbe8-bf3c88db4f82/2a266ae0-dfa2-4ff9-be36-a8eae9bfcf4e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0160086   0.0100480   0.0219691
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0225204   0.0163381   0.0287027
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0262402   0.0150429   0.0374375
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0356867   0.0179198   0.0534537
ki1101329-Keneba            GAMBIA         0                    NA                0.0219730   0.0131694   0.0307766
ki1101329-Keneba            GAMBIA         1                    NA                0.0228672   0.0152965   0.0304378
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0048536   0.0028309   0.0068764
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0064733   0.0034028   0.0095439
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0693985   0.0637276   0.0750695
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0909029   0.0834514   0.0983545
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0643285   0.0486463   0.0800106
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0689853   0.0526736   0.0852970
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0292103   0.0159826   0.0424381
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0355279   0.0200241   0.0510317
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0197166   0.0171454   0.0222877
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0397416   0.0360197   0.0434636
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0066801   0.0026707   0.0106895
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0106859   0.0073172   0.0140545


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0197082   0.0153493   0.0240672
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
ki1101329-Keneba            GAMBIA         NA                   NA                0.0219554   0.0166349   0.0272759
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054439   0.0037399   0.0071479
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0785846   0.0741388   0.0830304
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0323920   0.0223878   0.0423963
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0294561   0.0273691   0.0315430
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0090040   0.0064549   0.0115532


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 1.406771   0.8857787   2.234196
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 1.360002   0.6736292   2.745734
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.040693   0.6188456   1.750100
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 1.333705   0.7093035   2.507770
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 1.309869   1.1677152   1.469327
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.072392   0.7637327   1.505794
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 1.216279   0.6481784   2.282295
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 2.015646   1.7168178   2.366487
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.599662   0.8083062   3.165780


### Parameter: PAR


studyid                     country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                 0.0036996   -0.0011694   0.0085687
ki1000304b-SAS-CompFeed     INDIA          0                    NA                 0.0063756   -0.0089958   0.0217469
ki1101329-Keneba            GAMBIA         0                    NA                -0.0000176   -0.0070371   0.0070019
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                 0.0005902   -0.0007574   0.0019379
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                 0.0091861    0.0050820   0.0132902
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                 0.0019584   -0.0094413   0.0133582
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                 0.0031817   -0.0063358   0.0126992
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                 0.0097395    0.0074598   0.0120192
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                 0.0023240   -0.0007724   0.0054203


### Parameter: PAF


studyid                     country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                 0.1877209   -0.0962079   0.3981094
ki1000304b-SAS-CompFeed     INDIA          0                    NA                 0.1954752   -0.3632458   0.5252065
ki1101329-Keneba            GAMBIA         0                    NA                -0.0008017   -0.3774908   0.2728778
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                 0.1084222   -0.1738383   0.3228106
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                 0.1168944    0.0635061   0.1672391
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                 0.0295447   -0.1585271   0.1870855
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                 0.0982245   -0.2478215   0.3483049
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                 0.3306441    0.2528410   0.4003454
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                 0.2581031   -0.1915553   0.5380735
