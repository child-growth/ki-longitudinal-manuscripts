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

studyid                     country                        ever_sunderweight024    dead6plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                               0      204     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     0                               1        0     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                               0       36     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                               1        0     240  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                               0      184     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                               1        0     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                               0       51     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                               1        0     235  dead6plus        
ki0047075b-MAL-ED           PERU                           0                               0      258     273  dead6plus        
ki0047075b-MAL-ED           PERU                           0                               1        1     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                               0       14     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                               1        0     273  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                               0      236     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                               1        0     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                               0       25     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                               1        0     261  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                               0      211     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                               1        0     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                               0       34     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                               1        0     245  dead6plus        
ki1000109-EE                PAKISTAN                       0                               0      172     375  dead6plus        
ki1000109-EE                PAKISTAN                       0                               1        1     375  dead6plus        
ki1000109-EE                PAKISTAN                       1                               0      199     375  dead6plus        
ki1000109-EE                PAKISTAN                       1                               1        3     375  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                               0     2427    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                               1       11    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                               0     1156    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                               1       21    3615  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                               0     1017    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                               1        2    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                               0      360    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                               1       10    1389  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                               0      217     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                               1        1     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                               0      181     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                               1        3     402  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                               0      525     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                               1        3     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                               0       89     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                               1        0     617  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               0     1951    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               1        0    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               0      145    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               1        0    2096  dead6plus        
ki1101329-Keneba            GAMBIA                         0                               0     2216    2761  dead6plus        
ki1101329-Keneba            GAMBIA                         0                               1       49    2761  dead6plus        
ki1101329-Keneba            GAMBIA                         1                               0      466    2761  dead6plus        
ki1101329-Keneba            GAMBIA                         1                               1       30    2761  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                               0     6325    7163  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                               1       37    7163  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                               0      790    7163  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                               1       11    7163  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                               0      372     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                               1        1     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                               0      218     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                               1        1     592  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                               0    10419   11708  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                               1      219   11708  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                               0      873   11708  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                               1      197   11708  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                               0     1523    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                               1       99    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                               0      224    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                               1       28    1874  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                               0      994    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                               1       21    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                               0      139    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                               1        7    1161  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                               0    16927   21046  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                               1      188   21046  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                               0     3807   21046  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                               1      124   21046  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                               0     4468    5433  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                               1       29    5433  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                               0      915    5433  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                               1       21    5433  dead6plus        


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




# Results Detail

## Results Plots
![](/tmp/d21c4726-431a-4fac-b843-3e5bc333dc00/ea50bc46-6a45-4698-871b-3027b61f74f4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d21c4726-431a-4fac-b843-3e5bc333dc00/ea50bc46-6a45-4698-871b-3027b61f74f4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d21c4726-431a-4fac-b843-3e5bc333dc00/ea50bc46-6a45-4698-871b-3027b61f74f4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d21c4726-431a-4fac-b843-3e5bc333dc00/ea50bc46-6a45-4698-871b-3027b61f74f4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0045056   0.0018468   0.0071645
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0171984   0.0097745   0.0246224
ki1101329-Keneba            GAMBIA         0                    NA                0.0217563   0.0157036   0.0278089
ki1101329-Keneba            GAMBIA         1                    NA                0.0570992   0.0364154   0.0777829
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0058466   0.0039698   0.0077235
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0131033   0.0053194   0.0208872
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0207626   0.0180490   0.0234762
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1738810   0.1501266   0.1976354
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0610426   0.0494039   0.0726813
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.1073333   0.0692759   0.1453907
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0206897   0.0119290   0.0294504
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0479452   0.0132745   0.0826159
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0110964   0.0094923   0.0127006
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0301256   0.0240117   0.0362396
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0064779   0.0040329   0.0089229
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0211069   0.0120251   0.0301887


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0088520   0.0057982   0.0119058
ki1101329-Keneba            GAMBIA         NA                   NA                0.0286128   0.0223931   0.0348325
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067011   0.0048116   0.0085906
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0355313   0.0321779   0.0388846
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0241171   0.0152888   0.0329455
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0148247   0.0131816   0.0164677
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0092030   0.0066160   0.0117900


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate   ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 3.817088   1.837739    7.928310
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba            GAMBIA         1                    0                 2.624494   1.661622    4.145330
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.000000    1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.241180   1.140854    4.402743
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 8.374727   6.932513   10.116973
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.000000    1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.758333   1.175425    2.630312
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.000000    1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 2.317352   1.002445    5.357020
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 2.714895   2.114698    3.485441
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 3.258282   1.830930    5.798367


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0043464    0.0017272   0.0069655
ki1101329-Keneba            GAMBIA         0                    NA                0.0068566    0.0028435   0.0108696
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0008545   -0.0000746   0.0017836
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0147687    0.0124701   0.0170672
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0067269    0.0012236   0.0122301
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0034275   -0.0010995   0.0079545
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0037282    0.0026186   0.0048379
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0027251    0.0010238   0.0044264


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.4910032    0.1793338   0.6843080
ki1101329-Keneba            GAMBIA         0                    NA                0.2396328    0.0970815   0.3596784
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.1275154   -0.0172121   0.2516513
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.4156528    0.3612431   0.4654278
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0992608    0.0159776   0.1754953
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.1421182   -0.0589879   0.3050335
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.2514892    0.1786947   0.3178317
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.2961082    0.1053788   0.4461749
