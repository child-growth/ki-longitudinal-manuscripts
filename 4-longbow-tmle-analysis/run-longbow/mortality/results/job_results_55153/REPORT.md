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

studyid                     country                        ever_wasted06    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  --------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                        0      201     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                        1        2     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                        0       60     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                        1        0     263  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                        0      166     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                        1        1     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                        0       83     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                        1        1     251  dead0plus        
ki0047075b-MAL-ED           PERU                           0                        0      289     302  dead0plus        
ki0047075b-MAL-ED           PERU                           0                        1        2     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                        0       11     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                        1        0     302  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        0      276     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        1        0     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        0       36     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        1        0     312  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      244     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        3     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0       14     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0     261  dead0plus        
ki1000109-EE                PAKISTAN                       0                        0      248     380  dead0plus        
ki1000109-EE                PAKISTAN                       0                        1        2     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                        0      128     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                        1        2     380  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                        0     2967    3895  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                        1       36    3895  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                        0      853    3895  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                        1       39    3895  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                        0     1142    1508  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                        1       22    1508  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                        0      330    1508  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                        1       14    1508  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                        0      316     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                        1        2     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                        0       96     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                        1        4     418  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                        0      514     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                        1        5     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                        0      181     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                        1        0     700  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     2038    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      357    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2396  dead0plus        
ki1101329-Keneba            GAMBIA                         0                        0     1745    2480  dead0plus        
ki1101329-Keneba            GAMBIA                         0                        1       51    2480  dead0plus        
ki1101329-Keneba            GAMBIA                         1                        0      649    2480  dead0plus        
ki1101329-Keneba            GAMBIA                         1                        1       35    2480  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        0      296     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        1        2     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        0       40     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        1        0     338  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                        0      422     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                        1        5     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                        0      257     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                        1        2     686  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                        0    10491   13862  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                        1      736   13862  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                        0     2315   13862  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                        1      320   13862  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                        0     1675    1814  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                        1      110    1814  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                        0       25    1814  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                        1        4    1814  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        0     1088    1182  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        1       36    1182  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        0       52    1182  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        1        6    1182  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                        0    21053   26918  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                        1      421   26918  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                        0     5264   26918  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                        1      180   26918  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                        0     4520    5252  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                        1       38    5252  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                        0      684    5252  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                        1       10    5252  dead0plus        


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
![](/tmp/fb414a73-4175-4f01-8cba-75421ce76f18/70996547-3b27-4ac1-96a4-cae92bf1f34b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fb414a73-4175-4f01-8cba-75421ce76f18/70996547-3b27-4ac1-96a4-cae92bf1f34b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fb414a73-4175-4f01-8cba-75421ce76f18/70996547-3b27-4ac1-96a4-cae92bf1f34b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fb414a73-4175-4f01-8cba-75421ce76f18/70996547-3b27-4ac1-96a4-cae92bf1f34b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0120584   0.0081631   0.0159537
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0430323   0.0295662   0.0564983
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0187983   0.0093151   0.0282815
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0415199   0.0177784   0.0652614
ki1101329-Keneba          GAMBIA       0                    NA                0.0286535   0.0209214   0.0363855
ki1101329-Keneba          GAMBIA       1                    NA                0.0520956   0.0347372   0.0694541
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0659378   0.0613647   0.0705110
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1196041   0.1072936   0.1319145
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0320285   0.0217306   0.0423264
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.1034483   0.0250390   0.1818575
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0196321   0.0177877   0.0214764
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0327833   0.0280476   0.0375190
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0083327   0.0055563   0.0111092
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0141258   0.0041392   0.0241124


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0192555   0.0149392   0.0235717
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
ki1101329-Keneba          GAMBIA       NA                   NA                0.0346774   0.0274751   0.0418797
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0761795   0.0717631   0.0805958
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0355330   0.0249750   0.0460910
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0223271   0.0205277   0.0241264
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0091394   0.0063930   0.0118858


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 3.568651   2.2759351   5.595620
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.208708   1.1698388   4.170140
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.818127   1.1836465   2.792714
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.813892   1.6032336   2.052230
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 3.229885   1.4178129   7.357923
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.669885   1.4121485   1.974662
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.695215   0.7750565   3.707799


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0071970    0.0039720   0.0104221
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0050744   -0.0003482   0.0104970
ki1101329-Keneba          GAMBIA       0                    NA                0.0060240    0.0009444   0.0111035
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0102417    0.0077249   0.0127584
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0035045   -0.0004745   0.0074836
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0026950    0.0016842   0.0037058
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0008066   -0.0005840   0.0021972


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.3737666    0.2102680   0.5034160
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2125608   -0.0155611   0.3894406
ki1101329-Keneba          GAMBIA       0                    NA                0.1737141    0.0187429   0.3042104
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1344413    0.1016143   0.1660687
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0986274   -0.0164951   0.2007117
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1207056    0.0755793   0.1636290
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0882586   -0.0727575   0.2251070
