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

**Intervention Variable:** predfeed6

**Adjustment Set:**

* arm
* sex
* month
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

agecat      studyid         country                        predfeed6    n_cell       n  outcome_variable 
----------  --------------  -----------------------------  ----------  -------  ------  -----------------
Birth       EE              PAKISTAN                       1                24      28  whz              
Birth       EE              PAKISTAN                       0                 4      28  whz              
Birth       GMS-Nepal       NEPAL                          1               390     522  whz              
Birth       GMS-Nepal       NEPAL                          0               132     522  whz              
Birth       JiVitA-3        BANGLADESH                     1              8392   10744  whz              
Birth       JiVitA-3        BANGLADESH                     0              2352   10744  whz              
Birth       JiVitA-4        BANGLADESH                     1              1802    2224  whz              
Birth       JiVitA-4        BANGLADESH                     0               422    2224  whz              
Birth       MAL-ED          BANGLADESH                     1                68     194  whz              
Birth       MAL-ED          BANGLADESH                     0               126     194  whz              
Birth       MAL-ED          BRAZIL                         1                 5      57  whz              
Birth       MAL-ED          BRAZIL                         0                52      57  whz              
Birth       MAL-ED          INDIA                          1                 4      37  whz              
Birth       MAL-ED          INDIA                          0                33      37  whz              
Birth       MAL-ED          NEPAL                          1                 3      23  whz              
Birth       MAL-ED          NEPAL                          0                20      23  whz              
Birth       MAL-ED          PERU                           1                72     208  whz              
Birth       MAL-ED          PERU                           0               136     208  whz              
Birth       MAL-ED          SOUTH AFRICA                   1                 1      90  whz              
Birth       MAL-ED          SOUTH AFRICA                   0                89      90  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     105  whz              
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               105     105  whz              
6 months    EE              PAKISTAN                       1                43      48  whz              
6 months    EE              PAKISTAN                       0                 5      48  whz              
6 months    GMS-Nepal       NEPAL                          1               406     547  whz              
6 months    GMS-Nepal       NEPAL                          0               141     547  whz              
6 months    JiVitA-3        BANGLADESH                     1              7625    9882  whz              
6 months    JiVitA-3        BANGLADESH                     0              2257    9882  whz              
6 months    JiVitA-4        BANGLADESH                     1              3327    4275  whz              
6 months    JiVitA-4        BANGLADESH                     0               948    4275  whz              
6 months    LCNI-5          MALAWI                         1                47     272  whz              
6 months    LCNI-5          MALAWI                         0               225     272  whz              
6 months    MAL-ED          BANGLADESH                     1                84     231  whz              
6 months    MAL-ED          BANGLADESH                     0               147     231  whz              
6 months    MAL-ED          BRAZIL                         1                30     209  whz              
6 months    MAL-ED          BRAZIL                         0               179     209  whz              
6 months    MAL-ED          INDIA                          1                11     218  whz              
6 months    MAL-ED          INDIA                          0               207     218  whz              
6 months    MAL-ED          NEPAL                          1                12     225  whz              
6 months    MAL-ED          NEPAL                          0               213     225  whz              
6 months    MAL-ED          PERU                           1                92     271  whz              
6 months    MAL-ED          PERU                           0               179     271  whz              
6 months    MAL-ED          SOUTH AFRICA                   1                 3     233  whz              
6 months    MAL-ED          SOUTH AFRICA                   0               230     233  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232  whz              
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232  whz              
6 months    SAS-FoodSuppl   INDIA                          1                 0     168  whz              
6 months    SAS-FoodSuppl   INDIA                          0               168     168  whz              
24 months   EE              PAKISTAN                       1                20      23  whz              
24 months   EE              PAKISTAN                       0                 3      23  whz              
24 months   GMS-Nepal       NEPAL                          1               355     469  whz              
24 months   GMS-Nepal       NEPAL                          0               114     469  whz              
24 months   JiVitA-3        BANGLADESH                     1              3909    5067  whz              
24 months   JiVitA-3        BANGLADESH                     0              1158    5067  whz              
24 months   JiVitA-4        BANGLADESH                     1              3278    4184  whz              
24 months   JiVitA-4        BANGLADESH                     0               906    4184  whz              
24 months   LCNI-5          MALAWI                         1                34     184  whz              
24 months   LCNI-5          MALAWI                         0               150     184  whz              
24 months   MAL-ED          BANGLADESH                     1                76     205  whz              
24 months   MAL-ED          BANGLADESH                     0               129     205  whz              
24 months   MAL-ED          BRAZIL                         1                25     169  whz              
24 months   MAL-ED          BRAZIL                         0               144     169  whz              
24 months   MAL-ED          INDIA                          1                11     209  whz              
24 months   MAL-ED          INDIA                          0               198     209  whz              
24 months   MAL-ED          NEPAL                          1                12     219  whz              
24 months   MAL-ED          NEPAL                          0               207     219  whz              
24 months   MAL-ED          PERU                           1                68     201  whz              
24 months   MAL-ED          PERU                           0               133     201  whz              
24 months   MAL-ED          SOUTH AFRICA                   1                 3     216  whz              
24 months   MAL-ED          SOUTH AFRICA                   0               213     216  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202  whz              
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202  whz              


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
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
![](/tmp/fe0b3740-2fd5-499c-8185-febdc2608cc3/f2ffcd97-0285-4aca-82da-802b27284d75/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fe0b3740-2fd5-499c-8185-febdc2608cc3/f2ffcd97-0285-4aca-82da-802b27284d75/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/fe0b3740-2fd5-499c-8185-febdc2608cc3/f2ffcd97-0285-4aca-82da-802b27284d75/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -1.1009061   -1.2129349   -0.9888774
Birth       GMS-Nepal   NEPAL        0                    NA                -1.0732815   -1.2308572   -0.9157058
Birth       JiVitA-3    BANGLADESH   1                    NA                -0.7867966   -0.8115839   -0.7620092
Birth       JiVitA-3    BANGLADESH   0                    NA                -0.7594556   -0.8031061   -0.7158051
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.6761551   -0.7311396   -0.6211706
Birth       JiVitA-4    BANGLADESH   0                    NA                -0.7542726   -0.8931296   -0.6154156
Birth       MAL-ED      BANGLADESH   1                    NA                -0.8688889   -1.1008715   -0.6369063
Birth       MAL-ED      BANGLADESH   0                    NA                -1.0359198   -1.2428888   -0.8289508
Birth       MAL-ED      BRAZIL       1                    NA                 0.0220000   -1.4978207    1.5418207
Birth       MAL-ED      BRAZIL       0                    NA                 0.5069231    0.1803892    0.8334570
Birth       MAL-ED      PERU         1                    NA                -0.0177383   -0.2312898    0.1958132
Birth       MAL-ED      PERU         0                    NA                -0.0816871   -0.2438311    0.0804570
6 months    EE          PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    EE          PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    GMS-Nepal   NEPAL        1                    NA                -0.5767833   -0.6789862   -0.4745804
6 months    GMS-Nepal   NEPAL        0                    NA                -0.6786351   -0.8480851   -0.5091850
6 months    JiVitA-3    BANGLADESH   1                    NA                -0.6028686   -0.6299218   -0.5758154
6 months    JiVitA-3    BANGLADESH   0                    NA                -0.5888533   -0.6344450   -0.5432617
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.3484007   -0.3930216   -0.3037798
6 months    JiVitA-4    BANGLADESH   0                    NA                -0.5546069   -0.6371096   -0.4721042
6 months    LCNI-5      MALAWI       1                    NA                 0.3789154    0.0505173    0.7073135
6 months    LCNI-5      MALAWI       0                    NA                 0.3960472    0.2692086    0.5228857
6 months    MAL-ED      BANGLADESH   1                    NA                -0.1332545   -0.3658867    0.0993776
6 months    MAL-ED      BANGLADESH   0                    NA                -0.1145366   -0.2801156    0.0510424
6 months    MAL-ED      BRAZIL       1                    NA                 1.3281850    0.8855387    1.7708314
6 months    MAL-ED      BRAZIL       0                    NA                 0.8889256    0.7143315    1.0635196
6 months    MAL-ED      INDIA        1                    NA                 0.1856285   -0.3210052    0.6922622
6 months    MAL-ED      INDIA        0                    NA                -0.7421500   -0.8756481   -0.6086519
6 months    MAL-ED      NEPAL        1                    NA                 0.0039859   -0.6389389    0.6469107
6 months    MAL-ED      NEPAL        0                    NA                 0.1151664   -0.0238953    0.2542281
6 months    MAL-ED      PERU         1                    NA                 1.1537688    0.9499227    1.3576150
6 months    MAL-ED      PERU         0                    NA                 0.9755708    0.8225578    1.1285837
24 months   GMS-Nepal   NEPAL        1                    NA                -1.0918058   -1.1913910   -0.9922205
24 months   GMS-Nepal   NEPAL        0                    NA                -1.2986678   -1.5090675   -1.0882681
24 months   JiVitA-3    BANGLADESH   1                    NA                -1.3210590   -1.3557647   -1.2863534
24 months   JiVitA-3    BANGLADESH   0                    NA                -1.2735767   -1.3355372   -1.2116162
24 months   JiVitA-4    BANGLADESH   1                    NA                -1.2243349   -1.2649993   -1.1836705
24 months   JiVitA-4    BANGLADESH   0                    NA                -1.2245296   -1.3043503   -1.1447090
24 months   LCNI-5      MALAWI       1                    NA                -0.0968039   -0.4148405    0.2212327
24 months   LCNI-5      MALAWI       0                    NA                -0.0631435   -0.2244322    0.0981451
24 months   MAL-ED      BANGLADESH   1                    NA                -0.9098234   -1.0959584   -0.7236884
24 months   MAL-ED      BANGLADESH   0                    NA                -0.7602873   -0.9216562   -0.5989184
24 months   MAL-ED      BRAZIL       1                    NA                 0.5941284   -0.0057525    1.1940092
24 months   MAL-ED      BRAZIL       0                    NA                 0.4700401    0.2489018    0.6911784
24 months   MAL-ED      INDIA        1                    NA                -0.6944351   -1.2811308   -0.1077395
24 months   MAL-ED      INDIA        0                    NA                -0.9560713   -1.0800104   -0.8321322
24 months   MAL-ED      NEPAL        1                    NA                -0.5166627   -1.1167435    0.0834181
24 months   MAL-ED      NEPAL        0                    NA                -0.3631953   -0.4830447   -0.2433459
24 months   MAL-ED      PERU         1                    NA                 0.0286932   -0.1593676    0.2167540
24 months   MAL-ED      PERU         0                    NA                 0.1407875   -0.0171529    0.2987279


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        NA                   NA                -1.1064559   -1.2034951   -1.0094168
Birth       JiVitA-3    BANGLADESH   NA                   NA                -0.7807809   -0.8030521   -0.7585097
Birth       JiVitA-4    BANGLADESH   NA                   NA                -0.6904586   -0.7435822   -0.6373351
Birth       MAL-ED      BANGLADESH   NA                   NA                -0.9755670   -1.1287016   -0.8224325
Birth       MAL-ED      BRAZIL       NA                   NA                 0.4643860    0.1360519    0.7927200
Birth       MAL-ED      PERU         NA                   NA                -0.0587981   -0.1871869    0.0695908
6 months    EE          PAKISTAN     NA                   NA                -0.6106944   -0.9239621   -0.2974268
6 months    GMS-Nepal   NEPAL        NA                   NA                -0.6009171   -0.6886356   -0.5131986
6 months    JiVitA-3    BANGLADESH   NA                   NA                -0.6001300   -0.6240378   -0.5762223
6 months    JiVitA-4    BANGLADESH   NA                   NA                -0.3968456   -0.4358721   -0.3578192
6 months    LCNI-5      MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    MAL-ED      BANGLADESH   NA                   NA                -0.1213203   -0.2539388    0.0112981
6 months    MAL-ED      BRAZIL       NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED      INDIA        NA                   NA                -0.7067317   -0.8369134   -0.5765499
6 months    MAL-ED      NEPAL        NA                   NA                 0.1091407   -0.0265536    0.2448351
6 months    MAL-ED      PERU         NA                   NA                 1.0506150    0.9281868    1.1730433
24 months   GMS-Nepal   NEPAL        NA                   NA                -1.1423525   -1.2336321   -1.0510729
24 months   JiVitA-3    BANGLADESH   NA                   NA                -1.3103375   -1.3408810   -1.2797940
24 months   JiVitA-4    BANGLADESH   NA                   NA                -1.2265320   -1.2620508   -1.1910132
24 months   LCNI-5      MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   MAL-ED      BANGLADESH   NA                   NA                -0.8169756   -0.9388013   -0.6951499
24 months   MAL-ED      BRAZIL       NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED      INDIA        NA                   NA                -0.9442584   -1.0642426   -0.8242742
24 months   MAL-ED      NEPAL        NA                   NA                -0.3674429   -0.4840752   -0.2508107
24 months   MAL-ED      PERU         NA                   NA                 0.1111982   -0.0118399    0.2342362


### Parameter: ATE


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal   NEPAL        0                    1                  0.0276246   -0.1538245    0.2090737
Birth       JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH   0                    1                  0.0273410   -0.0210239    0.0757058
Birth       JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH   0                    1                 -0.0781175   -0.2238802    0.0676452
Birth       MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH   0                    1                 -0.1670309   -0.4866213    0.1525595
Birth       MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL       0                    1                  0.4849231   -1.0695798    2.0394260
Birth       MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU         0                    1                 -0.0639488   -0.3331600    0.2052624
6 months    EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE          PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL        0                    1                 -0.1018518   -0.2986453    0.0949418
6 months    JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH   0                    1                  0.0140153   -0.0376055    0.0656361
6 months    JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH   0                    1                 -0.2062062   -0.2992755   -0.1131370
6 months    LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5      MALAWI       0                    1                  0.0171318   -0.3350303    0.3692938
6 months    MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH   0                    1                  0.0187179   -0.2683823    0.3058181
6 months    MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL       0                    1                 -0.4392595   -0.9156922    0.0371732
6 months    MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA        0                    1                 -0.9277785   -1.4528818   -0.4026753
6 months    MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL        0                    1                  0.1111805   -0.5467515    0.7691125
6 months    MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU         0                    1                 -0.1781981   -0.4339790    0.0775829
24 months   GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL        0                    1                 -0.2068620   -0.4398389    0.0261150
24 months   JiVitA-3    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH   0                    1                  0.0474823   -0.0227888    0.1177535
24 months   JiVitA-4    BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH   0                    1                 -0.0001947   -0.0877977    0.0874082
24 months   LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5      MALAWI       0                    1                  0.0336604   -0.3249290    0.3922498
24 months   MAL-ED      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH   0                    1                  0.1495361   -0.0974907    0.3965629
24 months   MAL-ED      BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL       0                    1                 -0.1240883   -0.7647145    0.5165380
24 months   MAL-ED      INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA        0                    1                 -0.2616361   -0.8615333    0.3382610
24 months   MAL-ED      NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL        0                    1                  0.1534674   -0.4585631    0.7654979
24 months   MAL-ED      PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU         0                    1                  0.1120943   -0.1316775    0.3558661


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        1                    NA                -0.0055498   -0.0508507    0.0397511
Birth       JiVitA-3    BANGLADESH   1                    NA                 0.0060157   -0.0045470    0.0165783
Birth       JiVitA-4    BANGLADESH   1                    NA                -0.0143035   -0.0418289    0.0132219
Birth       MAL-ED      BANGLADESH   1                    NA                -0.1066781   -0.3172016    0.1038454
Birth       MAL-ED      BRAZIL       1                    NA                 0.4423860   -0.9762121    1.8609840
Birth       MAL-ED      PERU         1                    NA                -0.0410598   -0.2185578    0.1364382
6 months    EE          PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    GMS-Nepal   NEPAL        1                    NA                -0.0241338   -0.0746249    0.0263572
6 months    JiVitA-3    BANGLADESH   1                    NA                 0.0027386   -0.0090713    0.0145484
6 months    JiVitA-4    BANGLADESH   1                    NA                -0.0484449   -0.0696948   -0.0271951
6 months    LCNI-5      MALAWI       1                    NA                 0.0135846   -0.2782461    0.3054152
6 months    MAL-ED      BANGLADESH   1                    NA                 0.0119342   -0.1743959    0.1982643
6 months    MAL-ED      BRAZIL       1                    NA                -0.3561077   -0.7650977    0.0528823
6 months    MAL-ED      INDIA        1                    NA                -0.8923602   -1.3954306   -0.3892898
6 months    MAL-ED      NEPAL        1                    NA                 0.1051549   -0.5173098    0.7276196
6 months    MAL-ED      PERU         1                    NA                -0.1031538   -0.2736539    0.0673462
24 months   GMS-Nepal   NEPAL        1                    NA                -0.0505467   -0.1072496    0.0061561
24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0107216   -0.0053947    0.0268378
24 months   JiVitA-4    BANGLADESH   1                    NA                -0.0021971   -0.0213103    0.0169161
24 months   LCNI-5      MALAWI       1                    NA                 0.0197387   -0.2782917    0.3177691
24 months   MAL-ED      BANGLADESH   1                    NA                 0.0928478   -0.0664132    0.2521089
24 months   MAL-ED      BRAZIL       1                    NA                -0.1315051   -0.6854118    0.4224017
24 months   MAL-ED      INDIA        1                    NA                -0.2498232   -0.8278041    0.3281577
24 months   MAL-ED      NEPAL        1                    NA                 0.1492198   -0.4368699    0.7353095
24 months   MAL-ED      PERU         1                    NA                 0.0825049   -0.0802230    0.2452329
