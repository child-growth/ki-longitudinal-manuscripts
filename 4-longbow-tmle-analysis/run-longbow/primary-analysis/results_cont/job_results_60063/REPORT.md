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

**Intervention Variable:** safeh20

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid         country                        safeh20    n_cell       n
----------  --------------  -----------------------------  --------  -------  ------
Birth       JiVitA-3        BANGLADESH                     1           22392   22432
Birth       JiVitA-3        BANGLADESH                     0              40   22432
Birth       JiVitA-4        BANGLADESH                     1            2820    2820
Birth       JiVitA-4        BANGLADESH                     0               0    2820
Birth       MAL-ED          BANGLADESH                     1               0     213
Birth       MAL-ED          BANGLADESH                     0             213     213
Birth       MAL-ED          BRAZIL                         1               0      41
Birth       MAL-ED          BRAZIL                         0              41      41
Birth       MAL-ED          INDIA                          1               0      41
Birth       MAL-ED          INDIA                          0              41      41
Birth       MAL-ED          NEPAL                          1               1      26
Birth       MAL-ED          NEPAL                          0              25      26
Birth       MAL-ED          PERU                           1               9     207
Birth       MAL-ED          PERU                           0             198     207
Birth       MAL-ED          SOUTH AFRICA                   1              13      96
Birth       MAL-ED          SOUTH AFRICA                   0              83      96
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              79     119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              40     119
Birth       NIH-Birth       BANGLADESH                     1             606     608
Birth       NIH-Birth       BANGLADESH                     0               2     608
Birth       NIH-Crypto      BANGLADESH                     1             732     732
Birth       NIH-Crypto      BANGLADESH                     0               0     732
Birth       PROVIDE         BANGLADESH                     1              45      45
Birth       PROVIDE         BANGLADESH                     0               0      45
6 months    CONTENT         PERU                           1              54      57
6 months    CONTENT         PERU                           0               3      57
6 months    JiVitA-3        BANGLADESH                     1           16783   16803
6 months    JiVitA-3        BANGLADESH                     0              20   16803
6 months    JiVitA-4        BANGLADESH                     1            4824    4825
6 months    JiVitA-4        BANGLADESH                     0               1    4825
6 months    LCNI-5          MALAWI                         1             672     816
6 months    LCNI-5          MALAWI                         0             144     816
6 months    MAL-ED          BANGLADESH                     1               0     240
6 months    MAL-ED          BANGLADESH                     0             240     240
6 months    MAL-ED          BRAZIL                         1               0     142
6 months    MAL-ED          BRAZIL                         0             142     142
6 months    MAL-ED          INDIA                          1               0     235
6 months    MAL-ED          INDIA                          0             235     235
6 months    MAL-ED          NEPAL                          1               1     233
6 months    MAL-ED          NEPAL                          0             232     233
6 months    MAL-ED          PERU                           1              11     259
6 months    MAL-ED          PERU                           0             248     259
6 months    MAL-ED          SOUTH AFRICA                   1              37     248
6 months    MAL-ED          SOUTH AFRICA                   0             211     248
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             168     246
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              78     246
6 months    NIH-Birth       BANGLADESH                     1             535     537
6 months    NIH-Birth       BANGLADESH                     0               2     537
6 months    NIH-Crypto      BANGLADESH                     1             715     715
6 months    NIH-Crypto      BANGLADESH                     0               0     715
6 months    PROVIDE         BANGLADESH                     1              11      11
6 months    PROVIDE         BANGLADESH                     0               0      11
6 months    SAS-FoodSuppl   INDIA                          1             380     380
6 months    SAS-FoodSuppl   INDIA                          0               0     380
24 months   CONTENT         PERU                           1              45      48
24 months   CONTENT         PERU                           0               3      48
24 months   JiVitA-3        BANGLADESH                     1            8612    8623
24 months   JiVitA-3        BANGLADESH                     0              11    8623
24 months   JiVitA-4        BANGLADESH                     1            4746    4747
24 months   JiVitA-4        BANGLADESH                     0               1    4747
24 months   LCNI-5          MALAWI                         1             475     574
24 months   LCNI-5          MALAWI                         0              99     574
24 months   MAL-ED          BANGLADESH                     1               0     212
24 months   MAL-ED          BANGLADESH                     0             212     212
24 months   MAL-ED          BRAZIL                         1               0     113
24 months   MAL-ED          BRAZIL                         0             113     113
24 months   MAL-ED          INDIA                          1               0     227
24 months   MAL-ED          INDIA                          0             227     227
24 months   MAL-ED          NEPAL                          1               1     226
24 months   MAL-ED          NEPAL                          0             225     226
24 months   MAL-ED          PERU                           1               7     193
24 months   MAL-ED          PERU                           0             186     193
24 months   MAL-ED          SOUTH AFRICA                   1              34     237
24 months   MAL-ED          SOUTH AFRICA                   0             203     237
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             145     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              68     213
24 months   NIH-Birth       BANGLADESH                     1             427     429
24 months   NIH-Birth       BANGLADESH                     0               2     429
24 months   NIH-Crypto      BANGLADESH                     1             514     514
24 months   NIH-Crypto      BANGLADESH                     0               0     514
24 months   PROVIDE         BANGLADESH                     1               9       9
24 months   PROVIDE         BANGLADESH                     0               0       9


