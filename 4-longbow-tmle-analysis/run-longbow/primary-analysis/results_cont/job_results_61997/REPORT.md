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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** exclfeed6

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        exclfeed6    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ----------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                 7       7  whz              
Birth       CMC-V-BCS-2002   INDIA                          0                 0       7  whz              
Birth       EE               PAKISTAN                       1                24      28  whz              
Birth       EE               PAKISTAN                       0                 4      28  whz              
Birth       GMS-Nepal        NEPAL                          1               390     522  whz              
Birth       GMS-Nepal        NEPAL                          0               132     522  whz              
Birth       IRC              INDIA                          1                 0      12  whz              
Birth       IRC              INDIA                          0                12      12  whz              
Birth       JiVitA-3         BANGLADESH                     1              8381   10744  whz              
Birth       JiVitA-3         BANGLADESH                     0              2363   10744  whz              
Birth       JiVitA-4         BANGLADESH                     1              1799    2224  whz              
Birth       JiVitA-4         BANGLADESH                     0               425    2224  whz              
Birth       Keneba           GAMBIA                         1               450    1327  whz              
Birth       Keneba           GAMBIA                         0               877    1327  whz              
Birth       MAL-ED           BANGLADESH                     1                29     194  whz              
Birth       MAL-ED           BANGLADESH                     0               165     194  whz              
Birth       MAL-ED           BRAZIL                         1                 1      57  whz              
Birth       MAL-ED           BRAZIL                         0                56      57  whz              
Birth       MAL-ED           INDIA                          1                 1      37  whz              
Birth       MAL-ED           INDIA                          0                36      37  whz              
Birth       MAL-ED           NEPAL                          1                 2      23  whz              
Birth       MAL-ED           NEPAL                          0                21      23  whz              
Birth       MAL-ED           PERU                           1                 2     208  whz              
Birth       MAL-ED           PERU                           0               206     208  whz              
Birth       MAL-ED           SOUTH AFRICA                   1                 0      90  whz              
Birth       MAL-ED           SOUTH AFRICA                   0                90      90  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     105  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               105     105  whz              
Birth       PROVIDE          BANGLADESH                     1               155     532  whz              
Birth       PROVIDE          BANGLADESH                     0               377     532  whz              
Birth       SAS-CompFeed     INDIA                          1               310     325  whz              
Birth       SAS-CompFeed     INDIA                          0                15     325  whz              
6 months    CMC-V-BCS-2002   INDIA                          1                19      19  whz              
6 months    CMC-V-BCS-2002   INDIA                          0                 0      19  whz              
6 months    EE               PAKISTAN                       1                43      48  whz              
6 months    EE               PAKISTAN                       0                 5      48  whz              
6 months    GMS-Nepal        NEPAL                          1               406     547  whz              
6 months    GMS-Nepal        NEPAL                          0               141     547  whz              
6 months    IRC              INDIA                          1                 0      14  whz              
6 months    IRC              INDIA                          0                14      14  whz              
6 months    JiVitA-3         BANGLADESH                     1              7610    9882  whz              
6 months    JiVitA-3         BANGLADESH                     0              2272    9882  whz              
6 months    JiVitA-4         BANGLADESH                     1              3315    4275  whz              
6 months    JiVitA-4         BANGLADESH                     0               960    4275  whz              
6 months    Keneba           GAMBIA                         1               586    1908  whz              
6 months    Keneba           GAMBIA                         0              1322    1908  whz              
6 months    LCNI-5           MALAWI                         1                47     272  whz              
6 months    LCNI-5           MALAWI                         0               225     272  whz              
6 months    MAL-ED           BANGLADESH                     1                33     231  whz              
6 months    MAL-ED           BANGLADESH                     0               198     231  whz              
6 months    MAL-ED           BRAZIL                         1                12     209  whz              
6 months    MAL-ED           BRAZIL                         0               197     209  whz              
6 months    MAL-ED           INDIA                          1                 2     218  whz              
6 months    MAL-ED           INDIA                          0               216     218  whz              
6 months    MAL-ED           NEPAL                          1                 5     225  whz              
6 months    MAL-ED           NEPAL                          0               220     225  whz              
6 months    MAL-ED           PERU                           1                 5     271  whz              
6 months    MAL-ED           PERU                           0               266     271  whz              
6 months    MAL-ED           SOUTH AFRICA                   1                 0     233  whz              
6 months    MAL-ED           SOUTH AFRICA                   0               233     233  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     232  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               232     232  whz              
6 months    PROVIDE          BANGLADESH                     1               141     603  whz              
6 months    PROVIDE          BANGLADESH                     0               462     603  whz              
6 months    SAS-CompFeed     INDIA                          1               376     395  whz              
6 months    SAS-CompFeed     INDIA                          0                19     395  whz              
6 months    SAS-FoodSuppl    INDIA                          1                 0     168  whz              
6 months    SAS-FoodSuppl    INDIA                          0               168     168  whz              
24 months   CMC-V-BCS-2002   INDIA                          1                19      19  whz              
24 months   CMC-V-BCS-2002   INDIA                          0                 0      19  whz              
24 months   EE               PAKISTAN                       1                20      23  whz              
24 months   EE               PAKISTAN                       0                 3      23  whz              
24 months   GMS-Nepal        NEPAL                          1               355     469  whz              
24 months   GMS-Nepal        NEPAL                          0               114     469  whz              
24 months   IRC              INDIA                          1                 0      14  whz              
24 months   IRC              INDIA                          0                14      14  whz              
24 months   JiVitA-3         BANGLADESH                     1              3899    5067  whz              
24 months   JiVitA-3         BANGLADESH                     0              1168    5067  whz              
24 months   JiVitA-4         BANGLADESH                     1              3266    4184  whz              
24 months   JiVitA-4         BANGLADESH                     0               918    4184  whz              
24 months   Keneba           GAMBIA                         1               514    1514  whz              
24 months   Keneba           GAMBIA                         0              1000    1514  whz              
24 months   LCNI-5           MALAWI                         1                34     184  whz              
24 months   LCNI-5           MALAWI                         0               150     184  whz              
24 months   MAL-ED           BANGLADESH                     1                31     205  whz              
24 months   MAL-ED           BANGLADESH                     0               174     205  whz              
24 months   MAL-ED           BRAZIL                         1                11     169  whz              
24 months   MAL-ED           BRAZIL                         0               158     169  whz              
24 months   MAL-ED           INDIA                          1                 2     209  whz              
24 months   MAL-ED           INDIA                          0               207     209  whz              
24 months   MAL-ED           NEPAL                          1                 5     219  whz              
24 months   MAL-ED           NEPAL                          0               214     219  whz              
24 months   MAL-ED           PERU                           1                 3     201  whz              
24 months   MAL-ED           PERU                           0               198     201  whz              
24 months   MAL-ED           SOUTH AFRICA                   1                 0     216  whz              
24 months   MAL-ED           SOUTH AFRICA                   0               216     216  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     202  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               202     202  whz              
24 months   PROVIDE          BANGLADESH                     1               137     579  whz              
24 months   PROVIDE          BANGLADESH                     0               442     579  whz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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




