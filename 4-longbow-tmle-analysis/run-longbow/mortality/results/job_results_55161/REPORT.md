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

**Intervention Variable:** ever_wasted06

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

studyid                     country                        ever_wasted06    dead6plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  --------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                        0      184     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     0                        1        0     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                        0       56     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                        1        0     240  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                        0      157     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                        1        0     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                        0       78     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                        1        0     235  dead6plus        
ki0047075b-MAL-ED           PERU                           0                        0      262     273  dead6plus        
ki0047075b-MAL-ED           PERU                           0                        1        1     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                        0       10     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                        1        0     273  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        0      232     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                        1        0     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        0       29     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                        1        0     261  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      231     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        0     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0       14     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0     245  dead6plus        
ki1000109-EE                PAKISTAN                       0                        0      244     375  dead6plus        
ki1000109-EE                PAKISTAN                       0                        1        2     375  dead6plus        
ki1000109-EE                PAKISTAN                       1                        0      127     375  dead6plus        
ki1000109-EE                PAKISTAN                       1                        1        2     375  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                        0     2768    3606  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                        1       13    3606  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                        0      807    3606  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                        1       18    3606  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                        0     1059    1384  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                        1        5    1384  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                        0      314    1384  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                        1        6    1384  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                        0      305     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                        1        1     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                        0       93     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                        1        3     402  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                        0      456     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                        1        3     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                        0      158     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                        1        0     617  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        0     1769    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                        1        0    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        0      327    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                        1        0    2096  dead6plus        
ki1101329-Keneba            GAMBIA                         0                        0     1621    2312  dead6plus        
ki1101329-Keneba            GAMBIA                         0                        1       39    2312  dead6plus        
ki1101329-Keneba            GAMBIA                         1                        0      623    2312  dead6plus        
ki1101329-Keneba            GAMBIA                         1                        1       29    2312  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        0      294     336  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                        1        2     336  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        0       40     336  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                        1        0     336  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                        0      354     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                        1        1     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                        0      236     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                        1        1     592  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                        0     9168   11610  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                        1      279   11610  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                        0     2036   11610  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                        1      127   11610  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                        0     1621    1757  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                        1      109    1757  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                        0       23    1757  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                        1        4    1757  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        0     1062    1142  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                        1       24    1142  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        0       52    1142  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                        1        4    1142  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                        0    16530   20985  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                        1      208   20985  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                        0     4152   20985  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                        1       95   20985  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                        0     4513    5242  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                        1       38    5242  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                        0      681    5242  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                        1       10    5242  dead6plus        


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
![](/tmp/e5f506f1-3128-470b-a6db-d9bbf233f522/8ff0c5a2-8427-4320-83fa-0a37c2e3fa3a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e5f506f1-3128-470b-a6db-d9bbf233f522/8ff0c5a2-8427-4320-83fa-0a37c2e3fa3a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e5f506f1-3128-470b-a6db-d9bbf233f522/8ff0c5a2-8427-4320-83fa-0a37c2e3fa3a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e5f506f1-3128-470b-a6db-d9bbf233f522/8ff0c5a2-8427-4320-83fa-0a37c2e3fa3a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0047302    0.0021636   0.0072967
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0217164    0.0116649   0.0317680
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0046992   -0.0002951   0.0096936
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0187500    0.0086800   0.0288200
ki1101329-Keneba          GAMBIA       0                    NA                0.0237151    0.0163965   0.0310338
ki1101329-Keneba          GAMBIA       1                    NA                0.0449481    0.0284900   0.0614062
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0297154    0.0262945   0.0331364
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.0567858    0.0470209   0.0665508
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0124434    0.0107299   0.0141568
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0222252    0.0177238   0.0267266
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0083279    0.0055614   0.0110944
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0142583    0.0044385   0.0240781


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0085968   0.0055832   0.0116104
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0079480   0.0042682   0.0116277
ki1101329-Keneba          GAMBIA       NA                   NA                0.0294118   0.0225232   0.0363003
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0349699   0.0316281   0.0383116
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0144389   0.0128023   0.0160755
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0091568   0.0064104   0.0119032


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 4.591035   2.2499619    9.367980
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 3.990000   0.9749745   16.328735
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.895336   1.1742041    3.059347
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.910988   1.5542149    2.349658
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.786107   1.3974645    2.282834
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.712115   0.7960666    3.682276


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0038666    0.0014934   0.0062398
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0032487    0.0001193   0.0063782
ki1101329-Keneba          GAMBIA       0                    NA                0.0056967    0.0007380   0.0106554
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0052544    0.0032958   0.0072131
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0019955    0.0010210   0.0029700
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0008289   -0.0005599   0.0022178


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.4497727    0.1685202   0.6358901
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4087491   -0.2627004   0.7231508
ki1101329-Keneba          GAMBIA       0                    NA                0.1936863    0.0138839   0.3407045
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1502556    0.0942886   0.2027642
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1382031    0.0697286   0.2016373
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0905259   -0.0696966   0.2267498
