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

studyid                     country                        pers_wasted024    dead   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------  -----  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                    0      246     263  dead             
ki0047075b-MAL-ED           BANGLADESH                     0                    1        2     263  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                    0       15     263  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                    1        0     263  dead             
ki0047075b-MAL-ED           INDIA                          0                    0      226     251  dead             
ki0047075b-MAL-ED           INDIA                          0                    1        2     251  dead             
ki0047075b-MAL-ED           INDIA                          1                    0       23     251  dead             
ki0047075b-MAL-ED           INDIA                          1                    1        0     251  dead             
ki0047075b-MAL-ED           PERU                           0                    0      299     302  dead             
ki0047075b-MAL-ED           PERU                           0                    1        2     302  dead             
ki0047075b-MAL-ED           PERU                           1                    0        1     302  dead             
ki0047075b-MAL-ED           PERU                           1                    1        0     302  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    0      306     312  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    1        0     312  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    0        6     312  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    1        0     312  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      258     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        3     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        0     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     261  dead             
ki1000109-EE                PAKISTAN                       0                    0      342     380  dead             
ki1000109-EE                PAKISTAN                       0                    1        4     380  dead             
ki1000109-EE                PAKISTAN                       1                    0       34     380  dead             
ki1000109-EE                PAKISTAN                       1                    1        0     380  dead             
ki1000304-VITAMIN-A         INDIA                          0                    0     3228    3904  dead             
ki1000304-VITAMIN-A         INDIA                          0                    1       36    3904  dead             
ki1000304-VITAMIN-A         INDIA                          1                    0      601    3904  dead             
ki1000304-VITAMIN-A         INDIA                          1                    1       39    3904  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                    0     1355    1513  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                    1       22    1513  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                    0      121    1513  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                    1       15    1513  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                    0      338     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                    1        2     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                    0       74     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                    1        4     418  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                    0      669     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                    1        4     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                    0       27     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                    1        0     700  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     2324    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0       71    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396  dead             
ki1101329-Keneba            GAMBIA                         0                    0     2662    2920  dead             
ki1101329-Keneba            GAMBIA                         0                    1       53    2920  dead             
ki1101329-Keneba            GAMBIA                         1                    0      196    2920  dead             
ki1101329-Keneba            GAMBIA                         1                    1        9    2920  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    0     6025    7166  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    1       25    7166  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    0     1102    7166  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    1       14    7166  dead             
ki1113344-GMS-Nepal         NEPAL                          0                    0      580     686  dead             
ki1113344-GMS-Nepal         NEPAL                          0                    1        5     686  dead             
ki1113344-GMS-Nepal         NEPAL                          1                    0       99     686  dead             
ki1113344-GMS-Nepal         NEPAL                          1                    1        2     686  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0    12358   13946  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      831   13946  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0      535   13946  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1      222   13946  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                    0     1744    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                    1      120    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                    0       59    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                    1        8    1931  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0     1141    1201  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       33    1201  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0       22    1201  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1        5    1201  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    24625   26956  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                    1      444   26956  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                    0     1768   26956  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                    1      119   26956  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     4955    5443  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       39    5443  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                    0      439    5443  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                    1       10    5443  dead             


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/51d92777-c5f5-40b1-ac31-7a0cd67624d1/9dd1efaf-855d-4556-b03b-d38f02e7bcef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/51d92777-c5f5-40b1-ac31-7a0cd67624d1/9dd1efaf-855d-4556-b03b-d38f02e7bcef/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/51d92777-c5f5-40b1-ac31-7a0cd67624d1/9dd1efaf-855d-4556-b03b-d38f02e7bcef/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/51d92777-c5f5-40b1-ac31-7a0cd67624d1/9dd1efaf-855d-4556-b03b-d38f02e7bcef/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0110602   0.0074737   0.0146468
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0600918   0.0415631   0.0786205
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0160340   0.0089041   0.0231639
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.1113083   0.0397551   0.1828615
ki1101329-Keneba            GAMBIA         0                    NA                0.0195212   0.0143163   0.0247260
ki1101329-Keneba            GAMBIA         1                    NA                0.0439024   0.0158519   0.0719530
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0041259   0.0025114   0.0057404
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0125954   0.0060135   0.0191773
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0635074   0.0593348   0.0676800
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.3586138   0.3192323   0.3979953
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0643777   0.0532333   0.0755221
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.1194030   0.0417391   0.1970669
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0281090   0.0186260   0.0375921
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.1851852   0.0533715   0.3169988
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0177347   0.0161251   0.0193444
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0627372   0.0506327   0.0748417
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0078057   0.0052938   0.0103177
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0210942   0.0084795   0.0337088


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0192111   0.0149047   0.0235174
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
ki1101329-Keneba            GAMBIA         NA                   NA                0.0212329   0.0160032   0.0264626
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054424   0.0037388   0.0071459
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0755055   0.0711204   0.0798906
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0316403   0.0217366   0.0415440
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0208859   0.0191395   0.0226323
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0090024   0.0064532   0.0115515


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 5.433156   3.4733052    8.498874
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 6.942012   4.1967982   11.482927
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba            GAMBIA         1                    0                 2.248965   1.1254026    4.494251
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 3.052739   1.5893407    5.863572
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 5.646803   4.9700921    6.415653
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.854726   0.9461633    3.635747
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 6.588103   2.9968710   14.482807
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 3.537536   2.8721161    4.357122
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 2.702397   1.3698595    5.331165


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0081509    0.0050036   0.0112981
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0084207    0.0017758   0.0150656
ki1101329-Keneba            GAMBIA         0                    NA                0.0017117   -0.0003039   0.0037273
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0013164    0.0002668   0.0023660
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0119981    0.0100551   0.0139412
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0019092   -0.0008499   0.0046683
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0035313   -0.0000256   0.0070881
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0031512    0.0023396   0.0039627
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0011967    0.0000646   0.0023287


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.4242794    0.2733566   0.5438558
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.3443391    0.1415746   0.4992096
ki1101329-Keneba            GAMBIA         0                    NA                0.0806155   -0.0171560   0.1689889
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.2418870    0.0418475   0.4001630
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.1589038    0.1342286   0.1828758
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0288023   -0.0134746   0.0693156
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.1116067   -0.0025722   0.2127823
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.1508754    0.1142983   0.1859419
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.1329275    0.0022330   0.2465027
