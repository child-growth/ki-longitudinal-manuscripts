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

**Intervention Variable:** ever_underweight624

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_underweight624    dead624   n_cell       n
--------------------------  -----------------------------  --------------------  --------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                            0      160     239
ki0047075b-MAL-ED           BANGLADESH                     0                            1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                            0       79     239
ki0047075b-MAL-ED           BANGLADESH                     1                            1        0     239
ki0047075b-MAL-ED           INDIA                          0                            0      158     235
ki0047075b-MAL-ED           INDIA                          0                            1        0     235
ki0047075b-MAL-ED           INDIA                          1                            0       77     235
ki0047075b-MAL-ED           INDIA                          1                            1        0     235
ki0047075b-MAL-ED           PERU                           0                            0      233     270
ki0047075b-MAL-ED           PERU                           0                            1        1     270
ki0047075b-MAL-ED           PERU                           1                            0       36     270
ki0047075b-MAL-ED           PERU                           1                            1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            0      208     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                            1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            0       51     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                            1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            0      152     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                            1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            0       93     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                            1        0     245
ki1000304-VITAMIN-A         INDIA                          0                            0     2749    3507
ki1000304-VITAMIN-A         INDIA                          0                            1        8    3507
ki1000304-VITAMIN-A         INDIA                          1                            0      746    3507
ki1000304-VITAMIN-A         INDIA                          1                            1        4    3507
ki1000304b-SAS-CompFeed     INDIA                          0                            0      922    1386
ki1000304b-SAS-CompFeed     INDIA                          0                            1        8    1386
ki1000304b-SAS-CompFeed     INDIA                          1                            0      454    1386
ki1000304b-SAS-CompFeed     INDIA                          1                            1        2    1386
ki1000304b-SAS-FoodSuppl    INDIA                          0                            0      217     398
ki1000304b-SAS-FoodSuppl    INDIA                          0                            1        2     398
ki1000304b-SAS-FoodSuppl    INDIA                          1                            0      179     398
ki1000304b-SAS-FoodSuppl    INDIA                          1                            1        0     398
ki1017093b-PROVIDE          BANGLADESH                     0                            0      423     613
ki1017093b-PROVIDE          BANGLADESH                     0                            1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                            0      190     613
ki1017093b-PROVIDE          BANGLADESH                     1                            1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            0     1700    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                            1        0    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            0      317    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                            1        0    2017
ki1101329-Keneba            GAMBIA                         0                            0     1768    2697
ki1101329-Keneba            GAMBIA                         0                            1       22    2697
ki1101329-Keneba            GAMBIA                         1                            0      896    2697
ki1101329-Keneba            GAMBIA                         1                            1       11    2697
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            0     4731    7135
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                            1       18    7135
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            0     2365    7135
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                            1       21    7135
ki1113344-GMS-Nepal         NEPAL                          0                            0      315     588
ki1113344-GMS-Nepal         NEPAL                          0                            1        1     588
ki1113344-GMS-Nepal         NEPAL                          1                            0      272     588
ki1113344-GMS-Nepal         NEPAL                          1                            1        0     588
ki1126311-ZVITAMBO          ZIMBABWE                       0                            0     9039   10673
ki1126311-ZVITAMBO          ZIMBABWE                       0                            1      167   10673
ki1126311-ZVITAMBO          ZIMBABWE                       1                            0     1345   10673
ki1126311-ZVITAMBO          ZIMBABWE                       1                            1      122   10673
ki1148112-iLiNS-DOSE        MALAWI                         0                            0     1131    1693
ki1148112-iLiNS-DOSE        MALAWI                         0                            1       14    1693
ki1148112-iLiNS-DOSE        MALAWI                         1                            0      536    1693
ki1148112-iLiNS-DOSE        MALAWI                         1                            1       12    1693
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            0      861    1145
ki1148112-iLiNS-DYAD-M      MALAWI                         0                            1       11    1145
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            0      267    1145
ki1148112-iLiNS-DYAD-M      MALAWI                         1                            1        6    1145
kiGH5241-JiVitA-3           BANGLADESH                     0                            0    13501   17236
kiGH5241-JiVitA-3           BANGLADESH                     0                            1      127   17236
kiGH5241-JiVitA-3           BANGLADESH                     1                            0     3587   17236
kiGH5241-JiVitA-3           BANGLADESH                     1                            1       21   17236
kiGH5241-JiVitA-4           BANGLADESH                     0                            0     3673    5419
kiGH5241-JiVitA-4           BANGLADESH                     0                            1       28    5419
kiGH5241-JiVitA-4           BANGLADESH                     1                            0     1701    5419
kiGH5241-JiVitA-4           BANGLADESH                     1                            1       17    5419


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
![](/tmp/9e66cdbb-023f-4629-839e-08cfe76a7324/f7428976-2fdb-4f8d-8045-c075ce89af88/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9e66cdbb-023f-4629-839e-08cfe76a7324/f7428976-2fdb-4f8d-8045-c075ce89af88/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9e66cdbb-023f-4629-839e-08cfe76a7324/f7428976-2fdb-4f8d-8045-c075ce89af88/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9e66cdbb-023f-4629-839e-08cfe76a7324/f7428976-2fdb-4f8d-8045-c075ce89af88/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba            GAMBIA         0                    NA                0.0122905   0.0071854   0.0173956
ki1101329-Keneba            GAMBIA         1                    NA                0.0121279   0.0050032   0.0192526
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0037903   0.0020425   0.0055381
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0088013   0.0050534   0.0125493
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0181403   0.0154140   0.0208667
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0831629   0.0690322   0.0972936
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0122271   0.0058597   0.0185945
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0218978   0.0096410   0.0341547
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0126147   0.0052039   0.0200254
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0219780   0.0045790   0.0393771
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0093190   0.0077240   0.0109141
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0058204   0.0033434   0.0082974
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0075655   0.0046373   0.0104938
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0098952   0.0052749   0.0145156


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba            GAMBIA         NA                   NA                0.0122358   0.0080860   0.0163857
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054660   0.0037551   0.0071769
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0270777   0.0239982   0.0301571
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0153574   0.0094981   0.0212166
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0148472   0.0078389   0.0218554
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0085867   0.0071929   0.0099805
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0083041   0.0058088   0.0107994


### Parameter: RR


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1101329-Keneba            GAMBIA         0                    0                 1.0000000   1.0000000   1.0000000
ki1101329-Keneba            GAMBIA         1                    0                 0.9867696   0.4805640   2.0261903
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.0000000   1.0000000   1.0000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.3220872   1.2396019   4.3498551
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 4.5844179   3.6539809   5.7517783
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.0000000   1.0000000   1.0000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.7909281   0.8337792   3.8468498
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.0000000   1.0000000   1.0000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 1.7422577   0.6500948   4.6692604
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 0.6245702   0.3987593   0.9782543
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.3079370   0.7159588   2.3893821


### Parameter: PAR


studyid                     country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
ki1101329-Keneba            GAMBIA         0                    NA                -0.0000547   -0.0030023    0.0028929
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                 0.0016757    0.0002917    0.0030598
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                 0.0089373    0.0069142    0.0109605
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                 0.0031303   -0.0013457    0.0076063
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                 0.0022325   -0.0022825    0.0067474
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                -0.0007324   -0.0013316   -0.0001331
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                 0.0007386   -0.0009880    0.0024652


### Parameter: PAF


studyid                     country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
ki1101329-Keneba            GAMBIA         0                    NA                -0.0044693   -0.2767079    0.2097186
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                 0.3065747    0.0275954    0.5055158
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                 0.3300627    0.2617943    0.3920177
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                 0.2038294   -0.1333673    0.4407041
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                 0.1503643   -0.2036237    0.4002437
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                -0.0852914   -0.1566918   -0.0182984
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                 0.0889429   -0.1443046    0.2746468
