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
![](/tmp/14ed9137-653c-40f9-95cb-e450d1ad566e/cbbf18b2-8e57-45df-ae93-35270fabfe3d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/14ed9137-653c-40f9-95cb-e450d1ad566e/cbbf18b2-8e57-45df-ae93-35270fabfe3d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/14ed9137-653c-40f9-95cb-e450d1ad566e/cbbf18b2-8e57-45df-ae93-35270fabfe3d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/14ed9137-653c-40f9-95cb-e450d1ad566e/cbbf18b2-8e57-45df-ae93-35270fabfe3d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0628931   0.0250788   0.1007074
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1000000   0.0341228   0.1658772
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0908123   0.0460673   0.1355573
ki0047075b-MAL-ED          INDIA                          1                    NA                0.2133940   0.0222517   0.4045363
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0589122   0.0243824   0.0934421
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.0935512   0.0518391   0.1352633
ki1000108-IRC              INDIA                          0                    NA                0.1051705   0.0671707   0.1431702
ki1000108-IRC              INDIA                          1                    NA                0.1094167   0.0571005   0.1617329
ki1000109-EE               PAKISTAN                       0                    NA                0.0729167   0.0208366   0.1249967
ki1000109-EE               PAKISTAN                       1                    NA                0.1345455   0.0941600   0.1749309
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1681528   0.0916108   0.2446949
ki1000109-ResPak           PAKISTAN                       1                    NA                0.2339840   0.1598182   0.3081497
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1009026   0.0884287   0.1133764
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.1634305   0.1114766   0.2153844
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1465996   0.1113670   0.1818321
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1966040   0.1651466   0.2280613
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1474384   0.1019659   0.1929109
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2282232   0.1597294   0.2967169
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0899440   0.0577715   0.1221165
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1573614   0.0968298   0.2178930
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0445499   0.0254815   0.0636183
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1208243   0.0691784   0.1724702
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0436210   0.0255348   0.0617072
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0937235   0.0527886   0.1346584
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0412359   0.0311007   0.0513711
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0836960   0.0552129   0.1121791
ki1101329-Keneba           GAMBIA                         0                    NA                0.0744673   0.0599888   0.0889458
ki1101329-Keneba           GAMBIA                         1                    NA                0.1220804   0.0938626   0.1502982
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1514732   0.1174386   0.1855079
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2784453   0.2091562   0.3477344
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0384106   0.0246941   0.0521271
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.0731707   0.0271226   0.1192188
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0461046   0.0404813   0.0517280
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0531953   0.0375094   0.0688812
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0220114   0.0099647   0.0340582
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0663409   0.0359253   0.0967565
ki1135781-COHORTS          INDIA                          0                    NA                0.0843806   0.0765787   0.0921825
ki1135781-COHORTS          INDIA                          1                    NA                0.1164095   0.0877421   0.1450769
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0772320   0.0643704   0.0900935
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1175855   0.0776986   0.1574724
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0262517   0.0152607   0.0372427
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.5595586   0.5360912   0.5830260
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0225989   0.0128025   0.0323952
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.0493827   0.0160026   0.0827629
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1635226   0.1569468   0.1700983
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2284275   0.2042269   0.2526280
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0685825   0.0601440   0.0770209
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1422382   0.1041996   0.1802769


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
ki0047075b-MAL-ED          INDIA                          1                    0                  2.349836    0.8435285    6.545988
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.587975    0.7598342    3.318706
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  1.040375    0.5704867    1.897293
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  1.845195    0.8503012    4.004162
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  1.391496    0.7994263    2.422062
ki1000304-VITAMIN-A        INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                  1.619687    1.1509933    2.279236
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  1.341095    0.9804474    1.834403
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  1.547922    1.0066103    2.380328
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  1.749549    1.0339195    2.960503
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  2.712111    1.4807671    4.967388
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  2.148588    1.1769571    3.922344
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  2.029687    1.3333369    3.089714
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  1.639382    1.2138037    2.214176
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  1.838247    1.3157463    2.568241
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  1.904962    0.9239299    3.927658
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.153795    0.8388871    1.586916
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  3.013930    1.4770088    6.150114
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  1.379576    1.0612471    1.793391
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.522498    1.0444650    2.219318
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                  1.000000    1.0000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                 21.315137   14.0362667   32.368655
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  1.000000    1.0000000    1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                  2.185185    0.9789204    4.877857
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  1.396917    1.2473027    1.564478
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  2.073973    1.5496177    2.775759


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0124207   -0.0131019   0.0379434
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0288458   -0.0040490   0.0617407
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0171747   -0.0101507   0.0445001
ki1000108-IRC              INDIA                          0                    NA                 0.0119027   -0.0135796   0.0373850
ki1000109-EE               PAKISTAN                       0                    NA                 0.0456817   -0.0032462   0.0946096
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0363926   -0.0248469   0.0976321
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.0618579    0.0518896   0.0718261
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0146430   -0.0182411   0.0475272
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0313181   -0.0006767   0.0633128
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0228965   -0.0006912   0.0464841
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0195948    0.0052643   0.0339254
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0173209    0.0033650   0.0312767
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0082175    0.0019604   0.0144746
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0151660    0.0041743   0.0261578
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0351706    0.0133268   0.0570144
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0048696   -0.0019086   0.0116478
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0022860   -0.0066498   0.0020778
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0133477    0.0030438   0.0236516
ki1135781-COHORTS          INDIA                          0                    NA                 0.0253034    0.0202001   0.0304066
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0007513   -0.0088291   0.0103318
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.0282712    0.0165825   0.0399599
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                 0.0041442   -0.0012704   0.0095588
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0421099    0.0369744   0.0472453
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0379603    0.0301600   0.0457606


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1649196   -0.2426794   0.4388261
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.2410686   -0.0724573   0.4629373
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2257248   -0.2204520   0.5087868
ki1000108-IRC              INDIA                          0                    NA                 0.1016689   -0.1429396   0.2939270
ki1000109-EE               PAKISTAN                       0                    NA                 0.3851799   -0.1799604   0.6796471
ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1779194   -0.1808236   0.4276737
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.3800547    0.3275937   0.4284227
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0908136   -0.1357730   0.2721962
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1751997   -0.0215509   0.3340561
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.2029100   -0.0301606   0.3832492
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3054784    0.0668640   0.4830761
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2842196    0.0345606   0.4693178
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1661665    0.0342424   0.2800696
ki1101329-Keneba           GAMBIA                         0                    NA                 0.1692008    0.0399834   0.2810255
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1884370    0.0660683   0.2947722
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.1125131   -0.0544330   0.2530269
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0521692   -0.1576985   0.0437407
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3774895    0.0494291   0.5923299
ki1135781-COHORTS          INDIA                          0                    NA                 0.2306934    0.1858805   0.2730397
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0096346   -0.1209759   0.1250271
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.5185200    0.3422286   0.6475629
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                 0.1549637   -0.0640709   0.3289109
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2047822    0.1824420   0.2265121
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3562917    0.2957959   0.4115906
