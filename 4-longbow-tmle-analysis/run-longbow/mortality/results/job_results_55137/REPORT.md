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

**Intervention Variable:** ever_wasted06

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
* W_nchldlt5
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
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_wasted06    dead   n_cell       n  outcome_variable 
--------------------------  -----------------------------  --------------  -----  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                   0      201     263  dead             
ki0047075b-MAL-ED           BANGLADESH                     0                   1        2     263  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                   0       60     263  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                   1        0     263  dead             
ki0047075b-MAL-ED           INDIA                          0                   0      166     251  dead             
ki0047075b-MAL-ED           INDIA                          0                   1        1     251  dead             
ki0047075b-MAL-ED           INDIA                          1                   0       83     251  dead             
ki0047075b-MAL-ED           INDIA                          1                   1        1     251  dead             
ki0047075b-MAL-ED           PERU                           0                   0      289     302  dead             
ki0047075b-MAL-ED           PERU                           0                   1        2     302  dead             
ki0047075b-MAL-ED           PERU                           1                   0       11     302  dead             
ki0047075b-MAL-ED           PERU                           1                   1        0     302  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   0      276     312  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   1        0     312  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   0       36     312  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   1        0     312  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      244     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        3     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       14     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     261  dead             
ki1000109-EE                PAKISTAN                       0                   0      248     380  dead             
ki1000109-EE                PAKISTAN                       0                   1        2     380  dead             
ki1000109-EE                PAKISTAN                       1                   0      128     380  dead             
ki1000109-EE                PAKISTAN                       1                   1        2     380  dead             
ki1000304-VITAMIN-A         INDIA                          0                   0     2967    3895  dead             
ki1000304-VITAMIN-A         INDIA                          0                   1       36    3895  dead             
ki1000304-VITAMIN-A         INDIA                          1                   0      853    3895  dead             
ki1000304-VITAMIN-A         INDIA                          1                   1       39    3895  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                   0     1142    1508  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                   1       22    1508  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                   0      330    1508  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                   1       14    1508  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                   0      316     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                   1        2     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                   0       96     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                   1        4     418  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                   0      515     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                   1        4     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                   0      181     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                   1        0     700  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     2038    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        1    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0      357    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2396  dead             
ki1101329-Keneba            GAMBIA                         0                   0     1763    2480  dead             
ki1101329-Keneba            GAMBIA                         0                   1       33    2480  dead             
ki1101329-Keneba            GAMBIA                         1                   0      660    2480  dead             
ki1101329-Keneba            GAMBIA                         1                   1       24    2480  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   0      296     338  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   1        2     338  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   0       40     338  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   1        0     338  dead             
ki1113344-GMS-Nepal         NEPAL                          0                   0      422     686  dead             
ki1113344-GMS-Nepal         NEPAL                          0                   1        5     686  dead             
ki1113344-GMS-Nepal         NEPAL                          1                   0      257     686  dead             
ki1113344-GMS-Nepal         NEPAL                          1                   1        2     686  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                   0    10499   13862  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                   1      728   13862  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                   0     2316   13862  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                   1      319   13862  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                   0     1675    1814  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                   1      110    1814  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                   0       25    1814  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                   1        4    1814  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   0     1091    1182  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   1       33    1182  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   0       53    1182  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   1        5    1182  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                   0    21075   26918  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                   1      399   26918  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                   0     5282   26918  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                   1      162   26918  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                   0     4521    5252  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                   1       37    5252  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                   0      684    5252  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                   1       10    5252  dead             


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




# Results Detail

## Results Plots
![](/tmp/07be36c9-f9c0-4359-a9b9-a1e1f6295dcf/d5659d6b-16fb-4c77-8f6d-286237bc9dec/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/07be36c9-f9c0-4359-a9b9-a1e1f6295dcf/d5659d6b-16fb-4c77-8f6d-286237bc9dec/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/07be36c9-f9c0-4359-a9b9-a1e1f6295dcf/d5659d6b-16fb-4c77-8f6d-286237bc9dec/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/07be36c9-f9c0-4359-a9b9-a1e1f6295dcf/d5659d6b-16fb-4c77-8f6d-286237bc9dec/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0120451   0.0081500   0.0159402
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0423025   0.0289751   0.0556299
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0187983   0.0093151   0.0282815
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0415199   0.0177784   0.0652614
ki1101329-Keneba          GAMBIA       0                    NA                0.0182180   0.0120502   0.0243858
ki1101329-Keneba          GAMBIA       1                    NA                0.0356643   0.0216063   0.0497223
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0652877   0.0607406   0.0698348
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1182139   0.1058351   0.1305926
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0293594   0.0194864   0.0392325
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0862069   0.0139444   0.1584694
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0186031   0.0168267   0.0203795
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0294885   0.0248480   0.0341289
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0080969   0.0053741   0.0108198
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0142773   0.0042818   0.0242728


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0192555   0.0149392   0.0235717
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
ki1101329-Keneba          GAMBIA       NA                   NA                0.0229839   0.0170850   0.0288828
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0755302   0.0711312   0.0799293
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0321489   0.0220886   0.0422092
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0208411   0.0190926   0.0225895
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089490   0.0062382   0.0116597


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.512012   2.2361249   5.515896
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.208708   1.1698388   4.170140
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.957643   1.1642335   3.291750
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.810660   1.5977660   2.051922
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 2.936259   1.1899998   7.245058
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.585135   1.3279992   1.892060
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.763298   0.8100082   3.838503


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0072104    0.0039840   0.0104368
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0050744   -0.0003482   0.0104970
ki1101329-Keneba          GAMBIA       0                    NA                0.0047659    0.0005987   0.0089331
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0102425    0.0077295   0.0127556
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0027895   -0.0008572   0.0064362
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0022380    0.0012662   0.0032097
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0008520   -0.0005359   0.0022400


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.3744589    0.2108821   0.5041278
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2125608   -0.0155611   0.3894406
ki1101329-Keneba          GAMBIA       0                    NA                0.2073584    0.0131883   0.3633226
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1356081    0.1025770   0.1674236
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0867672   -0.0305119   0.1906991
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1073823    0.0609821   0.1514896
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0952102   -0.0686212   0.2339244
