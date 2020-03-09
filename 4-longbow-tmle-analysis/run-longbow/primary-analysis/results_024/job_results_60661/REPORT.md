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

**Intervention Variable:** ever_sunderweight024

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

studyid           country                        ever_sunderweight024    dead   n_cell       n
----------------  -----------------------------  ---------------------  -----  -------  ------
Burkina Faso Zn   BURKINA FASO                   0                          0     6333    7165
Burkina Faso Zn   BURKINA FASO                   0                          1       31    7165
Burkina Faso Zn   BURKINA FASO                   1                          0      793    7165
Burkina Faso Zn   BURKINA FASO                   1                          1        8    7165
EE                PAKISTAN                       0                          0      175     380
EE                PAKISTAN                       0                          1        1     380
EE                PAKISTAN                       1                          0      201     380
EE                PAKISTAN                       1                          1        3     380
GMS-Nepal         NEPAL                          0                          0      464     697
GMS-Nepal         NEPAL                          0                          1        3     697
GMS-Nepal         NEPAL                          1                          0      226     697
GMS-Nepal         NEPAL                          1                          1        4     697
iLiNS-DOSE        MALAWI                         0                          0     1576    1931
iLiNS-DOSE        MALAWI                         0                          1       99    1931
iLiNS-DOSE        MALAWI                         1                          0      227    1931
iLiNS-DOSE        MALAWI                         1                          1       29    1931
iLiNS-DYAD-M      MALAWI                         0                          0     1024    1205
iLiNS-DYAD-M      MALAWI                         0                          1       24    1205
iLiNS-DYAD-M      MALAWI                         1                          0      141    1205
iLiNS-DYAD-M      MALAWI                         1                          1       16    1205
JiVitA-3          BANGLADESH                     0                          0    21585   27260
JiVitA-3          BANGLADESH                     0                          1      413   27260
JiVitA-3          BANGLADESH                     1                          0     4849   27260
JiVitA-3          BANGLADESH                     1                          1      413   27260
JiVitA-4          BANGLADESH                     0                          0     4478    5443
JiVitA-4          BANGLADESH                     0                          1       28    5443
JiVitA-4          BANGLADESH                     1                          0      916    5443
JiVitA-4          BANGLADESH                     1                          1       21    5443
Keneba            GAMBIA                         0                          0     2374    2929
Keneba            GAMBIA                         0                          1       41    2929
Keneba            GAMBIA                         1                          0      491    2929
Keneba            GAMBIA                         1                          1       23    2929
MAL-ED            BANGLADESH                     0                          0      223     265
MAL-ED            BANGLADESH                     0                          1        2     265
MAL-ED            BANGLADESH                     1                          0       39     265
MAL-ED            BANGLADESH                     1                          1        1     265
MAL-ED            INDIA                          0                          0      197     251
MAL-ED            INDIA                          0                          1        1     251
MAL-ED            INDIA                          1                          0       52     251
MAL-ED            INDIA                          1                          1        1     251
MAL-ED            PERU                           0                          0      285     303
MAL-ED            PERU                           0                          1        2     303
MAL-ED            PERU                           1                          0       16     303
MAL-ED            PERU                           1                          1        0     303
MAL-ED            SOUTH AFRICA                   0                          0      287     314
MAL-ED            SOUTH AFRICA                   0                          1        0     314
MAL-ED            SOUTH AFRICA                   1                          0       26     314
MAL-ED            SOUTH AFRICA                   1                          1        1     314
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0      225     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        2     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0       34     262
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        1     262
PROVIDE           BANGLADESH                     0                          0      602     700
PROVIDE           BANGLADESH                     0                          1        4     700
PROVIDE           BANGLADESH                     1                          0       94     700
PROVIDE           BANGLADESH                     1                          1        0     700
SAS-CompFeed      INDIA                          0                          0     1100    1533
SAS-CompFeed      INDIA                          0                          1       23    1533
SAS-CompFeed      INDIA                          1                          0      383    1533
SAS-CompFeed      INDIA                          1                          1       27    1533
SAS-FoodSuppl     INDIA                          0                          0      230     418
SAS-FoodSuppl     INDIA                          0                          1        2     418
SAS-FoodSuppl     INDIA                          1                          0      182     418
SAS-FoodSuppl     INDIA                          1                          1        4     418
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     2242    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      153    2396
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2396
VITAMIN-A         INDIA                          0                          0     2612    3906
VITAMIN-A         INDIA                          0                          1       27    3906
VITAMIN-A         INDIA                          1                          0     1216    3906
VITAMIN-A         INDIA                          1                          1       51    3906
ZVITAMBO          ZIMBABWE                       0                          0    12049   14086
ZVITAMBO          ZIMBABWE                       0                          1      721   14086
ZVITAMBO          ZIMBABWE                       1                          0      929   14086
ZVITAMBO          ZIMBABWE                       1                          1      387   14086


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/3ec97120-0c96-4731-93b0-cced4591b6f8/ed014001-d99c-4d23-b2cf-d9b510c00383/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3ec97120-0c96-4731-93b0-cced4591b6f8/ed014001-d99c-4d23-b2cf-d9b510c00383/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3ec97120-0c96-4731-93b0-cced4591b6f8/ed014001-d99c-4d23-b2cf-d9b510c00383/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3ec97120-0c96-4731-93b0-cced4591b6f8/ed014001-d99c-4d23-b2cf-d9b510c00383/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0048712   0.0031605   0.0065818
Burkina Faso Zn   BURKINA FASO   1                    NA                0.0099875   0.0031008   0.0168742
iLiNS-DOSE        MALAWI         0                    NA                0.0591025   0.0478249   0.0703801
iLiNS-DOSE        MALAWI         1                    NA                0.1130431   0.0739461   0.1521401
iLiNS-DYAD-M      MALAWI         0                    NA                0.0228848   0.0138235   0.0319461
iLiNS-DYAD-M      MALAWI         1                    NA                0.0999653   0.0504129   0.1495177
JiVitA-3          BANGLADESH     0                    NA                0.0191703   0.0173625   0.0209782
JiVitA-3          BANGLADESH     1                    NA                0.0755417   0.0669496   0.0841338
JiVitA-4          BANGLADESH     0                    NA                0.0062326   0.0038548   0.0086103
JiVitA-4          BANGLADESH     1                    NA                0.0214792   0.0121221   0.0308363
Keneba            GAMBIA         0                    NA                0.0169102   0.0117558   0.0220646
Keneba            GAMBIA         1                    NA                0.0455204   0.0269042   0.0641365
SAS-CompFeed      INDIA          0                    NA                0.0210041   0.0085491   0.0334590
SAS-CompFeed      INDIA          1                    NA                0.0660474   0.0424436   0.0896513
VITAMIN-A         INDIA          0                    NA                0.0100610   0.0062522   0.0138698
VITAMIN-A         INDIA          1                    NA                0.0408129   0.0298311   0.0517948
ZVITAMBO          ZIMBABWE       0                    NA                0.0570467   0.0530249   0.0610685
ZVITAMBO          ZIMBABWE       1                    NA                0.2801625   0.2551953   0.3051298


