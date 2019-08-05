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

**Intervention Variable:** ever_co624

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_co624    dead624   n_cell       n
--------------------------  -----------------------------  -----------  --------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                   0      204     239
ki0047075b-MAL-ED           BANGLADESH                     0                   1        0     239
ki0047075b-MAL-ED           BANGLADESH                     1                   0       35     239
ki0047075b-MAL-ED           BANGLADESH                     1                   1        0     239
ki0047075b-MAL-ED           INDIA                          0                   0      188     235
ki0047075b-MAL-ED           INDIA                          0                   1        0     235
ki0047075b-MAL-ED           INDIA                          1                   0       47     235
ki0047075b-MAL-ED           INDIA                          1                   1        0     235
ki0047075b-MAL-ED           PERU                           0                   0      258     270
ki0047075b-MAL-ED           PERU                           0                   1        1     270
ki0047075b-MAL-ED           PERU                           1                   0       11     270
ki0047075b-MAL-ED           PERU                           1                   1        0     270
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   0      240     259
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   1        0     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   0       19     259
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   1        0     259
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      224     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        0     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0       21     245
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     245
ki1000304-VITAMIN-A         INDIA                          0                   0     2990    3519
ki1000304-VITAMIN-A         INDIA                          0                   1       10    3519
ki1000304-VITAMIN-A         INDIA                          1                   0      514    3519
ki1000304-VITAMIN-A         INDIA                          1                   1        5    3519
ki1000304b-SAS-CompFeed     INDIA                          0                   0     1073    1389
ki1000304b-SAS-CompFeed     INDIA                          0                   1        2    1389
ki1000304b-SAS-CompFeed     INDIA                          1                   0      304    1389
ki1000304b-SAS-CompFeed     INDIA                          1                   1       10    1389
ki1000304b-SAS-FoodSuppl    INDIA                          0                   0      255     401
ki1000304b-SAS-FoodSuppl    INDIA                          0                   1        1     401
ki1000304b-SAS-FoodSuppl    INDIA                          1                   0      142     401
ki1000304b-SAS-FoodSuppl    INDIA                          1                   1        3     401
ki1017093b-PROVIDE          BANGLADESH                     0                   0      538     613
ki1017093b-PROVIDE          BANGLADESH                     0                   1        0     613
ki1017093b-PROVIDE          BANGLADESH                     1                   0       75     613
ki1017093b-PROVIDE          BANGLADESH                     1                   1        0     613
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     1904    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        0    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0      113    2017
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2017
ki1101329-Keneba            GAMBIA                         0                   0     2284    2700
ki1101329-Keneba            GAMBIA                         0                   1       27    2700
ki1101329-Keneba            GAMBIA                         1                   0      380    2700
ki1101329-Keneba            GAMBIA                         1                   1        9    2700
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   0     6309    7151
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   1       32    7151
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   0      803    7151
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   1        7    7151
ki1113344-GMS-Nepal         NEPAL                          0                   0      399     590
ki1113344-GMS-Nepal         NEPAL                          0                   1        1     590
ki1113344-GMS-Nepal         NEPAL                          1                   0      189     590
ki1113344-GMS-Nepal         NEPAL                          1                   1        1     590
ki1126311-ZVITAMBO          ZIMBABWE                       0                   0    10038   10685
ki1126311-ZVITAMBO          ZIMBABWE                       0                   1      214   10685
ki1126311-ZVITAMBO          ZIMBABWE                       1                   0      348   10685
ki1126311-ZVITAMBO          ZIMBABWE                       1                   1       85   10685
ki1148112-iLiNS-DOSE        MALAWI                         0                   0     1578    1693
ki1148112-iLiNS-DOSE        MALAWI                         0                   1       22    1693
ki1148112-iLiNS-DOSE        MALAWI                         1                   0       89    1693
ki1148112-iLiNS-DOSE        MALAWI                         1                   1        4    1693
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   0     1087    1146
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   1       15    1146
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   0       42    1146
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   1        2    1146
kiGH5241-JiVitA-3           BANGLADESH                     0                   0    15630   17266
kiGH5241-JiVitA-3           BANGLADESH                     0                   1      136   17266
kiGH5241-JiVitA-3           BANGLADESH                     1                   0     1482   17266
kiGH5241-JiVitA-3           BANGLADESH                     1                   1       18   17266
kiGH5241-JiVitA-4           BANGLADESH                     0                   0     4589    5428
kiGH5241-JiVitA-4           BANGLADESH                     0                   1       37    5428
kiGH5241-JiVitA-4           BANGLADESH                     1                   0      791    5428
kiGH5241-JiVitA-4           BANGLADESH                     1                   1       11    5428


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/124c6f6a-cc35-4ca9-a855-5417b400caef/7a23b259-7175-432e-92fc-8900572763b4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/124c6f6a-cc35-4ca9-a855-5417b400caef/7a23b259-7175-432e-92fc-8900572763b4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/124c6f6a-cc35-4ca9-a855-5417b400caef/7a23b259-7175-432e-92fc-8900572763b4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/124c6f6a-cc35-4ca9-a855-5417b400caef/7a23b259-7175-432e-92fc-8900572763b4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0033333   0.0012705   0.0053962
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0096339   0.0012292   0.0180387
ki1101329-Keneba            GAMBIA         0                    NA                0.0116833   0.0073014   0.0160651
ki1101329-Keneba            GAMBIA         1                    NA                0.0231362   0.0081940   0.0380785
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0050465   0.0033023   0.0067907
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0086420   0.0022673   0.0150166
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0208740   0.0181065   0.0236415
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1963048   0.1588907   0.2337190
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0086262   0.0071442   0.0101081
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0120000   0.0066443   0.0173557
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0079983   0.0053469   0.0106497
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0137157   0.0059825   0.0214489


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0042626   0.0021098   0.0064154
ki1101329-Keneba            GAMBIA         NA                   NA                0.0133333   0.0090062   0.0176605
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054538   0.0037467   0.0071609
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0279832   0.0248559   0.0311104
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0089193   0.0074832   0.0103554
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0088430   0.0063037   0.0113823


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 2.890173   0.9917338    8.422726
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.980291   0.9383814    4.179062
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 1.712461   0.7583076    3.867196
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 9.404286   7.4558237   11.861950
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 1.391118   0.8632040    2.241890
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.714835   0.8933096    3.291868


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0009292   -0.0003493   0.0022077
ki1101329-Keneba            GAMBIA         0                    NA                0.0016501   -0.0005985   0.0038987
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0004073   -0.0003418   0.0011563
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0071092    0.0054534   0.0087650
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0002931   -0.0001893   0.0007755
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0008448   -0.0003581   0.0020477


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.2180000   -0.1174607   0.4527557
ki1101329-Keneba            GAMBIA         0                    NA                0.1237559   -0.0564841   0.2732464
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0746748   -0.0710935   0.2006050
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.2540521    0.1999324   0.3045108
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0328621   -0.0226400   0.0853519
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0955289   -0.0499562   0.2208552
