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

**Outcome Variable:** dead

## Predictor Variables

**Intervention Variable:** ever_wasted024

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

studyid                     country                        ever_wasted024    dead   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------  -----  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                    0      174     263  dead             
ki0047075b-MAL-ED           BANGLADESH                     0                    1        2     263  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                    0       87     263  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                    1        0     263  dead             
ki0047075b-MAL-ED           INDIA                          0                    0      130     251  dead             
ki0047075b-MAL-ED           INDIA                          0                    1        1     251  dead             
ki0047075b-MAL-ED           INDIA                          1                    0      119     251  dead             
ki0047075b-MAL-ED           INDIA                          1                    1        1     251  dead             
ki0047075b-MAL-ED           PERU                           0                    0      273     302  dead             
ki0047075b-MAL-ED           PERU                           0                    1        2     302  dead             
ki0047075b-MAL-ED           PERU                           1                    0       27     302  dead             
ki0047075b-MAL-ED           PERU                           1                    1        0     302  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    0      248     312  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    1        0     312  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    0       64     312  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    1        0     312  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      222     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        3     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0       36     261  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     261  dead             
ki1000109-EE                PAKISTAN                       0                    0      153     380  dead             
ki1000109-EE                PAKISTAN                       0                    1        1     380  dead             
ki1000109-EE                PAKISTAN                       1                    0      223     380  dead             
ki1000109-EE                PAKISTAN                       1                    1        3     380  dead             
ki1000304-VITAMIN-A         INDIA                          0                    0     2556    3904  dead             
ki1000304-VITAMIN-A         INDIA                          0                    1       35    3904  dead             
ki1000304-VITAMIN-A         INDIA                          1                    0     1273    3904  dead             
ki1000304-VITAMIN-A         INDIA                          1                    1       40    3904  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                    0      866    1513  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                    1       19    1513  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                    0      610    1513  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                    1       18    1513  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                    0      219     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                    1        2     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                    0      193     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                    1        4     418  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                    0      450     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                    1        4     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                    0      246     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                    1        0     700  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     1829    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0      566    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396  dead             
ki1101329-Keneba            GAMBIA                         0                    0     1609    2920  dead             
ki1101329-Keneba            GAMBIA                         0                    1       33    2920  dead             
ki1101329-Keneba            GAMBIA                         1                    0     1249    2920  dead             
ki1101329-Keneba            GAMBIA                         1                    1       29    2920  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    0     5737    7166  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    1       23    7166  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    0     1390    7166  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    1       16    7166  dead             
ki1113344-GMS-Nepal         NEPAL                          0                    0      276     686  dead             
ki1113344-GMS-Nepal         NEPAL                          0                    1        5     686  dead             
ki1113344-GMS-Nepal         NEPAL                          1                    0      403     686  dead             
ki1113344-GMS-Nepal         NEPAL                          1                    1        2     686  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0     9963   13946  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      682   13946  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0     2930   13946  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1      371   13946  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                    0     1660    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                    1      113    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                    0      143    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                    1       15    1931  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0     1059    1201  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       31    1201  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0      104    1201  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1        7    1201  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    19607   26956  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                    1      394   26956  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                    0     6786   26956  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                    1      169   26956  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     3724    5443  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       30    5443  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                    0     1670    5443  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                    1       19    5443  dead             


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
* studyid: ki1113344-GMS-Nepal, country: NEPAL

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
![](/tmp/1da01dfe-4acf-4b2b-adad-317a043d5c5a/425f0161-02a0-41db-a153-424c10ae66f4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1da01dfe-4acf-4b2b-adad-317a043d5c5a/425f0161-02a0-41db-a153-424c10ae66f4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1da01dfe-4acf-4b2b-adad-317a043d5c5a/425f0161-02a0-41db-a153-424c10ae66f4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1da01dfe-4acf-4b2b-adad-317a043d5c5a/425f0161-02a0-41db-a153-424c10ae66f4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0136668   0.0091870   0.0181466
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0297369   0.0205226   0.0389511
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0213481   0.0109504   0.0317458
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0286293   0.0133724   0.0438861
ki1101329-Keneba            GAMBIA         0                    NA                0.0205064   0.0135793   0.0274336
ki1101329-Keneba            GAMBIA         1                    NA                0.0226202   0.0143985   0.0308419
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0040091   0.0023736   0.0056447
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0112068   0.0057209   0.0166927
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0649710   0.0602998   0.0696422
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1081840   0.0974784   0.1188897
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0637975   0.0524263   0.0751686
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.1021362   0.0580836   0.1461888
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0284404   0.0185681   0.0383127
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0630631   0.0178244   0.1083018
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0197219   0.0178239   0.0216199
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0241310   0.0204351   0.0278268
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0080092   0.0051630   0.0108555
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0112233   0.0059707   0.0164759


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0192111   0.0149047   0.0235174
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
ki1101329-Keneba            GAMBIA         NA                   NA                0.0212329   0.0160032   0.0264626
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054424   0.0037388   0.0071459
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0755055   0.0711204   0.0798906
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0316403   0.0217366   0.0415440
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0208859   0.0191395   0.0226323
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0090024   0.0064532   0.0115515


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 2.175847   1.3858751   3.416116
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 1.341069   0.8497612   2.116436
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.103078   0.6714817   1.812085
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.795324   1.4780713   5.286508
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 1.665112   1.4743870   1.880510
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.600945   1.0035564   2.553942
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 2.217379   0.9993976   4.919732
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 1.223562   1.0270839   1.457626
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.401297   0.7774920   2.525600


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0055443    0.0020518   0.0090368
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0031066   -0.0020442   0.0082575
ki1101329-Keneba            GAMBIA         0                    NA                0.0007264   -0.0040227   0.0054756
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014332    0.0002954   0.0025711
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0105345    0.0077425   0.0133265
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0024894   -0.0013812   0.0063601
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0031999   -0.0011170   0.0075169
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0011640    0.0001273   0.0022007
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0009932   -0.0008787   0.0028650


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.2885976    0.0966098   0.4397843
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.1270358   -0.0941567   0.3035124
ki1101329-Keneba            GAMBIA         0                    NA                0.0342125   -0.2172682   0.2337388
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.2633491    0.0436303   0.4325892
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.1395200    0.1026170   0.1749054
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0375556   -0.0223136   0.0939186
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.1011347   -0.0421350   0.2247081
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0557304    0.0052469   0.1036518
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.1103231   -0.1189779   0.2926357
