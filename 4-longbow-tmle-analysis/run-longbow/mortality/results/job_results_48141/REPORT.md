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

**Intervention Variable:** ever_stunted624

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* earlybf
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_parity
* impsan
* safeh20
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_earlybf
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_stunted624    dead   n_cell       n
--------------------------  -----------------------------  ----------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                     0       92     159
ki0047075b-MAL-ED           BANGLADESH                     0                     1        0     159
ki0047075b-MAL-ED           BANGLADESH                     1                     0       67     159
ki0047075b-MAL-ED           BANGLADESH                     1                     1        0     159
ki0047075b-MAL-ED           INDIA                          0                     0       91     155
ki0047075b-MAL-ED           INDIA                          0                     1        0     155
ki0047075b-MAL-ED           INDIA                          1                     0       64     155
ki0047075b-MAL-ED           INDIA                          1                     1        0     155
ki0047075b-MAL-ED           PERU                           0                     0       90     149
ki0047075b-MAL-ED           PERU                           0                     1        0     149
ki0047075b-MAL-ED           PERU                           1                     0       59     149
ki0047075b-MAL-ED           PERU                           1                     1        0     149
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     0      101     159
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     1        0     159
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     0       58     159
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     1        0     159
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0       32     145
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        0     145
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0      113     145
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        0     145
ki1000304-VITAMIN-A         INDIA                          0                     0     1522    2759
ki1000304-VITAMIN-A         INDIA                          0                     1        7    2759
ki1000304-VITAMIN-A         INDIA                          1                     0     1226    2759
ki1000304-VITAMIN-A         INDIA                          1                     1        4    2759
ki1000304b-SAS-CompFeed     INDIA                          0                     0      404     813
ki1000304b-SAS-CompFeed     INDIA                          0                     1        0     813
ki1000304b-SAS-CompFeed     INDIA                          1                     0      407     813
ki1000304b-SAS-CompFeed     INDIA                          1                     1        2     813
ki1000304b-SAS-FoodSuppl    INDIA                          0                     0       59     243
ki1000304b-SAS-FoodSuppl    INDIA                          0                     1        0     243
ki1000304b-SAS-FoodSuppl    INDIA                          1                     0      183     243
ki1000304b-SAS-FoodSuppl    INDIA                          1                     1        1     243
ki1017093b-PROVIDE          BANGLADESH                     0                     0      320     457
ki1017093b-PROVIDE          BANGLADESH                     0                     1        0     457
ki1017093b-PROVIDE          BANGLADESH                     1                     0      137     457
ki1017093b-PROVIDE          BANGLADESH                     1                     1        0     457
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     1239    1602
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    1602
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      362    1602
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    1602
ki1101329-Keneba            GAMBIA                         0                     0     1270    1989
ki1101329-Keneba            GAMBIA                         0                     1       14    1989
ki1101329-Keneba            GAMBIA                         1                     0      703    1989
ki1101329-Keneba            GAMBIA                         1                     1        2    1989
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     0     4563    7147
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     1       22    7147
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     0     2545    7147
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     1       17    7147
ki1113344-GMS-Nepal         NEPAL                          0                     0      186     426
ki1113344-GMS-Nepal         NEPAL                          0                     1        1     426
ki1113344-GMS-Nepal         NEPAL                          1                     0      239     426
ki1113344-GMS-Nepal         NEPAL                          1                     1        0     426
ki1126311-ZVITAMBO          ZIMBABWE                       0                     0     5756    7762
ki1126311-ZVITAMBO          ZIMBABWE                       0                     1       78    7762
ki1126311-ZVITAMBO          ZIMBABWE                       1                     0     1838    7762
ki1126311-ZVITAMBO          ZIMBABWE                       1                     1       90    7762
ki1148112-iLiNS-DOSE        MALAWI                         0                     0      805    1407
ki1148112-iLiNS-DOSE        MALAWI                         0                     1       10    1407
ki1148112-iLiNS-DOSE        MALAWI                         1                     0      578    1407
ki1148112-iLiNS-DOSE        MALAWI                         1                     1       14    1407
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     0      593     972
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     1        7     972
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     0      364     972
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     1        8     972
kiGH5241-JiVitA-3           BANGLADESH                     0                     0     8177   10514
kiGH5241-JiVitA-3           BANGLADESH                     0                     1       50   10514
kiGH5241-JiVitA-3           BANGLADESH                     1                     0     2269   10514
kiGH5241-JiVitA-3           BANGLADESH                     1                     1       18   10514
kiGH5241-JiVitA-4           BANGLADESH                     0                     0     2255    3649
kiGH5241-JiVitA-4           BANGLADESH                     0                     1       15    3649
kiGH5241-JiVitA-4           BANGLADESH                     1                     0     1365    3649
kiGH5241-JiVitA-4           BANGLADESH                     1                     1       14    3649


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
* studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/be72187b-28c4-4710-95d7-5383274073f4/0351d3af-675d-436f-97c3-b7fa9faa5fe9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/be72187b-28c4-4710-95d7-5383274073f4/0351d3af-675d-436f-97c3-b7fa9faa5fe9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/be72187b-28c4-4710-95d7-5383274073f4/0351d3af-675d-436f-97c3-b7fa9faa5fe9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/be72187b-28c4-4710-95d7-5383274073f4/0351d3af-675d-436f-97c3-b7fa9faa5fe9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0048552   0.0028318   0.0068786
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0065371   0.0034444   0.0096298
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0134644   0.0104787   0.0164500
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0453080   0.0358998   0.0547162
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0117647   0.0044088   0.0191206
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0250409   0.0125327   0.0375492
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0116667   0.0030702   0.0202632
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0215054   0.0067567   0.0362540
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0062323   0.0044861   0.0079785
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0077293   0.0040871   0.0113714
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0065662   0.0027819   0.0103506
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0076354   0.0042146   0.0110563


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054568   0.0037488   0.0071649
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0216439   0.0184064   0.0248814
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0170576   0.0102893   0.0238258
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0154321   0.0076790   0.0231852
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0064676   0.0049483   0.0079868
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0079474   0.0050813   0.0108134


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 1.346409   0.7167328   2.529278
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 3.365033   2.4834852   4.559499
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 2.128482   0.9634094   4.702504
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 1.843318   0.6736472   5.043918
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 1.240198   0.7187214   2.140039
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.162832   0.5573153   2.426238


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0006016   -0.0007469   0.0019502
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0081795    0.0056800   0.0106790
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0052929   -0.0005991   0.0111849
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0037654   -0.0027749   0.0103057
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0002353   -0.0006189   0.0010895
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0013811   -0.0007395   0.0035017


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.1102550   -0.1714245   0.3242022
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.3779145    0.2680995   0.4712527
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.3102951   -0.1065339   0.5701055
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.2440000   -0.2936939   0.5582139
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0363754   -0.1055383   0.1600721
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.1737863   -0.1623979   0.4127406
