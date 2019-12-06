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

**Intervention Variable:** pers_wasted024

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

studyid                     country                        pers_wasted024    dead6plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                         0      227     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     0                         1        0     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                         0       13     240  dead6plus        
ki0047075b-MAL-ED           BANGLADESH                     1                         1        0     240  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                         0      215     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          0                         1        0     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                         0       20     235  dead6plus        
ki0047075b-MAL-ED           INDIA                          1                         1        0     235  dead6plus        
ki0047075b-MAL-ED           PERU                           0                         0      271     273  dead6plus        
ki0047075b-MAL-ED           PERU                           0                         1        1     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                         0        1     273  dead6plus        
ki0047075b-MAL-ED           PERU                           1                         1        0     273  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         0      259     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         1        0     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         0        2     261  dead6plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         1        0     261  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      245     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        0     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0        0     245  dead6plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        0     245  dead6plus        
ki1000109-EE                PAKISTAN                       0                         0      338     375  dead6plus        
ki1000109-EE                PAKISTAN                       0                         1        4     375  dead6plus        
ki1000109-EE                PAKISTAN                       1                         0       33     375  dead6plus        
ki1000109-EE                PAKISTAN                       1                         1        0     375  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                         0     3029    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          0                         1       13    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                         0      555    3615  dead6plus        
ki1000304-VITAMIN-A         INDIA                          1                         1       18    3615  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                         0     1266    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          0                         1        4    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                         0      111    1389  dead6plus        
ki1000304b-SAS-CompFeed     INDIA                          1                         1        8    1389  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                         0      327     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                         1        1     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                         0       71     402  dead6plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                         1        3     402  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                         0      600     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     0                         1        3     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                         0       14     617  dead6plus        
ki1017093b-PROVIDE          BANGLADESH                     1                         1        0     617  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2038    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        0    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       58    2096  dead6plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2096  dead6plus        
ki1101329-Keneba            GAMBIA                         0                         0     2495    2752  dead6plus        
ki1101329-Keneba            GAMBIA                         0                         1       66    2752  dead6plus        
ki1101329-Keneba            GAMBIA                         1                         0      178    2752  dead6plus        
ki1101329-Keneba            GAMBIA                         1                         1       13    2752  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0     6016    7164  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1       32    7164  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0     1100    7164  dead6plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1       16    7164  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                         0      511     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          0                         1        1     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                         0       79     592  dead6plus        
ki1113344-GMS-Nepal         NEPAL                          1                         1        1     592  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0    10991   11694  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      349   11694  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0      291   11694  dead6plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1       63   11694  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                         0     1690    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                         1      119    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                         0       57    1874  dead6plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                         1        8    1874  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0     1111    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       25    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0       22    1161  dead6plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1        3    1161  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    19446   21023  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                         1      253   21023  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                         0     1272   21023  dead6plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                         1       52   21023  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     4947    5433  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                         1       40    5433  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                         0      436    5433  dead6plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                         1       10    5433  dead6plus        


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
![](/tmp/48e9d273-9f42-4046-8f6c-a09270d702bb/511138ed-b34a-4ad7-964c-473d8e9ebfae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/48e9d273-9f42-4046-8f6c-a09270d702bb/511138ed-b34a-4ad7-964c-473d8e9ebfae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/48e9d273-9f42-4046-8f6c-a09270d702bb/511138ed-b34a-4ad7-964c-473d8e9ebfae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/48e9d273-9f42-4046-8f6c-a09270d702bb/511138ed-b34a-4ad7-964c-473d8e9ebfae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0042915   0.0019625   0.0066206
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0311432   0.0168365   0.0454498
ki1101329-Keneba            GAMBIA         0                    NA                0.0258894   0.0197223   0.0320566
ki1101329-Keneba            GAMBIA         1                    NA                0.0663615   0.0300284   0.1026946
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052817   0.0034550   0.0071084
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0142991   0.0072536   0.0213446
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0309972   0.0277868   0.0342076
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1833940   0.1454518   0.2213362
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0657822   0.0543554   0.0772090
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.1230769   0.0431899   0.2029640
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0128575   0.0112641   0.0144509
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0382851   0.0267005   0.0498697
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0080121   0.0054550   0.0105691
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0216519   0.0087355   0.0345683


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0085754   0.0055692   0.0115815
ki1101329-Keneba            GAMBIA         NA                   NA                0.0287064   0.0224666   0.0349461
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0067002   0.0048109   0.0085894
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0352317   0.0318901   0.0385734
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0677695   0.0563864   0.0791525
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0145079   0.0128686   0.0161473
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0092030   0.0066160   0.0117900


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 7.256861   3.5646554   14.773388
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba            GAMBIA         1                    0                 2.563265   1.4113421    4.655377
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.707301   1.4830178    4.942271
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 5.916465   4.6941967    7.456987
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.870976   0.9555545    3.663372
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 2.977651   2.1412879    4.140688
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 2.702412   1.3725357    5.320830


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0042838    0.0019655   0.0066022
ki1101329-Keneba            GAMBIA         0                    NA                0.0028169    0.0002662   0.0053677
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014185    0.0002931   0.0025438
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0042345    0.0029351   0.0055339
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0019873   -0.0008518   0.0048264
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0016504    0.0009247   0.0023762
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0011909    0.0000592   0.0023226


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.4995501    0.2437004   0.6688481
ki1101329-Keneba            GAMBIA         0                    NA                0.0981297    0.0074340   0.1805381
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.2117092    0.0377654   0.3542091
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.1201905    0.0842116   0.1547559
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0293241   -0.0132259   0.0700872
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.1137603    0.0644511   0.1604706
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.1294076    0.0014492   0.2409689
