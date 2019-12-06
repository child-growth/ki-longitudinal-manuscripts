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
* W_nchldlt5
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
* delta_W_nchldlt5
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_swasted06    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                         0      245     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                         1        2     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                         0       16     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                         1        0     263  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                         0      226     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                         1        2     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                         0       23     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                         1        0     251  dead0plus        
ki0047075b-MAL-ED           PERU                           0                         0      299     302  dead0plus        
ki0047075b-MAL-ED           PERU                           0                         1        2     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                         0        1     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                         1        0     302  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         0      304     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         1        0     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         0        8     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         1        0     312  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      253     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        3     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0        5     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        0     261  dead0plus        
ki1000109-EE                PAKISTAN                       0                         0      337     380  dead0plus        
ki1000109-EE                PAKISTAN                       0                         1        4     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                         0       39     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                         1        0     380  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                         0     3588    3895  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                         1       55    3895  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                         0      232    3895  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                         1       20    3895  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                         0     1378    1508  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                         1       26    1508  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                         0       94    1508  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                         1       10    1508  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                         0      385     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                         1        3     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                         0       27     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                         1        3     418  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                         0      666     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                         1        5     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                         0       29     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                         1        0     700  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2310    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       85    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396  dead0plus        
ki1101329-Keneba            GAMBIA                         0                         0     2176    2480  dead0plus        
ki1101329-Keneba            GAMBIA                         0                         1       68    2480  dead0plus        
ki1101329-Keneba            GAMBIA                         1                         0      218    2480  dead0plus        
ki1101329-Keneba            GAMBIA                         1                         1       18    2480  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0      328     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1        2     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0        8     338  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1        0     338  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                         0      600     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                         1        7     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                         0       79     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                         1        0     686  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0    11939   13862  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      914   13862  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0      867   13862  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1      142   13862  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                         0     1699    1814  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                         1      113    1814  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                         0        1    1814  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                         1        1    1814  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0     1129    1182  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       39    1182  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0       11    1182  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1        3    1182  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    25095   26918  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                         1      542   26918  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                         0     1222   26918  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                         1       59   26918  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     5075    5252  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                         1       43    5252  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                         0      129    5252  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                         1        5    5252  dead0plus        


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
![](/tmp/9170c09e-c48e-45d1-8ff3-f484d01632a9/3221e959-84ed-4b56-a95f-631493a244b4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9170c09e-c48e-45d1-8ff3-f484d01632a9/3221e959-84ed-4b56-a95f-631493a244b4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9170c09e-c48e-45d1-8ff3-f484d01632a9/3221e959-84ed-4b56-a95f-631493a244b4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9170c09e-c48e-45d1-8ff3-f484d01632a9/3221e959-84ed-4b56-a95f-631493a244b4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0150507    0.0110981   0.0190033
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0816186    0.0469823   0.1162550
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0184168    0.0099814   0.0268522
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0997774    0.0427327   0.1568220
ki1101329-Keneba          GAMBIA       0                    NA                0.0302881    0.0231928   0.0373834
ki1101329-Keneba          GAMBIA       1                    NA                0.0765023    0.0419062   0.1110983
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0713519    0.0669119   0.0757919
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1353816    0.1141642   0.1565990
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0211468    0.0193816   0.0229120
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0464715    0.0340719   0.0588710
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0084017    0.0057798   0.0110237
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0373134   -0.0014001   0.0760270


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0192555   0.0149392   0.0235717
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
ki1101329-Keneba          GAMBIA       NA                   NA                0.0346774   0.0274751   0.0418797
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0761795   0.0717631   0.0805958
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0223271   0.0205277   0.0241264
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0091394   0.0063930   0.0118858


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 5.422915   3.292341    8.932248
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 5.417738   2.810250   10.444580
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.525817   1.517694    4.203585
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.897379   1.603645    2.244915
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.197569   1.669909    2.891959
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 4.441166   1.503532   13.118414


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0042048    0.0019745   0.0064350
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0054559    0.0010694   0.0098424
ki1101329-Keneba          GAMBIA       0                    NA                0.0043893    0.0010515   0.0077270
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0048276    0.0032319   0.0064232
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0011803    0.0006202   0.0017404
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0007377   -0.0002664   0.0017417


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.2183672    0.1055219   0.3169763
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2285409    0.0788069   0.3539366
ki1101329-Keneba          GAMBIA       0                    NA                0.1265751    0.0286057   0.2146638
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0633711    0.0424846   0.0838020
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0528639    0.0280218   0.0770711
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0807119   -0.0305874   0.1799912
