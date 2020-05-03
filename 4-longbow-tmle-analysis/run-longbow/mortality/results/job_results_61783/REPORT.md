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

**Intervention Variable:** ever_sstunted06

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

studyid           country                        ever_sstunted06    dead0plus   n_cell       n  outcome_variable 
----------------  -----------------------------  ----------------  ----------  -------  ------  -----------------
Burkina Faso Zn   BURKINA FASO                   0                          0      325     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   0                          1        2     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                          0       11     338  dead0plus        
Burkina Faso Zn   BURKINA FASO                   1                          1        0     338  dead0plus        
EE                PAKISTAN                       0                          0      213     379  dead0plus        
EE                PAKISTAN                       0                          1        3     379  dead0plus        
EE                PAKISTAN                       1                          0      162     379  dead0plus        
EE                PAKISTAN                       1                          1        1     379  dead0plus        
GMS-Nepal         NEPAL                          0                          0      634     698  dead0plus        
GMS-Nepal         NEPAL                          0                          1        4     698  dead0plus        
GMS-Nepal         NEPAL                          1                          0       56     698  dead0plus        
GMS-Nepal         NEPAL                          1                          1        4     698  dead0plus        
iLiNS-DOSE        MALAWI                         0                          0     1588    1813  dead0plus        
iLiNS-DOSE        MALAWI                         0                          1      101    1813  dead0plus        
iLiNS-DOSE        MALAWI                         1                          0      111    1813  dead0plus        
iLiNS-DOSE        MALAWI                         1                          1       13    1813  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                          0     1063    1191  dead0plus        
iLiNS-DYAD-M      MALAWI                         0                          1       37    1191  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                          0       85    1191  dead0plus        
iLiNS-DYAD-M      MALAWI                         1                          1        6    1191  dead0plus        
JiVitA-3          BANGLADESH                     0                          0    22481   27197  dead0plus        
JiVitA-3          BANGLADESH                     0                          1      465   27197  dead0plus        
JiVitA-3          BANGLADESH                     1                          0     3874   27197  dead0plus        
JiVitA-3          BANGLADESH                     1                          1      377   27197  dead0plus        
JiVitA-4          BANGLADESH                     0                          0     4639    5270  dead0plus        
JiVitA-4          BANGLADESH                     0                          1       31    5270  dead0plus        
JiVitA-4          BANGLADESH                     1                          0      583    5270  dead0plus        
JiVitA-4          BANGLADESH                     1                          1       17    5270  dead0plus        
Keneba            GAMBIA                         0                          0     2115    2479  dead0plus        
Keneba            GAMBIA                         0                          1       70    2479  dead0plus        
Keneba            GAMBIA                         1                          0      276    2479  dead0plus        
Keneba            GAMBIA                         1                          1       18    2479  dead0plus        
MAL-ED            BANGLADESH                     0                          0      240     265  dead0plus        
MAL-ED            BANGLADESH                     0                          1        2     265  dead0plus        
MAL-ED            BANGLADESH                     1                          0       22     265  dead0plus        
MAL-ED            BANGLADESH                     1                          1        1     265  dead0plus        
MAL-ED            INDIA                          0                          0      228     251  dead0plus        
MAL-ED            INDIA                          0                          1        2     251  dead0plus        
MAL-ED            INDIA                          1                          0       21     251  dead0plus        
MAL-ED            INDIA                          1                          1        0     251  dead0plus        
MAL-ED            PERU                           0                          0      260     303  dead0plus        
MAL-ED            PERU                           0                          1        2     303  dead0plus        
MAL-ED            PERU                           1                          0       41     303  dead0plus        
MAL-ED            PERU                           1                          1        0     303  dead0plus        
MAL-ED            SOUTH AFRICA                   0                          0      283     314  dead0plus        
MAL-ED            SOUTH AFRICA                   0                          1        0     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                          0       30     314  dead0plus        
MAL-ED            SOUTH AFRICA                   1                          1        1     314  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          0      219     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   0                          1        2     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          0       40     262  dead0plus        
MAL-ED            TANZANIA, UNITED REPUBLIC OF   1                          1        1     262  dead0plus        
PROVIDE           BANGLADESH                     0                          0      664     700  dead0plus        
PROVIDE           BANGLADESH                     0                          1        5     700  dead0plus        
PROVIDE           BANGLADESH                     1                          0       31     700  dead0plus        
PROVIDE           BANGLADESH                     1                          1        0     700  dead0plus        
SAS-CompFeed      INDIA                          0                          0     1266    1532  dead0plus        
SAS-CompFeed      INDIA                          0                          1       29    1532  dead0plus        
SAS-CompFeed      INDIA                          1                          0      216    1532  dead0plus        
SAS-CompFeed      INDIA                          1                          1       21    1532  dead0plus        
SAS-FoodSuppl     INDIA                          0                          0      351     418  dead0plus        
SAS-FoodSuppl     INDIA                          0                          1        3     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                          0       61     418  dead0plus        
SAS-FoodSuppl     INDIA                          1                          1        3     418  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     2284    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      111    2396  dead0plus        
TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2396  dead0plus        
VITAMIN-A         INDIA                          0                          0     3274    3898  dead0plus        
VITAMIN-A         INDIA                          0                          1       50    3898  dead0plus        
VITAMIN-A         INDIA                          1                          0      547    3898  dead0plus        
VITAMIN-A         INDIA                          1                          1       27    3898  dead0plus        
ZVITAMBO          ZIMBABWE                       0                          0    11746   14060  dead0plus        
ZVITAMBO          ZIMBABWE                       0                          1      881   14060  dead0plus        
ZVITAMBO          ZIMBABWE                       1                          0     1199   14060  dead0plus        
ZVITAMBO          ZIMBABWE                       1                          1      234   14060  dead0plus        