# Results Detail

## Results Plots
![](/tmp/ccce0556-36c7-4be9-a599-bdd14a5ce0eb/cd5c4ce9-e382-48c3-8e92-3bdf9d687dfc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ccce0556-36c7-4be9-a599-bdd14a5ce0eb/cd5c4ce9-e382-48c3-8e92-3bdf9d687dfc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ccce0556-36c7-4be9-a599-bdd14a5ce0eb/cd5c4ce9-e382-48c3-8e92-3bdf9d687dfc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -1.1031339   -1.2150784   -0.9911893
Birth       GMS-Nepal      NEPAL        0                    NA                -1.1297248   -1.2865077   -0.9729419
Birth       JiVitA-3       BANGLADESH   1                    NA                -0.7867542   -0.8116462   -0.7618622
Birth       JiVitA-3       BANGLADESH   0                    NA                -0.7596275   -0.8033651   -0.7158899
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.6764147   -0.7311354   -0.6216940
Birth       JiVitA-4       BANGLADESH   0                    NA                -0.7406975   -0.8765884   -0.6048065
Birth       Keneba         GAMBIA       1                    NA                -1.2472367   -1.3486290   -1.1458445
Birth       Keneba         GAMBIA       0                    NA                -1.2683339   -1.3448186   -1.1918491
Birth       MAL-ED         BANGLADESH   1                    NA                -0.8950946   -1.2947197   -0.4954695
Birth       MAL-ED         BANGLADESH   0                    NA                -0.9836245   -1.1548470   -0.8124020
Birth       PROVIDE        BANGLADESH   1                    NA                -1.3111007   -1.4770563   -1.1451451
Birth       PROVIDE        BANGLADESH   0                    NA                -1.2878637   -1.3765895   -1.1991379
Birth       SAS-CompFeed   INDIA        1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       SAS-CompFeed   INDIA        0                    NA                -1.0901282   -1.7027394   -0.4775170
6 months    EE             PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    EE             PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    GMS-Nepal      NEPAL        1                    NA                -0.5746350   -0.6767646   -0.4725053
6 months    GMS-Nepal      NEPAL        0                    NA                -0.6404085   -0.8065533   -0.4742638
6 months    JiVitA-3       BANGLADESH   1                    NA                -0.6033918   -0.6304931   -0.5762905
6 months    JiVitA-3       BANGLADESH   0                    NA                -0.5921050   -0.6372482   -0.5469617
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.3471612   -0.3922555   -0.3020669
6 months    JiVitA-4       BANGLADESH   0                    NA                -0.5576094   -0.6377934   -0.4774254
6 months    Keneba         GAMBIA       1                    NA                -0.0180737   -0.1160605    0.0799131
6 months    Keneba         GAMBIA       0                    NA                -0.2807408   -0.3432723   -0.2182092
6 months    LCNI-5         MALAWI       1                    NA                 0.3387515    0.0028882    0.6746148
6 months    LCNI-5         MALAWI       0                    NA                 0.4078459    0.2809966    0.5346952
6 months    MAL-ED         BANGLADESH   1                    NA                -0.0216658   -0.4094608    0.3661293
6 months    MAL-ED         BANGLADESH   0                    NA                -0.1208536   -0.2659780    0.0242709
6 months    MAL-ED         BRAZIL       1                    NA                 1.3557842    0.6954976    2.0160708
6 months    MAL-ED         BRAZIL       0                    NA                 0.9476147    0.7781259    1.1171034
6 months    MAL-ED         NEPAL        1                    NA                -0.2760000   -0.9362767    0.3842767
6 months    MAL-ED         NEPAL        0                    NA                 0.1178939   -0.0200258    0.2558137
6 months    MAL-ED         PERU         1                    NA                 0.9290000    0.5350705    1.3229295
6 months    MAL-ED         PERU         0                    NA                 1.0529010    0.9277571    1.1780449
6 months    PROVIDE        BANGLADESH   1                    NA                 0.0019341   -0.1612770    0.1651453
6 months    PROVIDE        BANGLADESH   0                    NA                -0.2660996   -0.3608478   -0.1713514
6 months    SAS-CompFeed   INDIA        1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    SAS-CompFeed   INDIA        0                    NA                -0.6500492   -1.1672739   -0.1328245
24 months   GMS-Nepal      NEPAL        1                    NA                -1.0923234   -1.1919788   -0.9926680
24 months   GMS-Nepal      NEPAL        0                    NA                -1.2588483   -1.4735985   -1.0440980
24 months   JiVitA-3       BANGLADESH   1                    NA                -1.3189139   -1.3537864   -1.2840413
24 months   JiVitA-3       BANGLADESH   0                    NA                -1.2827281   -1.3443367   -1.2211195
24 months   JiVitA-4       BANGLADESH   1                    NA                -1.2230678   -1.2641937   -1.1819418
24 months   JiVitA-4       BANGLADESH   0                    NA                -1.2310273   -1.3093026   -1.1527521
24 months   Keneba         GAMBIA       1                    NA                -0.7085164   -0.7910609   -0.6259720
24 months   Keneba         GAMBIA       0                    NA                -0.8498333   -0.9112412   -0.7884254
24 months   LCNI-5         MALAWI       1                    NA                -0.1217337   -0.4286513    0.1851840
24 months   LCNI-5         MALAWI       0                    NA                -0.0622042   -0.2239599    0.0995516
24 months   MAL-ED         BANGLADESH   1                    NA                -0.8829622   -1.1993648   -0.5665595
24 months   MAL-ED         BANGLADESH   0                    NA                -0.8042619   -0.9395094   -0.6690144
24 months   MAL-ED         BRAZIL       1                    NA                 0.2084261   -0.5150135    0.9318656
24 months   MAL-ED         BRAZIL       0                    NA                 0.4832680    0.2687375    0.6977986
24 months   MAL-ED         NEPAL        1                    NA                -0.4770000   -1.1267115    0.1727115
24 months   MAL-ED         NEPAL        0                    NA                -0.3648832   -0.4833183   -0.2464480
24 months   PROVIDE        BANGLADESH   1                    NA                -0.8131801   -0.9767131   -0.6496470
24 months   PROVIDE        BANGLADESH   0                    NA                -0.9264024   -1.0210508   -0.8317539


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        NA                   NA                -1.1064559   -1.2034951   -1.0094168
Birth       JiVitA-3       BANGLADESH   NA                   NA                -0.7807809   -0.8030521   -0.7585097
Birth       JiVitA-4       BANGLADESH   NA                   NA                -0.6904586   -0.7435822   -0.6373351
Birth       Keneba         GAMBIA       NA                   NA                -1.2599925   -1.3251703   -1.1948146
Birth       MAL-ED         BANGLADESH   NA                   NA                -0.9755670   -1.1287016   -0.8224325
Birth       PROVIDE        BANGLADESH   NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed   INDIA        NA                   NA                -0.6596308   -0.9005716   -0.4186900
6 months    EE             PAKISTAN     NA                   NA                -0.6106944   -0.9239621   -0.2974268
6 months    GMS-Nepal      NEPAL        NA                   NA                -0.6009171   -0.6886356   -0.5131986
6 months    JiVitA-3       BANGLADESH   NA                   NA                -0.6001300   -0.6240378   -0.5762223
6 months    JiVitA-4       BANGLADESH   NA                   NA                -0.3968456   -0.4358721   -0.3578192
6 months    Keneba         GAMBIA       NA                   NA                -0.1997647   -0.2531388   -0.1463906
6 months    LCNI-5         MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    MAL-ED         BANGLADESH   NA                   NA                -0.1213203   -0.2539388    0.0112981
6 months    MAL-ED         BRAZIL       NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED         NEPAL        NA                   NA                 0.1091407   -0.0265536    0.2448351
6 months    MAL-ED         PERU         NA                   NA                 1.0506150    0.9281868    1.1730433
6 months    PROVIDE        BANGLADESH   NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed   INDIA        NA                   NA                -0.6348861   -0.7630511   -0.5067211
24 months   GMS-Nepal      NEPAL        NA                   NA                -1.1423525   -1.2336321   -1.0510729
24 months   JiVitA-3       BANGLADESH   NA                   NA                -1.3103375   -1.3408810   -1.2797940
24 months   JiVitA-4       BANGLADESH   NA                   NA                -1.2265320   -1.2620508   -1.1910132
24 months   Keneba         GAMBIA       NA                   NA                -0.8032329   -0.8532842   -0.7531817
24 months   LCNI-5         MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   MAL-ED         BANGLADESH   NA                   NA                -0.8169756   -0.9388013   -0.6951499
24 months   MAL-ED         BRAZIL       NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED         NEPAL        NA                   NA                -0.3674429   -0.4840752   -0.2508107
24 months   PROVIDE        BANGLADESH   NA                   NA                -0.8928670   -0.9755153   -0.8102187


### Parameter: ATE


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL        0                    1                 -0.0265910   -0.2067972    0.1536152
Birth       JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH   0                    1                  0.0271267   -0.0215998    0.0758533
Birth       JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH   0                    1                 -0.0642827   -0.2070969    0.0785314
Birth       Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA       0                    1                 -0.0210971   -0.1380004    0.0958062
Birth       MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH   0                    1                 -0.0885299   -0.5283639    0.3513040
Birth       PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH   0                    1                  0.0232370   -0.1602764    0.2067504
Birth       SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA        0                    1                 -0.4481495   -0.9783682    0.0820692
6 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL        0                    1                 -0.0657736   -0.2593212    0.1277741
6 months    JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH   0                    1                  0.0112869   -0.0399769    0.0625507
6 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH   0                    1                 -0.2104482   -0.3017799   -0.1191165
6 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA       0                    1                 -0.2626671   -0.3781020   -0.1472321
6 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5         MALAWI       0                    1                  0.0690944   -0.2901077    0.4282965
6 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH   0                    1                 -0.0991878   -0.5140729    0.3156974
6 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL       0                    1                 -0.4081696   -1.0881472    0.2718081
6 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL        0                    1                  0.3938939   -0.2806334    1.0684213
6 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU         0                    1                  0.1239010   -0.2894287    0.5372307
6 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH   0                    1                 -0.2680337   -0.4554455   -0.0806220
6 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA        0                    1                 -0.0062476   -0.5560776    0.5435824
24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL        0                    1                 -0.1665249   -0.4043801    0.0713304
24 months   JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH   0                    1                  0.0361857   -0.0340620    0.1064335
24 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH   0                    1                 -0.0079596   -0.0948283    0.0789091
24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA       0                    1                 -0.1413168   -0.2428075   -0.0398262
24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5         MALAWI       0                    1                  0.0595295   -0.2882266    0.4072855
24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH   0                    1                  0.0787003   -0.2716232    0.4290237
24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL       0                    1                  0.2748420   -0.4803981    1.0300821
24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL        0                    1                  0.1121168   -0.5483011    0.7725348
24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH   0                    1                 -0.1132223   -0.3006343    0.0741897


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.0033221   -0.0484992    0.0418550
Birth       JiVitA-3       BANGLADESH   1                    NA                 0.0059733   -0.0047302    0.0166768
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0140439   -0.0413232    0.0132353
Birth       Keneba         GAMBIA       1                    NA                -0.0127557   -0.0905633    0.0650518
Birth       MAL-ED         BANGLADESH   1                    NA                -0.0804725   -0.4624889    0.3015440
Birth       PROVIDE        BANGLADESH   1                    NA                 0.0126421   -0.1265621    0.1518462
Birth       SAS-CompFeed   INDIA        1                    NA                -0.0176521   -0.0527130    0.0174088
6 months    EE             PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    GMS-Nepal      NEPAL        1                    NA                -0.0262822   -0.0766624    0.0240981
6 months    JiVitA-3       BANGLADESH   1                    NA                 0.0032618   -0.0085612    0.0150848
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0496844   -0.0713805   -0.0279883
6 months    Keneba         GAMBIA       1                    NA                -0.1816909   -0.2624078   -0.1009741
6 months    LCNI-5         MALAWI       1                    NA                 0.0537485   -0.2447232    0.3522202
6 months    MAL-ED         BANGLADESH   1                    NA                -0.0996546   -0.4692404    0.2699313
6 months    MAL-ED         BRAZIL       1                    NA                -0.3837069   -1.0281398    0.2607261
6 months    MAL-ED         NEPAL        1                    NA                 0.3851407   -0.2725674    1.0428489
6 months    MAL-ED         PERU         1                    NA                 0.1216150   -0.2813864    0.5246164
6 months    PROVIDE        BANGLADESH   1                    NA                -0.2010248   -0.3451269   -0.0569227
6 months    SAS-CompFeed   INDIA        1                    NA                 0.0089155   -0.0178262    0.0356572
24 months   GMS-Nepal      NEPAL        1                    NA                -0.0500292   -0.1078463    0.0077880
24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0085764   -0.0076057    0.0247585
24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0034643   -0.0230452    0.0161166
24 months   Keneba         GAMBIA       1                    NA                -0.0947165   -0.1620508   -0.0273822
24 months   LCNI-5         MALAWI       1                    NA                 0.0446684   -0.2411936    0.3305305
24 months   MAL-ED         BANGLADESH   1                    NA                 0.0659866   -0.2319091    0.3638822
24 months   MAL-ED         BRAZIL       1                    NA                 0.2541972   -0.4533982    0.9617926
24 months   MAL-ED         NEPAL        1                    NA                 0.1095571   -0.5343543    0.7534684
24 months   PROVIDE        BANGLADESH   1                    NA                -0.0796869   -0.2229706    0.0635967
