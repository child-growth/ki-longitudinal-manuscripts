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

**Intervention Variable:** ever_co024

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

studyid                     country                        ever_co024    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  -----------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                     0      222     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                     1        2     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                     0       39     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                     1        0     263  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                     0      195     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                     1        2     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                     0       54     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                     1        0     251  dead0plus        
ki0047075b-MAL-ED           PERU                           0                     0      288     302  dead0plus        
ki0047075b-MAL-ED           PERU                           0                     1        2     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                     0       12     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                     1        0     302  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     0      289     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     1        0     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     0       23     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     1        0     312  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      235     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        3     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       23     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        0     261  dead0plus        
ki1000109-EE                PAKISTAN                       0                     0      208     379  dead0plus        
ki1000109-EE                PAKISTAN                       0                     1        1     379  dead0plus        
ki1000109-EE                PAKISTAN                       1                     0      167     379  dead0plus        
ki1000109-EE                PAKISTAN                       1                     1        3     379  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                     0     3145    3903  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                     1       48    3903  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                     0      683    3903  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                     1       27    3903  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                     0     1140    1513  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                     1       22    1513  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                     0      336    1513  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                     1       15    1513  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                     0      260     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                     1        3     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                     0      152     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                     1        3     418  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                     0      605     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                     1        5     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                     0       90     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                     1        0     700  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     2276    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      119    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396  dead0plus        
ki1101329-Keneba            GAMBIA                         0                     0     2413    2913  dead0plus        
ki1101329-Keneba            GAMBIA                         0                     1       68    2913  dead0plus        
ki1101329-Keneba            GAMBIA                         1                     0      403    2913  dead0plus        
ki1101329-Keneba            GAMBIA                         1                     1       29    2913  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     0     6311    7163  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     1       39    7163  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     0      804    7163  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     1        9    7163  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                     0      479     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                     1        5     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                     0      200     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                     1        2     686  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                     0    12431   13942  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                     1      920   13942  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                     0      453   13942  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                     1      138   13942  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                     0     1709    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                     1      115    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                     0       94    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                     1       13    1931  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     0     1110    1201  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     1       35    1201  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     0       49    1201  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     1        7    1201  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                     0    24039   26923  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                     1      492   26923  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                     0     2290   26923  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                     1      102   26923  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                     0     4526    5442  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                     1       38    5442  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                     0      866    5442  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                     1       12    5442  dead0plus        


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




# Results Detail

## Results Plots
![](/tmp/197cf7f3-77a0-4437-80ba-601038fa15ec/621ebfc1-0a3c-427f-b360-61919944a899/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/197cf7f3-77a0-4437-80ba-601038fa15ec/621ebfc1-0a3c-427f-b360-61919944a899/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/197cf7f3-77a0-4437-80ba-601038fa15ec/621ebfc1-0a3c-427f-b360-61919944a899/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/197cf7f3-77a0-4437-80ba-601038fa15ec/621ebfc1-0a3c-427f-b360-61919944a899/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0150111   0.0107898   0.0192323
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0379163   0.0238050   0.0520277
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0191664   0.0093860   0.0289468
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0420340   0.0228648   0.0612032
ki1101329-Keneba            GAMBIA         0                    NA                0.0274993   0.0210454   0.0339532
ki1101329-Keneba            GAMBIA         1                    NA                0.0629437   0.0398317   0.0860557
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0061417   0.0042200   0.0080635
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0110701   0.0038774   0.0182628
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0694680   0.0651525   0.0737836
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.2216520   0.1863551   0.2569488
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0630949   0.0519367   0.0742532
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.1220825   0.0616520   0.1825130
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0305677   0.0205926   0.0405428
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.1250000   0.0383449   0.2116551
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0201338   0.0183527   0.0219149
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0479918   0.0378586   0.0581251
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0083488   0.0055930   0.0111046
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0132399   0.0061786   0.0203013


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0192160   0.0149085   0.0235235
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
ki1101329-Keneba            GAMBIA         NA                   NA                0.0332990   0.0267825   0.0398155
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067011   0.0048116   0.0085906
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0758858   0.0714899   0.0802817
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0349709   0.0245769   0.0453648
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0220629   0.0202902   0.0238357
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0091878   0.0066008   0.0117748


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 2.525892   1.5842179   4.027305
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 2.193108   1.6518022   2.911804
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 2.288918   1.4800474   3.539850
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 1.802441   0.8763260   3.707289
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 3.190705   2.6900697   3.784510
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.934902   1.1442201   3.271964
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 4.089286   1.9005893   8.798459
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 2.383644   1.8940252   2.999834
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.585854   0.8480456   2.965564


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0042049    0.0015179   0.0068919
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0052883    0.0022546   0.0083221
ki1101329-Keneba            GAMBIA         0                    NA                0.0057997    0.0021130   0.0094864
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005594   -0.0002864   0.0014052
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0064178    0.0048662   0.0079693
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0031920   -0.0003254   0.0067093
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0044032    0.0001828   0.0086235
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0019291    0.0011545   0.0027037
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0008390   -0.0004132   0.0020913


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.2188239    0.0758216   0.3396988
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.2162498    0.0998997   0.3175600
ki1101329-Keneba            GAMBIA         0                    NA                0.1741699    0.0614902   0.2733210
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0834744   -0.0493385   0.1994774
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0845716    0.0644438   0.1042665
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0481539   -0.0058532   0.0992613
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.1259098    0.0028663   0.2337700
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0874366    0.0524356   0.1211448
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0913192   -0.0554761   0.2176983
