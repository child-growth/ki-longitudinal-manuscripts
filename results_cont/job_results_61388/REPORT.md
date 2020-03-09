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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** predexfd6

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

agecat      studyid          country                        predexfd6    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ----------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          1                 7       7  haz              
Birth       CMC-V-BCS-2002   INDIA                          0                 0       7  haz              
Birth       EE               PAKISTAN                       1                38      42  haz              
Birth       EE               PAKISTAN                       0                 4      42  haz              
Birth       GMS-Nepal        NEPAL                          1               419     563  haz              
Birth       GMS-Nepal        NEPAL                          0               144     563  haz              
Birth       IRC              INDIA                          1                 0      14  haz              
Birth       IRC              INDIA                          0                14      14  haz              
Birth       JiVitA-3         BANGLADESH                     1             10466   13423  haz              
Birth       JiVitA-3         BANGLADESH                     0              2957   13423  haz              
Birth       JiVitA-4         BANGLADESH                     1              2103    2632  haz              
Birth       JiVitA-4         BANGLADESH                     0               529    2632  haz              
Birth       Keneba           GAMBIA                         1               485    1403  haz              
Birth       Keneba           GAMBIA                         0               918    1403  haz              
Birth       MAL-ED           BANGLADESH                     1                72     205  haz              
Birth       MAL-ED           BANGLADESH                     0               133     205  haz              
Birth       MAL-ED           BRAZIL                         1                 6      60  haz              
Birth       MAL-ED           BRAZIL                         0                54      60  haz              
Birth       MAL-ED           INDIA                          1                 4      39  haz              
Birth       MAL-ED           INDIA                          0                35      39  haz              
Birth       MAL-ED           NEPAL                          1                 3      24  haz              
Birth       MAL-ED           NEPAL                          0                21      24  haz              
Birth       MAL-ED           PERU                           1                73     213  haz              
Birth       MAL-ED           PERU                           0               140     213  haz              
Birth       MAL-ED           SOUTH AFRICA                   1                 1      91  haz              
Birth       MAL-ED           SOUTH AFRICA                   0                90      91  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     113  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               113     113  haz              
Birth       PROVIDE          BANGLADESH                     1               159     539  haz              
Birth       PROVIDE          BANGLADESH                     0               380     539  haz              
Birth       SAS-CompFeed     INDIA                          1               346     364  haz              
Birth       SAS-CompFeed     INDIA                          0                18     364  haz              
6 months    CMC-V-BCS-2002   INDIA                          1                19      19  haz              
6 months    CMC-V-BCS-2002   INDIA                          0                 0      19  haz              
6 months    EE               PAKISTAN                       1                43      48  haz              
6 months    EE               PAKISTAN                       0                 5      48  haz              
6 months    GMS-Nepal        NEPAL                          1               406     547  haz              
6 months    GMS-Nepal        NEPAL                          0               141     547  haz              
6 months    IRC              INDIA                          1                 0      14  haz              
6 months    IRC              INDIA                          0                14      14  haz              
6 months    JiVitA-3         BANGLADESH                     1              7644    9901  haz              
6 months    JiVitA-3         BANGLADESH                     0              2257    9901  haz              
6 months    JiVitA-4         BANGLADESH                     1              3328    4272  haz              
6 months    JiVitA-4         BANGLADESH                     0               944    4272  haz              
6 months    Keneba           GAMBIA                         1               586    1908  haz              
6 months    Keneba           GAMBIA                         0              1322    1908  haz              
6 months    LCNI-5           MALAWI                         1                47     272  haz              
6 months    LCNI-5           MALAWI                         0               225     272  haz              
6 months    MAL-ED           BANGLADESH                     1                84     231  haz              
6 months    MAL-ED           BANGLADESH                     0               147     231  haz              
6 months    MAL-ED           BRAZIL                         1                30     209  haz              
6 months    MAL-ED           BRAZIL                         0               179     209  haz              
6 months    MAL-ED           INDIA                          1                11     218  haz              
6 months    MAL-ED           INDIA                          0               207     218  haz              
6 months    MAL-ED           NEPAL                          1                12     225  haz              
6 months    MAL-ED           NEPAL                          0               213     225  haz              
6 months    MAL-ED           PERU                           1                92     271  haz              
6 months    MAL-ED           PERU                           0               179     271  haz              
6 months    MAL-ED           SOUTH AFRICA                   1                 3     233  haz              
6 months    MAL-ED           SOUTH AFRICA                   0               230     233  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     232  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               231     232  haz              
6 months    PROVIDE          BANGLADESH                     1               141     604  haz              
6 months    PROVIDE          BANGLADESH                     0               463     604  haz              
6 months    SAS-CompFeed     INDIA                          1               379     398  haz              
6 months    SAS-CompFeed     INDIA                          0                19     398  haz              
6 months    SAS-FoodSuppl    INDIA                          1                 0     168  haz              
6 months    SAS-FoodSuppl    INDIA                          0               168     168  haz              
24 months   CMC-V-BCS-2002   INDIA                          1                19      19  haz              
24 months   CMC-V-BCS-2002   INDIA                          0                 0      19  haz              
24 months   EE               PAKISTAN                       1                20      23  haz              
24 months   EE               PAKISTAN                       0                 3      23  haz              
24 months   GMS-Nepal        NEPAL                          1               356     470  haz              
24 months   GMS-Nepal        NEPAL                          0               114     470  haz              
24 months   IRC              INDIA                          1                 0      14  haz              
24 months   IRC              INDIA                          0                14      14  haz              
24 months   JiVitA-3         BANGLADESH                     1              3926    5088  haz              
24 months   JiVitA-3         BANGLADESH                     0              1162    5088  haz              
24 months   JiVitA-4         BANGLADESH                     1              3292    4199  haz              
24 months   JiVitA-4         BANGLADESH                     0               907    4199  haz              
24 months   Keneba           GAMBIA                         1               515    1513  haz              
24 months   Keneba           GAMBIA                         0               998    1513  haz              
24 months   LCNI-5           MALAWI                         1                34     189  haz              
24 months   LCNI-5           MALAWI                         0               155     189  haz              
24 months   MAL-ED           BANGLADESH                     1                76     205  haz              
24 months   MAL-ED           BANGLADESH                     0               129     205  haz              
24 months   MAL-ED           BRAZIL                         1                25     169  haz              
24 months   MAL-ED           BRAZIL                         0               144     169  haz              
24 months   MAL-ED           INDIA                          1                11     209  haz              
24 months   MAL-ED           INDIA                          0               198     209  haz              
24 months   MAL-ED           NEPAL                          1                12     219  haz              
24 months   MAL-ED           NEPAL                          0               207     219  haz              
24 months   MAL-ED           PERU                           1                68     201  haz              
24 months   MAL-ED           PERU                           0               133     201  haz              
24 months   MAL-ED           SOUTH AFRICA                   1                 3     216  haz              
24 months   MAL-ED           SOUTH AFRICA                   0               213     216  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     202  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               201     202  haz              
24 months   PROVIDE          BANGLADESH                     1               137     578  haz              
24 months   PROVIDE          BANGLADESH                     0               441     578  haz              


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
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/0c9b83eb-7ae2-4b61-a099-4c7b2bdc67c5/14d16530-7853-4f88-98bb-69024a872649/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0c9b83eb-7ae2-4b61-a099-4c7b2bdc67c5/14d16530-7853-4f88-98bb-69024a872649/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0c9b83eb-7ae2-4b61-a099-4c7b2bdc67c5/14d16530-7853-4f88-98bb-69024a872649/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -1.0536093   -1.1509571   -0.9562614
Birth       GMS-Nepal      NEPAL        0                    NA                -1.1059786   -1.2822592   -0.9296980
Birth       JiVitA-3       BANGLADESH   1                    NA                -1.5948367   -1.6196242   -1.5700492
Birth       JiVitA-3       BANGLADESH   0                    NA                -1.5979514   -1.6372481   -1.5586548
Birth       JiVitA-4       BANGLADESH   1                    NA                -1.5090848   -1.5617073   -1.4564623
Birth       JiVitA-4       BANGLADESH   0                    NA                -1.5920187   -1.7239373   -1.4601001
Birth       Keneba         GAMBIA       1                    NA                -0.0067106   -0.1154636    0.1020424
Birth       Keneba         GAMBIA       0                    NA                 0.0275556   -0.0511717    0.1062829
Birth       MAL-ED         BANGLADESH   1                    NA                -1.0700153   -1.2993543   -0.8406763
Birth       MAL-ED         BANGLADESH   0                    NA                -1.0435144   -1.2203858   -0.8666430
Birth       MAL-ED         BRAZIL       1                    NA                -1.0216667   -2.1085384    0.0652051
Birth       MAL-ED         BRAZIL       0                    NA                -0.6601852   -0.9595686   -0.3608018
Birth       MAL-ED         PERU         1                    NA                -0.8582004   -1.0209912   -0.6954097
Birth       MAL-ED         PERU         0                    NA                -0.9188891   -1.0665753   -0.7712029
Birth       PROVIDE        BANGLADESH   1                    NA                -0.9319037   -1.0667460   -0.7970614
Birth       PROVIDE        BANGLADESH   0                    NA                -0.8700560   -0.9567613   -0.7833506
Birth       SAS-CompFeed   INDIA        1                    NA                -1.3776197   -1.4631704   -1.2920690
Birth       SAS-CompFeed   INDIA        0                    NA                -1.4364436   -2.1366347   -0.7362525
6 months    EE             PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    EE             PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    GMS-Nepal      NEPAL        1                    NA                -1.3046923   -1.3937744   -1.2156102
6 months    GMS-Nepal      NEPAL        0                    NA                -1.4851148   -1.6545100   -1.3157196
6 months    JiVitA-3       BANGLADESH   1                    NA                -1.3082269   -1.3386850   -1.2777689
6 months    JiVitA-3       BANGLADESH   0                    NA                -1.3299003   -1.3792691   -1.2805315
6 months    JiVitA-4       BANGLADESH   1                    NA                -1.3100276   -1.3508087   -1.2692464
6 months    JiVitA-4       BANGLADESH   0                    NA                -1.4775999   -1.5693332   -1.3858666
6 months    Keneba         GAMBIA       1                    NA                -0.8980459   -0.9868270   -0.8092648
6 months    Keneba         GAMBIA       0                    NA                -0.9482197   -1.0070780   -0.8893615
6 months    LCNI-5         MALAWI       1                    NA                -1.7849899   -2.0750625   -1.4949173
6 months    LCNI-5         MALAWI       0                    NA                -1.6285187   -1.7597409   -1.4972965
6 months    MAL-ED         BANGLADESH   1                    NA                -1.1013574   -1.2825090   -0.9202059
6 months    MAL-ED         BANGLADESH   0                    NA                -1.2404813   -1.3969101   -1.0840524
6 months    MAL-ED         BRAZIL       1                    NA                 0.2435117   -0.2220606    0.7090839
6 months    MAL-ED         BRAZIL       0                    NA                 0.0326026   -0.1181399    0.1833451
6 months    MAL-ED         INDIA        1                    NA                -1.7758964   -2.6661959   -0.8855968
6 months    MAL-ED         INDIA        0                    NA                -1.1918986   -1.3128975   -1.0708997
6 months    MAL-ED         NEPAL        1                    NA                -0.8442294   -1.5346670   -0.1537919
6 months    MAL-ED         NEPAL        0                    NA                -0.5553281   -0.6737990   -0.4368573
6 months    MAL-ED         PERU         1                    NA                -1.2189739   -1.3970067   -1.0409411
6 months    MAL-ED         PERU         0                    NA                -1.3596737   -1.4964663   -1.2228811
6 months    PROVIDE        BANGLADESH   1                    NA                -1.0837114   -1.2191339   -0.9482889
6 months    PROVIDE        BANGLADESH   0                    NA                -1.0913387   -1.1793430   -1.0033345
6 months    SAS-CompFeed   INDIA        1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    SAS-CompFeed   INDIA        0                    NA                -1.4654856   -2.2428805   -0.6880907
24 months   GMS-Nepal      NEPAL        1                    NA                -1.9026614   -1.9979099   -1.8074128
24 months   GMS-Nepal      NEPAL        0                    NA                -1.8766653   -2.0740192   -1.6793114
24 months   JiVitA-3       BANGLADESH   1                    NA                -2.0025043   -2.0423720   -1.9626366
24 months   JiVitA-3       BANGLADESH   0                    NA                -2.0450039   -2.1146098   -1.9753980
24 months   JiVitA-4       BANGLADESH   1                    NA                -1.7818219   -1.8237312   -1.7399126
24 months   JiVitA-4       BANGLADESH   0                    NA                -1.8282119   -1.9050473   -1.7513764
24 months   Keneba         GAMBIA       1                    NA                -1.5191442   -1.6021949   -1.4360935
24 months   Keneba         GAMBIA       0                    NA                -1.6175248   -1.6825454   -1.5525042
24 months   LCNI-5         MALAWI       1                    NA                -2.0690908   -2.3663713   -1.7718102
24 months   LCNI-5         MALAWI       0                    NA                -1.9534768   -2.1123713   -1.7945824
24 months   MAL-ED         BANGLADESH   1                    NA                -1.9705382   -2.2162726   -1.7248038
24 months   MAL-ED         BANGLADESH   0                    NA                -1.9247498   -2.0695676   -1.7799320
24 months   MAL-ED         BRAZIL       1                    NA                -0.0527266   -0.5710389    0.4655858
24 months   MAL-ED         BRAZIL       0                    NA                 0.0136341   -0.1717520    0.1990201
24 months   MAL-ED         INDIA        1                    NA                -2.6187386   -3.1683903   -2.0690869
24 months   MAL-ED         INDIA        0                    NA                -1.8477329   -1.9793388   -1.7161270
24 months   MAL-ED         NEPAL        1                    NA                -2.0237111   -2.5803876   -1.4670346
24 months   MAL-ED         NEPAL        0                    NA                -1.3054223   -1.4309583   -1.1798864
24 months   MAL-ED         PERU         1                    NA                -1.7864976   -1.9886046   -1.5843907
24 months   MAL-ED         PERU         0                    NA                -1.7346130   -1.8833823   -1.5858438
24 months   PROVIDE        BANGLADESH   1                    NA                -1.7110789   -1.8717765   -1.5503813
24 months   PROVIDE        BANGLADESH   0                    NA                -1.5701732   -1.6661947   -1.4741517


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       JiVitA-3       BANGLADESH   NA                   NA                -1.5955338   -1.6186322   -1.5724354
Birth       JiVitA-4       BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
Birth       Keneba         GAMBIA       NA                   NA                 0.0126443   -0.0554367    0.0807254
Birth       MAL-ED         BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       MAL-ED         BRAZIL       NA                   NA                -0.6963333   -0.9881882   -0.4044785
Birth       MAL-ED         PERU         NA                   NA                -0.9065728   -1.0297267   -0.7834188
Birth       PROVIDE        BANGLADESH   NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed   INDIA        NA                   NA                -1.3937088   -1.5095039   -1.2779137
6 months    EE             PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    GMS-Nepal      NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    JiVitA-3       BANGLADESH   NA                   NA                -1.3138259   -1.3418712   -1.2857806
6 months    JiVitA-4       BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
6 months    Keneba         GAMBIA       NA                   NA                -0.9331108   -0.9823173   -0.8839043
6 months    LCNI-5         MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    MAL-ED         BANGLADESH   NA                   NA                -1.1900794   -1.3096296   -1.0705291
6 months    MAL-ED         BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED         INDIA        NA                   NA                -1.2188303   -1.3423090   -1.0953516
6 months    MAL-ED         NEPAL        NA                   NA                -0.5622370   -0.6774081   -0.4470660
6 months    MAL-ED         PERU         NA                   NA                -1.3220326   -1.4308168   -1.2132484
6 months    PROVIDE        BANGLADESH   NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed   INDIA        NA                   NA                -1.4697236   -1.6333919   -1.3060553
24 months   GMS-Nepal      NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   JiVitA-3       BANGLADESH   NA                   NA                -2.0118003   -2.0479952   -1.9756055
24 months   JiVitA-4       BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715
24 months   Keneba         GAMBIA       NA                   NA                -1.5876293   -1.6406755   -1.5345831
24 months   LCNI-5         MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   MAL-ED         BANGLADESH   NA                   NA                -1.9576341   -2.0857597   -1.8295086
24 months   MAL-ED         BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED         INDIA        NA                   NA                -1.8863397   -2.0168508   -1.7558287
24 months   MAL-ED         NEPAL        NA                   NA                -1.3187671   -1.4406685   -1.1968657
24 months   MAL-ED         PERU         NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   PROVIDE        BANGLADESH   NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL        0                    1                 -0.0523693   -0.2466389    0.1419003
Birth       JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH   0                    1                 -0.0031147   -0.0438864    0.0376570
Birth       JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH   0                    1                 -0.0829339   -0.2243612    0.0584934
Birth       Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
Birth       Keneba         GAMBIA       0                    1                  0.0342662   -0.0896145    0.1581470
Birth       MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH   0                    1                  0.0265009   -0.2645819    0.3175837
Birth       MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL       0                    1                  0.3614815   -0.7658697    1.4888326
Birth       MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU         0                    1                 -0.0606887   -0.2521723    0.1307949
Birth       PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE        BANGLADESH   0                    1                  0.0618477   -0.0870803    0.2107757
Birth       SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA        0                    1                 -0.0588239   -0.7253365    0.6076887
6 months    EE             PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL        0                    1                 -0.1804225   -0.3719103    0.0110654
6 months    JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH   0                    1                 -0.0216734   -0.0742043    0.0308576
6 months    JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH   0                    1                 -0.1675723   -0.2665738   -0.0685708
6 months    Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
6 months    Keneba         GAMBIA       0                    1                 -0.0501738   -0.1560479    0.0557003
6 months    LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5         MALAWI       0                    1                  0.1564712   -0.1630250    0.4759674
6 months    MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH   0                    1                 -0.1391238   -0.3786446    0.1003969
6 months    MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL       0                    1                 -0.2109091   -0.7014554    0.2796373
6 months    MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA        0                    1                  0.5839978   -0.3152765    1.4832720
6 months    MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL        0                    1                  0.2889013   -0.4121848    0.9899874
6 months    MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU         0                    1                 -0.1406998   -0.3655726    0.0841730
6 months    PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE        BANGLADESH   0                    1                 -0.0076273   -0.1691797    0.1539250
6 months    SAS-CompFeed   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA        0                    1                 -0.0104897   -0.7471588    0.7261794
24 months   GMS-Nepal      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL        0                    1                  0.0259961   -0.1911209    0.2431131
24 months   JiVitA-3       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3       BANGLADESH   0                    1                 -0.0424996   -0.1189898    0.0339905
24 months   JiVitA-4       BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH   0                    1                 -0.0463900   -0.1288993    0.0361193
24 months   Keneba         GAMBIA       1                    1                  0.0000000    0.0000000    0.0000000
24 months   Keneba         GAMBIA       0                    1                 -0.0983806   -0.2002972    0.0035360
24 months   LCNI-5         MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5         MALAWI       0                    1                  0.1156139   -0.2223172    0.4535451
24 months   MAL-ED         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH   0                    1                  0.0457885   -0.2385355    0.3301124
24 months   MAL-ED         BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL       0                    1                  0.0663606   -0.4854803    0.6182016
24 months   MAL-ED         INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA        0                    1                  0.7710057    0.2058612    1.3361503
24 months   MAL-ED         NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL        0                    1                  0.7182888    0.1448739    1.2917036
24 months   MAL-ED         PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU         0                    1                  0.0518846   -0.1954141    0.2991833
24 months   PROVIDE        BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE        BANGLADESH   0                    1                  0.1409056   -0.0440929    0.3259042


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        1                    NA                -0.0105115   -0.0603390    0.0393160
Birth       JiVitA-3       BANGLADESH   1                    NA                -0.0006971   -0.0096837    0.0082895
Birth       JiVitA-4       BANGLADESH   1                    NA                -0.0182290   -0.0469125    0.0104545
Birth       Keneba         GAMBIA       1                    NA                 0.0193549   -0.0624889    0.1011988
Birth       MAL-ED         BANGLADESH   1                    NA                 0.0169909   -0.1751495    0.2091312
Birth       MAL-ED         BRAZIL       1                    NA                 0.3253333   -0.6896600    1.3403266
Birth       MAL-ED         PERU         1                    NA                -0.0483723   -0.1751059    0.0783612
Birth       PROVIDE        BANGLADESH   1                    NA                 0.0468016   -0.0654654    0.1590687
Birth       SAS-CompFeed   INDIA        1                    NA                -0.0160891   -0.0566754    0.0244973
6 months    EE             PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217917
6 months    GMS-Nepal      NEPAL        1                    NA                -0.0493357   -0.0990875    0.0004161
6 months    JiVitA-3       BANGLADESH   1                    NA                -0.0055989   -0.0175801    0.0063823
6 months    JiVitA-4       BANGLADESH   1                    NA                -0.0382028   -0.0596044   -0.0168011
6 months    Keneba         GAMBIA       1                    NA                -0.0350649   -0.1087940    0.0386643
6 months    LCNI-5         MALAWI       1                    NA                 0.1453943   -0.1205024    0.4112909
6 months    MAL-ED         BANGLADESH   1                    NA                -0.0887219   -0.2404078    0.0629640
6 months    MAL-ED         BRAZIL       1                    NA                -0.1959359   -0.6189153    0.2270435
6 months    MAL-ED         INDIA        1                    NA                 0.5570661   -0.3005405    1.4146726
6 months    MAL-ED         NEPAL        1                    NA                 0.2819924   -0.3914364    0.9554212
6 months    MAL-ED         PERU         1                    NA                -0.1030587   -0.2528230    0.0467057
6 months    PROVIDE        BANGLADESH   1                    NA                -0.0079801   -0.1318996    0.1159395
6 months    SAS-CompFeed   INDIA        1                    NA                -0.0147277   -0.0507565    0.0213012
24 months   GMS-Nepal      NEPAL        1                    NA                 0.0024486   -0.0490692    0.0539664
24 months   JiVitA-3       BANGLADESH   1                    NA                -0.0092960   -0.0268446    0.0082526
24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0096547   -0.0271358    0.0078265
24 months   Keneba         GAMBIA       1                    NA                -0.0684851   -0.1362124   -0.0007578
24 months   LCNI-5         MALAWI       1                    NA                 0.1039585   -0.1746649    0.3825819
24 months   MAL-ED         BANGLADESH   1                    NA                 0.0129041   -0.1729196    0.1987278
24 months   MAL-ED         BRAZIL       1                    NA                 0.0588410   -0.4237037    0.5413857
24 months   MAL-ED         INDIA        1                    NA                 0.7323989    0.1977988    1.2669990
24 months   MAL-ED         NEPAL        1                    NA                 0.7049440    0.1576978    1.2521902
24 months   MAL-ED         PERU         1                    NA                 0.0340267   -0.1315763    0.1996296
24 months   PROVIDE        BANGLADESH   1                    NA                 0.1086567   -0.0332063    0.2505198