The following strata were considered:

* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

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
![](/tmp/195eab2b-e954-4a4f-86cc-d64b92a5058b/3695645e-c763-4800-9cbd-60e3737965b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/195eab2b-e954-4a4f-86cc-d64b92a5058b/3695645e-c763-4800-9cbd-60e3737965b3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/195eab2b-e954-4a4f-86cc-d64b92a5058b/3695645e-c763-4800-9cbd-60e3737965b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                -1.5889842   -1.6086498   -1.5693187
Birth       JiVitA-3   BANGLADESH                     0                    NA                -1.9521516   -1.9873116   -1.9169916
Birth       MAL-ED     PERU                           1                    NA                -0.6677778   -1.2689426   -0.0666129
Birth       MAL-ED     PERU                           0                    NA                -0.9054040   -1.0308665   -0.7799416
Birth       MAL-ED     SOUTH AFRICA                   1                    NA                -1.0029413   -1.6673326   -0.3385499
Birth       MAL-ED     SOUTH AFRICA                   0                    NA                -0.5859102   -0.7969551   -0.3748653
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.0658916   -1.3168864   -0.8148968
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.2136813   -1.6690373   -0.7583254
6 months    JiVitA-3   BANGLADESH                     1                    NA                -1.3128521   -1.3365119   -1.2891923
6 months    JiVitA-3   BANGLADESH                     0                    NA                -1.5970116   -1.6267095   -1.5673136
6 months    LCNI-5     MALAWI                         1                    NA                -1.6192358   -1.6961680   -1.5423037
6 months    LCNI-5     MALAWI                         0                    NA                -1.7196920   -1.8751927   -1.5641914
6 months    MAL-ED     PERU                           1                    NA                -1.2560073   -1.7962440   -0.7157706
6 months    MAL-ED     PERU                           0                    NA                -1.3111701   -1.4240690   -1.1982712
6 months    MAL-ED     SOUTH AFRICA                   1                    NA                -1.0687683   -1.4710069   -0.6665296
6 months    MAL-ED     SOUTH AFRICA                   0                    NA                -1.0476101   -1.1850695   -0.9101507
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3392392   -1.4893579   -1.1891206
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4334492   -1.6439946   -1.2229038
24 months   JiVitA-3   BANGLADESH                     1                    NA                -2.0132878   -2.0416218   -1.9849539
24 months   JiVitA-3   BANGLADESH                     0                    NA                -2.2556384   -2.2905849   -2.2206919
24 months   LCNI-5     MALAWI                         1                    NA                -1.8733089   -1.9640271   -1.7825906
24 months   LCNI-5     MALAWI                         0                    NA                -1.9265379   -2.1128728   -1.7402029
24 months   MAL-ED     PERU                           1                    NA                -2.1757143   -2.7976265   -1.5538020
24 months   MAL-ED     PERU                           0                    NA                -1.7370699   -1.8647759   -1.6093639
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                -1.6062408   -2.0310117   -1.1814698
24 months   MAL-ED     SOUTH AFRICA                   0                    NA                -1.6367360   -1.7787854   -1.4946866
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6650727   -2.8340751   -2.4960703
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5410278   -2.7701958   -2.3118599


### Parameter: E(Y)


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH                     NA                   NA                -1.5896835   -1.6089596   -1.5704074
Birth       MAL-ED     PERU                           NA                   NA                -0.8950725   -1.0180716   -0.7720734
Birth       MAL-ED     SOUTH AFRICA                   NA                   NA                -0.5523958   -0.7550074   -0.3497843
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1158824   -1.3283278   -0.9034369
6 months    JiVitA-3   BANGLADESH                     NA                   NA                -1.3132090   -1.3363486   -1.2900693
6 months    LCNI-5     MALAWI                         NA                   NA                -1.6426961   -1.7120603   -1.5733318
6 months    MAL-ED     PERU                           NA                   NA                -1.3065026   -1.4164323   -1.1965728
6 months    MAL-ED     SOUTH AFRICA                   NA                   NA                -1.0533804   -1.1834360   -0.9233247
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3658943   -1.4882808   -1.2435078
24 months   JiVitA-3   BANGLADESH                     NA                   NA                -2.0135591   -2.0412422   -1.9858759
24 months   LCNI-5     MALAWI                         NA                   NA                -1.8822648   -1.9637218   -1.8008078
24 months   MAL-ED     PERU                           NA                   NA                -1.7529793   -1.8786399   -1.6273186
24 months   MAL-ED     SOUTH AFRICA                   NA                   NA                -1.6471273   -1.7822999   -1.5119547
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6488498   -2.7844961   -2.5132034


### Parameter: ATE


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3   BANGLADESH                     0                    1                 -0.3631673   -0.4020809   -0.3242538
Birth       MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     PERU                           0                    1                 -0.2376263   -0.8517435    0.3764910
Birth       MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     SOUTH AFRICA                   0                    1                  0.4170311   -0.2852000    1.1192622
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1477897   -0.6713526    0.3757731
6 months    JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3   BANGLADESH                     0                    1                 -0.2841594   -0.3207497   -0.2475692
6 months    LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5     MALAWI                         0                    1                 -0.1004562   -0.2733554    0.0724430
6 months    MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     PERU                           0                    1                 -0.0551628   -0.6069131    0.4965874
6 months    MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     SOUTH AFRICA                   0                    1                  0.0211582   -0.4043223    0.4466386
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0942100   -0.3526683    0.1642483
24 months   JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3   BANGLADESH                     0                    1                 -0.2423506   -0.2861579   -0.1985432
24 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5     MALAWI                         0                    1                 -0.0532290   -0.2605537    0.1540956
24 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     PERU                           0                    1                  0.4386444   -0.1962443    1.0735331
24 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     SOUTH AFRICA                   0                    1                 -0.0304952   -0.4791135    0.4181230
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1240449   -0.1607283    0.4088181


### Parameter: PAR


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                -0.0006992   -0.0017241   0.0003256
Birth       MAL-ED     PERU                           1                    NA                -0.2272947   -0.8147485   0.3601591
Birth       MAL-ED     SOUTH AFRICA                   1                    NA                 0.4505454   -0.1690310   1.0701219
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0499908   -0.2100070   0.1100255
6 months    JiVitA-3   BANGLADESH                     1                    NA                -0.0003568   -0.0012585   0.0005448
6 months    LCNI-5     MALAWI                         1                    NA                -0.0234602   -0.0543728   0.0074523
6 months    MAL-ED     PERU                           1                    NA                -0.0504953   -0.5820693   0.4810787
6 months    MAL-ED     SOUTH AFRICA                   1                    NA                 0.0153879   -0.3490233   0.3797990
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0266551   -0.1109088   0.0575986
24 months   JiVitA-3   BANGLADESH                     1                    NA                -0.0002713   -0.0014186   0.0008761
24 months   LCNI-5     MALAWI                         1                    NA                -0.0089560   -0.0444644   0.0265525
24 months   MAL-ED     PERU                           1                    NA                 0.4227350   -0.1892366   1.0347066
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                -0.0408865   -0.4271688   0.3453958
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0162230   -0.0730025   0.1054484
