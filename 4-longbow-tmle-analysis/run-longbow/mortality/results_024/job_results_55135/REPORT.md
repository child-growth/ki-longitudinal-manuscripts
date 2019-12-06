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

studyid                     country                        ever_co024    dead6plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  -----------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                     0      201     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     0                     1        0     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                     0       39     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                     1        0     240  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                     0      182     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                     1        0     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                     0       53     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                     1        0     235  dead6plus        
ki0047075b-MAL-ED           PERU                           0                     0      261     273  dead6plus        
ki0047075b-MAL-ED           PERU                           0                     1        1     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                     0       11     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                     1        0     273  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     0      239     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     1        0     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     0       22     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     1        0     261  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      222     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        0     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       23     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        0     245  dead6plus        
ki1000109-EE                PAKISTAN                       0                     0      204     374  dead6plus        
ki1000109-EE                PAKISTAN                       0                     1        1     374  dead6plus        
ki1000109-EE                PAKISTAN                       1                     0      166     374  dead6plus        
ki1000109-EE                PAKISTAN                       1                     1        3     374  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                     0     2919    3614  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                     1       17    3614  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                     0      664    3614  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                     1       14    3614  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                     0     1047    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                     1        2    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                     0      330    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                     1       10    1389  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                     0      246     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                     1        1     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                     0      152     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                     1        3     402  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                     0      526     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                     1        3     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                     0       88     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                     1        0     617  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     1979    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        0    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      117    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2096  dead6plus        
ki1101329-Keneba            GAMBIA                         0                     0     2270    2748  dead6plus        
ki1101329-Keneba            GAMBIA                         0                     1       53    2748  dead6plus        
ki1101329-Keneba            GAMBIA                         1                     0      399    2748  dead6plus        
ki1101329-Keneba            GAMBIA                         1                     1       26    2748  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     0     6309    7161  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     1       39    7161  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     0      804    7161  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     1        9    7161  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                     0      391     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                     1        1     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                     0      199     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                     1        1     592  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                     0    10841   11692  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                     1      317   11692  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                     0      441   11692  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                     1       93   11692  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                     0     1654    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                     1      114    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                     0       93    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                     1       13    1874  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     0     1084    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     1       23    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     0       49    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     1        5    1161  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                     0    18679   21006  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                     1      243   21006  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                     0     2026   21006  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                     1       58   21006  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                     0     4516    5432  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                     1       38    5432  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                     0      866    5432  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                     1       12    5432  dead6plus        


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




# Results Detail

## Results Plots
![](/tmp/2994efbf-e083-4ae7-b275-861c60c68116/eddbd6fc-bd47-43bc-9a8e-ae2468a6be9e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2994efbf-e083-4ae7-b275-861c60c68116/eddbd6fc-bd47-43bc-9a8e-ae2468a6be9e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2994efbf-e083-4ae7-b275-861c60c68116/eddbd6fc-bd47-43bc-9a8e-ae2468a6be9e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2994efbf-e083-4ae7-b275-861c60c68116/eddbd6fc-bd47-43bc-9a8e-ae2468a6be9e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0058091   0.0030556   0.0085625
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0205568   0.0097912   0.0313225
ki1101329-Keneba            GAMBIA         0                    NA                0.0235090   0.0172575   0.0297604
ki1101329-Keneba            GAMBIA         1                    NA                0.0563207   0.0335494   0.0790920
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0061437   0.0042213   0.0080660
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0110701   0.0038774   0.0182628
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0287523   0.0256440   0.0318606
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1625574   0.1274888   0.1976259
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0644492   0.0530000   0.0758984
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.1324337   0.0717491   0.1931183
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0207769   0.0123708   0.0291829
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0925926   0.0152484   0.1699368
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0129352   0.0112913   0.0145791
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0280655   0.0203688   0.0357621
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0083546   0.0055999   0.0111092
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0132857   0.0061004   0.0204709


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0085778   0.0055708   0.0115847
ki1101329-Keneba            GAMBIA         NA                   NA                0.0287482   0.0224995   0.0349969
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067030   0.0048130   0.0085930
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0350667   0.0317323   0.0384011
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0143292   0.0126897   0.0159688
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0092047   0.0066177   0.0117917


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 3.538743   1.7463982    7.170587
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba            GAMBIA         1                    0                 2.395712   1.4764326    3.887367
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 1.801873   0.8760501    3.706121
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 5.653720   4.4413656    7.197010
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 2.054854   1.2570019    3.359125
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 4.456522   1.7616093   11.274115
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 2.169693   1.5996254    2.942917
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.590231   0.8456407    2.990435


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0027687    0.0006847   0.0048526
ki1101329-Keneba            GAMBIA         0                    NA                0.0052392    0.0014602   0.0090183
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005593   -0.0002867   0.0014053
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0063144    0.0047392   0.0078896
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0033203   -0.0003083   0.0069488
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0033403   -0.0003815   0.0070620
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0013940    0.0006354   0.0021526
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0008502   -0.0004009   0.0021012


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.3227744    0.0692721   0.5072302
ki1101329-Keneba            GAMBIA         0                    NA                0.1822452    0.0468008   0.2984437
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0834416   -0.0493759   0.1994487
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.1800690    0.1373481   0.2206743
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0489938   -0.0055228   0.1005547
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.1385017   -0.0207528   0.2729099
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0972847    0.0441991   0.1474219
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0923614   -0.0540168   0.2184110
