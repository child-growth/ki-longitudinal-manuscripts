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

**Outcome Variable:** pers_wasted624

## Predictor Variables

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* vagbrth
* single
* W_gagebrth
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* W_parity
* delta_month
* delta_brthmon
* delta_vagbrth
* delta_single
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_stunted06    pers_wasted624   n_cell       n
--------------------------  -----------------------------  ---------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                              0      149     239
ki0047075b-MAL-ED           BANGLADESH                     0                              1       10     239
ki0047075b-MAL-ED           BANGLADESH                     1                              0       72     239
ki0047075b-MAL-ED           BANGLADESH                     1                              1        8     239
ki0047075b-MAL-ED           BRAZIL                         0                              0      163     202
ki0047075b-MAL-ED           BRAZIL                         0                              1        2     202
ki0047075b-MAL-ED           BRAZIL                         1                              0       37     202
ki0047075b-MAL-ED           BRAZIL                         1                              1        0     202
ki0047075b-MAL-ED           INDIA                          0                              0      139     234
ki0047075b-MAL-ED           INDIA                          0                              1       15     234
ki0047075b-MAL-ED           INDIA                          1                              0       67     234
ki0047075b-MAL-ED           INDIA                          1                              1       13     234
ki0047075b-MAL-ED           NEPAL                          0                              0      194     234
ki0047075b-MAL-ED           NEPAL                          0                              1        1     234
ki0047075b-MAL-ED           NEPAL                          1                              0       38     234
ki0047075b-MAL-ED           NEPAL                          1                              1        1     234
ki0047075b-MAL-ED           PERU                           0                              0      143     264
ki0047075b-MAL-ED           PERU                           0                              1        0     264
ki0047075b-MAL-ED           PERU                           1                              0      119     264
ki0047075b-MAL-ED           PERU                           1                              1        2     264
ki0047075b-MAL-ED           SOUTH AFRICA                   0                              0      157     258
ki0047075b-MAL-ED           SOUTH AFRICA                   0                              1        2     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                              0       99     258
ki0047075b-MAL-ED           SOUTH AFRICA                   1                              1        0     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              0      144     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                              1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              0      100     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                              1        0     244
ki1000108-CMC-V-BCS-2002    INDIA                          0                              0      169     368
ki1000108-CMC-V-BCS-2002    INDIA                          0                              1       11     368
ki1000108-CMC-V-BCS-2002    INDIA                          1                              0      171     368
ki1000108-CMC-V-BCS-2002    INDIA                          1                              1       17     368
ki1000108-IRC               INDIA                          0                              0      208     410
ki1000108-IRC               INDIA                          0                              1       28     410
ki1000108-IRC               INDIA                          1                              0      154     410
ki1000108-IRC               INDIA                          1                              1       20     410
ki1000109-EE                PAKISTAN                       0                              0       89     371
ki1000109-EE                PAKISTAN                       0                              1        7     371
ki1000109-EE                PAKISTAN                       1                              0      238     371
ki1000109-EE                PAKISTAN                       1                              1       37     371
ki1000109-ResPak            PAKISTAN                       0                              0       77     220
ki1000109-ResPak            PAKISTAN                       0                              1       16     220
ki1000109-ResPak            PAKISTAN                       1                              0       98     220
ki1000109-ResPak            PAKISTAN                       1                              1       29     220
ki1000304-VITAMIN-A         INDIA                          0                              0     1458    2304
ki1000304-VITAMIN-A         INDIA                          0                              1      227    2304
ki1000304-VITAMIN-A         INDIA                          1                              0      471    2304
ki1000304-VITAMIN-A         INDIA                          1                              1      148    2304
ki1000304b-SAS-CompFeed     INDIA                          0                              0      698    1352
ki1000304b-SAS-CompFeed     INDIA                          0                              1       94    1352
ki1000304b-SAS-CompFeed     INDIA                          1                              0      436    1352
ki1000304b-SAS-CompFeed     INDIA                          1                              1      124    1352
ki1000304b-SAS-FoodSuppl    INDIA                          0                              0      198     386
ki1000304b-SAS-FoodSuppl    INDIA                          0                              1       35     386
ki1000304b-SAS-FoodSuppl    INDIA                          1                              0      119     386
ki1000304b-SAS-FoodSuppl    INDIA                          1                              1       34     386
ki1017093-NIH-Birth         BANGLADESH                     0                              0      299     514
ki1017093-NIH-Birth         BANGLADESH                     0                              1       30     514
ki1017093-NIH-Birth         BANGLADESH                     1                              0      157     514
ki1017093-NIH-Birth         BANGLADESH                     1                              1       28     514
ki1017093b-PROVIDE          BANGLADESH                     0                              0      431     608
ki1017093b-PROVIDE          BANGLADESH                     0                              1       20     608
ki1017093b-PROVIDE          BANGLADESH                     1                              0      138     608
ki1017093b-PROVIDE          BANGLADESH                     1                              1       19     608
ki1017093c-NIH-Crypto       BANGLADESH                     0                              0      479     722
ki1017093c-NIH-Crypto       BANGLADESH                     0                              1       21     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                              0      199     722
ki1017093c-NIH-Crypto       BANGLADESH                     1                              1       23     722
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              0     1458    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                              1       61    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              0      368    1921
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                              1       34    1921
ki1101329-Keneba            GAMBIA                         0                              0     1411    2209
ki1101329-Keneba            GAMBIA                         0                              1       98    2209
ki1101329-Keneba            GAMBIA                         1                              0      600    2209
ki1101329-Keneba            GAMBIA                         1                              1      100    2209
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                              0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                              1        3      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                              0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                              1        3      26
ki1112895-Guatemala BSC     GUATEMALA                      0                              0      161     236
ki1112895-Guatemala BSC     GUATEMALA                      0                              1        1     236
ki1112895-Guatemala BSC     GUATEMALA                      1                              0       71     236
ki1112895-Guatemala BSC     GUATEMALA                      1                              1        3     236
ki1113344-GMS-Nepal         NEPAL                          0                              0      358     584
ki1113344-GMS-Nepal         NEPAL                          0                              1       63     584
ki1113344-GMS-Nepal         NEPAL                          1                              0      117     584
ki1113344-GMS-Nepal         NEPAL                          1                              1       46     584
ki1114097-CMIN              BANGLADESH                     0                              0      108     251
ki1114097-CMIN              BANGLADESH                     0                              1        3     251
ki1114097-CMIN              BANGLADESH                     1                              0      119     251
ki1114097-CMIN              BANGLADESH                     1                              1       21     251
ki1114097-CMIN              BRAZIL                         0                              0      104     119
ki1114097-CMIN              BRAZIL                         0                              1        0     119
ki1114097-CMIN              BRAZIL                         1                              0       15     119
ki1114097-CMIN              BRAZIL                         1                              1        0     119
ki1114097-CMIN              GUINEA-BISSAU                  0                              0      726     878
ki1114097-CMIN              GUINEA-BISSAU                  0                              1       29     878
ki1114097-CMIN              GUINEA-BISSAU                  1                              0      114     878
ki1114097-CMIN              GUINEA-BISSAU                  1                              1        9     878
ki1114097-CMIN              PERU                           0                              0      549     630
ki1114097-CMIN              PERU                           0                              1        1     630
ki1114097-CMIN              PERU                           1                              0       79     630
ki1114097-CMIN              PERU                           1                              1        1     630
ki1114097-CONTENT           PERU                           0                              0      167     215
ki1114097-CONTENT           PERU                           0                              1        0     215
ki1114097-CONTENT           PERU                           1                              0       48     215
ki1114097-CONTENT           PERU                           1                              1        0     215
ki1119695-PROBIT            BELARUS                        0                              0    14809   16449
ki1119695-PROBIT            BELARUS                        0                              1       16   16449
ki1119695-PROBIT            BELARUS                        1                              0     1620   16449
ki1119695-PROBIT            BELARUS                        1                              1        4   16449
ki1126311-ZVITAMBO          ZIMBABWE                       0                              0     5856    8558
ki1126311-ZVITAMBO          ZIMBABWE                       0                              1      219    8558
ki1126311-ZVITAMBO          ZIMBABWE                       1                              0     2327    8558
ki1126311-ZVITAMBO          ZIMBABWE                       1                              1      156    8558
ki1135781-COHORTS           GUATEMALA                      0                              0      586     905
ki1135781-COHORTS           GUATEMALA                      0                              1       13     905
ki1135781-COHORTS           GUATEMALA                      1                              0      287     905
ki1135781-COHORTS           GUATEMALA                      1                              1       19     905
ki1135781-COHORTS           INDIA                          0                              0     4393    5917
ki1135781-COHORTS           INDIA                          0                              1      430    5917
ki1135781-COHORTS           INDIA                          1                              0      875    5917
ki1135781-COHORTS           INDIA                          1                              1      219    5917
ki1135781-COHORTS           PHILIPPINES                    0                              0     1963    2757
ki1135781-COHORTS           PHILIPPINES                    0                              1      120    2757
ki1135781-COHORTS           PHILIPPINES                    1                              0      579    2757
ki1135781-COHORTS           PHILIPPINES                    1                              1       95    2757
ki1148112-iLiNS-DOSE        MALAWI                         0                              0      550     807
ki1148112-iLiNS-DOSE        MALAWI                         0                              1       20     807
ki1148112-iLiNS-DOSE        MALAWI                         1                              0      213     807
ki1148112-iLiNS-DOSE        MALAWI                         1                              1       24     807
ki1148112-iLiNS-DYAD-M      MALAWI                         0                              0      865    1047
ki1148112-iLiNS-DYAD-M      MALAWI                         0                              1       20    1047
ki1148112-iLiNS-DYAD-M      MALAWI                         1                              0      154    1047
ki1148112-iLiNS-DYAD-M      MALAWI                         1                              1        8    1047
ki1148112-LCNI-5            MALAWI                         0                              0      154     249
ki1148112-LCNI-5            MALAWI                         0                              1        2     249
ki1148112-LCNI-5            MALAWI                         1                              0       89     249
ki1148112-LCNI-5            MALAWI                         1                              1        4     249
kiGH5241-JiVitA-3           BANGLADESH                     0                              0     7215   14239
kiGH5241-JiVitA-3           BANGLADESH                     0                              1     1521   14239
kiGH5241-JiVitA-3           BANGLADESH                     1                              0     4096   14239
kiGH5241-JiVitA-3           BANGLADESH                     1                              1     1407   14239
kiGH5241-JiVitA-4           BANGLADESH                     0                              0     3035    5059
kiGH5241-JiVitA-4           BANGLADESH                     0                              1      265    5059
kiGH5241-JiVitA-4           BANGLADESH                     1                              0     1485    5059
kiGH5241-JiVitA-4           BANGLADESH                     1                              1      274    5059


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093-NIH-Birth, country: BANGLADESH
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1135781-COHORTS, country: INDIA
* studyid: ki1135781-COHORTS, country: PHILIPPINES
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: ki1148112-LCNI-5, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/f5a03efc-54d2-4919-8c6e-b78ce33b96c0/e2d6c681-ff8b-40ee-83c5-be9370bbc511/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f5a03efc-54d2-4919-8c6e-b78ce33b96c0/e2d6c681-ff8b-40ee-83c5-be9370bbc511/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f5a03efc-54d2-4919-8c6e-b78ce33b96c0/e2d6c681-ff8b-40ee-83c5-be9370bbc511/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f5a03efc-54d2-4919-8c6e-b78ce33b96c0/e2d6c681-ff8b-40ee-83c5-be9370bbc511/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0628931   0.0250788   0.1007074
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1000000   0.0341228   0.1658772
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0914406   0.0472681   0.1356131
ki0047075b-MAL-ED          INDIA                          1                    NA                0.2149625   0.0147695   0.4151555
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0607091   0.0259068   0.0955113
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.0936729   0.0521559   0.1351899
ki1000108-IRC              INDIA                          0                    NA                0.1046034   0.0674852   0.1417215
ki1000108-IRC              INDIA                          1                    NA                0.1069213   0.0546227   0.1592200
ki1000109-EE               PAKISTAN                       0                    NA                0.0729167   0.0208366   0.1249967
ki1000109-EE               PAKISTAN                       1                    NA                0.1345455   0.0941600   0.1749309
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1677313   0.0914466   0.2440161
ki1000109-ResPak           PAKISTAN                       1                    NA                0.2329190   0.1587619   0.3070760
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1017700   0.0893052   0.1142347
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.1752310   0.1190410   0.2314210
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1465996   0.1113670   0.1818321
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1966040   0.1651466   0.2280613
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1459454   0.1004479   0.1914429
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2308834   0.1627661   0.2990007
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0856531   0.0558955   0.1154106
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1507629   0.0914098   0.2101160
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0447333   0.0256001   0.0638664
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1200509   0.0687291   0.1713727
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0441153   0.0261806   0.0620501
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0918202   0.0514467   0.1321937
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0405378   0.0305557   0.0505200
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0839465   0.0558645   0.1120286
ki1101329-Keneba           GAMBIA                         0                    NA                0.0760009   0.0605866   0.0914153
ki1101329-Keneba           GAMBIA                         1                    NA                0.1174498   0.0905295   0.1443701
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1513087   0.1171925   0.1854250
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2693412   0.1998892   0.3387932
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0384106   0.0246941   0.0521271
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.0731707   0.0271226   0.1192188
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0349896   0.0301702   0.0398091
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0515232   0.0380742   0.0649723
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0221299   0.0100892   0.0341706
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0684488   0.0370374   0.0998601
ki1135781-COHORTS          INDIA                          0                    NA                0.0833173   0.0756712   0.0909634
ki1135781-COHORTS          INDIA                          1                    NA                0.1138994   0.0857779   0.1420210
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0751177   0.0627956   0.0874398
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1170685   0.0738019   0.1603351
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0298347   0.0188701   0.0407993
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.3508814   0.3348085   0.3669542
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0225989   0.0128025   0.0323952
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.0493827   0.0160026   0.0827629
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2097090   0.2030083   0.2164098
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2293641   0.2033143   0.2554139
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0663088   0.0578655   0.0747522
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1410952   0.1006685   0.1815218


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0753138   0.0417869   0.1088408
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1196581   0.0779840   0.1613323
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0760870   0.0489610   0.1032130
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1185984   0.0856546   0.1515422
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2045455   0.1511224   0.2579685
ki1000304-VITAMIN-A        INDIA                          NA                   NA                0.1627604   0.1476839   0.1778369
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1612426   0.1416314   0.1808538
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1787565   0.1404842   0.2170288
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1128405   0.0854611   0.1402198
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0641447   0.0446535   0.0836359
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0609418   0.0434802   0.0784034
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494534   0.0397554   0.0591514
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0896333   0.0777184   0.1015482
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1866438   0.1550166   0.2182711
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0432802   0.0298127   0.0567476
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0438186   0.0394817   0.0481556
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0353591   0.0233199   0.0473983
ki1135781-COHORTS          INDIA                          NA                   NA                0.1096840   0.1017209   0.1176470
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0779833   0.0679723   0.0879943
ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.0545229   0.0388484   0.0701975
ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.0267431   0.0169662   0.0365200
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2056324   0.1980748   0.2131900
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1065428   0.0957758   0.1173098


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                  1.590000   0.6517059    3.879204
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  2.350843   0.8216544    6.726022
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.542981   0.7463650    3.189846
ki1000108-IRC              INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  1.022160   0.5571660    1.875223
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  1.845195   0.8503012    4.004162
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000   1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  1.388643   0.7967232    2.420326
ki1000304-VITAMIN-A        INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                  1.721834   1.2212512    2.427602
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  1.341095   0.9804474    1.834403
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  1.581985   1.0296031    2.430719
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  1.760157   1.0407497    2.976848
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  2.683705   1.4651968    4.915568
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  2.081366   1.1445286    3.785039
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  2.070820   1.3665573    3.138029
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  1.545373   1.1401195    2.094673
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  1.780077   1.2641962    2.506474
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000   1.0000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  1.904962   0.9239299    3.927658
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.472527   1.0964787    1.977546
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  3.093045   1.5185718    6.299949
ki1135781-COHORTS          INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  1.367056   1.0513367    1.777587
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.558468   1.0411101    2.332915
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                  1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                 11.760840   8.1315042   17.010058
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  1.000000   1.0000000    1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                  2.185185   0.9789204    4.877857
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  1.093725   0.9726324    1.229895
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  2.127848   1.5587569    2.904711


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0124207   -0.0131019   0.0379434
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0282175   -0.0043885   0.0608236
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0153779   -0.0121218   0.0428776
ki1000108-IRC              INDIA                          0                    NA                 0.0124698   -0.0124642   0.0374038
ki1000109-EE               PAKISTAN                       0                    NA                 0.0456817   -0.0032462   0.0946096
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0368141   -0.0242202   0.0978485
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.0609904    0.0510526   0.0709283
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0146430   -0.0182411   0.0475272
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0328111    0.0007712   0.0648509
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0271874    0.0056304   0.0487444
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0194115    0.0050572   0.0337658
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0168265    0.0030353   0.0306176
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0089156    0.0027274   0.0151038
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0136324    0.0017783   0.0254864
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0353351    0.0133902   0.0572800
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0048696   -0.0019086   0.0116478
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0088290    0.0053696   0.0122885
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0132292    0.0029564   0.0235020
ki1135781-COHORTS          INDIA                          0                    NA                 0.0263667    0.0214005   0.0313329
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0028656   -0.0062006   0.0119319
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.0246882    0.0130871   0.0362893
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                 0.0041442   -0.0012704   0.0095588
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0040766   -0.0091133   0.0009601
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0402340    0.0323920   0.0480759


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1649196   -0.2426794   0.4388261
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.2358181   -0.0723167   0.4554090
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2021095   -0.2449814   0.4886435
ki1000108-IRC              INDIA                          0                    NA                 0.1065130   -0.1314024   0.2943987
ki1000109-EE               PAKISTAN                       0                    NA                 0.3851799   -0.1799604   0.6796471
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1799801   -0.1773714   0.4288696
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.3747252    0.3224723   0.4229483
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0908136   -0.1357730   0.2721962
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1835517   -0.0138237   0.3425012
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.2409367    0.0332880   0.4039827
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3026200    0.0632070   0.4808471
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2761073    0.0309639   0.4592352
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1802825    0.0505852   0.2922623
ki1101329-Keneba           GAMBIA                         0                    NA                 0.1520905    0.0109272   0.2731066
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1893183    0.0662611   0.2961579
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1125131   -0.0544330   0.2530269
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2014897    0.1213052   0.2743571
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3741388    0.0475544   0.5887406
ki1135781-COHORTS          INDIA                          0                    NA                 0.2403876    0.1972179   0.2812359
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0367466   -0.0860284   0.1456419
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.4528041    0.2797589   0.5842735
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                 0.1549637   -0.0640709   0.3289109
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0198247   -0.0449919   0.0047364
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3776319    0.3170417   0.4328467
