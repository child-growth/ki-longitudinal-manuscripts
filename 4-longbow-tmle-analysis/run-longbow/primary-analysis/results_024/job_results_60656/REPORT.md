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

studyid           country                        ever_stunted024    dead   n_cell       n
----------------  -----------------------------  ----------------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                     0     4568    7164
Burkina Faso Zn   BURKINA FASO                   0                     1       22    7164
Burkina Faso Zn   BURKINA FASO                   1                     0     2557    7164
Burkina Faso Zn   BURKINA FASO                   1                     1       17    7164
EE                PAKISTAN                       0                     0       41     379
EE                PAKISTAN                       0                     1        0     379
EE                PAKISTAN                       1                     0      334     379
EE                PAKISTAN                       1                     1        4     379
GMS-Nepal         NEPAL                          0                     0      249     698
GMS-Nepal         NEPAL                          0                     1        3     698
GMS-Nepal         NEPAL                          1                     0      441     698
GMS-Nepal         NEPAL                          1                     1        5     698
iLiNS-DOSE        MALAWI                         0                     0      902    1931
iLiNS-DOSE        MALAWI                         0                     1       62    1931
iLiNS-DOSE        MALAWI                         1                     0      901    1931
iLiNS-DOSE        MALAWI                         1                     1       66    1931
iLiNS-DYAD-M      MALAWI                         0                     0      613    1204
iLiNS-DYAD-M      MALAWI                         0                     1       19    1204
iLiNS-DYAD-M      MALAWI                         1                     0      552    1204
iLiNS-DYAD-M      MALAWI                         1                     1       20    1204
JiVitA-3          BANGLADESH                     0                     0    13488   27227
JiVitA-3          BANGLADESH                     0                     1      253   27227
JiVitA-3          BANGLADESH                     1                     0    12937   27227
JiVitA-3          BANGLADESH                     1                     1      549   27227
JiVitA-4          BANGLADESH                     0                     0     2264    5442
JiVitA-4          BANGLADESH                     0                     1       15    5442
JiVitA-4          BANGLADESH                     1                     0     3129    5442
JiVitA-4          BANGLADESH                     1                     1       34    5442
Keneba            GAMBIA                         0                     0     1393    2915
Keneba            GAMBIA                         0                     1       28    2915
Keneba            GAMBIA                         1                     0     1458    2915
Keneba            GAMBIA                         1                     1       36    2915
MAL-ED            BANGLADESH                     0                     0      103     265
MAL-ED            BANGLADESH                     0                     1        0     265
MAL-ED            BANGLADESH                     1                     0      159     265
MAL-ED            BANGLADESH                     1                     1        3     265
MAL-ED            INDIA                          0                     0       98     251
MAL-ED            INDIA                          0                     1        1     251
MAL-ED            INDIA                          1                     0      151     251
MAL-ED            INDIA                          1                     1        1     251
MAL-ED            PERU                           0                     0      114     303
MAL-ED            PERU                           0                     1        1     303
MAL-ED            PERU                           1                     0      187     303
MAL-ED            PERU                           1                     1        1     303
MAL-ED            SOUTH AFRICA                   0                     0      138     314
MAL-ED            SOUTH AFRICA                   0                     1        0     314
MAL-ED            SOUTH AFRICA                   1                     0      175     314
MAL-ED            SOUTH AFRICA                   1                     1        1     314
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     0       39     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     1        1     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     0      220     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     1        2     262
PROVIDE           BANGLADESH                     0                     0      391     700
PROVIDE           BANGLADESH                     0                     1        4     700
PROVIDE           BANGLADESH                     1                     0      305     700
PROVIDE           BANGLADESH                     1                     1        0     700
SAS-CompFeed      INDIA                          0                     0      461    1533
SAS-CompFeed      INDIA                          0                     1       12    1533
SAS-CompFeed      INDIA                          1                     0     1022    1533
SAS-CompFeed      INDIA                          1                     1       38    1533
SAS-FoodSuppl     INDIA                          0                     0       71     418
SAS-FoodSuppl     INDIA                          0                     1        1     418
SAS-FoodSuppl     INDIA                          1                     0      341     418
SAS-FoodSuppl     INDIA                          1                     1        5     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     1566    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      829    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396
VITAMIN-A         INDIA                          0                     0     1665    3907
VITAMIN-A         INDIA                          0                     1       27    3907
VITAMIN-A         INDIA                          1                     0     2165    3907
VITAMIN-A         INDIA                          1                     1       50    3907
ZVITAMBO          ZIMBABWE                       0                     0     7642   14074
ZVITAMBO          ZIMBABWE                       0                     1      561   14074
ZVITAMBO          ZIMBABWE                       1                     0     5326   14074
ZVITAMBO          ZIMBABWE                       1                     1      545   14074


