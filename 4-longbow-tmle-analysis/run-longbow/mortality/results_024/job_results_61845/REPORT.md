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

**Intervention Variable:** ever_wasted024

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

studyid           country                        ever_wasted024    dead6plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                         0     5728    7164  dead6plus        
Burkina Faso Zn   BURKINA FASO                   0                         1       30    7164  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                         0     1388    7164  dead6plus        
Burkina Faso Zn   BURKINA FASO                   1                         1       18    7164  dead6plus        
EE                PAKISTAN                       0                         0      149     375  dead6plus        
EE                PAKISTAN                       0                         1        1     375  dead6plus        
EE                PAKISTAN                       1                         0      222     375  dead6plus        
EE                PAKISTAN                       1                         1        3     375  dead6plus        
GMS-Nepal         NEPAL                          0                         0      208     592  dead6plus        
GMS-Nepal         NEPAL                          0                         1        1     592  dead6plus        
GMS-Nepal         NEPAL                          1                         0      382     592  dead6plus        
GMS-Nepal         NEPAL                          1                         1        1     592  dead6plus        
iLiNS-DOSE        MALAWI                         0                         0     1606    1874  dead6plus        
iLiNS-DOSE        MALAWI                         0                         1      112    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                         0      141    1874  dead6plus        
iLiNS-DOSE        MALAWI                         1                         1       15    1874  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                         0     1032    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         0                         1       21    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                         0      101    1161  dead6plus        
iLiNS-DYAD-M      MALAWI                         1                         1        7    1161  dead6plus        
JiVitA-3          BANGLADESH                     0                         0    15064   21023  dead6plus        
JiVitA-3          BANGLADESH                     0                         1      201   21023  dead6plus        
JiVitA-3          BANGLADESH                     1                         0     5654   21023  dead6plus        
JiVitA-3          BANGLADESH                     1                         1      104   21023  dead6plus        
JiVitA-4          BANGLADESH                     0                         0     3716    5433  dead6plus        
JiVitA-4          BANGLADESH                     0                         1       31    5433  dead6plus        
JiVitA-4          BANGLADESH                     1                         0     1667    5433  dead6plus        
JiVitA-4          BANGLADESH                     1                         1       19    5433  dead6plus        
Keneba            GAMBIA                         0                         0     1467    2752  dead6plus        
Keneba            GAMBIA                         0                         1       39    2752  dead6plus        
Keneba            GAMBIA                         1                         0     1206    2752  dead6plus        
Keneba            GAMBIA                         1                         1       40    2752  dead6plus        
MAL-ED            BANGLADESH                     0                         0      157     240  dead6plus        
MAL-ED            BANGLADESH                     0                         1        0     240  dead6plus        
MAL-ED            BANGLADESH                     1                         0       83     240  dead6plus        
MAL-ED            BANGLADESH                     1                         1        0     240  dead6plus        
MAL-ED            INDIA                          0                         0      121     235  dead6plus        
MAL-ED            INDIA                          0                         1        0     235  dead6plus        
MAL-ED            INDIA                          1                         0      114     235  dead6plus        
MAL-ED            INDIA                          1                         1        0     235  dead6plus        
MAL-ED            PERU                           0                         0      246     273  dead6plus        
MAL-ED            PERU                           0                         1        1     273  dead6plus        
MAL-ED            PERU                           1                         0       26     273  dead6plus        
MAL-ED            PERU                           1                         1        0     273  dead6plus        
MAL-ED            SOUTH AFRICA                   0                         0      204     261  dead6plus        
MAL-ED            SOUTH AFRICA                   0                         1        0     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                         0       57     261  dead6plus        
MAL-ED            SOUTH AFRICA                   1                         1        0     261  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         0      209     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                         1        0     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         0       36     245  dead6plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                         1        0     245  dead6plus        
PROVIDE           BANGLADESH                     0                         0      391     617  dead6plus        
PROVIDE           BANGLADESH                     0                         1        3     617  dead6plus        
PROVIDE           BANGLADESH                     1                         0      223     617  dead6plus        
PROVIDE           BANGLADESH                     1                         1        0     617  dead6plus        
SAS-CompFeed      INDIA                          0                         0      783    1389  dead6plus        
SAS-CompFeed      INDIA                          0                         1        2    1389  dead6plus        
SAS-CompFeed      INDIA                          1                         0      594    1389  dead6plus        
SAS-CompFeed      INDIA                          1                         1       10    1389  dead6plus        
SAS-FoodSuppl     INDIA                          0                         0      208     402  dead6plus        
SAS-FoodSuppl     INDIA                          0                         1        1     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                         0      190     402  dead6plus        
SAS-FoodSuppl     INDIA                          1                         1        3     402  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1560    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        0    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      536    2096  dead6plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2096  dead6plus        
VITAMIN-A         INDIA                          0                         0     2357    3615  dead6plus        
VITAMIN-A         INDIA                          0                         1       12    3615  dead6plus        
VITAMIN-A         INDIA                          1                         0     1227    3615  dead6plus        
VITAMIN-A         INDIA                          1                         1       19    3615  dead6plus        
ZVITAMBO          ZIMBABWE                       0                         0     8634   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       0                         1      231   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                         0     2648   11694  dead6plus        
ZVITAMBO          ZIMBABWE                       1                         1      181   11694  dead6plus        


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
![](/tmp/a0fb3083-3f38-476c-a11b-7b3dacad547e/4dc7c3dc-a8ba-49a9-8a31-4ba8752fa7ee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a0fb3083-3f38-476c-a11b-7b3dacad547e/4dc7c3dc-a8ba-49a9-8a31-4ba8752fa7ee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a0fb3083-3f38-476c-a11b-7b3dacad547e/4dc7c3dc-a8ba-49a9-8a31-4ba8752fa7ee/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a0fb3083-3f38-476c-a11b-7b3dacad547e/4dc7c3dc-a8ba-49a9-8a31-4ba8752fa7ee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052430   0.0033740   0.0071120
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0124996   0.0067013   0.0182978
iLiNS-DOSE        MALAWI         0                    NA                0.0651929   0.0535189   0.0768670
iLiNS-DOSE        MALAWI         1                    NA                0.0907681   0.0464879   0.1350483
iLiNS-DYAD-M      MALAWI         0                    NA                0.0199430   0.0114952   0.0283908
iLiNS-DYAD-M      MALAWI         1                    NA                0.0648148   0.0183623   0.1112673
JiVitA-3          BANGLADESH     0                    NA                0.0132869   0.0114366   0.0151372
JiVitA-3          BANGLADESH     1                    NA                0.0176403   0.0142235   0.0210572
JiVitA-4          BANGLADESH     0                    NA                0.0082774   0.0053643   0.0111905
JiVitA-4          BANGLADESH     1                    NA                0.0112513   0.0059644   0.0165382
Keneba            GAMBIA         0                    NA                0.0272016   0.0187813   0.0356220
Keneba            GAMBIA         1                    NA                0.0321380   0.0221989   0.0420771
VITAMIN-A         INDIA          0                    NA                0.0050954   0.0022207   0.0079701
VITAMIN-A         INDIA          1                    NA                0.0153438   0.0084622   0.0222253
ZVITAMBO          ZIMBABWE       0                    NA                0.0266556   0.0232730   0.0300381
ZVITAMBO          ZIMBABWE       1                    NA                0.0607381   0.0518525   0.0696237


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067002   0.0048109   0.0085894
iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
JiVitA-3          BANGLADESH     NA                   NA                0.0145079   0.0128686   0.0161473
JiVitA-4          BANGLADESH     NA                   NA                0.0092030   0.0066160   0.0117900
Keneba            GAMBIA         NA                   NA                0.0287064   0.0224666   0.0349461
VITAMIN-A         INDIA          NA                   NA                0.0085754   0.0055692   0.0115815
ZVITAMBO          ZIMBABWE       NA                   NA                0.0352317   0.0318901   0.0385734


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.384046   1.3281837   4.279283
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.392299   0.8279252   2.341390
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 3.250000   1.4135962   7.472077
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.327643   1.0465701   1.684204
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.359271   0.7547608   2.447952
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.181474   0.7625390   1.830569
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 3.011277   1.4649065   6.190012
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.278627   1.8777115   2.765143


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014572    0.0002426   0.0026717
iLiNS-DOSE        MALAWI         0                    NA                0.0025765   -0.0014120   0.0065651
iLiNS-DYAD-M      MALAWI         0                    NA                0.0041741   -0.0002815   0.0086297
JiVitA-3          BANGLADESH     0                    NA                0.0012210    0.0001561   0.0022859
JiVitA-4          BANGLADESH     0                    NA                0.0009256   -0.0009518   0.0028030
Keneba            GAMBIA         0                    NA                0.0015048   -0.0045272   0.0075367
VITAMIN-A         INDIA          0                    NA                0.0034799    0.0009245   0.0060354
ZVITAMBO          ZIMBABWE       0                    NA                0.0085762    0.0062019   0.0109505


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.2174820    0.0268545   0.3707678
iLiNS-DOSE        MALAWI         0                    NA                0.0380191   -0.0223528   0.0948260
iLiNS-DYAD-M      MALAWI         0                    NA                0.1730769   -0.0206061   0.3300042
JiVitA-3          BANGLADESH     0                    NA                0.0841594    0.0082456   0.1542624
JiVitA-4          BANGLADESH     0                    NA                0.1005753   -0.1245209   0.2806138
Keneba            GAMBIA         0                    NA                0.0524189   -0.1823773   0.2405894
VITAMIN-A         INDIA          0                    NA                0.4058070    0.0762495   0.6177915
ZVITAMBO          ZIMBABWE       0                    NA                0.2434220    0.1772600   0.3042635
