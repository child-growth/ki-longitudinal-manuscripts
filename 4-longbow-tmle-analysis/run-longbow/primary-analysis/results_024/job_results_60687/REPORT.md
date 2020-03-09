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

**Outcome Variable:** dead6plus

## Predictor Variables

**Intervention Variable:** ever_sstunted024

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

studyid           country                        ever_sstunted024    dead6plus   n_cell       n
----------------  -----------------------------  -----------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                           0     6262    7162
Burkina Faso Zn   BURKINA FASO                   0                           1       37    7162
Burkina Faso Zn   BURKINA FASO                   1                           0      852    7162
Burkina Faso Zn   BURKINA FASO                   1                           1       11    7162
EE                PAKISTAN                       0                           0      147     374
EE                PAKISTAN                       0                           1        0     374
EE                PAKISTAN                       1                           0      223     374
EE                PAKISTAN                       1                           1        4     374
GMS-Nepal         NEPAL                          0                           0      434     592
GMS-Nepal         NEPAL                          0                           1        1     592
GMS-Nepal         NEPAL                          1                           0      156     592
GMS-Nepal         NEPAL                          1                           1        1     592
iLiNS-DOSE        MALAWI                         0                           0     1433    1874
iLiNS-DOSE        MALAWI                         0                           1      102    1874
iLiNS-DOSE        MALAWI                         1                           0      314    1874
iLiNS-DOSE        MALAWI                         1                           1       25    1874
iLiNS-DYAD-M      MALAWI                         0                           0      948    1161
iLiNS-DYAD-M      MALAWI                         0                           1       21    1161
iLiNS-DYAD-M      MALAWI                         1                           0      185    1161
iLiNS-DYAD-M      MALAWI                         1                           1        7    1161
JiVitA-3          BANGLADESH                     0                           0    17039   21039
JiVitA-3          BANGLADESH                     0                           1      202   21039
JiVitA-3          BANGLADESH                     1                           0     3689   21039
JiVitA-3          BANGLADESH                     1                           1      109   21039
JiVitA-4          BANGLADESH                     0                           0     4296    5432
JiVitA-4          BANGLADESH                     0                           1       31    5432
JiVitA-4          BANGLADESH                     1                           0     1086    5432
JiVitA-4          BANGLADESH                     1                           1       19    5432
Keneba            GAMBIA                         0                           0     2101    2748
Keneba            GAMBIA                         0                           1       46    2748
Keneba            GAMBIA                         1                           0      568    2748
Keneba            GAMBIA                         1                           1       33    2748
MAL-ED            BANGLADESH                     0                           0      187     240
MAL-ED            BANGLADESH                     0                           1        0     240
MAL-ED            BANGLADESH                     1                           0       53     240
MAL-ED            BANGLADESH                     1                           1        0     240
MAL-ED            INDIA                          0                           0      177     235
MAL-ED            INDIA                          0                           1        0     235
MAL-ED            INDIA                          1                           0       58     235
MAL-ED            INDIA                          1                           1        0     235
MAL-ED            PERU                           0                           0      213     273
MAL-ED            PERU                           0                           1        1     273
MAL-ED            PERU                           1                           0       59     273
MAL-ED            PERU                           1                           1        0     273
MAL-ED            SOUTH AFRICA                   0                           0      191     261
MAL-ED            SOUTH AFRICA                   0                           1        0     261
MAL-ED            SOUTH AFRICA                   1                           0       70     261
MAL-ED            SOUTH AFRICA                   1                           1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                           0      112     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                           1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                           0      133     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                           1        0     245
PROVIDE           BANGLADESH                     0                           0      522     617
PROVIDE           BANGLADESH                     0                           1        2     617
PROVIDE           BANGLADESH                     1                           0       92     617
PROVIDE           BANGLADESH                     1                           1        1     617
SAS-CompFeed      INDIA                          0                           0      909    1389
SAS-CompFeed      INDIA                          0                           1        3    1389
SAS-CompFeed      INDIA                          1                           0      468    1389
SAS-CompFeed      INDIA                          1                           1        9    1389
SAS-FoodSuppl     INDIA                          0                           0      201     402
SAS-FoodSuppl     INDIA                          0                           1        0     402
SAS-FoodSuppl     INDIA                          1                           0      197     402
SAS-FoodSuppl     INDIA                          1                           1        4     402
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           0     1867    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           0      229    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           1        0    2096
VITAMIN-A         INDIA                          0                           0     2682    3614
VITAMIN-A         INDIA                          0                           1       19    3614
VITAMIN-A         INDIA                          1                           0      901    3614
VITAMIN-A         INDIA                          1                           1       12    3614
ZVITAMBO          ZIMBABWE                       0                           0     9303   11708
ZVITAMBO          ZIMBABWE                       0                           1      251   11708
ZVITAMBO          ZIMBABWE                       1                           0     1989   11708
ZVITAMBO          ZIMBABWE                       1                           1      165   11708


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
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/57f51099-22f6-4fe6-9866-b837bdd46c9e/edfbddff-a057-4b6d-abad-8a37ea85ee4e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/57f51099-22f6-4fe6-9866-b837bdd46c9e/edfbddff-a057-4b6d-abad-8a37ea85ee4e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/57f51099-22f6-4fe6-9866-b837bdd46c9e/edfbddff-a057-4b6d-abad-8a37ea85ee4e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/57f51099-22f6-4fe6-9866-b837bdd46c9e/edfbddff-a057-4b6d-abad-8a37ea85ee4e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0059129   0.0040154   0.0078104
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0120298   0.0048362   0.0192233
iLiNS-DOSE        MALAWI         0                    NA                0.0665572   0.0540447   0.0790697
iLiNS-DOSE        MALAWI         1                    NA                0.0732071   0.0439094   0.1025049
iLiNS-DYAD-M      MALAWI         0                    NA                0.0216718   0.0124998   0.0308438
iLiNS-DYAD-M      MALAWI         1                    NA                0.0364583   0.0099356   0.0629811
JiVitA-3          BANGLADESH     0                    NA                0.0120287   0.0103487   0.0137087
JiVitA-3          BANGLADESH     1                    NA                0.0295558   0.0228610   0.0362506
JiVitA-4          BANGLADESH     0                    NA                0.0071860   0.0045842   0.0097878
JiVitA-4          BANGLADESH     1                    NA                0.0172103   0.0096976   0.0247230
Keneba            GAMBIA         0                    NA                0.0217094   0.0154989   0.0279199
Keneba            GAMBIA         1                    NA                0.0528186   0.0347852   0.0708521
VITAMIN-A         INDIA          0                    NA                0.0070757   0.0039074   0.0102439
VITAMIN-A         INDIA          1                    NA                0.0127147   0.0054833   0.0199460
ZVITAMBO          ZIMBABWE       0                    NA                0.0269162   0.0236430   0.0301893
ZVITAMBO          ZIMBABWE       1                    NA                0.0748586   0.0635228   0.0861944


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067020   0.0048123   0.0085918
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
JiVitA-3          BANGLADESH     NA                   NA                0.0147821   0.0131375   0.0164266
JiVitA-4          BANGLADESH     NA                   NA                0.0092047   0.0066177   0.0117917
Keneba            GAMBIA         NA                   NA                0.0287482   0.0224995   0.0349969
VITAMIN-A         INDIA          NA                   NA                0.0085778   0.0055708   0.0115847
ZVITAMBO          ZIMBABWE       NA                   NA                0.0355313   0.0321779   0.0388846


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.034493   1.0321762   4.010129
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.099913   0.7067748   1.711733
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.682292   0.7250786   3.903170
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 2.457105   1.8850492   3.202762
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 2.394977   1.3599337   4.217790
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 2.432987   1.5582603   3.798740
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.796953   0.8714356   3.705425
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.781173   2.2903446   3.377187


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0007891   -0.0001449   0.0017232
iLiNS-DOSE        MALAWI         0                    NA                0.0012123   -0.0043992   0.0068237
iLiNS-DYAD-M      MALAWI         0                    NA                0.0024453   -0.0022065   0.0070971
JiVitA-3          BANGLADESH     0                    NA                0.0027534    0.0016888   0.0038179
JiVitA-4          BANGLADESH     0                    NA                0.0020187    0.0003956   0.0036418
Keneba            GAMBIA         0                    NA                0.0070388    0.0027516   0.0113260
VITAMIN-A         INDIA          0                    NA                0.0015021   -0.0005365   0.0035407
ZVITAMBO          ZIMBABWE       0                    NA                0.0086151    0.0064072   0.0108229


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1177431   -0.0285258   0.2432108
iLiNS-DOSE        MALAWI         0                    NA                0.0178884   -0.0684484   0.0972487
iLiNS-DYAD-M      MALAWI         0                    NA                0.1013932   -0.1094964   0.2721976
JiVitA-3          BANGLADESH     0                    NA                0.1862633    0.1143390   0.2523466
JiVitA-4          BANGLADESH     0                    NA                0.2193139    0.0316937   0.3705806
Keneba            GAMBIA         0                    NA                0.2448432    0.0915183   0.3722914
VITAMIN-A         INDIA          0                    NA                0.1751130   -0.0896662   0.3755531
ZVITAMBO          ZIMBABWE       0                    NA                0.2424646    0.1823493   0.2981602
