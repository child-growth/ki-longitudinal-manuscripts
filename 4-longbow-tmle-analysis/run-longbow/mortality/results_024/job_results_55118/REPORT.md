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

studyid                     country                        pers_wasted024    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                         0      246     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                         1        2     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                         0       15     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                         1        0     263  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                         0      226     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                         1        2     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                         0       23     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                         1        0     251  dead0plus        
ki0047075b-MAL-ED           PERU                           0                         0      299     302  dead0plus        
ki0047075b-MAL-ED           PERU                           0                         1        2     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                         0        1     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                         1        0     302  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         0      306     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         1        0     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         0        6     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         1        0     312  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      258     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        3     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0        0     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        0     261  dead0plus        
ki1000109-EE                PAKISTAN                       0                         0      342     380  dead0plus        
ki1000109-EE                PAKISTAN                       0                         1        4     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                         0       34     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                         1        0     380  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                         0     3228    3904  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                         1       36    3904  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                         0      601    3904  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                         1       39    3904  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                         0     1355    1513  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                         1       22    1513  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                         0      121    1513  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                         1       15    1513  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                         0      338     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                         1        2     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                         0       74     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                         1        4     418  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                         0      668     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                         1        5     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                         0       27     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                         1        0     700  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     2324    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0       71    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396  dead0plus        
ki1101329-Keneba            GAMBIA                         0                         0     2634    2920  dead0plus        
ki1101329-Keneba            GAMBIA                         0                         1       81    2920  dead0plus        
ki1101329-Keneba            GAMBIA                         1                         0      189    2920  dead0plus        
ki1101329-Keneba            GAMBIA                         1                         1       16    2920  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0     6018    7166  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1       32    7166  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0     1100    7166  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1       16    7166  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                         0      580     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                         1        5     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                         0       99     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                         1        2     686  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0    12349   13946  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      840   13946  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0      535   13946  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1      222   13946  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                         0     1744    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                         1      120    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                         0       59    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                         1        8    1931  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0     1137    1201  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       37    1201  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0       22    1201  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1        5    1201  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    24593   26956  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                         1      476   26956  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                         0     1760   26956  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                         1      127   26956  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     4954    5443  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                         1       40    5443  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                         0      439    5443  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                         1       10    5443  dead0plus        


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
![](/tmp/1e4901d8-6864-4972-a952-40869f6dcfc3/353f945f-b4f9-4e91-9f49-77cf7884fa64/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1e4901d8-6864-4972-a952-40869f6dcfc3/353f945f-b4f9-4e91-9f49-77cf7884fa64/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1e4901d8-6864-4972-a952-40869f6dcfc3/353f945f-b4f9-4e91-9f49-77cf7884fa64/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1e4901d8-6864-4972-a952-40869f6dcfc3/353f945f-b4f9-4e91-9f49-77cf7884fa64/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0110938   0.0075041   0.0146835
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0611915   0.0425181   0.0798648
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0160340   0.0089041   0.0231639
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.1113083   0.0397551   0.1828615
ki1101329-Keneba            GAMBIA         0                    NA                0.0298265   0.0234199   0.0362331
ki1101329-Keneba            GAMBIA         1                    NA                0.0742999   0.0358663   0.1127334
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052799   0.0034533   0.0071065
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0140712   0.0070174   0.0211250
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0641451   0.0599575   0.0683327
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.3554615   0.3159793   0.3949438
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0643777   0.0532333   0.0755221
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.1194030   0.0417391   0.1970669
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0315162   0.0214925   0.0415399
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.1851852   0.0533715   0.3169988
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0190078   0.0173180   0.0206975
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0656909   0.0538316   0.0775501
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0080125   0.0054530   0.0105720
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0211890   0.0082121   0.0341660


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0192111   0.0149047   0.0235174
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
ki1101329-Keneba            GAMBIA         NA                   NA                0.0332192   0.0267180   0.0397203
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0066983   0.0048096   0.0085870
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0761509   0.0717486   0.0805531
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0349709   0.0245769   0.0453648
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0223698   0.0205726   0.0241670
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0091861   0.0065991   0.0117731


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 5.515833   3.5355217    8.605354
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 6.942012   4.1967982   11.482927
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba            GAMBIA         1                    0                 2.491069   1.4225686    4.362126
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.665068   1.4495309    4.899921
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 5.541525   4.8729652    6.301809
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.854726   0.9461633    3.635747
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 5.875876   2.6945631   12.813178
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 3.456002   2.8306232    4.219549
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 2.644504   1.3245662    5.279769


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0081173    0.0049681   0.0112664
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0084207    0.0017758   0.0150656
ki1101329-Keneba            GAMBIA         0                    NA                0.0033927    0.0007338   0.0060515
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014184    0.0002932   0.0025437
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0120058    0.0100645   0.0139471
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0019092   -0.0008499   0.0046683
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0034547   -0.0000926   0.0070020
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0033620    0.0025235   0.0042005
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0011736    0.0000408   0.0023065


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.4225313    0.2714588   0.5422770
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.3443391    0.1415746   0.4992096
ki1101329-Keneba            GAMBIA         0                    NA                0.1021300    0.0209597   0.1765706
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.2117584    0.0377516   0.3542989
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.1576580    0.1332194   0.1814076
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0288023   -0.0134746   0.0693156
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0987872   -0.0042850   0.1912809
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.1502930    0.1145319   0.1846099
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.1277614   -0.0006227   0.2396732