The following strata were considered:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: iLiNS-DOSE, country: MALAWI
* studyid: iLiNS-DYAD-M, country: MALAWI
* studyid: JiVitA-3, country: BANGLADESH
* studyid: JiVitA-4, country: BANGLADESH
* studyid: Keneba, country: GAMBIA
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-CompFeed, country: INDIA
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: VITAMIN-A, country: INDIA
* studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: Burkina Faso Zn, country: BURKINA FASO
* studyid: EE, country: PAKISTAN
* studyid: GMS-Nepal, country: NEPAL
* studyid: MAL-ED, country: BANGLADESH
* studyid: MAL-ED, country: INDIA
* studyid: MAL-ED, country: PERU
* studyid: MAL-ED, country: SOUTH AFRICA
* studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: PROVIDE, country: BANGLADESH
* studyid: SAS-FoodSuppl, country: INDIA
* studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/ae33eb83-bdee-4389-9913-48795287fb07/15d86015-7a48-46e3-9118-26f8821e7ce4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ae33eb83-bdee-4389-9913-48795287fb07/15d86015-7a48-46e3-9118-26f8821e7ce4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ae33eb83-bdee-4389-9913-48795287fb07/15d86015-7a48-46e3-9118-26f8821e7ce4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ae33eb83-bdee-4389-9913-48795287fb07/15d86015-7a48-46e3-9118-26f8821e7ce4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0597899   0.0484806   0.0710992
iLiNS-DOSE     MALAWI       1                    NA                0.1022127   0.0474352   0.1569903
iLiNS-DYAD-M   MALAWI       0                    NA                0.0336364   0.0229775   0.0442952
iLiNS-DYAD-M   MALAWI       1                    NA                0.0659341   0.0149243   0.1169439
JiVitA-3       BANGLADESH   0                    NA                0.0205398   0.0186930   0.0223867
JiVitA-3       BANGLADESH   1                    NA                0.0882666   0.0769431   0.0995902
JiVitA-4       BANGLADESH   0                    NA                0.0066640   0.0040741   0.0092540
JiVitA-4       BANGLADESH   1                    NA                0.0274831   0.0145760   0.0403902
Keneba         GAMBIA       0                    NA                0.0320877   0.0246836   0.0394917
Keneba         GAMBIA       1                    NA                0.0604604   0.0324630   0.0884578
SAS-CompFeed   INDIA        0                    NA                0.0226835   0.0105712   0.0347957
SAS-CompFeed   INDIA        1                    NA                0.0883646   0.0638262   0.1129029
VITAMIN-A      INDIA        0                    NA                0.0150110   0.0108790   0.0191430
VITAMIN-A      INDIA        1                    NA                0.0480896   0.0302433   0.0659360
ZVITAMBO       ZIMBABWE     0                    NA                0.0700000   0.0655516   0.0744484
ZVITAMBO       ZIMBABWE     1                    NA                0.1554701   0.1362933   0.1746469


