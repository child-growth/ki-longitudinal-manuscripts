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

**Outcome Variable:** dead0plus

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

studyid                     country                        ever_stunted024    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                          0      103     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                          1        0     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                          0      159     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                          1        3     265  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                          0       98     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                          1        1     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                          0      151     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                          1        1     251  dead0plus        
ki0047075b-MAL-ED           PERU                           0                          0      114     303  dead0plus        
ki0047075b-MAL-ED           PERU                           0                          1        1     303  dead0plus        
ki0047075b-MAL-ED           PERU                           1                          0      187     303  dead0plus        
ki0047075b-MAL-ED           PERU                           1                          1        1     303  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          0      138     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          1        0     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          0      175     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          1        1     314  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          0       39     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          1        1     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          0      220     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          1        2     262  dead0plus        
ki1000109-EE                PAKISTAN                       0                          0       41     379  dead0plus        
ki1000109-EE                PAKISTAN                       0                          1        0     379  dead0plus        
ki1000109-EE                PAKISTAN                       1                          0      334     379  dead0plus        
ki1000109-EE                PAKISTAN                       1                          1        4     379  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                          0     1665    3907  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                          1       27    3907  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                          0     2165    3907  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                          1       50    3907  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                          0      461    1533  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                          1       12    1533  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                          0     1022    1533  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                          1       38    1533  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                          0       71     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                          1        1     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                          0      341     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                          1        5     418  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                          0      391     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                          1        4     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                          0      304     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                          1        1     700  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     1566    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      829    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2396  dead0plus        
ki1101329-Keneba            GAMBIA                         0                          0     1384    2915  dead0plus        
ki1101329-Keneba            GAMBIA                         0                          1       37    2915  dead0plus        
ki1101329-Keneba            GAMBIA                         1                          0     1432    2915  dead0plus        
ki1101329-Keneba            GAMBIA                         1                          1       62    2915  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          0     4565    7164  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          1       25    7164  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          0     2551    7164  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          1       23    7164  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                          0      249     698  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                          1        3     698  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                          0      441     698  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                          1        5     698  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                          0     7637   14074  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                          1      566   14074  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                          0     5321   14074  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                          1      550   14074  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                          0      902    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                          1       62    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                          0      901    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                          1       66    1931  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          0      614    1204  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          1       20    1204  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          0      547    1204  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          1       23    1204  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                          0    13473   27227  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                          1      268   27227  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                          0    12911   27227  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                          1      575   27227  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                          0     2264    5442  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                          1       15    5442  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                          0     3128    5442  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                          1       35    5442  dead0plus        


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
![](/tmp/0d323f08-dd43-41b3-9c74-019de1da489c/9419bb22-197b-4ca4-a732-75ae293eb29b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0d323f08-dd43-41b3-9c74-019de1da489c/9419bb22-197b-4ca4-a732-75ae293eb29b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0d323f08-dd43-41b3-9c74-019de1da489c/9419bb22-197b-4ca4-a732-75ae293eb29b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0d323f08-dd43-41b3-9c74-019de1da489c/9419bb22-197b-4ca4-a732-75ae293eb29b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0159300   0.0099753   0.0218846
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0225478   0.0163550   0.0287407
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0262402   0.0150429   0.0374375
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0356867   0.0179198   0.0534537
ki1101329-Keneba            GAMBIA         0                    NA                0.0280627   0.0187745   0.0373509
ki1101329-Keneba            GAMBIA         1                    NA                0.0393751   0.0295293   0.0492209
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0055151   0.0033560   0.0076742
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0088292   0.0052122   0.0124463
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0700089   0.0643319   0.0756859
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0914978   0.0839865   0.0990091
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0651143   0.0492593   0.0809692
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0685856   0.0523942   0.0847770
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0295052   0.0164847   0.0425256
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0432265   0.0257532   0.0606998
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0207503   0.0181360   0.0233645
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0419828   0.0382219   0.0457437
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0066830   0.0026625   0.0107034
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0110130   0.0075599   0.0144661


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0197082   0.0153493   0.0240672
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
ki1101329-Keneba            GAMBIA         NA                   NA                0.0339623   0.0273857   0.0405388
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067002   0.0048109   0.0085894
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0792952   0.0748310   0.0837593
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0357143   0.0252276   0.0462010
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0309619   0.0288229   0.0331009
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0091878   0.0066008   0.0117748


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 1.415434   0.8900604   2.250917
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 1.360002   0.6736292   2.745734
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.403111   0.9265884   2.124699
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 1.600910   0.9084000   2.821350
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 1.306946   1.1655161   1.465537
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.053311   0.7503054   1.478684
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 1.465049   0.8057349   2.663866
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 2.023242   1.7348796   2.359534
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.647918   0.8323023   3.262798


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0037782   -0.0010866   0.0086431
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0063756   -0.0089958   0.0217469
ki1101329-Keneba            GAMBIA         0                    NA                0.0058996   -0.0016910   0.0134901
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0011850   -0.0003457   0.0027158
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0092863    0.0051820   0.0133905
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0011726   -0.0103289   0.0126742
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0062091   -0.0035460   0.0159643
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0102116    0.0078924   0.0125309
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0025048   -0.0006337   0.0056434


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.1917085   -0.0921111   0.4017686
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.1954752   -0.3632458   0.5252065
ki1101329-Keneba            GAMBIA         0                    NA                0.1737091   -0.0797962   0.3676986
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.1768677   -0.0793447   0.3722610
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.1171102    0.0642273   0.1670046
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0176903   -0.1720632   0.1767233
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.1738552   -0.1441069   0.4034515
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.3298130    0.2547918   0.3972818
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.2726245   -0.1742406   0.5494320