The following strata were considered:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/f6ef03bc-2cdc-452c-8cab-9e1fb6380a67/da26a2ae-3dde-4071-a66d-0b734f0cdfdf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f6ef03bc-2cdc-452c-8cab-9e1fb6380a67/da26a2ae-3dde-4071-a66d-0b734f0cdfdf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f6ef03bc-2cdc-452c-8cab-9e1fb6380a67/da26a2ae-3dde-4071-a66d-0b734f0cdfdf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f6ef03bc-2cdc-452c-8cab-9e1fb6380a67/da26a2ae-3dde-4071-a66d-0b734f0cdfdf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0048639   0.0028406   0.0068871
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0064890   0.0034116   0.0095665
iLiNS-DOSE        MALAWI         0                    NA                0.0641836   0.0485381   0.0798291
iLiNS-DOSE        MALAWI         1                    NA                0.0688712   0.0526624   0.0850800
iLiNS-DYAD-M      MALAWI         0                    NA                0.0298143   0.0164967   0.0431319
iLiNS-DYAD-M      MALAWI         1                    NA                0.0354142   0.0203081   0.0505202
JiVitA-3          BANGLADESH     0                    NA                0.0196171   0.0170951   0.0221391
JiVitA-3          BANGLADESH     1                    NA                0.0394830   0.0357959   0.0431700
JiVitA-4          BANGLADESH     0                    NA                0.0066707   0.0026952   0.0106461
JiVitA-4          BANGLADESH     1                    NA                0.0106877   0.0073177   0.0140577
Keneba            GAMBIA         0                    NA                0.0216120   0.0131128   0.0301111
Keneba            GAMBIA         1                    NA                0.0229609   0.0152626   0.0306591
SAS-CompFeed      INDIA          0                    NA                0.0262402   0.0150429   0.0374375
SAS-CompFeed      INDIA          1                    NA                0.0356867   0.0179198   0.0534537
VITAMIN-A         INDIA          0                    NA                0.0159693   0.0100100   0.0219286
VITAMIN-A         INDIA          1                    NA                0.0225075   0.0163258   0.0286892
ZVITAMBO          ZIMBABWE       0                    NA                0.0690903   0.0634526   0.0747280
ZVITAMBO          ZIMBABWE       1                    NA                0.0914418   0.0839069   0.0989767


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054439   0.0037399   0.0071479
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0323920   0.0223878   0.0423963
JiVitA-3          BANGLADESH     NA                   NA                0.0294561   0.0273691   0.0315430
JiVitA-4          BANGLADESH     NA                   NA                0.0090040   0.0064549   0.0115532
Keneba            GAMBIA         NA                   NA                0.0219554   0.0166349   0.0272759
SAS-CompFeed      INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A         INDIA          NA                   NA                0.0197082   0.0153493   0.0240672
ZVITAMBO          ZIMBABWE       NA                   NA                0.0785846   0.0741388   0.0830304


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.334126   0.7099120   2.507203
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.073034   0.7646063   1.505876
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.187823   0.6400921   2.204252
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 2.012682   1.7179240   2.358014
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.602195   0.8125535   3.159212
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.062415   0.6335340   1.781633
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 1.360002   0.6736292   2.745734
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.409423   0.8867453   2.240186
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.323511   1.1795647   1.485024


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005800   -0.0007680   0.0019280
iLiNS-DOSE        MALAWI         0                    NA                0.0021033   -0.0092447   0.0134513
iLiNS-DYAD-M      MALAWI         0                    NA                0.0025777   -0.0069854   0.0121408
JiVitA-3          BANGLADESH     0                    NA                0.0098390    0.0076031   0.0120749
JiVitA-4          BANGLADESH     0                    NA                0.0023334   -0.0007363   0.0054030
Keneba            GAMBIA         0                    NA                0.0003435   -0.0063778   0.0070647
SAS-CompFeed      INDIA          0                    NA                0.0063756   -0.0089958   0.0217469
VITAMIN-A         INDIA          0                    NA                0.0037389   -0.0011303   0.0086082
ZVITAMBO          ZIMBABWE       0                    NA                0.0094943    0.0054194   0.0135692


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1065466   -0.1757305   0.3210527
iLiNS-DOSE        MALAWI         0                    NA                0.0317303   -0.1554495   0.1885874
iLiNS-DYAD-M      MALAWI         0                    NA                0.0795784   -0.2673944   0.3315609
JiVitA-3          BANGLADESH     0                    NA                0.3340213    0.2581001   0.4021732
JiVitA-4          BANGLADESH     0                    NA                0.2591486   -0.1853396   0.5369590
Keneba            GAMBIA         0                    NA                0.0156431   -0.3433792   0.2787156
SAS-CompFeed      INDIA          0                    NA                0.1954752   -0.3632458   0.5252065
VITAMIN-A         INDIA          0                    NA                0.1897140   -0.0943182   0.4000252
ZVITAMBO          ZIMBABWE       0                    NA                0.1208164    0.0678442   0.1707784
