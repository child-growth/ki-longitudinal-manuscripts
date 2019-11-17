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

studyid                     country                        ever_swasted06    dead   n_cell       n
--------------------------  -----------------------------  ---------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                    0      245     263
ki0047075b-MAL-ED           BANGLADESH                     0                    1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1                    0       16     263
ki0047075b-MAL-ED           BANGLADESH                     1                    1        0     263
ki0047075b-MAL-ED           INDIA                          0                    0      226     251
ki0047075b-MAL-ED           INDIA                          0                    1        2     251
ki0047075b-MAL-ED           INDIA                          1                    0       23     251
ki0047075b-MAL-ED           INDIA                          1                    1        0     251
ki0047075b-MAL-ED           PERU                           0                    0      299     302
ki0047075b-MAL-ED           PERU                           0                    1        2     302
ki0047075b-MAL-ED           PERU                           1                    0        1     302
ki0047075b-MAL-ED           PERU                           1                    1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    0      304     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    0        8     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      253     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        5     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     261
ki1000109-EE                PAKISTAN                       0                    0      337     380
ki1000109-EE                PAKISTAN                       0                    1        4     380
ki1000109-EE                PAKISTAN                       1                    0       39     380
ki1000109-EE                PAKISTAN                       1                    1        0     380
ki1000304-VITAMIN-A         INDIA                          0                    0     3588    3895
ki1000304-VITAMIN-A         INDIA                          0                    1       55    3895
ki1000304-VITAMIN-A         INDIA                          1                    0      232    3895
ki1000304-VITAMIN-A         INDIA                          1                    1       20    3895
ki1000304b-SAS-CompFeed     INDIA                          0                    0     1378    1508
ki1000304b-SAS-CompFeed     INDIA                          0                    1       26    1508
ki1000304b-SAS-CompFeed     INDIA                          1                    0       94    1508
ki1000304b-SAS-CompFeed     INDIA                          1                    1       10    1508
ki1000304b-SAS-FoodSuppl    INDIA                          0                    0      385     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                    1        3     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                    0       27     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                    1        3     418
ki1017093b-PROVIDE          BANGLADESH                     0                    0      667     700
ki1017093b-PROVIDE          BANGLADESH                     0                    1        4     700
ki1017093b-PROVIDE          BANGLADESH                     1                    0       29     700
ki1017093b-PROVIDE          BANGLADESH                     1                    1        0     700
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     2310    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0       85    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396
ki1101329-Keneba            GAMBIA                         0                    0     2199    2480
ki1101329-Keneba            GAMBIA                         0                    1       45    2480
ki1101329-Keneba            GAMBIA                         1                    0      224    2480
ki1101329-Keneba            GAMBIA                         1                    1       12    2480
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    0      328     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    1        2     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    0        8     338
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    1        0     338
ki1113344-GMS-Nepal         NEPAL                          0                    0      600     686
ki1113344-GMS-Nepal         NEPAL                          0                    1        7     686
ki1113344-GMS-Nepal         NEPAL                          1                    0       79     686
ki1113344-GMS-Nepal         NEPAL                          1                    1        0     686
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0    11948   13862
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      905   13862
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0      867   13862
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1      142   13862
ki1148112-iLiNS-DOSE        MALAWI                         0                    0     1699    1814
ki1148112-iLiNS-DOSE        MALAWI                         0                    1      113    1814
ki1148112-iLiNS-DOSE        MALAWI                         1                    0        1    1814
ki1148112-iLiNS-DOSE        MALAWI                         1                    1        1    1814
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0     1132    1182
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       36    1182
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0       12    1182
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1        2    1182
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    25129   26918
kiGH5241-JiVitA-3           BANGLADESH                     0                    1      508   26918
kiGH5241-JiVitA-3           BANGLADESH                     1                    0     1228   26918
kiGH5241-JiVitA-3           BANGLADESH                     1                    1       53   26918
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     5076    5252
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       42    5252
kiGH5241-JiVitA-4           BANGLADESH                     1                    0      129    5252
kiGH5241-JiVitA-4           BANGLADESH                     1                    1        5    5252


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
![](/tmp/25d68f6e-ff77-488f-ae66-3792ed60de2a/f0a99c8a-1894-4d39-b054-308b36983d49/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/25d68f6e-ff77-488f-ae66-3792ed60de2a/f0a99c8a-1894-4d39-b054-308b36983d49/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/25d68f6e-ff77-488f-ae66-3792ed60de2a/f0a99c8a-1894-4d39-b054-308b36983d49/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/25d68f6e-ff77-488f-ae66-3792ed60de2a/f0a99c8a-1894-4d39-b054-308b36983d49/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0150314    0.0110821   0.0189807
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0813807    0.0456093   0.1171522
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0184168    0.0099814   0.0268522
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0997774    0.0427327   0.1568220
ki1101329-Keneba          GAMBIA       0                    NA                0.0200495    0.0142507   0.0258484
ki1101329-Keneba          GAMBIA       1                    NA                0.0517485    0.0235110   0.0799860
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0705975    0.0661778   0.0750173
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1349355    0.1137461   0.1561249
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0198265    0.0181222   0.0215307
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0416174    0.0299044   0.0533303
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0082063    0.0056243   0.0107884
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0373134   -0.0014001   0.0760270


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0192555   0.0149392   0.0235717
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0238727   0.0131072   0.0346381
ki1101329-Keneba          GAMBIA       NA                   NA                0.0229839   0.0170850   0.0288828
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0755302   0.0711312   0.0799293
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0208411   0.0190926   0.0225895
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0089490   0.0062382   0.0116597


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 5.414047   3.244886    9.033265
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 5.417738   2.810250   10.444580
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.581033   1.391627    4.787009
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.911334   1.614815    2.262302
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.099083   1.575640    2.796418
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 4.546908   1.538202   13.440613


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0042240    0.0019946   0.0064535
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0054559    0.0010694   0.0098424
ki1101329-Keneba          GAMBIA       0                    NA                0.0029343    0.0001852   0.0056834
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0049327    0.0033375   0.0065278
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0010146    0.0004730   0.0015562
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0007426   -0.0002615   0.0017468


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.2193690    0.1066349   0.3178770
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2285409    0.0788069   0.3539366
ki1101329-Keneba          GAMBIA       0                    NA                0.1276694    0.0045184   0.2355854
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0653073    0.0442538   0.0858972
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0486831    0.0230040   0.0736873
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0829862   -0.0306227   0.1840717
