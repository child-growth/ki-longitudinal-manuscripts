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

**Intervention Variable:** ever_wasted06_noBW

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* impfloor
* earlybf
* hfoodsec
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* predexfd6
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_impfloor
* delta_earlybf
* delta_hfoodsec
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20
* delta_predexfd6

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_wasted06_noBW    dead   n_cell       n
--------------------------  -----------------------------  -------------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                        0      221     238
ki0047075b-MAL-ED           BANGLADESH                     0                        1        0     238
ki0047075b-MAL-ED           BANGLADESH                     1                        0       17     238
ki0047075b-MAL-ED           BANGLADESH                     1                        1        0     238
ki0047075b-MAL-ED           INDIA                          0                        0      194     230
ki0047075b-MAL-ED           INDIA                          0                        1        0     230
ki0047075b-MAL-ED           INDIA                          1                        0       36     230
ki0047075b-MAL-ED           INDIA                          1                        1        0     230
ki0047075b-MAL-ED           PERU                           0                        0      264     270
ki0047075b-MAL-ED           PERU                           0                        1        1     270
ki0047075b-MAL-ED           PERU                           1                        0        5     270
ki0047075b-MAL-ED           PERU                           1                        1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        0      247     258
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        1        0     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        0       11     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        1        0     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      237     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0        8     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0     245
ki1000304-VITAMIN-A         INDIA                          0                        0     2324    2355
ki1000304-VITAMIN-A         INDIA                          0                        1       11    2355
ki1000304-VITAMIN-A         INDIA                          1                        0       20    2355
ki1000304-VITAMIN-A         INDIA                          1                        1        0    2355
ki1000304b-SAS-CompFeed     INDIA                          0                        0     1177    1357
ki1000304b-SAS-CompFeed     INDIA                          0                        1        5    1357
ki1000304b-SAS-CompFeed     INDIA                          1                        0      169    1357
ki1000304b-SAS-CompFeed     INDIA                          1                        1        6    1357
ki1000304b-SAS-FoodSuppl    INDIA                          0                        0      327     328
ki1000304b-SAS-FoodSuppl    INDIA                          0                        1        1     328
ki1000304b-SAS-FoodSuppl    INDIA                          1                        0        0     328
ki1000304b-SAS-FoodSuppl    INDIA                          1                        1        0     328
ki1017093b-PROVIDE          BANGLADESH                     0                        0      574     605
ki1017093b-PROVIDE          BANGLADESH                     0                        1        0     605
ki1017093b-PROVIDE          BANGLADESH                     1                        0       31     605
ki1017093b-PROVIDE          BANGLADESH                     1                        1        0     605
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     1819    2001
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        1    2001
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      181    2001
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2001
ki1101329-Keneba            GAMBIA                         0                        0     1902    2207
ki1101329-Keneba            GAMBIA                         0                        1       25    2207
ki1101329-Keneba            GAMBIA                         1                        0      275    2207
ki1101329-Keneba            GAMBIA                         1                        1        5    2207
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        0       39      39
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        1        0      39
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        0        0      39
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        1        0      39
ki1113344-GMS-Nepal         NEPAL                          0                        0      474     556
ki1113344-GMS-Nepal         NEPAL                          0                        1        1     556
ki1113344-GMS-Nepal         NEPAL                          1                        0       81     556
ki1113344-GMS-Nepal         NEPAL                          1                        1        0     556
ki1126311-ZVITAMBO          ZIMBABWE                       0                        0     9780   10406
ki1126311-ZVITAMBO          ZIMBABWE                       0                        1      265   10406
ki1126311-ZVITAMBO          ZIMBABWE                       1                        0      344   10406
ki1126311-ZVITAMBO          ZIMBABWE                       1                        1       17   10406
ki1148112-iLiNS-DOSE        MALAWI                         0                        0      978     983
ki1148112-iLiNS-DOSE        MALAWI                         0                        1        5     983
ki1148112-iLiNS-DOSE        MALAWI                         1                        0        0     983
ki1148112-iLiNS-DOSE        MALAWI                         1                        1        0     983
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        0     1027    1044
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        1       16    1044
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        0        1    1044
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        1        0    1044
kiGH5241-JiVitA-3           BANGLADESH                     0                        0    15646   16845
kiGH5241-JiVitA-3           BANGLADESH                     0                        1      130   16845
kiGH5241-JiVitA-3           BANGLADESH                     1                        0     1054   16845
kiGH5241-JiVitA-3           BANGLADESH                     1                        1       15   16845
kiGH5241-JiVitA-4           BANGLADESH                     0                        0     4783    4944
kiGH5241-JiVitA-4           BANGLADESH                     0                        1       36    4944
kiGH5241-JiVitA-4           BANGLADESH                     1                        0      123    4944
kiGH5241-JiVitA-4           BANGLADESH                     1                        1        2    4944


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/5cd002b1-4338-4c30-b903-c32f0abee02b/2c574f48-16a5-4145-8758-1c7f07590bba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5cd002b1-4338-4c30-b903-c32f0abee02b/2c574f48-16a5-4145-8758-1c7f07590bba/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5cd002b1-4338-4c30-b903-c32f0abee02b/2c574f48-16a5-4145-8758-1c7f07590bba/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5cd002b1-4338-4c30-b903-c32f0abee02b/2c574f48-16a5-4145-8758-1c7f07590bba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0042301   -0.0001967   0.0086569
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0342857    0.0129503   0.0556212
ki1101329-Keneba          GAMBIA       0                    NA                0.0129735    0.0079200   0.0180271
ki1101329-Keneba          GAMBIA       1                    NA                0.0178571    0.0023418   0.0333725
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0263913    0.0232551   0.0295276
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0463499    0.0246144   0.0680854
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0082347    0.0068480   0.0096215
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0140896    0.0065330   0.0216463


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0081061   0.0043373   0.0118750
ki1101329-Keneba          GAMBIA       NA                   NA                0.0135931   0.0087610   0.0184252
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0270998   0.0239798   0.0302197
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0086079   0.0071912   0.0100246


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 8.105143   1.9878557   33.047339
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.376429   0.5311619    3.566814
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.756256   1.0826956    2.848847
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.711004   0.9855804    2.970365


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0038760    0.0009881   0.0067638
ki1101329-Keneba          GAMBIA       0                    NA                0.0006196   -0.0014517   0.0026909
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0007084   -0.0000607   0.0014776
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0003732   -0.0001297   0.0008760


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4781572   -0.1093728   0.7545281
ki1101329-Keneba          GAMBIA       0                    NA                0.0455803   -0.1186509   0.1857005
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0261413   -0.0025057   0.0539698
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0433527   -0.0155400   0.0988301
