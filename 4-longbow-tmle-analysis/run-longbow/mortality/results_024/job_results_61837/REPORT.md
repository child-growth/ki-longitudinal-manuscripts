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

**Intervention Variable:** pers_wasted024

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

studyid           country                        pers_wasted024    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0     6018    7166  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                         1       32    7166  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                         0     1100    7166  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                         1       16    7166  dead0plus        
EE                PAKISTAN                       0                         0      342     380  dead0plus        
EE                PAKISTAN                       0                         1        4     380  dead0plus        
EE                PAKISTAN                       1                         0       34     380  dead0plus        
EE                PAKISTAN                       1                         1        0     380  dead0plus        
GMS-Nepal         NEPAL                          0                         0      580     686  dead0plus        
GMS-Nepal         NEPAL                          0                         1        5     686  dead0plus        
GMS-Nepal         NEPAL                          1                         0       99     686  dead0plus        
GMS-Nepal         NEPAL                          1                         1        2     686  dead0plus        
iLiNS-DOSE        MALAWI                         0                         0     1744    1931  dead0plus        
iLiNS-DOSE        MALAWI                         0                         1      120    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                         0       59    1931  dead0plus        
iLiNS-DOSE        MALAWI                         1                         1        8    1931  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                         0     1137    1201  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                         1       37    1201  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                         0       22    1201  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                         1        5    1201  dead0plus        
JiVitA-3          BANGLADESH                     0                         0    24593   26956  dead0plus        
JiVitA-3          BANGLADESH                     0                         1      476   26956  dead0plus        
JiVitA-3          BANGLADESH                     1                         0     1760   26956  dead0plus        
JiVitA-3          BANGLADESH                     1                         1      127   26956  dead0plus        
JiVitA-4          BANGLADESH                     0                         0     4954    5443  dead0plus        
JiVitA-4          BANGLADESH                     0                         1       40    5443  dead0plus        
JiVitA-4          BANGLADESH                     1                         0      439    5443  dead0plus        
JiVitA-4          BANGLADESH                     1                         1       10    5443  dead0plus        
Keneba            GAMBIA                         0                         0     2634    2920  dead0plus        
Keneba            GAMBIA                         0                         1       81    2920  dead0plus        
Keneba            GAMBIA                         1                         0      189    2920  dead0plus        
Keneba            GAMBIA                         1                         1       16    2920  dead0plus        
MAL-ED            BANGLADESH                     0                         0      246     263  dead0plus        
MAL-ED            BANGLADESH                     0                         1        2     263  dead0plus        
MAL-ED            BANGLADESH                     1                         0       15     263  dead0plus        
MAL-ED            BANGLADESH                     1                         1        0     263  dead0plus        
MAL-ED            INDIA                          0                         0      226     251  dead0plus        
MAL-ED            INDIA                          0                         1        2     251  dead0plus        
MAL-ED            INDIA                          1                         0       23     251  dead0plus        
MAL-ED            INDIA                          1                         1        0     251  dead0plus        
MAL-ED            PERU                           0                         0      299     302  dead0plus        
MAL-ED            PERU                           0                         1        2     302  dead0plus        
MAL-ED            PERU                           1                         0        1     302  dead0plus        
MAL-ED            PERU                           1                         1        0     302  dead0plus        
MAL-ED            SOUTH AFRICA                   0                         0      306     312  dead0plus        
MAL-ED            SOUTH AFRICA                   0                         1        0     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                         0        6     312  dead0plus        
MAL-ED            SOUTH AFRICA                   1                         1        0     312  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      258     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        3     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0        0     261  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     261  dead0plus        
PROVIDE           BANGLADESH                     0                         0      668     700  dead0plus        
PROVIDE           BANGLADESH                     0                         1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                         0       27     700  dead0plus        
PROVIDE           BANGLADESH                     1                         1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                         0     1355    1513  dead0plus        
SAS-CompFeed      INDIA                          0                         1       22    1513  dead0plus        
SAS-CompFeed      INDIA                          1                         0      121    1513  dead0plus        
SAS-CompFeed      INDIA                          1                         1       15    1513  dead0plus        
SAS-FoodSuppl     INDIA                          0                         0      338     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                         1        2     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                         0       74     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                         1        4     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2324    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       71    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                         0     3228    3904  dead0plus        
VITAMIN-A         INDIA                          0                         1       36    3904  dead0plus        
VITAMIN-A         INDIA                          1                         0      601    3904  dead0plus        
VITAMIN-A         INDIA                          1                         1       39    3904  dead0plus        
ZVITAMBO          ZIMBABWE                       0                         0    12349   13946  dead0plus        
ZVITAMBO          ZIMBABWE                       0                         1      840   13946  dead0plus        
ZVITAMBO          ZIMBABWE                       1                         0      535   13946  dead0plus        
ZVITAMBO          ZIMBABWE                       1                         1      222   13946  dead0plus        


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

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/bcc6c815-675c-4ca7-9fea-7ffcca85f343/74f1a704-dfb1-4716-8aff-db365c93c673/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bcc6c815-675c-4ca7-9fea-7ffcca85f343/74f1a704-dfb1-4716-8aff-db365c93c673/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bcc6c815-675c-4ca7-9fea-7ffcca85f343/74f1a704-dfb1-4716-8aff-db365c93c673/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bcc6c815-675c-4ca7-9fea-7ffcca85f343/74f1a704-dfb1-4716-8aff-db365c93c673/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052783   0.0034517   0.0071049
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0142102   0.0071608   0.0212597
iLiNS-DOSE        MALAWI         0                    NA                0.0643777   0.0532333   0.0755221
iLiNS-DOSE        MALAWI         1                    NA                0.1194030   0.0417391   0.1970669
iLiNS-DYAD-M      MALAWI         0                    NA                0.0315162   0.0214925   0.0415399
iLiNS-DYAD-M      MALAWI         1                    NA                0.1851852   0.0533715   0.3169988
JiVitA-3          BANGLADESH     0                    NA                0.0190650   0.0173727   0.0207572
JiVitA-3          BANGLADESH     1                    NA                0.0653698   0.0532243   0.0775152
JiVitA-4          BANGLADESH     0                    NA                0.0080196   0.0054593   0.0105799
JiVitA-4          BANGLADESH     1                    NA                0.0224096   0.0087395   0.0360797
Keneba            GAMBIA         0                    NA                0.0298204   0.0234147   0.0362262
Keneba            GAMBIA         1                    NA                0.0711547   0.0321854   0.1101239
SAS-CompFeed      INDIA          0                    NA                0.0160340   0.0089041   0.0231639
SAS-CompFeed      INDIA          1                    NA                0.1113083   0.0397551   0.1828615
VITAMIN-A         INDIA          0                    NA                0.0110826   0.0074872   0.0146780
VITAMIN-A         INDIA          1                    NA                0.0602128   0.0415438   0.0788818
ZVITAMBO          ZIMBABWE       0                    NA                0.0640908   0.0599036   0.0682780
ZVITAMBO          ZIMBABWE       1                    NA                0.3520073   0.3128126   0.3912019


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0066983   0.0048096   0.0085870
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0349709   0.0245769   0.0453648
JiVitA-3          BANGLADESH     NA                   NA                0.0223698   0.0205726   0.0241670
JiVitA-4          BANGLADESH     NA                   NA                0.0091861   0.0065991   0.0117731
Keneba            GAMBIA         NA                   NA                0.0332192   0.0267180   0.0397203
SAS-CompFeed      INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
VITAMIN-A         INDIA          NA                   NA                0.0192111   0.0149047   0.0235174
ZVITAMBO          ZIMBABWE       NA                   NA                0.0761509   0.0717486   0.0805531


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.692209   1.4705467    4.928771
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.854726   0.9461633    3.635747
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000    1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 5.875876   2.6945631   12.813178
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-3          BANGLADESH     1                    0                 3.428791   2.7991201    4.200109
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
JiVitA-4          BANGLADESH     1                    0                 2.794351   1.3992124    5.580568
Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
Keneba            GAMBIA         1                    0                 2.386104   1.3248498    4.297462
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000    1.000000
SAS-CompFeed      INDIA          1                    0                 6.942012   4.1967982   11.482927
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
VITAMIN-A         INDIA          1                    0                 5.433086   3.4683072    8.510903
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ZVITAMBO          ZIMBABWE       1                    0                 5.492324   4.8286710    6.247189


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014200    0.0002950   0.0025451
iLiNS-DOSE        MALAWI         0                    NA                0.0019092   -0.0008499   0.0046683
iLiNS-DYAD-M      MALAWI         0                    NA                0.0034547   -0.0000926   0.0070020
JiVitA-3          BANGLADESH     0                    NA                0.0033048    0.0024630   0.0041467
JiVitA-4          BANGLADESH     0                    NA                0.0011665    0.0000345   0.0022985
Keneba            GAMBIA         0                    NA                0.0033987    0.0007403   0.0060572
SAS-CompFeed      INDIA          0                    NA                0.0084207    0.0017758   0.0150656
VITAMIN-A         INDIA          0                    NA                0.0081284    0.0049773   0.0112796
ZVITAMBO          ZIMBABWE       0                    NA                0.0120601    0.0101207   0.0139995


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2119963    0.0380128   0.3545133
iLiNS-DOSE        MALAWI         0                    NA                0.0288023   -0.0134746   0.0693156
iLiNS-DYAD-M      MALAWI         0                    NA                0.0987872   -0.0042850   0.1912809
JiVitA-3          BANGLADESH     0                    NA                0.1477362    0.1117881   0.1822295
JiVitA-4          BANGLADESH     0                    NA                0.1269865   -0.0013149   0.2388483
Keneba            GAMBIA         0                    NA                0.1023127    0.0211610   0.1767364
SAS-CompFeed      INDIA          0                    NA                0.3443391    0.1415746   0.4992096
VITAMIN-A         INDIA          0                    NA                0.4231129    0.2717097   0.5430411
ZVITAMBO          ZIMBABWE       0                    NA                0.1583711    0.1339559   0.1820980
