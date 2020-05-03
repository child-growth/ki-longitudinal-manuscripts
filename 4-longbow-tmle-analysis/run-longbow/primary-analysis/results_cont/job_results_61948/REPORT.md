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

agecat      studyid         country                        safeh20    n_cell       n  outcome_variable 
----------  --------------  -----------------------------  --------  -------  ------  -----------------
Birth       JiVitA-3        BANGLADESH                     1           22392   22432  haz              
Birth       JiVitA-3        BANGLADESH                     0              40   22432  haz              
Birth       JiVitA-4        BANGLADESH                     1            2820    2820  haz              
Birth       JiVitA-4        BANGLADESH                     0               0    2820  haz              
Birth       MAL-ED          BANGLADESH                     1               0     213  haz              
Birth       MAL-ED          BANGLADESH                     0             213     213  haz              
Birth       MAL-ED          BRAZIL                         1               0      41  haz              
Birth       MAL-ED          BRAZIL                         0              41      41  haz              
Birth       MAL-ED          INDIA                          1               0      41  haz              
Birth       MAL-ED          INDIA                          0              41      41  haz              
Birth       MAL-ED          NEPAL                          1               1      26  haz              
Birth       MAL-ED          NEPAL                          0              25      26  haz              
Birth       MAL-ED          PERU                           1               9     207  haz              
Birth       MAL-ED          PERU                           0             198     207  haz              
Birth       MAL-ED          SOUTH AFRICA                   1              13      96  haz              
Birth       MAL-ED          SOUTH AFRICA                   0              83      96  haz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              79     119  haz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              40     119  haz              
Birth       NIH-Birth       BANGLADESH                     1             606     608  haz              
Birth       NIH-Birth       BANGLADESH                     0               2     608  haz              
Birth       NIH-Crypto      BANGLADESH                     1             732     732  haz              
Birth       NIH-Crypto      BANGLADESH                     0               0     732  haz              
Birth       PROVIDE         BANGLADESH                     1              45      45  haz              
Birth       PROVIDE         BANGLADESH                     0               0      45  haz              
6 months    CONTENT         PERU                           1              54      57  haz              
6 months    CONTENT         PERU                           0               3      57  haz              
6 months    JiVitA-3        BANGLADESH                     1           16783   16803  haz              
6 months    JiVitA-3        BANGLADESH                     0              20   16803  haz              
6 months    JiVitA-4        BANGLADESH                     1            4824    4825  haz              
6 months    JiVitA-4        BANGLADESH                     0               1    4825  haz              
6 months    LCNI-5          MALAWI                         1             672     816  haz              
6 months    LCNI-5          MALAWI                         0             144     816  haz              
6 months    MAL-ED          BANGLADESH                     1               0     240  haz              
6 months    MAL-ED          BANGLADESH                     0             240     240  haz              
6 months    MAL-ED          BRAZIL                         1               0     142  haz              
6 months    MAL-ED          BRAZIL                         0             142     142  haz              
6 months    MAL-ED          INDIA                          1               0     235  haz              
6 months    MAL-ED          INDIA                          0             235     235  haz              
6 months    MAL-ED          NEPAL                          1               1     233  haz              
6 months    MAL-ED          NEPAL                          0             232     233  haz              
6 months    MAL-ED          PERU                           1              11     259  haz              
6 months    MAL-ED          PERU                           0             248     259  haz              
6 months    MAL-ED          SOUTH AFRICA                   1              37     248  haz              
6 months    MAL-ED          SOUTH AFRICA                   0             211     248  haz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             168     246  haz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              78     246  haz              
6 months    NIH-Birth       BANGLADESH                     1             535     537  haz              
6 months    NIH-Birth       BANGLADESH                     0               2     537  haz              
6 months    NIH-Crypto      BANGLADESH                     1             715     715  haz              
6 months    NIH-Crypto      BANGLADESH                     0               0     715  haz              
6 months    PROVIDE         BANGLADESH                     1              11      11  haz              
6 months    PROVIDE         BANGLADESH                     0               0      11  haz              
6 months    SAS-FoodSuppl   INDIA                          1             380     380  haz              
6 months    SAS-FoodSuppl   INDIA                          0               0     380  haz              
24 months   CONTENT         PERU                           1              45      48  haz              
24 months   CONTENT         PERU                           0               3      48  haz              
24 months   JiVitA-3        BANGLADESH                     1            8612    8623  haz              
24 months   JiVitA-3        BANGLADESH                     0              11    8623  haz              
24 months   JiVitA-4        BANGLADESH                     1            4746    4747  haz              
24 months   JiVitA-4        BANGLADESH                     0               1    4747  haz              
24 months   LCNI-5          MALAWI                         1             475     574  haz              
24 months   LCNI-5          MALAWI                         0              99     574  haz              
24 months   MAL-ED          BANGLADESH                     1               0     212  haz              
24 months   MAL-ED          BANGLADESH                     0             212     212  haz              
24 months   MAL-ED          BRAZIL                         1               0     113  haz              
24 months   MAL-ED          BRAZIL                         0             113     113  haz              
24 months   MAL-ED          INDIA                          1               0     227  haz              
24 months   MAL-ED          INDIA                          0             227     227  haz              
24 months   MAL-ED          NEPAL                          1               1     226  haz              
24 months   MAL-ED          NEPAL                          0             225     226  haz              
24 months   MAL-ED          PERU                           1               7     193  haz              
24 months   MAL-ED          PERU                           0             186     193  haz              
24 months   MAL-ED          SOUTH AFRICA                   1              34     237  haz              
24 months   MAL-ED          SOUTH AFRICA                   0             203     237  haz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             145     213  haz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              68     213  haz              
24 months   NIH-Birth       BANGLADESH                     1             427     429  haz              
24 months   NIH-Birth       BANGLADESH                     0               2     429  haz              
24 months   NIH-Crypto      BANGLADESH                     1             514     514  haz              
24 months   NIH-Crypto      BANGLADESH                     0               0     514  haz              
24 months   PROVIDE         BANGLADESH                     1               9       9  haz              
24 months   PROVIDE         BANGLADESH                     0               0       9  haz              


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
![](/tmp/01e63d27-ccf7-4c19-8dc3-af82fce9f4ce/b4ac564f-0cb9-4451-a0ac-48d42d3900f8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/01e63d27-ccf7-4c19-8dc3-af82fce9f4ce/b4ac564f-0cb9-4451-a0ac-48d42d3900f8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/01e63d27-ccf7-4c19-8dc3-af82fce9f4ce/b4ac564f-0cb9-4451-a0ac-48d42d3900f8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                -1.5889904   -1.6086566   -1.5693242
Birth       JiVitA-3   BANGLADESH                     0                    NA                -1.9368295   -1.9735117   -1.9001473
Birth       MAL-ED     PERU                           1                    NA                -0.6677778   -1.2689426   -0.0666129
Birth       MAL-ED     PERU                           0                    NA                -0.9054040   -1.0308665   -0.7799416
Birth       MAL-ED     SOUTH AFRICA                   1                    NA                -0.2795404   -0.9892343    0.4301534
Birth       MAL-ED     SOUTH AFRICA                   0                    NA                -0.5663326   -0.7764433   -0.3562220
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.0687965   -1.3218010   -0.8157920
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1981521   -1.6268465   -0.7694578
6 months    JiVitA-3   BANGLADESH                     1                    NA                -1.3128448   -1.3365030   -1.2891866
6 months    JiVitA-3   BANGLADESH                     0                    NA                -1.6196111   -1.6494231   -1.5897990
6 months    LCNI-5     MALAWI                         1                    NA                -1.6187604   -1.6958642   -1.5416565
6 months    LCNI-5     MALAWI                         0                    NA                -1.7164250   -1.8746904   -1.5581597
6 months    MAL-ED     PERU                           1                    NA                -1.2165348   -1.7554720   -0.6775976
6 months    MAL-ED     PERU                           0                    NA                -1.3114073   -1.4242937   -1.1985208
6 months    MAL-ED     SOUTH AFRICA                   1                    NA                -1.0759402   -1.4817493   -0.6701312
6 months    MAL-ED     SOUTH AFRICA                   0                    NA                -1.0387136   -1.1755410   -0.9018861
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3415012   -1.4910489   -1.1919536
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4360514   -1.6575722   -1.2145305
24 months   JiVitA-3   BANGLADESH                     1                    NA                -2.0133059   -2.0416420   -1.9849698
24 months   JiVitA-3   BANGLADESH                     0                    NA                -2.2611363   -2.2961439   -2.2261287
24 months   LCNI-5     MALAWI                         1                    NA                -1.8743865   -1.9649567   -1.7838163
24 months   LCNI-5     MALAWI                         0                    NA                -1.9195861   -2.1074097   -1.7317626
24 months   MAL-ED     PERU                           1                    NA                -2.1757143   -2.7976265   -1.5538020
24 months   MAL-ED     PERU                           0                    NA                -1.7370699   -1.8647759   -1.6093639
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                -1.7128983   -2.1428929   -1.2829037
24 months   MAL-ED     SOUTH AFRICA                   0                    NA                -1.6375785   -1.7796321   -1.4955249
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6710460   -2.8426833   -2.4994088
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5703451   -2.7981814   -2.3425089


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
Birth       JiVitA-3   BANGLADESH                     0                    1                 -0.3478391   -0.3882149   -0.3074632
Birth       MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     PERU                           0                    1                 -0.2376263   -0.8517435    0.3764910
Birth       MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     SOUTH AFRICA                   0                    1                 -0.2867922   -1.0277500    0.4541656
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1293556   -0.6280663    0.3693551
6 months    JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3   BANGLADESH                     0                    1                 -0.3067662   -0.3433348   -0.2701976
6 months    LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5     MALAWI                         0                    1                 -0.0976647   -0.2738750    0.0785456
6 months    MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     PERU                           0                    1                 -0.0948725   -0.6455191    0.4557742
6 months    MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     SOUTH AFRICA                   0                    1                  0.0372266   -0.3917442    0.4661975
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0945501   -0.3613190    0.1722188
24 months   JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3   BANGLADESH                     0                    1                 -0.2478304   -0.2919587   -0.2037022
24 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5     MALAWI                         0                    1                 -0.0451996   -0.2537776    0.1633784
24 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     PERU                           0                    1                  0.4386444   -0.1962443    1.0735331
24 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     SOUTH AFRICA                   0                    1                  0.0753198   -0.3774811    0.5281206
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1007009   -0.1849802    0.3863820


### Parameter: PAR


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                -0.0006931   -0.0017126   0.0003264
Birth       MAL-ED     PERU                           1                    NA                -0.2272947   -0.8147485   0.3601591
Birth       MAL-ED     SOUTH AFRICA                   1                    NA                -0.2728554   -0.9204977   0.3747868
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0470858   -0.2085283   0.1143567
6 months    JiVitA-3   BANGLADESH                     1                    NA                -0.0003641   -0.0012712   0.0005429
6 months    LCNI-5     MALAWI                         1                    NA                -0.0239357   -0.0551879   0.0073164
6 months    MAL-ED     PERU                           1                    NA                -0.0899678   -0.6204258   0.4404903
6 months    MAL-ED     SOUTH AFRICA                   1                    NA                 0.0225598   -0.3460399   0.3911596
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0243931   -0.1070498   0.0582636
24 months   JiVitA-3   BANGLADESH                     1                    NA                -0.0002532   -0.0013935   0.0008871
24 months   LCNI-5     MALAWI                         1                    NA                -0.0078783   -0.0433015   0.0275448
24 months   MAL-ED     PERU                           1                    NA                 0.4227350   -0.1892366   1.0347066
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.0657710   -0.3247074   0.4562495
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0221963   -0.0688408   0.1132334
