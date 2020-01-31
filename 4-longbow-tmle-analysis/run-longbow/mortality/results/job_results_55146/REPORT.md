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

**Intervention Variable:** ever_swasted06

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

studyid                     country                        ever_swasted06    dead624   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------  --------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                       0      224     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     0                       1        0     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                       0       16     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                       1        0     240  dead624          
ki0047075b-MAL-ED           INDIA                          0                       0      214     235  dead624          
ki0047075b-MAL-ED           INDIA                          0                       1        0     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                       0       21     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                       1        0     235  dead624          
ki0047075b-MAL-ED           PERU                           0                       0      271     273  dead624          
ki0047075b-MAL-ED           PERU                           0                       1        1     273  dead624          
ki0047075b-MAL-ED           PERU                           1                       0        1     273  dead624          
ki0047075b-MAL-ED           PERU                           1                       1        0     273  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                       0      254     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                       1        0     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                       0        7     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                       1        0     261  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      240     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        0     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        5     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     245  dead624          
ki1000109-EE                PAKISTAN                       0                       0      332     375  dead624          
ki1000109-EE                PAKISTAN                       0                       1        4     375  dead624          
ki1000109-EE                PAKISTAN                       1                       0       39     375  dead624          
ki1000109-EE                PAKISTAN                       1                       1        0     375  dead624          
ki1000304-VITAMIN-A         INDIA                          0                       0     3360    3606  dead624          
ki1000304-VITAMIN-A         INDIA                          0                       1       21    3606  dead624          
ki1000304-VITAMIN-A         INDIA                          1                       0      215    3606  dead624          
ki1000304-VITAMIN-A         INDIA                          1                       1       10    3606  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                       0     1283    1384  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                       1        8    1384  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                       0       90    1384  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                       1        3    1384  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                       0      372     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                       1        2     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                       0       26     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                       1        2     402  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                       0      590     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                       1        2     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                       0       25     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                       1        0     617  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       0     2021    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                       1        0    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       0       75    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                       1        0    2096  dead624          
ki1101329-Keneba            GAMBIA                         0                       0     2061    2312  dead624          
ki1101329-Keneba            GAMBIA                         0                       1       29    2312  dead624          
ki1101329-Keneba            GAMBIA                         1                       0      212    2312  dead624          
ki1101329-Keneba            GAMBIA                         1                       1       10    2312  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                       0      326     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                       1        2     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                       0        8     336  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                       1        0     336  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                       0      516     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                       1        2     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                       0       74     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                       1        0     592  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                       0    10453   11610  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                       1      347   11610  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                       0      760   11610  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                       1       50   11610  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                       0     1643    1757  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                       1      112    1757  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                       0        1    1757  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                       1        1    1757  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                       0     1106    1142  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                       1       22    1142  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                       0       12    1142  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                       1        2    1142  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                       0    19798   20985  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                       1      236   20985  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                       0      924   20985  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                       1       27   20985  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                       0     5066    5242  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                       1       42    5242  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                       0      129    5242  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                       1        5    5242  dead624          


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
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI

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
![](/tmp/83376b9f-011c-4576-af4b-fb370d3e21f2/0d08a662-8c1f-493b-9eaf-6f7ed86b1918/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/83376b9f-011c-4576-af4b-fb370d3e21f2/0d08a662-8c1f-493b-9eaf-6f7ed86b1918/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/83376b9f-011c-4576-af4b-fb370d3e21f2/0d08a662-8c1f-493b-9eaf-6f7ed86b1918/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/83376b9f-011c-4576-af4b-fb370d3e21f2/0d08a662-8c1f-493b-9eaf-6f7ed86b1918/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A   INDIA        0                    NA                0.0062320    0.0035753   0.0088887
ki1000304-VITAMIN-A   INDIA        1                    NA                0.0486155    0.0187246   0.0785065
ki1101329-Keneba      GAMBIA       0                    NA                0.0138687    0.0088611   0.0188762
ki1101329-Keneba      GAMBIA       1                    NA                0.0480841    0.0209013   0.0752669
ki1126311-ZVITAMBO    ZIMBABWE     0                    NA                0.0322024    0.0288766   0.0355281
ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                0.0597368    0.0432017   0.0762719
kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0117832    0.0102927   0.0132736
kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0280994    0.0159261   0.0402727
kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0082224    0.0056402   0.0108046
kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0373134   -0.0013266   0.0759535


### Parameter: E(Y)


studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A   INDIA        NA                   NA                0.0085968   0.0055832   0.0116104
ki1101329-Keneba      GAMBIA       NA                   NA                0.0168685   0.0116181   0.0221189
ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.0341947   0.0308889   0.0375004
kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0125328   0.0109928   0.0140728
kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0089660   0.0062553   0.0116768


### Parameter: RR


studyid               country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
--------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A   INDIA        1                    0                 7.800937   3.693030   16.478232
ki1101329-Keneba      GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba      GAMBIA       1                    0                 3.467098   1.771990    6.783770
ki1126311-ZVITAMBO    ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO    ZIMBABWE     1                    0                 1.855045   1.380753    2.492257
kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3     BANGLADESH   1                    0                 2.384699   1.528427    3.720680
kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4     BANGLADESH   1                    0                 4.538024   1.538361   13.386754


### Parameter: PAR


studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A   INDIA        0                    NA                0.0023648    0.0006497   0.0040798
ki1101329-Keneba      GAMBIA       0                    NA                0.0029998    0.0003085   0.0056911
ki1126311-ZVITAMBO    ZIMBABWE     0                    NA                0.0019923    0.0008102   0.0031744
kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0007496    0.0002099   0.0012892
kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0007436   -0.0002605   0.0017478


### Parameter: PAF


studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A   INDIA        0                    NA                0.2750760    0.0771792   0.4305343
ki1101329-Keneba      GAMBIA       0                    NA                0.1778357    0.0135412   0.3147669
ki1126311-ZVITAMBO    ZIMBABWE     0                    NA                0.0582634    0.0235228   0.0917680
kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0598089    0.0171556   0.1006111
kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0829404   -0.0304435   0.1838482
