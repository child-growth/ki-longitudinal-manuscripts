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
![](/tmp/1f9abd70-1724-43ac-970e-47fe893eb16d/cb235e65-024f-4e72-aeaa-b30c8037e632/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1f9abd70-1724-43ac-970e-47fe893eb16d/cb235e65-024f-4e72-aeaa-b30c8037e632/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1f9abd70-1724-43ac-970e-47fe893eb16d/cb235e65-024f-4e72-aeaa-b30c8037e632/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1f9abd70-1724-43ac-970e-47fe893eb16d/cb235e65-024f-4e72-aeaa-b30c8037e632/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0628931   0.0250788   0.1007074
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1000000   0.0341228   0.1658772
ki0047075b-MAL-ED          INDIA                          0                    NA                0.1014697   0.0540833   0.1488562
ki0047075b-MAL-ED          INDIA                          1                    NA                0.2315238   0.0386234   0.4244242
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0609848   0.0255218   0.0964477
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.0894438   0.0481929   0.1306947
ki1000108-IRC              INDIA                          0                    NA                0.1022847   0.0655495   0.1390200
ki1000108-IRC              INDIA                          1                    NA                0.1063272   0.0539759   0.1586784
ki1000109-EE               PAKISTAN                       0                    NA                0.0729167   0.0208366   0.1249967
ki1000109-EE               PAKISTAN                       1                    NA                0.1345455   0.0941600   0.1749309
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1640670   0.0867708   0.2413632
ki1000109-ResPak           PAKISTAN                       1                    NA                0.2331052   0.1582911   0.3079194
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1034515   0.0910081   0.1158949
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.1805262   0.1248585   0.2361940
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1465996   0.1113670   0.1818321
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1966040   0.1651466   0.2280613
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1451634   0.0999987   0.1903280
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2325766   0.1634334   0.3017197
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0909727   0.0591141   0.1228314
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1487680   0.0892136   0.2083224
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0440127   0.0249900   0.0630354
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1170104   0.0662725   0.1677484
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0429597   0.0252910   0.0606285
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0906561   0.0511752   0.1301370
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0408364   0.0308051   0.0508677
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0859212   0.0569868   0.1148555
ki1101329-Keneba           GAMBIA                         0                    NA                0.0751556   0.0602821   0.0900291
ki1101329-Keneba           GAMBIA                         1                    NA                0.1231545   0.0942620   0.1520470
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1524409   0.1183669   0.1865148
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2764080   0.2070867   0.3457294
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0384106   0.0246941   0.0521271
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.0731707   0.0271226   0.1192188
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0427561   0.0376879   0.0478242
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0546359   0.0378270   0.0714449
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0218264   0.0098914   0.0337615
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0674815   0.0368298   0.0981332
ki1135781-COHORTS          INDIA                          0                    NA                0.0840532   0.0763576   0.0917487
ki1135781-COHORTS          INDIA                          1                    NA                0.1122582   0.0841769   0.1403396
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0822183   0.0693808   0.0950557
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1300125   0.0847792   0.1752458
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0373352   0.0263809   0.0482894
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.6340652   0.6076526   0.6604778
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0225989   0.0128025   0.0323952
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.0493827   0.0160026   0.0827629
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1970514   0.1903918   0.2037109
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2329613   0.2067016   0.2592210
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0680794   0.0595751   0.0765836
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1421117   0.1020796   0.1821439


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


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                  1.590000    0.6517059    3.879204
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  2.281703    0.8747897    5.951338
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.466658    0.6965455    3.088220
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  1.039521    0.5636387    1.917194
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  1.845195    0.8503012    4.004162
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  1.420793    0.8035288    2.512235
ki1000304-VITAMIN-A        INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                  1.745032    1.2530420    2.430197
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  1.341095    0.9804474    1.834403
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  1.602171    1.0421545    2.463121
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  1.635303    0.9599210    2.785869
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  2.658560    1.4403004    4.907268
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  2.110257    1.1592685    3.841373
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  2.104035    1.3863789    3.193185
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  1.638660    1.2071505    2.224418
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  1.813215    1.2981370    2.532666
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  1.904962    0.9239299    3.927658
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.277852    0.9192891    1.776271
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  3.091734    1.5204989    6.286633
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  1.335562    1.0239426    1.742016
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.581309    1.0808992    2.313388
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                  1.000000    1.0000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                 16.983050   12.6166723   22.860544
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  1.000000    1.0000000    1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                  2.185185    0.9789204    4.877857
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  1.182236    1.0512785    1.329507
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  2.087442    1.5369417    2.835121


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0124207   -0.0131019   0.0379434
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0181884   -0.0175976   0.0539744
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0151022   -0.0128752   0.0430796
ki1000108-IRC              INDIA                          0                    NA                 0.0147884   -0.0100817   0.0396586
ki1000109-EE               PAKISTAN                       0                    NA                 0.0456817   -0.0032462   0.0946096
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0404785   -0.0214783   0.1024352
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.0593089    0.0494220   0.0691958
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0146430   -0.0182411   0.0475272
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0335931    0.0017683   0.0654179
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0218677   -0.0010314   0.0447668
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0201320    0.0057776   0.0344865
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0179821    0.0042685   0.0316957
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0086170    0.0024119   0.0148222
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0144777    0.0030205   0.0259349
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0342030    0.0123514   0.0560545
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0048696   -0.0019086   0.0116478
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0010626   -0.0026077   0.0047329
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0135327    0.0033193   0.0237460
ki1135781-COHORTS          INDIA                          0                    NA                 0.0256308    0.0206487   0.0306128
ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0042349   -0.0137836   0.0053137
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.0171877    0.0057488   0.0286267
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                 0.0041442   -0.0012704   0.0095588
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0085810    0.0035263   0.0136358
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0384634    0.0306133   0.0463135


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1649196   -0.2426794   0.4388261
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1520030   -0.1936345   0.3975553
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1984858   -0.2595776   0.4899680
ki1000108-IRC              INDIA                          0                    NA                 0.1263179   -0.1109091   0.3128866
ki1000109-EE               PAKISTAN                       0                    NA                 0.3851799   -0.1799604   0.6796471
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1978948   -0.1683838   0.4493481
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.3643939    0.3125053   0.4123663
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0908136   -0.1357730   0.2721962
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1879267   -0.0077698   0.3456214
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.1937932   -0.0314351   0.3698398
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3138531    0.0747565   0.4911636
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2950696    0.0526185   0.4754734
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1742455    0.0439521   0.2867821
ki1101329-Keneba           GAMBIA                         0                    NA                 0.1615215    0.0261252   0.2780939
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1832526    0.0608682   0.2896883
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1125131   -0.0544330   0.2530269
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0242497   -0.0627054   0.1040898
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3827212    0.0590500   0.5950548
ki1135781-COHORTS          INDIA                          0                    NA                 0.2336784    0.1902118   0.2748118
ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0543058   -0.1854514   0.0623312
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.3152389    0.1372818   0.4564879
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                 0.1549637   -0.0640709   0.3289109
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0417300    0.0175816   0.0652848
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3610140    0.2998381   0.4168447
