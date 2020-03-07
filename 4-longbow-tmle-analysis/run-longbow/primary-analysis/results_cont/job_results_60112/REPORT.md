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

agecat      studyid          country                        exclfeed6    n_cell       n
----------  ---------------  -----------------------------  ----------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       EE               PAKISTAN                       1                24      28
Birth       EE               PAKISTAN                       0                 4      28
Birth       GMS-Nepal        NEPAL                          1               390     522
Birth       GMS-Nepal        NEPAL                          0               132     522
Birth       IRC              INDIA                          1                 0      12
Birth       IRC              INDIA                          0                12      12
Birth       JiVitA-3         BANGLADESH                     1              8381   10744
Birth       JiVitA-3         BANGLADESH                     0              2363   10744
Birth       JiVitA-4         BANGLADESH                     1              1799    2224
Birth       JiVitA-4         BANGLADESH                     0               425    2224
Birth       Keneba           GAMBIA                         1               450    1327
Birth       Keneba           GAMBIA                         0               877    1327
Birth       MAL-ED           BANGLADESH                     1                29     194
Birth       MAL-ED           BANGLADESH                     0               165     194
Birth       MAL-ED           BRAZIL                         1                 1      57
Birth       MAL-ED           BRAZIL                         0                56      57
Birth       MAL-ED           INDIA                          1                 1      37
Birth       MAL-ED           INDIA                          0                36      37
Birth       MAL-ED           NEPAL                          1                 2      23
Birth       MAL-ED           NEPAL                          0                21      23
Birth       MAL-ED           PERU                           1                 2     208
Birth       MAL-ED           PERU                           0               206     208
Birth       MAL-ED           SOUTH AFRICA                   1                 0      90
Birth       MAL-ED           SOUTH AFRICA                   0                90      90
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               105     105
Birth       PROVIDE          BANGLADESH                     1               155     532
Birth       PROVIDE          BANGLADESH                     0               377     532
Birth       SAS-CompFeed     INDIA                          1               310     325
Birth       SAS-CompFeed     INDIA                          0                15     325
6 months    CMC-V-BCS-2002   INDIA                          1                19      19
6 months    CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    EE               PAKISTAN                       1                43      48
6 months    EE               PAKISTAN                       0                 5      48
6 months    GMS-Nepal        NEPAL                          1               406     547
6 months    GMS-Nepal        NEPAL                          0               141     547
6 months    IRC              INDIA                          1                 0      14
6 months    IRC              INDIA                          0                14      14
6 months    JiVitA-3         BANGLADESH                     1              7610    9882
6 months    JiVitA-3         BANGLADESH                     0              2272    9882
6 months    JiVitA-4         BANGLADESH                     1              3315    4275
6 months    JiVitA-4         BANGLADESH                     0               960    4275
6 months    Keneba           GAMBIA                         1               586    1908
6 months    Keneba           GAMBIA                         0              1322    1908
6 months    LCNI-5           MALAWI                         1                47     272
6 months    LCNI-5           MALAWI                         0               225     272
6 months    MAL-ED           BANGLADESH                     1                33     231
6 months    MAL-ED           BANGLADESH                     0               198     231
6 months    MAL-ED           BRAZIL                         1                12     209
6 months    MAL-ED           BRAZIL                         0               197     209
6 months    MAL-ED           INDIA                          1                 2     218
6 months    MAL-ED           INDIA                          0               216     218
6 months    MAL-ED           NEPAL                          1                 5     225
6 months    MAL-ED           NEPAL                          0               220     225
6 months    MAL-ED           PERU                           1                 5     271
6 months    MAL-ED           PERU                           0               266     271
6 months    MAL-ED           SOUTH AFRICA                   1                 0     233
6 months    MAL-ED           SOUTH AFRICA                   0               233     233
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               232     232
6 months    PROVIDE          BANGLADESH                     1               141     603
6 months    PROVIDE          BANGLADESH                     0               462     603
6 months    SAS-CompFeed     INDIA                          1               376     395
6 months    SAS-CompFeed     INDIA                          0                19     395
6 months    SAS-FoodSuppl    INDIA                          1                 0     168
6 months    SAS-FoodSuppl    INDIA                          0               168     168
24 months   CMC-V-BCS-2002   INDIA                          1                19      19
24 months   CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   EE               PAKISTAN                       1                20      23
24 months   EE               PAKISTAN                       0                 3      23
24 months   GMS-Nepal        NEPAL                          1               355     469
24 months   GMS-Nepal        NEPAL                          0               114     469
24 months   IRC              INDIA                          1                 0      14
24 months   IRC              INDIA                          0                14      14
24 months   JiVitA-3         BANGLADESH                     1              3899    5067
24 months   JiVitA-3         BANGLADESH                     0              1168    5067
24 months   JiVitA-4         BANGLADESH                     1              3266    4184
24 months   JiVitA-4         BANGLADESH                     0               918    4184
24 months   Keneba           GAMBIA                         1               514    1514
24 months   Keneba           GAMBIA                         0              1000    1514
24 months   LCNI-5           MALAWI                         1                34     184
24 months   LCNI-5           MALAWI                         0               150     184
24 months   MAL-ED           BANGLADESH                     1                31     205
24 months   MAL-ED           BANGLADESH                     0               174     205
24 months   MAL-ED           BRAZIL                         1                11     169
24 months   MAL-ED           BRAZIL                         0               158     169
24 months   MAL-ED           INDIA                          1                 2     209
24 months   MAL-ED           INDIA                          0               207     209
24 months   MAL-ED           NEPAL                          1                 5     219
24 months   MAL-ED           NEPAL                          0               214     219
24 months   MAL-ED           PERU                           1                 3     201
24 months   MAL-ED           PERU                           0               198     201
24 months   MAL-ED           SOUTH AFRICA                   1                 0     216
24 months   MAL-ED           SOUTH AFRICA                   0               216     216
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               202     202
24 months   PROVIDE          BANGLADESH                     1               137     579
24 months   PROVIDE          BANGLADESH                     0               442     579


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
![](/tmp/f5ba7662-0ccd-4bc1-8adf-dab1f28a7d06/8755ad88-9ca6-42c8-ae92-6956cd72df2e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f5ba7662-0ccd-4bc1-8adf-dab1f28a7d06/8755ad88-9ca6-42c8-ae92-6956cd72df2e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f5ba7662-0ccd-4bc1-8adf-dab1f28a7d06/8755ad88-9ca6-42c8-ae92-6956cd72df2e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -1.1009322   -1.2127290   -0.9891354
Birth       GMS-Nepal      NEPAL        0                    NA                -1.0985175   -1.2526372   -0.9443977
Birth       JiVitA-3       BANGLADESH   1                    NA                -0.7866578   -0.8115159   -0.7617996
Birth       JiVitA-3       BANGLADESH   0                    NA                -0.7599346   -0.8034641   -0.7164050
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.6758381   -0.7308245   -0.6208517
Birth       JiVitA-4       BANGLADESH   0                    NA                -0.7530802   -0.8914987   -0.6146617
Birth       Keneba         GAMBIA       1                    NA                -1.2399228   -1.3422788   -1.1375669
Birth       Keneba         GAMBIA       0                    NA                -1.2675270   -1.3440926   -1.1909613
Birth       MAL-ED         BANGLADESH   1                    NA                -0.8741949   -1.2313066   -0.5170832
Birth       MAL-ED         BANGLADESH   0                    NA                -0.9871787   -1.1570831   -0.8172742
Birth       PROVIDE        BANGLADESH   1                    NA                -1.3201512   -1.4769958   -1.1633066
Birth       PROVIDE        BANGLADESH   0                    NA                -1.3056656   -1.3939795   -1.2173517
Birth       SAS-CompFeed   INDIA        1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       SAS-CompFeed   INDIA        0                    NA                -1.0901281   -1.7027393   -0.4775170
6 months    EE             PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    EE             PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    GMS-Nepal      NEPAL        1                    NA                -0.5764001   -0.6787691   -0.4740311
6 months    GMS-Nepal      NEPAL        0                    NA                -0.6751264   -0.8466486   -0.5036042
6 months    JiVitA-3       BANGLADESH   1                    NA                -0.6030123   -0.6301368   -0.5758878
6 months    JiVitA-3       BANGLADESH   0                    NA                -0.5899838   -0.6353071   -0.5446606
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.3485079   -0.3932835   -0.3037322
6 months    JiVitA-4       BANGLADESH   0                    NA                -0.5461468   -0.6246049   -0.4676887
6 months    Keneba         GAMBIA       1                    NA                -0.0211289   -0.1190955    0.0768378
6 months    Keneba         GAMBIA       0                    NA                -0.2812117   -0.3436647   -0.2187587
6 months    LCNI-5         MALAWI       1                    NA                 0.3742723    0.0428781    0.7056666
6 months    LCNI-5         MALAWI       0                    NA                 0.3977762    0.2710039    0.5245486
6 months    MAL-ED         BANGLADESH   1                    NA                -0.0516853   -0.4309940    0.3276234
6 months    MAL-ED         BANGLADESH   0                    NA                -0.1174775   -0.2627470    0.0277920
6 months    MAL-ED         BRAZIL       1                    NA                 1.4284076    0.8240996    2.0327156
6 months    MAL-ED         BRAZIL       0                    NA                 0.9460318    0.7762006    1.1158631
6 months    MAL-ED         NEPAL        1                    NA                -0.2760000   -0.9362767    0.3842767
6 months    MAL-ED         NEPAL        0                    NA                 0.1178939   -0.0200258    0.2558137
6 months    MAL-ED         PERU         1                    NA                 0.9290000    0.5350705    1.3229295
6 months    MAL-ED         PERU         0                    NA                 1.0529010    0.9277571    1.1780449
6 months    PROVIDE        BANGLADESH   1                    NA                 0.0060787   -0.1572572    0.1694145
6 months    PROVIDE        BANGLADESH   0                    NA                -0.2667018   -0.3613924   -0.1720112
6 months    SAS-CompFeed   INDIA        1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    SAS-CompFeed   INDIA        0                    NA                -0.6500492   -1.1672739   -0.1328245
24 months   GMS-Nepal      NEPAL        1                    NA                -1.0896264   -1.1896343   -0.9896184
24 months   GMS-Nepal      NEPAL        0                    NA                -1.2966091   -1.5061373   -1.0870810
24 months   JiVitA-3       BANGLADESH   1                    NA                -1.3191918   -1.3541013   -1.2842824
24 months   JiVitA-3       BANGLADESH   0                    NA                -1.2822974   -1.3449003   -1.2196946
24 months   JiVitA-4       BANGLADESH   1                    NA                -1.2255585   -1.2673018   -1.1838152
24 months   JiVitA-4       BANGLADESH   0                    NA                -1.2217597   -1.3029781   -1.1405413
24 months   Keneba         GAMBIA       1                    NA                -0.7095482   -0.7926393   -0.6264572
24 months   Keneba         GAMBIA       0                    NA                -0.8474135   -0.9088172   -0.7860098
24 months   LCNI-5         MALAWI       1                    NA                -0.1942986   -0.5224672    0.1338699
24 months   LCNI-5         MALAWI       0                    NA                -0.0673385   -0.2289523    0.0942752
24 months   MAL-ED         BANGLADESH   1                    NA                -0.8762017   -1.1927636   -0.5596397
24 months   MAL-ED         BANGLADESH   0                    NA                -0.8054987   -0.9402191   -0.6707783
24 months   MAL-ED         BRAZIL       1                    NA                -0.0624299   -0.8334269    0.7085672
24 months   MAL-ED         BRAZIL       0                    NA                 0.4745478    0.2594619    0.6896337
24 months   MAL-ED         NEPAL        1                    NA                -0.4770000   -1.1267115    0.1727115
24 months   MAL-ED         NEPAL        0                    NA                -0.3648832   -0.4833183   -0.2464480
24 months   PROVIDE        BANGLADESH   1                    NA                -0.7877038   -0.9546143   -0.6207933
24 months   PROVIDE        BANGLADESH   0                    NA                -0.9220894   -1.0170292   -0.8271495


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
Birth       GMS-Nepal      NEPAL        0                    1                  0.0024147   -0.1746681    0.1794976
Birth       JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH   0                    1                  0.0267232   -0.0216554    0.0751017
Birth       JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH   0                    1                 -0.0772421   -0.2224528    0.0679686
Birth       Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA       0                    1                 -0.0276042   -0.1454154    0.0902071
Birth       MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH   0                    1                 -0.1129838   -0.5121264    0.2861588
Birth       PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH   0                    1                  0.0144856   -0.1603199    0.1892910
Birth       SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA        0                    1                 -0.4481495   -0.9783681    0.0820692
6 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL        0                    1                 -0.0987263   -0.2986906    0.1012380
6 months    JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH   0                    1                  0.0130285   -0.0383818    0.0644387
6 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH   0                    1                 -0.1976389   -0.2877218   -0.1075561
6 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA       0                    1                 -0.2600828   -0.3755530   -0.1446126
6 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5         MALAWI       0                    1                  0.0235039   -0.3315429    0.3785507
6 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH   0                    1                 -0.0657922   -0.4724237    0.3408393
6 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL       0                    1                 -0.4823757   -1.1091535    0.1444021
6 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL        0                    1                  0.3938939   -0.2806334    1.0684213
6 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU         0                    1                  0.1239010   -0.2894287    0.5372307
6 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH   0                    1                 -0.2727805   -0.4605196   -0.0850413
6 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA        0                    1                 -0.0062476   -0.5560776    0.5435824
24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL        0                    1                 -0.2069828   -0.4394682    0.0255026
24 months   JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH   0                    1                  0.0368944   -0.0344757    0.1082645
24 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH   0                    1                  0.0037988   -0.0857596    0.0933572
24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA       0                    1                 -0.1378653   -0.2398458   -0.0358848
24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5         MALAWI       0                    1                  0.1269601   -0.2414133    0.4953335
24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH   0                    1                  0.0707029   -0.2776292    0.4190350
24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL       0                    1                  0.5369777   -0.2628120    1.3367673
24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL        0                    1                  0.1121168   -0.5483011    0.7725348
24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH   0                    1                 -0.1343856   -0.3263807    0.0576096


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.0055237   -0.0503345    0.0392870
Birth       JiVitA-3       BANGLADESH   1                    NA                 0.0058769   -0.0047590    0.0165127
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0146205   -0.0420306    0.0127896
Birth       Keneba         GAMBIA       1                    NA                -0.0200696   -0.0990066    0.0588673
Birth       MAL-ED         BANGLADESH   1                    NA                -0.1013721   -0.4427260    0.2399818
Birth       PROVIDE        BANGLADESH   1                    NA                 0.0216926   -0.1093506    0.1527357
Birth       SAS-CompFeed   INDIA        1                    NA                -0.0176521   -0.0527130    0.0174088
6 months    EE             PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    GMS-Nepal      NEPAL        1                    NA                -0.0245171   -0.0759305    0.0268964
6 months    JiVitA-3       BANGLADESH   1                    NA                 0.0028823   -0.0089260    0.0146906
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0483378   -0.0695895   -0.0270860
6 months    Keneba         GAMBIA       1                    NA                -0.1786358   -0.2594462   -0.0978253
6 months    LCNI-5         MALAWI       1                    NA                 0.0182277   -0.2762280    0.3126833
6 months    MAL-ED         BANGLADESH   1                    NA                -0.0696350   -0.4311379    0.2918678
6 months    MAL-ED         BRAZIL       1                    NA                -0.4563302   -1.0513079    0.1386475
6 months    MAL-ED         NEPAL        1                    NA                 0.3851407   -0.2725674    1.0428489
6 months    MAL-ED         PERU         1                    NA                 0.1216150   -0.2813864    0.5246164
6 months    PROVIDE        BANGLADESH   1                    NA                -0.2051693   -0.3495156   -0.0608231
6 months    SAS-CompFeed   INDIA        1                    NA                 0.0089155   -0.0178262    0.0356572
24 months   GMS-Nepal      NEPAL        1                    NA                -0.0527262   -0.1097246    0.0042723
24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0088544   -0.0075205    0.0252292
24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0009735   -0.0210394    0.0190923
24 months   Keneba         GAMBIA       1                    NA                -0.0936847   -0.1614842   -0.0258852
24 months   LCNI-5         MALAWI       1                    NA                 0.1172334   -0.1875106    0.4219775
24 months   MAL-ED         BANGLADESH   1                    NA                 0.0592261   -0.2379794    0.3564315
24 months   MAL-ED         BRAZIL       1                    NA                 0.5250532   -0.2291766    1.2792830
24 months   MAL-ED         NEPAL        1                    NA                 0.1095571   -0.5343543    0.7534684
24 months   PROVIDE        BANGLADESH   1                    NA                -0.1051632   -0.2520082    0.0416818
