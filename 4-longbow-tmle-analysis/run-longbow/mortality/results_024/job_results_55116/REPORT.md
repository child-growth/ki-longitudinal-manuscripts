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

studyid                     country                        ever_wasted024    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                         0      174     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                         1        2     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                         0       87     263  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                         1        0     263  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                         0      130     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                         1        1     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                         0      119     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                         1        1     251  dead0plus        
ki0047075b-MAL-ED           PERU                           0                         0      273     302  dead0plus        
ki0047075b-MAL-ED           PERU                           0                         1        2     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                         0       27     302  dead0plus        
ki0047075b-MAL-ED           PERU                           1                         1        0     302  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         0      248     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         1        0     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         0       64     312  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         1        0     312  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      222     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        3     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0       36     261  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        0     261  dead0plus        
ki1000109-EE                PAKISTAN                       0                         0      153     380  dead0plus        
ki1000109-EE                PAKISTAN                       0                         1        1     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                         0      223     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                         1        3     380  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                         0     2556    3904  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                         1       35    3904  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                         0     1273    3904  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                         1       40    3904  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                         0      866    1513  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                         1       19    1513  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                         0      610    1513  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                         1       18    1513  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                         0      219     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                         1        2     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                         0      193     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                         1        4     418  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                         0      449     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                         1        5     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                         0      246     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                         1        0     700  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1829    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      566    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396  dead0plus        
ki1101329-Keneba            GAMBIA                         0                         0     1591    2920  dead0plus        
ki1101329-Keneba            GAMBIA                         0                         1       51    2920  dead0plus        
ki1101329-Keneba            GAMBIA                         1                         0     1232    2920  dead0plus        
ki1101329-Keneba            GAMBIA                         1                         1       46    2920  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0     5730    7166  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1       30    7166  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0     1388    7166  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1       18    7166  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                         0      276     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                         1        5     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                         0      403     686  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                         1        2     686  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0     9957   13946  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      688   13946  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0     2927   13946  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1      374   13946  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                         0     1660    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                         1      113    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                         0      143    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                         1       15    1931  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0     1057    1201  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       33    1201  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0      102    1201  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1        9    1201  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    19587   26956  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                         1      414   26956  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                         0     6766   26956  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                         1      189   26956  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     3723    5443  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                         1       31    5443  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                         0     1670    5443  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                         1       19    5443  dead0plus        


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
![](/tmp/e07a5472-d273-4fba-a433-340ce445250f/93c00108-78c1-4934-85d8-63c624f0f900/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e07a5472-d273-4fba-a433-340ce445250f/93c00108-78c1-4934-85d8-63c624f0f900/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e07a5472-d273-4fba-a433-340ce445250f/93c00108-78c1-4934-85d8-63c624f0f900/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e07a5472-d273-4fba-a433-340ce445250f/93c00108-78c1-4934-85d8-63c624f0f900/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0136686   0.0091841   0.0181531
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0302740   0.0209500   0.0395979
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0213481   0.0109504   0.0317458
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0286293   0.0133724   0.0438861
ki1101329-Keneba            GAMBIA         0                    NA                0.0314405   0.0228854   0.0399956
ki1101329-Keneba            GAMBIA         1                    NA                0.0368948   0.0263345   0.0474551
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0052270   0.0033610   0.0070931
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0125485   0.0067502   0.0183469
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0654974   0.0608009   0.0701939
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1099593   0.0991604   0.1207582
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0637260   0.0523537   0.0750983
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0874646   0.0441610   0.1307681
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0302752   0.0200991   0.0404514
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0810811   0.0302808   0.1318813
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0208040   0.0188343   0.0227736
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0268237   0.0230044   0.0306431
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0082805   0.0053612   0.0111998
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0112205   0.0059967   0.0164443


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


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 2.214857   1.4122587   3.473580
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 1.341069   0.8497612   2.116436
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.173478   0.7904690   1.742068
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.400696   1.3389237   4.304459
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 1.678835   1.4876232   1.894623
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.372510   0.8107560   2.323489
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 2.678133   1.3153682   5.452766
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 1.289358   1.0923931   1.521837
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.355049   0.7543046   2.434241


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0055425    0.0020481   0.0090368
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0031066   -0.0020442   0.0082575
ki1101329-Keneba            GAMBIA         0                    NA                0.0017787   -0.0041599   0.0077173
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014713    0.0002577   0.0026848
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0106535    0.0078498   0.0134572
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0025609   -0.0013148   0.0064366
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0046956   -0.0001646   0.0095558
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0015658    0.0004886   0.0026431
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0009056   -0.0009775   0.0027887


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.2885044    0.0963036   0.4398274
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.1270358   -0.0941567   0.3035124
ki1101329-Keneba            GAMBIA         0                    NA                0.0535432   -0.1428841   0.2162107
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.2196480    0.0292209   0.3727211
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.1398994    0.1031369   0.1751550
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0386333   -0.0213198   0.0950670
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.1342726   -0.0100717   0.2579894
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0699978    0.0210109   0.1165334
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0985847   -0.1277912   0.2795213
