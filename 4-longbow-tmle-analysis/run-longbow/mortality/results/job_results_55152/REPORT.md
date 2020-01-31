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

**Intervention Variable:** ever_co06

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* impfloor
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
* delta_impfloor
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

studyid                     country                        ever_co06    dead624   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ----------  --------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                  0      231     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     0                  1        0     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                  0        9     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                  1        0     240  dead624          
ki0047075b-MAL-ED           INDIA                          0                  0      217     235  dead624          
ki0047075b-MAL-ED           INDIA                          0                  1        0     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                  0       18     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                  1        0     235  dead624          
ki0047075b-MAL-ED           PERU                           0                  0      271     273  dead624          
ki0047075b-MAL-ED           PERU                           0                  1        1     273  dead624          
ki0047075b-MAL-ED           PERU                           1                  0        1     273  dead624          
ki0047075b-MAL-ED           PERU                           1                  1        0     273  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                  0      256     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                  1        0     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                  0        5     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                  1        0     261  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      241     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        0     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        4     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     245  dead624          
ki1000109-EE                PAKISTAN                       0                  0      310     374  dead624          
ki1000109-EE                PAKISTAN                       0                  1        2     374  dead624          
ki1000109-EE                PAKISTAN                       1                  0       60     374  dead624          
ki1000109-EE                PAKISTAN                       1                  1        2     374  dead624          
ki1000304-VITAMIN-A         INDIA                          0                  0     3262    3604  dead624          
ki1000304-VITAMIN-A         INDIA                          0                  1       17    3604  dead624          
ki1000304-VITAMIN-A         INDIA                          1                  0      311    3604  dead624          
ki1000304-VITAMIN-A         INDIA                          1                  1       14    3604  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                  0     1278    1383  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                  1        6    1383  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                  0       94    1383  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                  1        5    1383  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                  0      348     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                  1        1     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                  0       50     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                  1        3     402  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                  0      587     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                  1        2     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                  0       28     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                  1        0     617  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                  0     2076    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                  1        0    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                  0       20    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                  1        0    2096  dead624          
ki1101329-Keneba            GAMBIA                         0                  0     2216    2311  dead624          
ki1101329-Keneba            GAMBIA                         0                  1       30    2311  dead624          
ki1101329-Keneba            GAMBIA                         1                  0       56    2311  dead624          
ki1101329-Keneba            GAMBIA                         1                  1        9    2311  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                  0      323     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                  1        2     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                  0       11     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                  1        0     336  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                  0      557     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                  1        1     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                  0       33     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                  1        1     592  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                  0    11092   11607  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                  1      363   11607  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                  0      120   11607  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                  1       32   11607  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                  0     1631    1756  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                  1      110    1756  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                  0       12    1756  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                  1        3    1756  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                  0     1105    1142  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                  1       22    1142  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                  0       13    1142  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                  1        2    1142  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                  0    19725   20966  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                  1      218   20966  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                  0      982   20966  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                  1       41   20966  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                  0     5009    5237  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                  1       42    5237  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                  0      182    5237  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                  1        4    5237  dead624          


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
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/f01306c3-1623-49b0-8801-f2d891171f2a/b93b457a-6f66-4e50-ae3b-82c937fa7ee9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f01306c3-1623-49b0-8801-f2d891171f2a/b93b457a-6f66-4e50-ae3b-82c937fa7ee9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f01306c3-1623-49b0-8801-f2d891171f2a/b93b457a-6f66-4e50-ae3b-82c937fa7ee9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f01306c3-1623-49b0-8801-f2d891171f2a/b93b457a-6f66-4e50-ae3b-82c937fa7ee9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0052125   0.0027410   0.0076841
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0417701   0.0196660   0.0638741
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0046729   0.0007523   0.0085935
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0505051   0.0166392   0.0843709
ki1101329-Keneba          GAMBIA       0                    NA                0.0133571   0.0086084   0.0181058
ki1101329-Keneba          GAMBIA       1                    NA                0.1384615   0.0544793   0.2224438
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0317050   0.0284550   0.0349549
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1999683   0.1670467   0.2328900
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0109831   0.0094923   0.0124738
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0384726   0.0254727   0.0514725


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0086016   0.0055863   0.0116168
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0079537   0.0042751   0.0116324
ki1101329-Keneba          GAMBIA       NA                   NA                0.0168758   0.0116232   0.0221285
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0340312   0.0307326   0.0373298
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0123533   0.0108147   0.0138920


### Parameter: RR


studyid                   country      intervention_level   baseline_level     estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ---------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                  1.000000   1.000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                  8.013377   3.937559   16.308125
ki1000304b-SAS-CompFeed   INDIA        0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 10.808081   3.075062   37.987725
ki1101329-Keneba          GAMBIA       0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 10.366154   5.131995   20.938669
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                  6.307158   5.195649    7.656454
kiGH5241-JiVitA-3         BANGLADESH   0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                  3.502907   2.425999    5.057857


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0033890   0.0013534   0.0054246
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0032808   0.0004450   0.0061167
ki1101329-Keneba          GAMBIA       0                    NA                0.0035187   0.0010070   0.0060305
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0023262   0.0013982   0.0032542
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0013703   0.0007433   0.0019972


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.3939996    0.1671556   0.5590575
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4124894   -0.0674433   0.6766397
ki1101329-Keneba          GAMBIA       0                    NA                0.2085074    0.0620585   0.3320900
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0683552    0.0411727   0.0947671
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1109238    0.0608235   0.1583515
