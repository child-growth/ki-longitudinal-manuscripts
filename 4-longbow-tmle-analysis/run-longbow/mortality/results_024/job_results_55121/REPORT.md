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

**Intervention Variable:** ever_wasted06_noBW

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

studyid                     country                        ever_wasted06_noBW    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  -------------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                             0      241     262  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                             1        2     262  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                             0       19     262  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                             1        0     262  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                             0      203     244  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                             1        2     244  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                             0       39     244  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                             1        0     244  dead0plus        
ki0047075b-MAL-ED           PERU                           0                             0      295     302  dead0plus        
ki0047075b-MAL-ED           PERU                           0                             1        2     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                             0        5     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                             1        0     302  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                             0      293     307  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                             1        0     307  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                             0       14     307  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                             1        0     307  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             0      248     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                             1        3     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             0       10     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                             1        0     261  dead0plus        
ki1000109-EE                PAKISTAN                       0                             0      292     375  dead0plus        
ki1000109-EE                PAKISTAN                       0                             1        2     375  dead0plus        
ki1000109-EE                PAKISTAN                       1                             0       79     375  dead0plus        
ki1000109-EE                PAKISTAN                       1                             1        2     375  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                             0     3213    3301  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                             1       44    3301  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                             0       43    3301  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                             1        1    3301  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                             0     1265    1473  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                             1       23    1473  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                             0      176    1473  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                             1        9    1473  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                             0      339     341  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                             1        2     341  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                             0        0     341  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                             1        0     341  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                             0      641     683  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                             1        5     683  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                             0       37     683  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                             1        0     683  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             0     2171    2376  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                             1        1    2376  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             0      204    2376  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                             1        0    2376  dead0plus        
ki1101329-Keneba            GAMBIA                         0                             0     2085    2424  dead0plus        
ki1101329-Keneba            GAMBIA                         0                             1       68    2424  dead0plus        
ki1101329-Keneba            GAMBIA                         1                             0      255    2424  dead0plus        
ki1101329-Keneba            GAMBIA                         1                             1       16    2424  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                             0       41      41  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                             1        0      41  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                             0        0      41  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                             1        0      41  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                             0      514     642  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                             1        5     642  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                             0      122     642  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                             1        1     642  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                             0    12061   13376  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                             1      887   13376  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                             0      367   13376  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                             1       61   13376  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                             0     1112    1182  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                             1       70    1182  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                             0        0    1182  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                             1        0    1182  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                             0     1055    1093  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                             1       38    1093  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                             0        0    1093  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                             1        0    1093  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                             0    23891   26234  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                             1      462   26234  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                             0     1821   26234  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                             1       60   26234  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                             0     4793    4957  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                             1       37    4957  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                             0      124    4957  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                             1        3    4957  dead0plus        


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
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/12563756-f230-4d31-8874-2dbbd0cada4e/521eea99-f4ca-44ea-890d-44df0cf410ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/12563756-f230-4d31-8874-2dbbd0cada4e/521eea99-f4ca-44ea-890d-44df0cf410ca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/12563756-f230-4d31-8874-2dbbd0cada4e/521eea99-f4ca-44ea-890d-44df0cf410ca/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/12563756-f230-4d31-8874-2dbbd0cada4e/521eea99-f4ca-44ea-890d-44df0cf410ca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0178571   0.0085714   0.0271429
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0486486   0.0231136   0.0741837
ki1101329-Keneba          GAMBIA       0                    NA                0.0315971   0.0241978   0.0389963
ki1101329-Keneba          GAMBIA       1                    NA                0.0600767   0.0312052   0.0889483
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0686683   0.0643077   0.0730290
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1360650   0.1025883   0.1695416
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0189723   0.0172689   0.0206756
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0315584   0.0236097   0.0395071


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0217244   0.0135627   0.0298860
ki1101329-Keneba          GAMBIA       NA                   NA                0.0346535   0.0273709   0.0419361
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0708732   0.0665243   0.0752221
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0198978   0.0181880   0.0216077


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.724324   1.242277   5.974465
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.901338   1.114002   3.245134
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.981480   1.536853   2.554743
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.663397   1.279344   2.162742


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0038672    0.0003615   0.0073729
ki1101329-Keneba          GAMBIA       0                    NA                0.0030564   -0.0002119   0.0063246
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0022049    0.0011115   0.0032982
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0009256    0.0003521   0.0014991


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.1780134   -0.0262276   0.3416061
ki1101329-Keneba          GAMBIA       0                    NA                0.0881984   -0.0092959   0.1762750
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0311100    0.0156631   0.0463144
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0465169    0.0177081   0.0744808
