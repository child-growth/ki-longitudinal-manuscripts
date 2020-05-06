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

studyid           country                        ever_stunted024    dead   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  -----  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                     0     4568    7164  dead             
Burkina Faso Zn   BURKINA FASO                   0                     1       22    7164  dead             
Burkina Faso Zn   BURKINA FASO                   1                     0     2557    7164  dead             
Burkina Faso Zn   BURKINA FASO                   1                     1       17    7164  dead             
EE                PAKISTAN                       0                     0       41     379  dead             
EE                PAKISTAN                       0                     1        0     379  dead             
EE                PAKISTAN                       1                     0      334     379  dead             
EE                PAKISTAN                       1                     1        4     379  dead             
GMS-Nepal         NEPAL                          0                     0      249     698  dead             
GMS-Nepal         NEPAL                          0                     1        3     698  dead             
GMS-Nepal         NEPAL                          1                     0      441     698  dead             
GMS-Nepal         NEPAL                          1                     1        5     698  dead             
iLiNS-DOSE        MALAWI                         0                     0      902    1931  dead             
iLiNS-DOSE        MALAWI                         0                     1       62    1931  dead             
iLiNS-DOSE        MALAWI                         1                     0      901    1931  dead             
iLiNS-DOSE        MALAWI                         1                     1       66    1931  dead             
iLiNS-DYAD-M      MALAWI                         0                     0      613    1204  dead             
iLiNS-DYAD-M      MALAWI                         0                     1       19    1204  dead             
iLiNS-DYAD-M      MALAWI                         1                     0      552    1204  dead             
iLiNS-DYAD-M      MALAWI                         1                     1       20    1204  dead             
JiVitA-3          BANGLADESH                     0                     0    13488   27227  dead             
JiVitA-3          BANGLADESH                     0                     1      253   27227  dead             
JiVitA-3          BANGLADESH                     1                     0    12937   27227  dead             
JiVitA-3          BANGLADESH                     1                     1      549   27227  dead             
JiVitA-4          BANGLADESH                     0                     0     2264    5442  dead             
JiVitA-4          BANGLADESH                     0                     1       15    5442  dead             
JiVitA-4          BANGLADESH                     1                     0     3129    5442  dead             
JiVitA-4          BANGLADESH                     1                     1       34    5442  dead             
Keneba            GAMBIA                         0                     0     1393    2915  dead             
Keneba            GAMBIA                         0                     1       28    2915  dead             
Keneba            GAMBIA                         1                     0     1458    2915  dead             
Keneba            GAMBIA                         1                     1       36    2915  dead             
MAL-ED            BANGLADESH                     0                     0      103     265  dead             
MAL-ED            BANGLADESH                     0                     1        0     265  dead             
MAL-ED            BANGLADESH                     1                     0      159     265  dead             
MAL-ED            BANGLADESH                     1                     1        3     265  dead             
MAL-ED            INDIA                          0                     0       98     251  dead             
MAL-ED            INDIA                          0                     1        1     251  dead             
MAL-ED            INDIA                          1                     0      151     251  dead             
MAL-ED            INDIA                          1                     1        1     251  dead             
MAL-ED            PERU                           0                     0      114     303  dead             
MAL-ED            PERU                           0                     1        1     303  dead             
MAL-ED            PERU                           1                     0      187     303  dead             
MAL-ED            PERU                           1                     1        1     303  dead             
MAL-ED            SOUTH AFRICA                   0                     0      138     314  dead             
MAL-ED            SOUTH AFRICA                   0                     1        0     314  dead             
MAL-ED            SOUTH AFRICA                   1                     0      175     314  dead             
MAL-ED            SOUTH AFRICA                   1                     1        1     314  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     0       39     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                     1        1     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     0      220     262  dead             
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                     1        2     262  dead             
PROVIDE           BANGLADESH                     0                     0      391     700  dead             
PROVIDE           BANGLADESH                     0                     1        4     700  dead             
PROVIDE           BANGLADESH                     1                     0      305     700  dead             
PROVIDE           BANGLADESH                     1                     1        0     700  dead             
SAS-CompFeed      INDIA                          0                     0      461    1533  dead             
SAS-CompFeed      INDIA                          0                     1       12    1533  dead             
SAS-CompFeed      INDIA                          1                     0     1022    1533  dead             
SAS-CompFeed      INDIA                          1                     1       38    1533  dead             
SAS-FoodSuppl     INDIA                          0                     0       71     418  dead             
SAS-FoodSuppl     INDIA                          0                     1        1     418  dead             
SAS-FoodSuppl     INDIA                          1                     0      341     418  dead             
SAS-FoodSuppl     INDIA                          1                     1        5     418  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     1566    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      829    2396  dead             
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396  dead             
VITAMIN-A         INDIA                          0                     0     1665    3907  dead             
VITAMIN-A         INDIA                          0                     1       27    3907  dead             
VITAMIN-A         INDIA                          1                     0     2165    3907  dead             
VITAMIN-A         INDIA                          1                     1       50    3907  dead             
ZVITAMBO          ZIMBABWE                       0                     0     7642   14074  dead             
ZVITAMBO          ZIMBABWE                       0                     1      561   14074  dead             
ZVITAMBO          ZIMBABWE                       1                     0     5326   14074  dead             
ZVITAMBO          ZIMBABWE                       1                     1      545   14074  dead             


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
![](/tmp/5806e3e1-745c-44be-9dc1-bf96b2e103d3/ad1f6120-1e59-47d0-8da5-31e4b3d7ce5e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5806e3e1-745c-44be-9dc1-bf96b2e103d3/ad1f6120-1e59-47d0-8da5-31e4b3d7ce5e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5806e3e1-745c-44be-9dc1-bf96b2e103d3/ad1f6120-1e59-47d0-8da5-31e4b3d7ce5e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5806e3e1-745c-44be-9dc1-bf96b2e103d3/ad1f6120-1e59-47d0-8da5-31e4b3d7ce5e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0048666   0.0028429   0.0068904
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0064426   0.0033742   0.0095109
iLiNS-DOSE        MALAWI         0                    NA                0.0651682   0.0492729   0.0810635
iLiNS-DOSE        MALAWI         1                    NA                0.0682839   0.0521967   0.0843711
iLiNS-DYAD-M      MALAWI         0                    NA                0.0294351   0.0161077   0.0427625
iLiNS-DYAD-M      MALAWI         1                    NA                0.0349610   0.0198910   0.0500310
JiVitA-3          BANGLADESH     0                    NA                0.0199229   0.0173407   0.0225051
JiVitA-3          BANGLADESH     1                    NA                0.0391512   0.0355414   0.0427610
JiVitA-4          BANGLADESH     0                    NA                0.0067034   0.0027241   0.0106826
JiVitA-4          BANGLADESH     1                    NA                0.0106899   0.0073202   0.0140596
Keneba            GAMBIA         0                    NA                0.0215532   0.0130679   0.0300384
Keneba            GAMBIA         1                    NA                0.0234029   0.0155888   0.0312171
SAS-CompFeed      INDIA          0                    NA                0.0262402   0.0150429   0.0374375
SAS-CompFeed      INDIA          1                    NA                0.0356867   0.0179198   0.0534537
VITAMIN-A         INDIA          0                    NA                0.0160317   0.0100678   0.0219955
VITAMIN-A         INDIA          1                    NA                0.0226195   0.0164315   0.0288075
ZVITAMBO          ZIMBABWE       0                    NA                0.0693816   0.0637204   0.0750428
ZVITAMBO          ZIMBABWE       1                    NA                0.0904858   0.0830485   0.0979230


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
Burkina Faso Zn   BURKINA FASO   1                    0                 1.323819   0.7034647   2.491237
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.047810   0.7465614   1.470616
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.187731   0.6353976   2.220193
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.965134   1.6763544   2.303661
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.594709   0.8104826   3.137755
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.085824   0.6479400   1.819634
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 1.360002   0.6736292   2.745734
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.410929   0.8891089   2.239006
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 1.304176   1.1625877   1.463008


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005772   -0.0007709   0.0019254
iLiNS-DOSE        MALAWI         0                    NA                0.0011187   -0.0104393   0.0126767
iLiNS-DYAD-M      MALAWI         0                    NA                0.0029569   -0.0066097   0.0125235
JiVitA-3          BANGLADESH     0                    NA                0.0095331    0.0072441   0.0118222
JiVitA-4          BANGLADESH     0                    NA                0.0023007   -0.0007720   0.0053734
Keneba            GAMBIA         0                    NA                0.0004022   -0.0062766   0.0070811
SAS-CompFeed      INDIA          0                    NA                0.0063756   -0.0089958   0.0217469
VITAMIN-A         INDIA          0                    NA                0.0036765   -0.0011946   0.0085477
ZVITAMBO          ZIMBABWE       0                    NA                0.0092031    0.0051097   0.0132965


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1060340   -0.1762780   0.3205899
iLiNS-DOSE        MALAWI         0                    NA                0.0168763   -0.1738789   0.1766338
iLiNS-DYAD-M      MALAWI         0                    NA                0.0912850   -0.2567086   0.3429161
JiVitA-3          BANGLADESH     0                    NA                0.3236391    0.2454628   0.3937157
JiVitA-4          BANGLADESH     0                    NA                0.2555170   -0.1887081   0.5337334
Keneba            GAMBIA         0                    NA                0.0183206   -0.3382497   0.2798845
SAS-CompFeed      INDIA          0                    NA                0.1954752   -0.3632458   0.5252065
VITAMIN-A         INDIA          0                    NA                0.1865488   -0.0974876   0.3970749
ZVITAMBO          ZIMBABWE       0                    NA                0.1171101    0.0638719   0.1673207
