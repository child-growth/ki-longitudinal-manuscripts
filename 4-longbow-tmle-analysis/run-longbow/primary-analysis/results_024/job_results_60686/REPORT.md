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

studyid           country                        ever_stunted024    dead6plus   n_cell       n
----------------  -----------------------------  ----------------  ----------  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                          0     4563    7162
Burkina Faso Zn   BURKINA FASO                   0                          1       25    7162
Burkina Faso Zn   BURKINA FASO                   1                          0     2551    7162
Burkina Faso Zn   BURKINA FASO                   1                          1       23    7162
EE                PAKISTAN                       0                          0       39     374
EE                PAKISTAN                       0                          1        0     374
EE                PAKISTAN                       1                          0      331     374
EE                PAKISTAN                       1                          1        4     374
GMS-Nepal         NEPAL                          0                          0      174     592
GMS-Nepal         NEPAL                          0                          1        1     592
GMS-Nepal         NEPAL                          1                          0      416     592
GMS-Nepal         NEPAL                          1                          1        1     592
iLiNS-DOSE        MALAWI                         0                          0      864    1874
iLiNS-DOSE        MALAWI                         0                          1       62    1874
iLiNS-DOSE        MALAWI                         1                          0      883    1874
iLiNS-DOSE        MALAWI                         1                          1       65    1874
iLiNS-DYAD-M      MALAWI                         0                          0      589    1161
iLiNS-DYAD-M      MALAWI                         0                          1       10    1161
iLiNS-DYAD-M      MALAWI                         1                          0      544    1161
iLiNS-DYAD-M      MALAWI                         1                          1       18    1161
JiVitA-3          BANGLADESH                     0                          0    10298   21039
JiVitA-3          BANGLADESH                     0                          1      112   21039
JiVitA-3          BANGLADESH                     1                          0    10430   21039
JiVitA-3          BANGLADESH                     1                          1      199   21039
JiVitA-4          BANGLADESH                     0                          0     2257    5432
JiVitA-4          BANGLADESH                     0                          1       15    5432
JiVitA-4          BANGLADESH                     1                          0     3125    5432
JiVitA-4          BANGLADESH                     1                          1       35    5432
Keneba            GAMBIA                         0                          0     1272    2748
Keneba            GAMBIA                         0                          1       25    2748
Keneba            GAMBIA                         1                          0     1397    2748
Keneba            GAMBIA                         1                          1       54    2748
MAL-ED            BANGLADESH                     0                          0       91     240
MAL-ED            BANGLADESH                     0                          1        0     240
MAL-ED            BANGLADESH                     1                          0      149     240
MAL-ED            BANGLADESH                     1                          1        0     240
MAL-ED            INDIA                          0                          0       89     235
MAL-ED            INDIA                          0                          1        0     235
MAL-ED            INDIA                          1                          0      146     235
MAL-ED            INDIA                          1                          1        0     235
MAL-ED            PERU                           0                          0       92     273
MAL-ED            PERU                           0                          1        0     273
MAL-ED            PERU                           1                          0      180     273
MAL-ED            PERU                           1                          1        1     273
MAL-ED            SOUTH AFRICA                   0                          0       99     261
MAL-ED            SOUTH AFRICA                   0                          1        0     261
MAL-ED            SOUTH AFRICA                   1                          0      162     261
MAL-ED            SOUTH AFRICA                   1                          1        0     261
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0       31     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        0     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0      214     245
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        0     245
PROVIDE           BANGLADESH                     0                          0      319     617
PROVIDE           BANGLADESH                     0                          1        2     617
PROVIDE           BANGLADESH                     1                          0      295     617
PROVIDE           BANGLADESH                     1                          1        1     617
SAS-CompFeed      INDIA                          0                          0      404    1389
SAS-CompFeed      INDIA                          0                          1        0    1389
SAS-CompFeed      INDIA                          1                          0      973    1389
SAS-CompFeed      INDIA                          1                          1       12    1389
SAS-FoodSuppl     INDIA                          0                          0       59     402
SAS-FoodSuppl     INDIA                          0                          1        0     402
SAS-FoodSuppl     INDIA                          1                          0      339     402
SAS-FoodSuppl     INDIA                          1                          1        4     402
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     1312    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        0    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      784    2096
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2096
VITAMIN-A         INDIA                          0                          0     1494    3614
VITAMIN-A         INDIA                          0                          1        9    3614
VITAMIN-A         INDIA                          1                          0     2089    3614
VITAMIN-A         INDIA                          1                          1       22    3614
ZVITAMBO          ZIMBABWE                       0                          0     6237   11708
ZVITAMBO          ZIMBABWE                       0                          1      133   11708
ZVITAMBO          ZIMBABWE                       1                          0     5055   11708
ZVITAMBO          ZIMBABWE                       1                          1      283   11708


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
![](/tmp/686fded0-1d90-49d1-857c-67814ff9f6f3/4a9cf225-d435-4660-b1e2-9726e21e101e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/686fded0-1d90-49d1-857c-67814ff9f6f3/4a9cf225-d435-4660-b1e2-9726e21e101e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/686fded0-1d90-49d1-857c-67814ff9f6f3/4a9cf225-d435-4660-b1e2-9726e21e101e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/686fded0-1d90-49d1-857c-67814ff9f6f3/4a9cf225-d435-4660-b1e2-9726e21e101e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0055411   0.0033783   0.0077039
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0087729   0.0051558   0.0123900
iLiNS-DOSE        MALAWI         0                    NA                0.0690598   0.0522726   0.0858469
iLiNS-DOSE        MALAWI         1                    NA                0.0684943   0.0521320   0.0848566
iLiNS-DYAD-M      MALAWI         0                    NA                0.0159399   0.0056927   0.0261871
iLiNS-DYAD-M      MALAWI         1                    NA                0.0312766   0.0166086   0.0459446
JiVitA-3          BANGLADESH     0                    NA                0.0116171   0.0093020   0.0139321
JiVitA-3          BANGLADESH     1                    NA                0.0180142   0.0150895   0.0209388
JiVitA-4          BANGLADESH     0                    NA                0.0067102   0.0027239   0.0106964
JiVitA-4          BANGLADESH     1                    NA                0.0110343   0.0075834   0.0144852
Keneba            GAMBIA         0                    NA                0.0207349   0.0119902   0.0294795
Keneba            GAMBIA         1                    NA                0.0345524   0.0251659   0.0439388
VITAMIN-A         INDIA          0                    NA                0.0059880   0.0020871   0.0098889
VITAMIN-A         INDIA          1                    NA                0.0104216   0.0060889   0.0147543
ZVITAMBO          ZIMBABWE       0                    NA                0.0215574   0.0179010   0.0252137
ZVITAMBO          ZIMBABWE       1                    NA                0.0517895   0.0457512   0.0578279


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


studyid           country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.0000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 1.5832519   0.8974070   2.793255
iLiNS-DOSE        MALAWI         0                    0                 1.0000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 0.9918114   0.7054869   1.394342
iLiNS-DYAD-M      MALAWI         0                    0                 1.0000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 1.9621594   0.8850455   4.350137
JiVitA-3          BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 1.5506647   1.1991794   2.005172
JiVitA-4          BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 1.6444160   0.8362248   3.233705
Keneba            GAMBIA         0                    0                 1.0000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 1.6663891   1.0090139   2.752046
VITAMIN-A         INDIA          0                    0                 1.0000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 1.7404074   0.8035728   3.769438
ZVITAMBO          ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 2.4024057   1.9557229   2.951110


### Parameter: PAR


studyid           country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                 0.0011610   -0.0003715   0.0026934
iLiNS-DOSE        MALAWI         0                    NA                -0.0012903   -0.0134811   0.0109005
iLiNS-DYAD-M      MALAWI         0                    NA                 0.0081773   -0.0004879   0.0168424
JiVitA-3          BANGLADESH     0                    NA                 0.0031650    0.0011966   0.0051335
JiVitA-4          BANGLADESH     0                    NA                 0.0024945   -0.0006184   0.0056075
Keneba            GAMBIA         0                    NA                 0.0080133    0.0003315   0.0156951
VITAMIN-A         INDIA          0                    NA                 0.0025897   -0.0008164   0.0059959
ZVITAMBO          ZIMBABWE       0                    NA                 0.0139739    0.0106762   0.0172715


### Parameter: PAF


studyid           country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                 0.1732239   -0.0831829   0.3689351
iLiNS-DOSE        MALAWI         0                    NA                -0.0190396   -0.2157634   0.1458522
iLiNS-DYAD-M      MALAWI         0                    NA                 0.3390640   -0.1077526   0.6056552
JiVitA-3          BANGLADESH     0                    NA                 0.2141117    0.0718131   0.3345947
JiVitA-4          BANGLADESH     0                    NA                 0.2710070   -0.1691904   0.5454711
Keneba            GAMBIA         0                    NA                 0.2787412   -0.0348255   0.4972927
VITAMIN-A         INDIA          0                    NA                 0.3019123   -0.2081567   0.5966364
ZVITAMBO          ZIMBABWE       0                    NA                 0.3932845    0.3017691   0.4728053
