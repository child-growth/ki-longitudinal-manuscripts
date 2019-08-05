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

**Outcome Variable:** co_occurence

## Predictor Variables

**Intervention Variable:** pers_wasted06

**Adjustment Set:**

* sex
* arm
* enstunt
* month
* brthmon
* hhwealth_quart
* W_birthwt
* W_birthlen
* W_mage
* W_mhtcm
* W_meducyrs
* W_feducyrs
* delta_month
* delta_brthmon
* delta_hhwealth_quart
* delta_W_birthwt
* delta_W_birthlen
* delta_W_mage
* delta_W_mhtcm
* delta_W_meducyrs
* delta_W_feducyrs

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        pers_wasted06    co_occurence   n_cell      n
--------------------------  -----------------------------  --------------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                     0                           0      202    221
ki0047075b-MAL-ED           BANGLADESH                     0                           1       13    221
ki0047075b-MAL-ED           BANGLADESH                     1                           0        5    221
ki0047075b-MAL-ED           BANGLADESH                     1                           1        1    221
ki0047075b-MAL-ED           BRAZIL                         0                           0      178    180
ki0047075b-MAL-ED           BRAZIL                         0                           1        1    180
ki0047075b-MAL-ED           BRAZIL                         1                           0        1    180
ki0047075b-MAL-ED           BRAZIL                         1                           1        0    180
ki0047075b-MAL-ED           INDIA                          0                           0      197    228
ki0047075b-MAL-ED           INDIA                          0                           1       13    228
ki0047075b-MAL-ED           INDIA                          1                           0       14    228
ki0047075b-MAL-ED           INDIA                          1                           1        4    228
ki0047075b-MAL-ED           NEPAL                          0                           0      221    229
ki0047075b-MAL-ED           NEPAL                          0                           1        4    229
ki0047075b-MAL-ED           NEPAL                          1                           0        4    229
ki0047075b-MAL-ED           NEPAL                          1                           1        0    229
ki0047075b-MAL-ED           PERU                           0                           0      216    222
ki0047075b-MAL-ED           PERU                           0                           1        6    222
ki0047075b-MAL-ED           PERU                           1                           0        0    222
ki0047075b-MAL-ED           PERU                           1                           1        0    222
ki0047075b-MAL-ED           SOUTH AFRICA                   0                           0      235    241
ki0047075b-MAL-ED           SOUTH AFRICA                   0                           1        4    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                           0        2    241
ki0047075b-MAL-ED           SOUTH AFRICA                   1                           1        0    241
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           0      224    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                           1        1    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           0        0    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                           1        0    225
ki1000108-CMC-V-BCS-2002    INDIA                          0                           0      303    364
ki1000108-CMC-V-BCS-2002    INDIA                          0                           1        8    364
ki1000108-CMC-V-BCS-2002    INDIA                          1                           0       39    364
ki1000108-CMC-V-BCS-2002    INDIA                          1                           1       14    364
ki1000108-IRC               INDIA                          0                           0      320    405
ki1000108-IRC               INDIA                          0                           1       22    405
ki1000108-IRC               INDIA                          1                           0       60    405
ki1000108-IRC               INDIA                          1                           1        3    405
ki1000109-EE                PAKISTAN                       0                           0      261    350
ki1000109-EE                PAKISTAN                       0                           1       61    350
ki1000109-EE                PAKISTAN                       1                           0       14    350
ki1000109-EE                PAKISTAN                       1                           1       14    350
ki1000109-ResPak            PAKISTAN                       0                           0        7      9
ki1000109-ResPak            PAKISTAN                       0                           1        0      9
ki1000109-ResPak            PAKISTAN                       1                           0        2      9
ki1000109-ResPak            PAKISTAN                       1                           1        0      9
ki1000304b-SAS-CompFeed     INDIA                          0                           0     1038   1254
ki1000304b-SAS-CompFeed     INDIA                          0                           1       96   1254
ki1000304b-SAS-CompFeed     INDIA                          1                           0       88   1254
ki1000304b-SAS-CompFeed     INDIA                          1                           1       32   1254
ki1000304b-SAS-FoodSuppl    INDIA                          0                           0      227    323
ki1000304b-SAS-FoodSuppl    INDIA                          0                           1       43    323
ki1000304b-SAS-FoodSuppl    INDIA                          1                           0       36    323
ki1000304b-SAS-FoodSuppl    INDIA                          1                           1       17    323
ki1017093-NIH-Birth         BANGLADESH                     0                           0      351    460
ki1017093-NIH-Birth         BANGLADESH                     0                           1       33    460
ki1017093-NIH-Birth         BANGLADESH                     1                           0       58    460
ki1017093-NIH-Birth         BANGLADESH                     1                           1       18    460
ki1017093b-PROVIDE          BANGLADESH                     0                           0      505    551
ki1017093b-PROVIDE          BANGLADESH                     0                           1       33    551
ki1017093b-PROVIDE          BANGLADESH                     1                           0       10    551
ki1017093b-PROVIDE          BANGLADESH                     1                           1        3    551
ki1017093c-NIH-Crypto       BANGLADESH                     0                           0      593    634
ki1017093c-NIH-Crypto       BANGLADESH                     0                           1       25    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                           0       12    634
ki1017093c-NIH-Crypto       BANGLADESH                     1                           1        4    634
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           0      939    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                           1       20    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           0       20    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                           1        1    980
ki1101329-Keneba            GAMBIA                         0                           0     1627   1755
ki1101329-Keneba            GAMBIA                         0                           1       84   1755
ki1101329-Keneba            GAMBIA                         1                           0       31   1755
ki1101329-Keneba            GAMBIA                         1                           1       13   1755
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                           0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                           1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                           0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                           1        0      1
ki1113344-GMS-Nepal         NEPAL                          0                           0      438    550
ki1113344-GMS-Nepal         NEPAL                          0                           1       44    550
ki1113344-GMS-Nepal         NEPAL                          1                           0       54    550
ki1113344-GMS-Nepal         NEPAL                          1                           1       14    550
ki1114097-CMIN              BANGLADESH                     0                           0      205    237
ki1114097-CMIN              BANGLADESH                     0                           1       23    237
ki1114097-CMIN              BANGLADESH                     1                           0        6    237
ki1114097-CMIN              BANGLADESH                     1                           1        3    237
ki1114097-CMIN              BRAZIL                         0                           0      110    115
ki1114097-CMIN              BRAZIL                         0                           1        0    115
ki1114097-CMIN              BRAZIL                         1                           0        5    115
ki1114097-CMIN              BRAZIL                         1                           1        0    115
ki1114097-CMIN              GUINEA-BISSAU                  0                           0      459    490
ki1114097-CMIN              GUINEA-BISSAU                  0                           1       16    490
ki1114097-CMIN              GUINEA-BISSAU                  1                           0       15    490
ki1114097-CMIN              GUINEA-BISSAU                  1                           1        0    490
ki1114097-CMIN              PERU                           0                           0      365    374
ki1114097-CMIN              PERU                           0                           1        0    374
ki1114097-CMIN              PERU                           1                           0        9    374
ki1114097-CMIN              PERU                           1                           1        0    374
ki1114097-CONTENT           PERU                           0                           0      199    200
ki1114097-CONTENT           PERU                           0                           1        1    200
ki1114097-CONTENT           PERU                           1                           0        0    200
ki1114097-CONTENT           PERU                           1                           1        0    200
ki1119695-PROBIT            BELARUS                        0                           0     2008   2146
ki1119695-PROBIT            BELARUS                        0                           1        0   2146
ki1119695-PROBIT            BELARUS                        1                           0      138   2146
ki1119695-PROBIT            BELARUS                        1                           1        0   2146
ki1126311-ZVITAMBO          ZIMBABWE                       0                           0     1491   1652
ki1126311-ZVITAMBO          ZIMBABWE                       0                           1       73   1652
ki1126311-ZVITAMBO          ZIMBABWE                       1                           0       75   1652
ki1126311-ZVITAMBO          ZIMBABWE                       1                           1       13   1652
ki1135781-COHORTS           GUATEMALA                      0                           0      567    711
ki1135781-COHORTS           GUATEMALA                      0                           1       26    711
ki1135781-COHORTS           GUATEMALA                      1                           0      110    711
ki1135781-COHORTS           GUATEMALA                      1                           1        8    711
ki1135781-COHORTS           PHILIPPINES                    0                           0     2198   2487
ki1135781-COHORTS           PHILIPPINES                    0                           1      155   2487
ki1135781-COHORTS           PHILIPPINES                    1                           0      102   2487
ki1135781-COHORTS           PHILIPPINES                    1                           1       32   2487
ki1148112-iLiNS-DOSE        MALAWI                         0                           0      830    868
ki1148112-iLiNS-DOSE        MALAWI                         0                           1       33    868
ki1148112-iLiNS-DOSE        MALAWI                         1                           0        5    868
ki1148112-iLiNS-DOSE        MALAWI                         1                           1        0    868
ki1148112-iLiNS-DYAD-M      MALAWI                         0                           0      948   1004
ki1148112-iLiNS-DYAD-M      MALAWI                         0                           1       24   1004
ki1148112-iLiNS-DYAD-M      MALAWI                         1                           0       31   1004
ki1148112-iLiNS-DYAD-M      MALAWI                         1                           1        1   1004
ki1148112-LCNI-5            MALAWI                         0                           0      226    235
ki1148112-LCNI-5            MALAWI                         0                           1        6    235
ki1148112-LCNI-5            MALAWI                         1                           0        3    235
ki1148112-LCNI-5            MALAWI                         1                           1        0    235
kiGH5241-JiVitA-4           BANGLADESH                     0                           0     3645   4417
kiGH5241-JiVitA-4           BANGLADESH                     0                           1      314   4417
kiGH5241-JiVitA-4           BANGLADESH                     1                           0      354   4417
kiGH5241-JiVitA-4           BANGLADESH                     1                           1      104   4417


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
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093-NIH-Birth, country: BANGLADESH
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1135781-COHORTS, country: PHILIPPINES
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: ki1148112-LCNI-5, country: MALAWI
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
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
![](/tmp/4473f714-7b0b-49ac-b6a9-33b723559701/de70fa94-2894-4c77-88b0-f719084fc46f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4473f714-7b0b-49ac-b6a9-33b723559701/de70fa94-2894-4c77-88b0-f719084fc46f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4473f714-7b0b-49ac-b6a9-33b723559701/de70fa94-2894-4c77-88b0-f719084fc46f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4473f714-7b0b-49ac-b6a9-33b723559701/de70fa94-2894-4c77-88b0-f719084fc46f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0257235   0.0081049   0.0433421
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.2641509   0.1452931   0.3830088
ki1000109-EE               PAKISTAN      0                    NA                0.1892478   0.1463839   0.2321117
ki1000109-EE               PAKISTAN      1                    NA                0.5301052   0.3281286   0.7320818
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0857877   0.0759486   0.0956268
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2487666   0.1795577   0.3179755
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1585820   0.1148274   0.2023367
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.2973818   0.1703590   0.4244045
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0865448   0.0583730   0.1147167
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.2346846   0.1381962   0.3311730
ki1101329-Keneba           GAMBIA        0                    NA                0.0491256   0.0388762   0.0593749
ki1101329-Keneba           GAMBIA        1                    NA                0.2906247   0.1529929   0.4282565
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0913896   0.0656255   0.1171537
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.1935764   0.0955814   0.2915715
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0466117   0.0361556   0.0570679
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.1388632   0.0636250   0.2141013
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0438449   0.0273537   0.0603360
ki1135781-COHORTS          GUATEMALA     1                    NA                0.0677966   0.0224054   0.1131878
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0655840   0.0555671   0.0756008
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2580328   0.1857825   0.3302831
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0856544   0.0736547   0.0976541
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2790054   0.1924010   0.3656098


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0604396   0.0359254   0.0849538
ki1000109-EE               PAKISTAN      NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1020734   0.0904618   0.1136850
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1108696   0.0821465   0.1395926
ki1101329-Keneba           GAMBIA        NA                   NA                0.0552707   0.0445768   0.0659645
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1054545   0.0797627   0.1311464
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0520581   0.0413427   0.0627735
ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0478200   0.0321242   0.0635158
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0751910   0.0648251   0.0855569
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0946344   0.0840975   0.1051713


### Parameter: RR


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                  1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 10.268868   4.5249834   23.303875
ki1000109-EE               PAKISTAN      0                    0                  1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                  2.801117   1.7952587    4.370544
ki1000304b-SAS-CompFeed    INDIA         0                    0                  1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                  2.899792   2.1839822    3.850211
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                  1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                  1.875255   1.1276375    3.118539
ki1017093-NIH-Birth        BANGLADESH    0                    0                  1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                  2.711712   1.6045881    4.582721
ki1101329-Keneba           GAMBIA        0                    0                  1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                  5.915954   3.5271734    9.922537
ki1113344-GMS-Nepal        NEPAL         0                    0                  1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                  2.118145   1.1860123    3.782877
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                  1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                  2.979146   1.6574390    5.354835
ki1135781-COHORTS          GUATEMALA     0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA     1                    0                  1.546284   0.7174282    3.332730
ki1135781-COHORTS          PHILIPPINES   0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                  3.934389   2.8626848    5.407308
kiGH5241-JiVitA-4          BANGLADESH    0                    0                  1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                  3.257339   2.3286962    4.556308


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0347161    0.0151987   0.0542334
ki1000109-EE               PAKISTAN      0                    NA                0.0250379    0.0072060   0.0428698
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0162856    0.0097492   0.0228221
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0271765    0.0041564   0.0501966
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0243247    0.0071196   0.0415299
ki1101329-Keneba           GAMBIA        0                    NA                0.0061451    0.0023186   0.0099715
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0140650    0.0013363   0.0267936
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0054464    0.0013009   0.0095918
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0039751   -0.0040667   0.0120169
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0096070    0.0054345   0.0137796
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0089800    0.0010069   0.0169530


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.5743935    0.2690804   0.7521739
ki1000109-EE               PAKISTAN      0                    NA                0.1168436    0.0315727   0.1946064
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.1595483    0.1010930   0.2142023
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1463000    0.0160415   0.2593146
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.2193996    0.0582208   0.3529937
ki1101329-Keneba           GAMBIA        0                    NA                0.1111814    0.0424415   0.1749867
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.1333746    0.0079257   0.2429603
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1046211    0.0242097   0.1784061
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0831267   -0.0990260   0.2350893
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.1277685    0.0728601   0.1794251
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0948913    0.0079891   0.1741806
