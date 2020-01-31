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

**Intervention Variable:** ever_wasted06_noBW

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

studyid                     country                        ever_wasted06_noBW    dead6plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  -------------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                             0      221     239  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     0                             1        0     239  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                             0       18     239  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                             1        0     239  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                             0      193     229  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                             1        0     229  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                             0       36     229  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                             1        0     229  dead6plus        
ki0047075b-MAL-ED           PERU                           0                             0      267     273  dead6plus        
ki0047075b-MAL-ED           PERU                           0                             1        1     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                             0        5     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                             1        0     273  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                             0      247     260  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                             1        0     260  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                             0       13     260  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                             1        0     260  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      235     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0       10     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        0     245  dead6plus        
ki1000109-EE                PAKISTAN                       0                             0      288     371  dead6plus        
ki1000109-EE                PAKISTAN                       0                             1        2     371  dead6plus        
ki1000109-EE                PAKISTAN                       1                             0       79     371  dead6plus        
ki1000109-EE                PAKISTAN                       1                             1        2     371  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                             0     3013    3076  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                             1       21    3076  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                             0       41    3076  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                             1        1    3076  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                             0     1177    1357  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                             1        5    1357  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                             0      169    1357  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                             1        6    1357  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                             0      328     329  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                             1        1     329  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                             0        0     329  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                             1        0     329  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                             0      573     609  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                             1        3     609  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                             0       33     609  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                             1        0     609  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     1894    2080  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1        0    2080  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      186    2080  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        0    2080  dead6plus        
ki1101329-Keneba            GAMBIA                         0                             0     1952    2262  dead6plus        
ki1101329-Keneba            GAMBIA                         0                             1       53    2262  dead6plus        
ki1101329-Keneba            GAMBIA                         1                             0      244    2262  dead6plus        
ki1101329-Keneba            GAMBIA                         1                             1       13    2262  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                             0       39      39  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                             1        0      39  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                             0        0      39  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                             1        0      39  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                             0      446     568  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                             1        1     568  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                             0      120     568  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                             1        1     568  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                             0    10636   11378  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                             1      362   11378  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                             0      354   11378  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                             1       26   11378  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                             0     1058    1128  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                             1       70    1128  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                             0        0    1128  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                             1        0    1128  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                             0     1029    1055  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                             1       26    1055  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                             0        0    1055  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                             1        0    1055  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                             0    18870   20497  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                             1      240   20497  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                             0     1345   20497  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                             1       42   20497  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                             0     4785    4948  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                             1       37    4948  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                             0      123    4948  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                             1        3    4948  dead6plus        


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
* studyid: ki1000304-VITAMIN-A, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/fd781457-ac54-471a-b663-9cc0acdda10b/ab5db06f-c0f8-4f8a-9b9a-2b42664fdac4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fd781457-ac54-471a-b663-9cc0acdda10b/ab5db06f-c0f8-4f8a-9b9a-2b42664fdac4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fd781457-ac54-471a-b663-9cc0acdda10b/ab5db06f-c0f8-4f8a-9b9a-2b42664fdac4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fd781457-ac54-471a-b663-9cc0acdda10b/ab5db06f-c0f8-4f8a-9b9a-2b42664fdac4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0042301   -0.0001967   0.0086569
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0342857    0.0129503   0.0556212
ki1101329-Keneba          GAMBIA       0                    NA                0.0267657    0.0196517   0.0338797
ki1101329-Keneba          GAMBIA       1                    NA                0.0483875    0.0218311   0.0749440
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0328902    0.0295555   0.0362249
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0684097    0.0429283   0.0938912
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0125269    0.0109230   0.0141307
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0311759    0.0217090   0.0406429


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0081061   0.0043373   0.0118750
ki1101329-Keneba          GAMBIA       NA                   NA                0.0291777   0.0222404   0.0361151
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0341009   0.0307660   0.0374358
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0137581   0.0121339   0.0153823


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 8.105143   1.9878557   33.047339
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.807817   0.9824833    3.326470
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.079944   1.4138152    3.059923
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.488721   1.7902916    3.459623


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0038760    0.0009881   0.0067638
ki1101329-Keneba          GAMBIA       0                    NA                0.0024120   -0.0007974   0.0056213
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0012107    0.0003467   0.0020747
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0012312    0.0005789   0.0018835


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4781572   -0.1093728   0.7545281
ki1101329-Keneba          GAMBIA       0                    NA                0.0826653   -0.0322700   0.1848035
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0355037    0.0100516   0.0603015
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0894904    0.0421785   0.1344653
