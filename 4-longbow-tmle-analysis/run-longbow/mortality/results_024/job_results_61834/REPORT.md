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

**Outcome Variable:** dead624

## Predictor Variables

**Intervention Variable:** ever_co024

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

studyid           country                        ever_co024    dead624   n_cell       n  outcome_variable 
----------------  -----------------------------  -----------  --------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                   0     6316    7161  dead624          
Burkina Faso Zn   BURKINA FASO                   0                   1       32    7161  dead624          
Burkina Faso Zn   BURKINA FASO                   1                   0      806    7161  dead624          
Burkina Faso Zn   BURKINA FASO                   1                   1        7    7161  dead624          
EE                PAKISTAN                       0                   0      204     374  dead624          
EE                PAKISTAN                       0                   1        1     374  dead624          
EE                PAKISTAN                       1                   0      166     374  dead624          
EE                PAKISTAN                       1                   1        3     374  dead624          
GMS-Nepal         NEPAL                          0                   0      391     592  dead624          
GMS-Nepal         NEPAL                          0                   1        1     592  dead624          
GMS-Nepal         NEPAL                          1                   0      199     592  dead624          
GMS-Nepal         NEPAL                          1                   1        1     592  dead624          
iLiNS-DOSE        MALAWI                         0                   0     1654    1874  dead624          
iLiNS-DOSE        MALAWI                         0                   1      114    1874  dead624          
iLiNS-DOSE        MALAWI                         1                   0       93    1874  dead624          
iLiNS-DOSE        MALAWI                         1                   1       13    1874  dead624          
iLiNS-DYAD-M      MALAWI                         0                   0     1087    1161  dead624          
iLiNS-DYAD-M      MALAWI                         0                   1       21    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                   0       50    1161  dead624          
iLiNS-DYAD-M      MALAWI                         1                   1        3    1161  dead624          
JiVitA-3          BANGLADESH                     0                   0    18708   21006  dead624          
JiVitA-3          BANGLADESH                     0                   1      214   21006  dead624          
JiVitA-3          BANGLADESH                     1                   0     2037   21006  dead624          
JiVitA-3          BANGLADESH                     1                   1       47   21006  dead624          
JiVitA-4          BANGLADESH                     0                   0     4517    5432  dead624          
JiVitA-4          BANGLADESH                     0                   1       37    5432  dead624          
JiVitA-4          BANGLADESH                     1                   0      866    5432  dead624          
JiVitA-4          BANGLADESH                     1                   1       12    5432  dead624          
Keneba            GAMBIA                         0                   0     2292    2748  dead624          
Keneba            GAMBIA                         0                   1       31    2748  dead624          
Keneba            GAMBIA                         1                   0      412    2748  dead624          
Keneba            GAMBIA                         1                   1       13    2748  dead624          
MAL-ED            BANGLADESH                     0                   0      201     240  dead624          
MAL-ED            BANGLADESH                     0                   1        0     240  dead624          
MAL-ED            BANGLADESH                     1                   0       39     240  dead624          
MAL-ED            BANGLADESH                     1                   1        0     240  dead624          
MAL-ED            INDIA                          0                   0      182     235  dead624          
MAL-ED            INDIA                          0                   1        0     235  dead624          
MAL-ED            INDIA                          1                   0       53     235  dead624          
MAL-ED            INDIA                          1                   1        0     235  dead624          
MAL-ED            PERU                           0                   0      261     273  dead624          
MAL-ED            PERU                           0                   1        1     273  dead624          
MAL-ED            PERU                           1                   0       11     273  dead624          
MAL-ED            PERU                           1                   1        0     273  dead624          
MAL-ED            SOUTH AFRICA                   0                   0      239     261  dead624          
MAL-ED            SOUTH AFRICA                   0                   1        0     261  dead624          
MAL-ED            SOUTH AFRICA                   1                   0       22     261  dead624          
MAL-ED            SOUTH AFRICA                   1                   1        0     261  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                   0      222     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                   1        0     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                   0       23     245  dead624          
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                   1        0     245  dead624          
PROVIDE           BANGLADESH                     0                   0      527     617  dead624          
PROVIDE           BANGLADESH                     0                   1        2     617  dead624          
PROVIDE           BANGLADESH                     1                   0       88     617  dead624          
PROVIDE           BANGLADESH                     1                   1        0     617  dead624          
SAS-CompFeed      INDIA                          0                   0     1047    1389  dead624          
SAS-CompFeed      INDIA                          0                   1        2    1389  dead624          
SAS-CompFeed      INDIA                          1                   0      330    1389  dead624          
SAS-CompFeed      INDIA                          1                   1       10    1389  dead624          
SAS-FoodSuppl     INDIA                          0                   0      246     402  dead624          
SAS-FoodSuppl     INDIA                          0                   1        1     402  dead624          
SAS-FoodSuppl     INDIA                          1                   0      152     402  dead624          
SAS-FoodSuppl     INDIA                          1                   1        3     402  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     1979    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        0    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0      117    2096  dead624          
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2096  dead624          
VITAMIN-A         INDIA                          0                   0     2919    3614  dead624          
VITAMIN-A         INDIA                          0                   1       17    3614  dead624          
VITAMIN-A         INDIA                          1                   0      664    3614  dead624          
VITAMIN-A         INDIA                          1                   1       14    3614  dead624          
ZVITAMBO          ZIMBABWE                       0                   0    10848   11692  dead624          
ZVITAMBO          ZIMBABWE                       0                   1      310   11692  dead624          
ZVITAMBO          ZIMBABWE                       1                   0      443   11692  dead624          
ZVITAMBO          ZIMBABWE                       1                   1       91   11692  dead624          


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
* studyid: iLiNS-DYAD-M, country: MALAWI
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
![](/tmp/0f55ab06-10b4-4b4a-9626-44b286447afb/7ff88e72-86f5-42be-af0c-ffb39d0b03ae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0f55ab06-10b4-4b4a-9626-44b286447afb/7ff88e72-86f5-42be-af0c-ffb39d0b03ae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0f55ab06-10b4-4b4a-9626-44b286447afb/7ff88e72-86f5-42be-af0c-ffb39d0b03ae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0f55ab06-10b4-4b4a-9626-44b286447afb/7ff88e72-86f5-42be-af0c-ffb39d0b03ae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0050410   0.0032987   0.0067832
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0086101   0.0022588   0.0149613
iLiNS-DOSE        MALAWI         0                    NA                0.0645045   0.0530514   0.0759577
iLiNS-DOSE        MALAWI         1                    NA                0.1219202   0.0622004   0.1816401
JiVitA-3          BANGLADESH     0                    NA                0.0114927   0.0099252   0.0130602
JiVitA-3          BANGLADESH     1                    NA                0.0217114   0.0146558   0.0287670
JiVitA-4          BANGLADESH     0                    NA                0.0081546   0.0054512   0.0108580
JiVitA-4          BANGLADESH     1                    NA                0.0137442   0.0064729   0.0210155
Keneba            GAMBIA         0                    NA                0.0133089   0.0086486   0.0179692
Keneba            GAMBIA         1                    NA                0.0309264   0.0141382   0.0477146
VITAMIN-A         INDIA          0                    NA                0.0057985   0.0030503   0.0085466
VITAMIN-A         INDIA          1                    NA                0.0205859   0.0098839   0.0312879
ZVITAMBO          ZIMBABWE       0                    NA                0.0280660   0.0249923   0.0311396
ZVITAMBO          ZIMBABWE       1                    NA                0.1570114   0.1237699   0.1902528


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054462   0.0037415   0.0071509
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
JiVitA-3          BANGLADESH     NA                   NA                0.0124250   0.0108829   0.0139672
JiVitA-4          BANGLADESH     NA                   NA                0.0090206   0.0064715   0.0115698
Keneba            GAMBIA         NA                   NA                0.0160116   0.0113178   0.0207055
VITAMIN-A         INDIA          NA                   NA                0.0085778   0.0055708   0.0115847
ZVITAMBO          ZIMBABWE       NA                   NA                0.0342970   0.0309980   0.0375959


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.708026   0.7563350   3.857222
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.890104   1.1230004   3.181204
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.889145   1.3275989   2.688214
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.685453   0.9033192   3.144792
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 2.323738   1.2179184   4.433597
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 3.550209   1.7571265   7.173064
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 5.594372   4.4077449   7.100455


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0004052   -0.0003430   0.0011534
iLiNS-DOSE        MALAWI         0                    NA                0.0032650   -0.0003471   0.0068770
JiVitA-3          BANGLADESH     0                    NA                0.0009323    0.0002442   0.0016204
JiVitA-4          BANGLADESH     0                    NA                0.0008660   -0.0003799   0.0021120
Keneba            GAMBIA         0                    NA                0.0027027    0.0000588   0.0053467
VITAMIN-A         INDIA          0                    NA                0.0027793    0.0006971   0.0048614
ZVITAMBO          ZIMBABWE       0                    NA                0.0062310    0.0046682   0.0077938


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0744026   -0.0714097   0.2003707
iLiNS-DOSE        MALAWI         0                    NA                0.0481775   -0.0060982   0.0995253
JiVitA-3          BANGLADESH     0                    NA                0.0750353    0.0189806   0.1278871
JiVitA-4          BANGLADESH     0                    NA                0.0960034   -0.0526405   0.2236573
Keneba            GAMBIA         0                    NA                0.1687988   -0.0049928   0.3125369
VITAMIN-A         INDIA          0                    NA                0.3240072    0.0710504   0.5080828
ZVITAMBO          ZIMBABWE       0                    NA                0.1816779    0.1383476   0.2228293