### Parameter: E(Y)


studyid           country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054431   0.0037394   0.0071469
iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
iLiNS-DYAD-M      MALAWI         NA                   NA                0.0331950   0.0230759   0.0433141
JiVitA-3          BANGLADESH     NA                   NA                0.0303008   0.0281489   0.0324527
JiVitA-4          BANGLADESH     NA                   NA                0.0090024   0.0064532   0.0115515
Keneba            GAMBIA         NA                   NA                0.0218505   0.0165551   0.0271458
SAS-CompFeed      INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
VITAMIN-A         INDIA          NA                   NA                0.0199693   0.0155816   0.0243570
ZVITAMBO          ZIMBABWE       NA                   NA                0.0786597   0.0742138   0.0831055


### Parameter: RR


studyid           country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------  -------------  -------------------  ---------------  ---------  ----------  ---------
Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
Burkina Faso Zn   BURKINA FASO   1                    0                 2.050340   0.9457226   4.445167
iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE        MALAWI         1                    0                 1.912661   1.2882858   2.839643
iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M      MALAWI         1                    0                 4.368197   2.3163920   8.237441
JiVitA-3          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-3          BANGLADESH     1                    0                 3.940551   3.4140716   4.548218
JiVitA-4          BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
JiVitA-4          BANGLADESH     1                    0                 3.446270   1.9242083   6.172291
Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
Keneba            GAMBIA         1                    0                 2.691885   1.6160390   4.483953
SAS-CompFeed      INDIA          0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed      INDIA          1                    0                 3.144507   1.7017082   5.810586
VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A         INDIA          1                    0                 4.056552   2.5498394   6.453588
ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO          ZIMBABWE       1                    0                 4.911110   4.3851949   5.500098


### Parameter: PAR


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005720   -0.0002222   0.0013661
iLiNS-DOSE        MALAWI         0                    NA                0.0071844    0.0017694   0.0125994
iLiNS-DYAD-M      MALAWI         0                    NA                0.0103102    0.0038555   0.0167649
JiVitA-3          BANGLADESH     0                    NA                0.0111305    0.0095305   0.0127305
JiVitA-4          BANGLADESH     0                    NA                0.0027698    0.0010761   0.0044635
Keneba            GAMBIA         0                    NA                0.0049402    0.0016418   0.0082387
SAS-CompFeed      INDIA          0                    NA                0.0116117    0.0050610   0.0181624
VITAMIN-A         INDIA          0                    NA                0.0099083    0.0061657   0.0136509
ZVITAMBO          ZIMBABWE       0                    NA                0.0216130    0.0190351   0.0241909


### Parameter: PAF


studyid           country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Burkina Faso Zn   BURKINA FASO   0                    NA                0.1050823   -0.0490188   0.2365458
iLiNS-DOSE        MALAWI         0                    NA                0.1083830    0.0248356   0.1847725
iLiNS-DYAD-M      MALAWI         0                    NA                0.3105954    0.1162534   0.4622003
JiVitA-3          BANGLADESH     0                    NA                0.3673327    0.3222123   0.4094494
JiVitA-4          BANGLADESH     0                    NA                0.3076743    0.1150233   0.4583871
Keneba            GAMBIA         0                    NA                0.2260927    0.0711786   0.3551694
SAS-CompFeed      INDIA          0                    NA                0.3560153    0.1007414   0.5388242
VITAMIN-A         INDIA          0                    NA                0.4961766    0.3162127   0.6287763
ZVITAMBO          ZIMBABWE       0                    NA                0.2747657    0.2448269   0.3035176
