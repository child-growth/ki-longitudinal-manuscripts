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

**Intervention Variable:** ever_underweight624

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* earlybf
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
* delta_earlybf
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

studyid                     country                        ever_underweight624    dead   n_cell       n
--------------------------  -----------------------------  --------------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                         0      160     239
ki0047075b-MAL-ED           BANGLADESH                     0                         1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                         0       79     239
ki0047075b-MAL-ED           BANGLADESH                     1                         1        0     239
ki0047075b-MAL-ED           INDIA                          0                         0      158     235
ki0047075b-MAL-ED           INDIA                          0                         1        0     235
ki0047075b-MAL-ED           INDIA                          1                         0       77     235
ki0047075b-MAL-ED           INDIA                          1                         1        0     235
ki0047075b-MAL-ED           PERU                           0                         0      233     270
ki0047075b-MAL-ED           PERU                           0                         1        1     270
ki0047075b-MAL-ED           PERU                           1                         0       36     270
ki0047075b-MAL-ED           PERU                           1                         1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         0      208     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         0       51     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      152     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0       93     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        0     245
ki1000304-VITAMIN-A         INDIA                          0                         0     2749    3507
ki1000304-VITAMIN-A         INDIA                          0                         1        8    3507
ki1000304-VITAMIN-A         INDIA                          1                         0      746    3507
ki1000304-VITAMIN-A         INDIA                          1                         1        4    3507
ki1000304b-SAS-CompFeed     INDIA                          0                         0      922    1386
ki1000304b-SAS-CompFeed     INDIA                          0                         1        8    1386
ki1000304b-SAS-CompFeed     INDIA                          1                         0      454    1386
ki1000304b-SAS-CompFeed     INDIA                          1                         1        2    1386
ki1000304b-SAS-FoodSuppl    INDIA                          0                         0      217     398
ki1000304b-SAS-FoodSuppl    INDIA                          0                         1        2     398
ki1000304b-SAS-FoodSuppl    INDIA                          1                         0      179     398
ki1000304b-SAS-FoodSuppl    INDIA                          1                         1        0     398
ki1017093b-PROVIDE          BANGLADESH                     0                         0      423     613
ki1017093b-PROVIDE          BANGLADESH                     0                         1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                         0      190     613
ki1017093b-PROVIDE          BANGLADESH                     1                         1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1699    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      317    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2017
ki1101329-Keneba            GAMBIA                         0                         0     1768    2697
ki1101329-Keneba            GAMBIA                         0                         1       22    2697
ki1101329-Keneba            GAMBIA                         1                         0      896    2697
ki1101329-Keneba            GAMBIA                         1                         1       11    2697
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0     4731    7135
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1       18    7135
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0     2365    7135
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1       21    7135
ki1113344-GMS-Nepal         NEPAL                          0                         0      315     588
ki1113344-GMS-Nepal         NEPAL                          0                         1        1     588
ki1113344-GMS-Nepal         NEPAL                          1                         0      272     588
ki1113344-GMS-Nepal         NEPAL                          1                         1        0     588
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0     9038   10673
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      168   10673
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0     1345   10673
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1      122   10673
ki1148112-iLiNS-DOSE        MALAWI                         0                         0     1131    1693
ki1148112-iLiNS-DOSE        MALAWI                         0                         1       14    1693
ki1148112-iLiNS-DOSE        MALAWI                         1                         0      535    1693
ki1148112-iLiNS-DOSE        MALAWI                         1                         1       13    1693
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0      861    1145
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       11    1145
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0      267    1145
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1        6    1145
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    13500   17236
kiGH5241-JiVitA-3           BANGLADESH                     0                         1      128   17236
kiGH5241-JiVitA-3           BANGLADESH                     1                         0     3587   17236
kiGH5241-JiVitA-3           BANGLADESH                     1                         1       21   17236
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     3673    5419
kiGH5241-JiVitA-4           BANGLADESH                     0                         1       28    5419
kiGH5241-JiVitA-4           BANGLADESH                     1                         0     1701    5419
kiGH5241-JiVitA-4           BANGLADESH                     1                         1       17    5419


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
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
![](/tmp/53d20feb-6021-4c21-9328-6c83ac87dd6c/820f64a9-f8f2-4989-a647-d7380b3eee2b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/53d20feb-6021-4c21-9328-6c83ac87dd6c/820f64a9-f8f2-4989-a647-d7380b3eee2b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/53d20feb-6021-4c21-9328-6c83ac87dd6c/820f64a9-f8f2-4989-a647-d7380b3eee2b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/53d20feb-6021-4c21-9328-6c83ac87dd6c/820f64a9-f8f2-4989-a647-d7380b3eee2b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba            GAMBIA         0                    NA                0.0120012   0.0069594   0.0170430
ki1101329-Keneba            GAMBIA         1                    NA                0.0122398   0.0050885   0.0193910
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0038242   0.0020608   0.0055875
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0087350   0.0050622   0.0124078
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0187256   0.0159235   0.0215276
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0839021   0.0687977   0.0990065
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0118897   0.0056372   0.0181421
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0246357   0.0116009   0.0376705
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0126147   0.0052039   0.0200254
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0219780   0.0045790   0.0393771
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0094677   0.0078575   0.0110780
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0057680   0.0032616   0.0082744
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0076486   0.0046941   0.0106032
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0097382   0.0052073   0.0142690


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba            GAMBIA         NA                   NA                0.0122358   0.0080860   0.0163857
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054660   0.0037551   0.0071769
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0271714   0.0240868   0.0302560
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0159480   0.0099789   0.0219171
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0148472   0.0078389   0.0218554
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0086447   0.0072479   0.0100415
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0083041   0.0058088   0.0107994


### Parameter: RR


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba            GAMBIA         0                    0                 1.0000000   1.0000000   1.0000000
ki1101329-Keneba            GAMBIA         1                    0                 1.0198780   0.4966357   2.0943945
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.0000000   1.0000000   1.0000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.2841577   1.2237365   4.2634803
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 4.4806186   3.5452486   5.6627743
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.0000000   1.0000000   1.0000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 2.0720310   0.9884463   4.3434958
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.0000000   1.0000000   1.0000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 1.7422577   0.6500948   4.6692604
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 0.6092228   0.3863782   0.9605936
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.2731869   0.6986375   2.3202372


### Parameter: PAR


studyid                     country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
ki1101329-Keneba            GAMBIA         0                    NA                 0.0002346   -0.0027079    0.0031771
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                 0.0016418    0.0002511    0.0030325
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                 0.0084458    0.0064001    0.0104916
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                 0.0040584   -0.0004549    0.0085717
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                 0.0022325   -0.0022825    0.0067474
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                -0.0008230   -0.0014310   -0.0002151
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                 0.0006555   -0.0010967    0.0024076


### Parameter: PAF


studyid                     country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
ki1101329-Keneba            GAMBIA         0                    NA                 0.0191740   -0.2533126    0.2324185
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                 0.3003732    0.0189029    0.5010915
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                 0.3108349    0.2407788    0.3744267
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                 0.2544749   -0.0691485    0.4801398
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                 0.1503643   -0.2036237    0.4002437
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                -0.0952085   -0.1670035   -0.0278304
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                 0.0789335   -0.1579338    0.2673471
