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
![](/tmp/e11f7385-7491-40f0-b98a-26bce162a1d4/fe939d31-8254-46ca-871e-790902ee1b72/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e11f7385-7491-40f0-b98a-26bce162a1d4/fe939d31-8254-46ca-871e-790902ee1b72/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e11f7385-7491-40f0-b98a-26bce162a1d4/fe939d31-8254-46ca-871e-790902ee1b72/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                -1.5889965   -1.6086623   -1.5693306
Birth       JiVitA-3   BANGLADESH                     0                    NA                -1.9472966   -1.9831472   -1.9114460
Birth       MAL-ED     PERU                           1                    NA                -0.6677778   -1.2689426   -0.0666129
Birth       MAL-ED     PERU                           0                    NA                -0.9054040   -1.0308665   -0.7799416
Birth       MAL-ED     SOUTH AFRICA                   1                    NA                -0.1130146   -0.9016098    0.6755805
Birth       MAL-ED     SOUTH AFRICA                   0                    NA                -0.5688438   -0.7797085   -0.3579791
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.0528125   -1.2971296   -0.8084954
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.2593260   -1.7134727   -0.8051792
6 months    JiVitA-3   BANGLADESH                     1                    NA                -1.3128530   -1.3365108   -1.2891952
6 months    JiVitA-3   BANGLADESH                     0                    NA                -1.5919462   -1.6211703   -1.5627221
6 months    LCNI-5     MALAWI                         1                    NA                -1.6190000   -1.6960442   -1.5419558
6 months    LCNI-5     MALAWI                         0                    NA                -1.7233006   -1.8811486   -1.5654526
6 months    MAL-ED     PERU                           1                    NA                -1.2009819   -1.7440560   -0.6579077
6 months    MAL-ED     PERU                           0                    NA                -1.3115277   -1.4244235   -1.1986320
6 months    MAL-ED     SOUTH AFRICA                   1                    NA                -1.0660539   -1.4561797   -0.6759282
6 months    MAL-ED     SOUTH AFRICA                   0                    NA                -1.0440017   -1.1807545   -0.9072489
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3375743   -1.4867351   -1.1884134
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4092954   -1.6187644   -1.1998264
24 months   JiVitA-3   BANGLADESH                     1                    NA                -2.0132737   -2.0416087   -1.9849387
24 months   JiVitA-3   BANGLADESH                     0                    NA                -2.2630937   -2.2991470   -2.2270404
24 months   LCNI-5     MALAWI                         1                    NA                -1.8743142   -1.9649839   -1.7836445
24 months   LCNI-5     MALAWI                         0                    NA                -1.9424445   -2.1275165   -1.7573724
24 months   MAL-ED     PERU                           1                    NA                -2.1757143   -2.7976265   -1.5538020
24 months   MAL-ED     PERU                           0                    NA                -1.7370699   -1.8647759   -1.6093639
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                -1.7232096   -2.1675743   -1.2788448
24 months   MAL-ED     SOUTH AFRICA                   0                    NA                -1.6342882   -1.7765105   -1.4920658
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6687426   -2.8390059   -2.4984794
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5792121   -2.8019192   -2.3565050


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
Birth       JiVitA-3   BANGLADESH                     0                    1                 -0.3583001   -0.3979408   -0.3186594
Birth       MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     PERU                           0                    1                 -0.2376263   -0.8517435    0.3764910
Birth       MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     SOUTH AFRICA                   0                    1                 -0.4558292   -1.2740722    0.3624139
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2065135   -0.7229274    0.3099005
6 months    JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3   BANGLADESH                     0                    1                 -0.2790932   -0.3149762   -0.2432102
6 months    LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5     MALAWI                         0                    1                 -0.1043006   -0.2800381    0.0714369
6 months    MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     PERU                           0                    1                 -0.1105459   -0.6652678    0.4441760
6 months    MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     SOUTH AFRICA                   0                    1                  0.0220522   -0.3922837    0.4363881
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0717211   -0.3269062    0.1834639
24 months   JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3   BANGLADESH                     0                    1                 -0.2498200   -0.2947621   -0.2048778
24 months   LCNI-5     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5     MALAWI                         0                    1                 -0.0681303   -0.2742561    0.1379956
24 months   MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     PERU                           0                    1                  0.4386444   -0.1962443    1.0735331
24 months   MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     SOUTH AFRICA                   0                    1                  0.0889214   -0.3769606    0.5548034
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0895305   -0.1906812    0.3697423


### Parameter: PAR


agecat      studyid    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       JiVitA-3   BANGLADESH                     1                    NA                -0.0006870   -0.0017090   0.0003350
Birth       MAL-ED     PERU                           1                    NA                -0.2272947   -0.8147485   0.3601591
Birth       MAL-ED     SOUTH AFRICA                   1                    NA                -0.4393812   -1.1674004   0.2886380
Birth       MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0630698   -0.2199047   0.0937650
6 months    JiVitA-3   BANGLADESH                     1                    NA                -0.0003560   -0.0012541   0.0005422
6 months    LCNI-5     MALAWI                         1                    NA                -0.0236961   -0.0548866   0.0074944
6 months    MAL-ED     PERU                           1                    NA                -0.1055207   -0.6401032   0.4290618
6 months    MAL-ED     SOUTH AFRICA                   1                    NA                 0.0126735   -0.3406347   0.3659818
6 months    MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0283200   -0.1093064   0.0526664
24 months   JiVitA-3   BANGLADESH                     1                    NA                -0.0002853   -0.0014384   0.0008677
24 months   LCNI-5     MALAWI                         1                    NA                -0.0079506   -0.0434510   0.0275498
24 months   MAL-ED     PERU                           1                    NA                 0.4227350   -0.1892366   1.0347066
24 months   MAL-ED     SOUTH AFRICA                   1                    NA                 0.0760823   -0.3282690   0.4804335
24 months   MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0198929   -0.0700019   0.1097876