### Parameter: E(Y)


studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  ----------  ----------
iLiNS-DOSE     MALAWI       NA                   NA                0.0628792   0.0517023   0.0740561
iLiNS-DYAD-M   MALAWI       NA                   NA                0.0361041   0.0255050   0.0467032
JiVitA-3       BANGLADESH   NA                   NA                0.0309593   0.0288157   0.0331029
JiVitA-4       BANGLADESH   NA                   NA                0.0091082   0.0063617   0.0118546
Keneba         GAMBIA       NA                   NA                0.0354982   0.0282128   0.0427836
SAS-CompFeed   INDIA        NA                   NA                0.0326371   0.0205116   0.0447625
VITAMIN-A      INDIA        NA                   NA                0.0197537   0.0153848   0.0241226
ZVITAMBO       ZIMBABWE     NA                   NA                0.0793030   0.0748364   0.0837696


### Parameter: RR


studyid        country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------  -----------  -------------------  ---------------  ---------  ----------  ---------
iLiNS-DOSE     MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DOSE     MALAWI       1                    0                 1.709532   0.9689138   3.016264
iLiNS-DYAD-M   MALAWI       0                    0                 1.000000   1.0000000   1.000000
iLiNS-DYAD-M   MALAWI       1                    0                 1.960202   0.8496056   4.522559
JiVitA-3       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-3       BANGLADESH   1                    0                 4.297336   3.6730408   5.027741
JiVitA-4       BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
JiVitA-4       BANGLADESH   1                    0                 4.124098   2.2454183   7.574617
Keneba         GAMBIA       0                    0                 1.000000   1.0000000   1.000000
Keneba         GAMBIA       1                    0                 1.884225   1.1230470   3.161314
SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
SAS-CompFeed   INDIA        1                    0                 3.895547   2.3276153   6.519670
VITAMIN-A      INDIA        0                    0                 1.000000   1.0000000   1.000000
VITAMIN-A      INDIA        1                    0                 3.203631   2.0183698   5.084921
ZVITAMBO       ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ZVITAMBO       ZIMBABWE     1                    0                 2.221002   1.9339788   2.550624


### Parameter: PAR


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0030893   -0.0007013   0.0068799
iLiNS-DYAD-M   MALAWI       0                    NA                0.0024678   -0.0015436   0.0064791
JiVitA-3       BANGLADESH   0                    NA                0.0104195    0.0088956   0.0119433
JiVitA-4       BANGLADESH   0                    NA                0.0024441    0.0009213   0.0039670
Keneba         GAMBIA       0                    NA                0.0034105    0.0000164   0.0068046
SAS-CompFeed   INDIA        0                    NA                0.0099536    0.0056305   0.0142766
VITAMIN-A      INDIA        0                    NA                0.0047427    0.0020974   0.0073881
ZVITAMBO       ZIMBABWE     0                    NA                0.0093030    0.0072520   0.0113540


### Parameter: PAF


studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -------------------  ---------------  ----------  -----------  ----------
iLiNS-DOSE     MALAWI       0                    NA                0.0491309   -0.0125256   0.1070329
iLiNS-DYAD-M   MALAWI       0                    NA                0.0683510   -0.0477396   0.1715786
JiVitA-3       BANGLADESH   0                    NA                0.3365532    0.2935698   0.3769212
JiVitA-4       BANGLADESH   0                    NA                0.2683454    0.0946144   0.4087398
Keneba         GAMBIA       0                    NA                0.0960762   -0.0026857   0.1851103
SAS-CompFeed   INDIA        0                    NA                0.3049779    0.1276682   0.4462478
VITAMIN-A      INDIA        0                    NA                0.2400939    0.1062004   0.3539298
ZVITAMBO       ZIMBABWE     0                    NA                0.1173098    0.0918282   0.1420764
