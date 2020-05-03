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

**Intervention Variable:** ever_underweight024

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

studyid           country                        ever_underweight024    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  --------------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                              0     4725    7165  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                              1       22    7165  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                              0     2392    7165  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                              1       26    7165  dead0plus        
EE                PAKISTAN                       0                              0       53     380  dead0plus        
EE                PAKISTAN                       0                              1        0     380  dead0plus        
EE                PAKISTAN                       1                              0      323     380  dead0plus        
EE                PAKISTAN                       1                              1        4     380  dead0plus        
GMS-Nepal         NEPAL                          0                              0      220     697  dead0plus        
GMS-Nepal         NEPAL                          0                              1        2     697  dead0plus        
GMS-Nepal         NEPAL                          1                              0      470     697  dead0plus        
GMS-Nepal         NEPAL                          1                              1        5     697  dead0plus        
iLiNS-DOSE        MALAWI                         0                              0     1164    1931  dead0plus        
iLiNS-DOSE        MALAWI                         0                              1       63    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                              0      639    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                              1       65    1931  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                              0      775    1205  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                              1       18    1205  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                              0      386    1205  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                              1       26    1205  dead0plus        
JiVitA-3          BANGLADESH                     0                              0    12880   27260  dead0plus        
JiVitA-3          BANGLADESH                     0                              1      245   27260  dead0plus        
JiVitA-3          BANGLADESH                     1                              0    13513   27260  dead0plus        
JiVitA-3          BANGLADESH                     1                              1      622   27260  dead0plus        
JiVitA-4          BANGLADESH                     0                              0     2570    5443  dead0plus        
JiVitA-4          BANGLADESH                     0                              1       13    5443  dead0plus        
JiVitA-4          BANGLADESH                     1                              0     2823    5443  dead0plus        
JiVitA-4          BANGLADESH                     1                              1       37    5443  dead0plus        
Keneba            GAMBIA                         0                              0     1596    2929  dead0plus        
Keneba            GAMBIA                         0                              1       42    2929  dead0plus        
Keneba            GAMBIA                         1                              0     1234    2929  dead0plus        
Keneba            GAMBIA                         1                              1       57    2929  dead0plus        
MAL-ED            BANGLADESH                     0                              0      122     265  dead0plus        
MAL-ED            BANGLADESH                     0                              1        1     265  dead0plus        
MAL-ED            BANGLADESH                     1                              0      140     265  dead0plus        
MAL-ED            BANGLADESH                     1                              1        2     265  dead0plus        
MAL-ED            INDIA                          0                              0       97     251  dead0plus        
MAL-ED            INDIA                          0                              1        1     251  dead0plus        
MAL-ED            INDIA                          1                              0      152     251  dead0plus        
MAL-ED            INDIA                          1                              1        1     251  dead0plus        
MAL-ED            PERU                           0                              0      230     303  dead0plus        
MAL-ED            PERU                           0                              1        2     303  dead0plus        
MAL-ED            PERU                           1                              0       71     303  dead0plus        
MAL-ED            PERU                           1                              1        0     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                              0      218     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                              1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                              0       95     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                              1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              0      146     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                              1        2     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              0      113     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                              1        1     262  dead0plus        
PROVIDE           BANGLADESH                     0                              0      350     700  dead0plus        
PROVIDE           BANGLADESH                     0                              1        3     700  dead0plus        
PROVIDE           BANGLADESH                     1                              0      345     700  dead0plus        
PROVIDE           BANGLADESH                     1                              1        2     700  dead0plus        
SAS-CompFeed      INDIA                          0                              0      601    1533  dead0plus        
SAS-CompFeed      INDIA                          0                              1       15    1533  dead0plus        
SAS-CompFeed      INDIA                          1                              0      882    1533  dead0plus        
SAS-CompFeed      INDIA                          1                              1       35    1533  dead0plus        
SAS-FoodSuppl     INDIA                          0                              0       74     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                              1        2     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                              0      338     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                              1        4     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     1856    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0      539    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                              0     1355    3906  dead0plus        
VITAMIN-A         INDIA                          0                              1        7    3906  dead0plus        
VITAMIN-A         INDIA                          1                              0     2473    3906  dead0plus        
VITAMIN-A         INDIA                          1                              1       71    3906  dead0plus        
ZVITAMBO          ZIMBABWE                       0                              0    10036   14086  dead0plus        
ZVITAMBO          ZIMBABWE                       0                              1      494   14086  dead0plus        
ZVITAMBO          ZIMBABWE                       1                              0     2932   14086  dead0plus        
ZVITAMBO          ZIMBABWE                       1                              1      624   14086  dead0plus        


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/1473d681-7c39-40f6-b0bd-4b0984e10180/0f478f42-4451-4f8f-b127-dd8a20203b6d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1473d681-7c39-40f6-b0bd-4b0984e10180/0f478f42-4451-4f8f-b127-dd8a20203b6d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1473d681-7c39-40f6-b0bd-4b0984e10180/0f478f42-4451-4f8f-b127-dd8a20203b6d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1473d681-7c39-40f6-b0bd-4b0984e10180/0f478f42-4451-4f8f-b127-dd8a20203b6d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0046975   0.0027424   0.0066525
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0105173   0.0064688   0.0145658
iLiNS-DOSE        MALAWI         0                    NA                0.0515180   0.0391215   0.0639144
iLiNS-DOSE        MALAWI         1                    NA                0.0919370   0.0705247   0.1133492
iLiNS-DYAD-M      MALAWI         0                    NA                0.0226971   0.0123248   0.0330695
iLiNS-DYAD-M      MALAWI         1                    NA                0.0622386   0.0391687   0.0853085
JiVitA-3          BANGLADESH     0                    NA                0.0196081   0.0170491   0.0221672
JiVitA-3          BANGLADESH     1                    NA                0.0413364   0.0378588   0.0448141
JiVitA-4          BANGLADESH     0                    NA                0.0051218   0.0022051   0.0080385
JiVitA-4          BANGLADESH     1                    NA                0.0129169   0.0088094   0.0170245
Keneba            GAMBIA         0                    NA                0.0268456   0.0186146   0.0350765
Keneba            GAMBIA         1                    NA                0.0424329   0.0313852   0.0534806
SAS-CompFeed      INDIA          0                    NA                0.0244482   0.0152421   0.0336543
SAS-CompFeed      INDIA          1                    NA                0.0382645   0.0216596   0.0548695
VITAMIN-A         INDIA          0                    NA                0.0051395   0.0013415   0.0089375
VITAMIN-A         INDIA          1                    NA                0.0279088   0.0215075   0.0343101
ZVITAMBO          ZIMBABWE       0                    NA                0.0474197   0.0433497   0.0514896
ZVITAMBO          ZIMBABWE       1                    NA                0.1712909   0.1586757   0.1839062


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0066992   0.0048103   0.0085882
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0365145   0.0259198   0.0471093
JiVitA-3          BANGLADESH     NA                   NA                0.0318048   0.0296069   0.0340028
JiVitA-4          BANGLADESH     NA                   NA                0.0091861   0.0065991   0.0117731
Keneba            GAMBIA         NA                   NA                0.0337999   0.0272543   0.0403456
SAS-CompFeed      INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A         INDIA          NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO          ZIMBABWE       NA                   NA                0.0793696   0.0749054   0.0838337


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate   ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ---------  ---------  ----------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.000000    1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.238938   1.270033    3.947020
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.000000    1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.784561   1.276627    2.494588
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.000000    1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 2.742132   1.521247    4.942843
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 2.108129   1.809527    2.456004
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 2.521950   1.319812    4.819047
Keneba            GAMBIA         0                    0                 1.000000   1.000000    1.000000
Keneba            GAMBIA         1                    0                 1.580629   1.057036    2.363578
SAS-CompFeed      INDIA          0                    0                 1.000000   1.000000    1.000000
SAS-CompFeed      INDIA          1                    0                 1.565125   1.040312    2.354696
VITAMIN-A         INDIA          0                    0                 1.000000   1.000000    1.000000
VITAMIN-A         INDIA          1                    0                 5.430256   2.504838   11.772289
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 3.612233   3.228041    4.042151


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0020018    0.0004566   0.0035469
iLiNS-DOSE        MALAWI         0                    NA                0.0147689    0.0056442   0.0238937
iLiNS-DYAD-M      MALAWI         0                    NA                0.0138174    0.0049503   0.0226844
JiVitA-3          BANGLADESH     0                    NA                0.0121967    0.0098146   0.0145788
JiVitA-4          BANGLADESH     0                    NA                0.0040643    0.0014216   0.0067070
Keneba            GAMBIA         0                    NA                0.0069543    0.0004748   0.0134339
SAS-CompFeed      INDIA          0                    NA                0.0081676   -0.0005441   0.0168793
VITAMIN-A         INDIA          0                    NA                0.0148298    0.0099700   0.0196895
ZVITAMBO          ZIMBABWE       0                    NA                0.0319499    0.0284994   0.0354004


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2988065    0.0476252   0.4837408
iLiNS-DOSE        MALAWI         0                    NA                0.2228033    0.0778554   0.3449675
iLiNS-DYAD-M      MALAWI         0                    NA                0.3784077    0.1177373   0.5620612
JiVitA-3          BANGLADESH     0                    NA                0.3834862    0.3100654   0.4490938
JiVitA-4          BANGLADESH     0                    NA                0.4424404    0.1002747   0.6544805
Keneba            GAMBIA         0                    NA                0.2057503   -0.0060866   0.3729838
SAS-CompFeed      INDIA          0                    NA                0.2504179   -0.0025483   0.4395548
VITAMIN-A         INDIA          0                    NA                0.7426296    0.4793676   0.8727711
ZVITAMBO          ZIMBABWE       0                    NA                0.4025461    0.3635532   0.4391501
