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

**Intervention Variable:** ever_sunderweight024

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

studyid                     country                        ever_sunderweight024    dead624   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------------  --------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                             0      204     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     0                             1        0     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                             0       36     240  dead624          
ki0047075b-MAL-ED           BANGLADESH                     1                             1        0     240  dead624          
ki0047075b-MAL-ED           INDIA                          0                             0      184     235  dead624          
ki0047075b-MAL-ED           INDIA                          0                             1        0     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                             0       51     235  dead624          
ki0047075b-MAL-ED           INDIA                          1                             1        0     235  dead624          
ki0047075b-MAL-ED           PERU                           0                             0      258     273  dead624          
ki0047075b-MAL-ED           PERU                           0                             1        1     273  dead624          
ki0047075b-MAL-ED           PERU                           1                             0       14     273  dead624          
ki0047075b-MAL-ED           PERU                           1                             1        0     273  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                             0      236     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   0                             1        0     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                             0       25     261  dead624          
ki0047075b-MAL-ED           SOUTH AFRICA                   1                             1        0     261  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      211     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        0     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0       34     245  dead624          
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        0     245  dead624          
ki1000109-EE                PAKISTAN                       0                             0      172     375  dead624          
ki1000109-EE                PAKISTAN                       0                             1        1     375  dead624          
ki1000109-EE                PAKISTAN                       1                             0      199     375  dead624          
ki1000109-EE                PAKISTAN                       1                             1        3     375  dead624          
ki1000304-VITAMIN-A         INDIA                          0                             0     2427    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          0                             1       11    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          1                             0     1156    3615  dead624          
ki1000304-VITAMIN-A         INDIA                          1                             1       21    3615  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                             0     1017    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          0                             1        2    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                             0      360    1389  dead624          
ki1000304b-SAS-CompFeed     INDIA                          1                             1       10    1389  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                             0      217     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          0                             1        1     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                             0      181     402  dead624          
ki1000304b-SAS-FoodSuppl    INDIA                          1                             1        3     402  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                             0      526     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     0                             1        2     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                             0       89     617  dead624          
ki1017093b-PROVIDE          BANGLADESH                     1                             1        0     617  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     1951    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1        0    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      145    2096  dead624          
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        0    2096  dead624          
ki1101329-Keneba            GAMBIA                         0                             0     2237    2761  dead624          
ki1101329-Keneba            GAMBIA                         0                             1       28    2761  dead624          
ki1101329-Keneba            GAMBIA                         1                             0      480    2761  dead624          
ki1101329-Keneba            GAMBIA                         1                             1       16    2761  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                             0     6331    7163  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                             1       31    7163  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                             0      793    7163  dead624          
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                             1        8    7163  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                             0      372     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          0                             1        1     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                             0      218     592  dead624          
ki1113344-GMS-Nepal         NEPAL                          1                             1        1     592  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                             0    10427   11708  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       0                             1      211   11708  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                             0      875   11708  dead624          
ki1126311-ZVITAMBO          ZIMBABWE                       1                             1      195   11708  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                             0     1523    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         0                             1       99    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                             0      224    1874  dead624          
ki1148112-iLiNS-DOSE        MALAWI                         1                             1       28    1874  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                             0      998    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         0                             1       17    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                             0      139    1161  dead624          
ki1148112-iLiNS-DYAD-M      MALAWI                         1                             1        7    1161  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                             0    16947   21046  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     0                             1      168   21046  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                             0     3828   21046  dead624          
kiGH5241-JiVitA-3           BANGLADESH                     1                             1      103   21046  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                             0     4469    5433  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     0                             1       28    5433  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                             0      915    5433  dead624          
kiGH5241-JiVitA-4           BANGLADESH                     1                             1       21    5433  dead624          


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
![](/tmp/b57fb5b3-edf5-452c-9b76-988d8df161ba/4550e486-374f-4e17-93d5-fbd0185ec609/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b57fb5b3-edf5-452c-9b76-988d8df161ba/4550e486-374f-4e17-93d5-fbd0185ec609/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b57fb5b3-edf5-452c-9b76-988d8df161ba/4550e486-374f-4e17-93d5-fbd0185ec609/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b57fb5b3-edf5-452c-9b76-988d8df161ba/4550e486-374f-4e17-93d5-fbd0185ec609/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0045214   0.0018524   0.0071905
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0173173   0.0098671   0.0247676
ki1101329-Keneba            GAMBIA         0                    NA                0.0123636   0.0078175   0.0169097
ki1101329-Keneba            GAMBIA         1                    NA                0.0328427   0.0174804   0.0482051
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0048727   0.0031615   0.0065839
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0099875   0.0031008   0.0168742
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0201253   0.0174507   0.0227999
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1670582   0.1435974   0.1905191
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0611422   0.0494891   0.0727953
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.1115495   0.0726091   0.1504898
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0167488   0.0088506   0.0246469
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0479452   0.0132745   0.0826159
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0099344   0.0084122   0.0114565
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0256509   0.0199841   0.0313176
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0062390   0.0038671   0.0086110
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0211376   0.0119005   0.0303748


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0088520   0.0057982   0.0119058
ki1101329-Keneba            GAMBIA         NA                   NA                0.0159363   0.0112643   0.0206082
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054446   0.0037404   0.0071489
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0346771   0.0313629   0.0379914
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0206718   0.0124839   0.0288597
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0128766   0.0113280   0.0144251
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0090190   0.0064698   0.0115681


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 3.830045   1.8450972    7.950392
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba            GAMBIA         1                    0                 2.656407   1.4649549    4.816871
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.049696   0.9454256    4.443770
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 8.300909   6.8417812   10.071221
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.824427   1.2255965    2.715847
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 2.862611   1.2073526    6.787198
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 2.582030   1.9750530    3.375544
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 3.387956   1.8895693    6.074529


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0043306    0.0017079   0.0069532
ki1101329-Keneba            GAMBIA         0                    NA                0.0035727    0.0006470   0.0064983
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005720   -0.0002224   0.0013664
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0145519    0.0122601   0.0168436
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0066273    0.0011240   0.0121306
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0039231   -0.0005880   0.0084342
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0029422    0.0018979   0.0039864
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0027799    0.0010850   0.0044748


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.4892187    0.1763136   0.6832562
ki1101329-Keneba            GAMBIA         0                    NA                0.2241847    0.0321387   0.3781244
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.1050508   -0.0490555   0.2365189
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.4196381    0.3641681   0.4702689
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0977915    0.0144665   0.1740716
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.1897783   -0.0439283   0.3711645
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.2284913    0.1490490   0.3005172
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.3082294    0.1162133   0.4585272
