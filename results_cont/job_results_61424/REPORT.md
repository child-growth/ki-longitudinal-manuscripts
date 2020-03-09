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

**Intervention Variable:** predfeed3

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

agecat      studyid     country                        predfeed3    n_cell       n  outcome_variable 
----------  ----------  -----------------------------  ----------  -------  ------  -----------------
Birth       EE          PAKISTAN                       1                22      22  whz              
Birth       EE          PAKISTAN                       0                 0      22  whz              
Birth       GMS-Nepal   NEPAL                          1               352     422  whz              
Birth       GMS-Nepal   NEPAL                          0                70     422  whz              
Birth       JiVitA-3    BANGLADESH                     1              9638   10634  whz              
Birth       JiVitA-3    BANGLADESH                     0               996   10634  whz              
Birth       JiVitA-4    BANGLADESH                     1                89      97  whz              
Birth       JiVitA-4    BANGLADESH                     0                 8      97  whz              
Birth       MAL-ED      BANGLADESH                     1               164     202  whz              
Birth       MAL-ED      BANGLADESH                     0                38     202  whz              
Birth       MAL-ED      BRAZIL                         1                23      55  whz              
Birth       MAL-ED      BRAZIL                         0                32      55  whz              
Birth       MAL-ED      INDIA                          1                27      39  whz              
Birth       MAL-ED      INDIA                          0                12      39  whz              
Birth       MAL-ED      NEPAL                          1                14      25  whz              
Birth       MAL-ED      NEPAL                          0                11      25  whz              
Birth       MAL-ED      PERU                           1               145     218  whz              
Birth       MAL-ED      PERU                           0                73     218  whz              
Birth       MAL-ED      SOUTH AFRICA                   1                33      99  whz              
Birth       MAL-ED      SOUTH AFRICA                   0                66      99  whz              
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                24      95  whz              
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                71      95  whz              
6 months    EE          PAKISTAN                       1                39      39  whz              
6 months    EE          PAKISTAN                       0                 0      39  whz              
6 months    GMS-Nepal   NEPAL                          1               367     441  whz              
6 months    GMS-Nepal   NEPAL                          0                74     441  whz              
6 months    JiVitA-3    BANGLADESH                     1              8500    9310  whz              
6 months    JiVitA-3    BANGLADESH                     0               810    9310  whz              
6 months    JiVitA-4    BANGLADESH                     1                76      88  whz              
6 months    JiVitA-4    BANGLADESH                     0                12      88  whz              
6 months    MAL-ED      BANGLADESH                     1               191     233  whz              
6 months    MAL-ED      BANGLADESH                     0                42     233  whz              
6 months    MAL-ED      BRAZIL                         1                93     187  whz              
6 months    MAL-ED      BRAZIL                         0                94     187  whz              
6 months    MAL-ED      INDIA                          1               147     210  whz              
6 months    MAL-ED      INDIA                          0                63     210  whz              
6 months    MAL-ED      NEPAL                          1               113     227  whz              
6 months    MAL-ED      NEPAL                          0               114     227  whz              
6 months    MAL-ED      PERU                           1               176     270  whz              
6 months    MAL-ED      PERU                           0                94     270  whz              
6 months    MAL-ED      SOUTH AFRICA                   1                63     244  whz              
6 months    MAL-ED      SOUTH AFRICA                   0               181     244  whz              
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                64     212  whz              
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               148     212  whz              
24 months   EE          PAKISTAN                       1                20      20  whz              
24 months   EE          PAKISTAN                       0                 0      20  whz              
24 months   GMS-Nepal   NEPAL                          1               322     384  whz              
24 months   GMS-Nepal   NEPAL                          0                62     384  whz              
24 months   JiVitA-3    BANGLADESH                     1              4417    4833  whz              
24 months   JiVitA-3    BANGLADESH                     0               416    4833  whz              
24 months   JiVitA-4    BANGLADESH                     1               135     150  whz              
24 months   JiVitA-4    BANGLADESH                     0                15     150  whz              
24 months   MAL-ED      BANGLADESH                     1               168     205  whz              
24 months   MAL-ED      BANGLADESH                     0                37     205  whz              
24 months   MAL-ED      BRAZIL                         1                79     152  whz              
24 months   MAL-ED      BRAZIL                         0                73     152  whz              
24 months   MAL-ED      INDIA                          1               139     202  whz              
24 months   MAL-ED      INDIA                          0                63     202  whz              
24 months   MAL-ED      NEPAL                          1               110     220  whz              
24 months   MAL-ED      NEPAL                          0               110     220  whz              
24 months   MAL-ED      PERU                           1               131     198  whz              
24 months   MAL-ED      PERU                           0                67     198  whz              
24 months   MAL-ED      SOUTH AFRICA                   1                60     228  whz              
24 months   MAL-ED      SOUTH AFRICA                   0               168     228  whz              
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                54     184  whz              
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               130     184  whz              


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: EE, country: PAKISTAN

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




# Results Detail

## Results Plots
![](/tmp/0d19dcdf-7c4c-422f-80cc-b7ef2611c415/de87c1e0-4860-45c7-81cd-49f9a22a0f0d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0d19dcdf-7c4c-422f-80cc-b7ef2611c415/de87c1e0-4860-45c7-81cd-49f9a22a0f0d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0d19dcdf-7c4c-422f-80cc-b7ef2611c415/de87c1e0-4860-45c7-81cd-49f9a22a0f0d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -1.1129777   -1.2319132   -0.9940422
Birth       GMS-Nepal   NEPAL                          0                    NA                -1.0690108   -1.2767898   -0.8612318
Birth       JiVitA-3    BANGLADESH                     1                    NA                -0.7830301   -0.8062632   -0.7597970
Birth       JiVitA-3    BANGLADESH                     0                    NA                -0.7485629   -0.8144357   -0.6826901
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.4156180   -0.6383645   -0.1928714
Birth       JiVitA-4    BANGLADESH                     0                    NA                -0.6475000   -1.0569566   -0.2380434
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.9066977   -1.0711866   -0.7422088
Birth       MAL-ED      BANGLADESH                     0                    NA                -1.0772529   -1.4336488   -0.7208570
Birth       MAL-ED      BRAZIL                         1                    NA                 0.6025874    0.0944321    1.1107426
Birth       MAL-ED      BRAZIL                         0                    NA                 0.3029582   -0.1549762    0.7608925
Birth       MAL-ED      INDIA                          1                    NA                -0.9988493   -1.3475148   -0.6501839
Birth       MAL-ED      INDIA                          0                    NA                -0.8546007   -1.3132105   -0.3959909
Birth       MAL-ED      NEPAL                          1                    NA                -1.1413779   -1.5956790   -0.6870767
Birth       MAL-ED      NEPAL                          0                    NA                -0.7599400   -1.2473832   -0.2724967
Birth       MAL-ED      PERU                           1                    NA                 0.0203488   -0.1311876    0.1718852
Birth       MAL-ED      PERU                           0                    NA                -0.1643487   -0.3782327    0.0495353
Birth       MAL-ED      SOUTH AFRICA                   1                    NA                -0.2402753   -0.6512075    0.1706569
Birth       MAL-ED      SOUTH AFRICA                   0                    NA                -0.0939508   -0.3663372    0.1784355
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.2771951    0.9155918    1.6387984
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6149274    0.3678259    0.8620289
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.6314120   -0.7413144   -0.5215097
6 months    GMS-Nepal   NEPAL                          0                    NA                -0.5637039   -0.8175397   -0.3098681
6 months    JiVitA-3    BANGLADESH                     1                    NA                -0.6064780   -0.6320279   -0.5809281
6 months    JiVitA-3    BANGLADESH                     0                    NA                -0.5789100   -0.6569611   -0.5008589
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.4099733   -0.6367484   -0.1831983
6 months    JiVitA-4    BANGLADESH                     0                    NA                -0.5354296   -0.9100483   -0.1608110
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.1087566   -0.2554227    0.0379094
6 months    MAL-ED      BANGLADESH                     0                    NA                -0.2918162   -0.6359719    0.0523395
6 months    MAL-ED      BRAZIL                         1                    NA                 1.1064791    0.8540231    1.3589351
6 months    MAL-ED      BRAZIL                         0                    NA                 0.9342627    0.6887020    1.1798235
6 months    MAL-ED      INDIA                          1                    NA                -0.7137140   -0.8617261   -0.5657019
6 months    MAL-ED      INDIA                          0                    NA                -0.7022566   -0.9928307   -0.4116824
6 months    MAL-ED      NEPAL                          1                    NA                 0.1937174   -0.0145069    0.4019416
6 months    MAL-ED      NEPAL                          0                    NA                 0.0142766   -0.1587127    0.1872659
6 months    MAL-ED      PERU                           1                    NA                 1.0374895    0.8886506    1.1863283
6 months    MAL-ED      PERU                           0                    NA                 1.0424904    0.8283143    1.2566665
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                 0.6533184    0.3457810    0.9608558
6 months    MAL-ED      SOUTH AFRICA                   0                    NA                 0.5311505    0.3551512    0.7071497
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8360689    0.5788407    1.0932971
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3958542    0.2344175    0.5572909
24 months   GMS-Nepal   NEPAL                          1                    NA                -1.1528961   -1.2657737   -1.0400184
24 months   GMS-Nepal   NEPAL                          0                    NA                -1.0508592   -1.2954953   -0.8062232
24 months   JiVitA-3    BANGLADESH                     1                    NA                -1.3147283   -1.3466386   -1.2828180
24 months   JiVitA-3    BANGLADESH                     0                    NA                -1.2754908   -1.3945957   -1.1563858
24 months   JiVitA-4    BANGLADESH                     1                    NA                -1.0269559   -1.1896285   -0.8642834
24 months   JiVitA-4    BANGLADESH                     0                    NA                -1.1581894   -1.5919108   -0.7244679
24 months   MAL-ED      BANGLADESH                     1                    NA                -0.8203016   -0.9600185   -0.6805848
24 months   MAL-ED      BANGLADESH                     0                    NA                -0.7471522   -1.0065627   -0.4877417
24 months   MAL-ED      BRAZIL                         1                    NA                 0.3228179    0.0351557    0.6104800
24 months   MAL-ED      BRAZIL                         0                    NA                 0.7245946    0.3945942    1.0545951
24 months   MAL-ED      INDIA                          1                    NA                -0.9576461   -1.0983443   -0.8169479
24 months   MAL-ED      INDIA                          0                    NA                -0.9396738   -1.1639445   -0.7154032
24 months   MAL-ED      NEPAL                          1                    NA                -0.3320815   -0.5060605   -0.1581024
24 months   MAL-ED      NEPAL                          0                    NA                -0.4315239   -0.5878231   -0.2752248
24 months   MAL-ED      PERU                           1                    NA                 0.0850820   -0.0464541    0.2166182
24 months   MAL-ED      PERU                           0                    NA                 0.2359357    0.0099292    0.4619422
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.5647008    0.3135676    0.8158341
24 months   MAL-ED      SOUTH AFRICA                   0                    NA                 0.3558141    0.2183358    0.4932924
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0889665   -0.1165084    0.2944414
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0241136   -0.1480091    0.1962362


### Parameter: E(Y)


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          NA                   NA                -1.0991706   -1.2073693   -0.9909719
Birth       JiVitA-3    BANGLADESH                     NA                   NA                -0.7798636   -0.8022140   -0.7575133
Birth       JiVitA-4    BANGLADESH                     NA                   NA                -0.4347423   -0.6441144   -0.2253701
Birth       MAL-ED      BANGLADESH                     NA                   NA                -0.9411386   -1.0895370   -0.7927402
Birth       MAL-ED      BRAZIL                         NA                   NA                 0.4316364    0.0969688    0.7663039
Birth       MAL-ED      INDIA                          NA                   NA                -0.9779487   -1.2664810   -0.6894164
Birth       MAL-ED      NEPAL                          NA                   NA                -0.7944000   -1.1625222   -0.4262778
Birth       MAL-ED      PERU                           NA                   NA                -0.0335321   -0.1564905    0.0894263
Birth       MAL-ED      SOUTH AFRICA                   NA                   NA                -0.1588889   -0.3845288    0.0667510
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7996842    0.5874808    1.0118876
6 months    GMS-Nepal   NEPAL                          NA                   NA                -0.6198791   -0.7206518   -0.5191063
6 months    JiVitA-3    BANGLADESH                     NA                   NA                -0.6040977   -0.6286619   -0.5795335
6 months    JiVitA-4    BANGLADESH                     NA                   NA                -0.4110227   -0.6122701   -0.2097753
6 months    MAL-ED      BANGLADESH                     NA                   NA                -0.1304936   -0.2625419    0.0015547
6 months    MAL-ED      BRAZIL                         NA                   NA                 0.9754144    0.7990651    1.1517638
6 months    MAL-ED      INDIA                          NA                   NA                -0.7185992   -0.8491469   -0.5880515
6 months    MAL-ED      NEPAL                          NA                   NA                 0.1041483   -0.0311352    0.2394318
6 months    MAL-ED      PERU                           NA                   NA                 1.0514136    0.9289176    1.1739096
6 months    MAL-ED      SOUTH AFRICA                   NA                   NA                 0.5564071    0.4055220    0.7072922
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5257626    0.3871543    0.6643709
24 months   GMS-Nepal   NEPAL                          NA                   NA                -1.1396441   -1.2416403   -1.0376479
24 months   JiVitA-3    BANGLADESH                     NA                   NA                -1.3109518   -1.3423299   -1.2795737
24 months   JiVitA-4    BANGLADESH                     NA                   NA                -1.0096000   -1.1619164   -0.8572836
24 months   MAL-ED      BANGLADESH                     NA                   NA                -0.8076829   -0.9296166   -0.6857493
24 months   MAL-ED      BRAZIL                         NA                   NA                 0.4981140    0.2760418    0.7201863
24 months   MAL-ED      INDIA                          NA                   NA                -0.9516832   -1.0703961   -0.8329703
24 months   MAL-ED      NEPAL                          NA                   NA                -0.3790455   -0.4958857   -0.2622052
24 months   MAL-ED      PERU                           NA                   NA                 0.1176052   -0.0015211    0.2367315
24 months   MAL-ED      SOUTH AFRICA                   NA                   NA                 0.4120797    0.2900939    0.5340654
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0495743   -0.0857535    0.1849021


### Parameter: ATE


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal   NEPAL                          0                    1                  0.0439669   -0.1848661    0.2727999
Birth       JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH                     0                    1                  0.0344672   -0.0337801    0.1027145
Birth       JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH                     0                    1                 -0.2318820   -0.6871466    0.2233826
Birth       MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                 -0.1705552   -0.5640342    0.2229238
Birth       MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL                         0                    1                 -0.2996292   -0.9893496    0.3900912
Birth       MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      INDIA                          0                    1                  0.1442486   -0.4414622    0.7299595
Birth       MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      NEPAL                          0                    1                  0.3814379   -0.2914120    1.0542878
Birth       MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU                           0                    1                 -0.1846975   -0.4477508    0.0783558
Birth       MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      SOUTH AFRICA                   0                    1                  0.1463245   -0.3472904    0.6399393
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.6622677   -1.1035752   -0.2209602
6 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                  0.0677082   -0.2073587    0.3427750
6 months    JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH                     0                    1                  0.0275680   -0.0535223    0.1086582
6 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH                     0                    1                 -0.1254563   -0.5613163    0.3104038
6 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                 -0.1830596   -0.5581319    0.1920127
6 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL                         0                    1                 -0.1722163   -0.5276444    0.1832117
6 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA                          0                    1                  0.0114575   -0.3186029    0.3415178
6 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL                          0                    1                 -0.1794407   -0.4502214    0.0913399
6 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU                           0                    1                  0.0050009   -0.2553328    0.2653347
6 months    MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      SOUTH AFRICA                   0                    1                 -0.1221679   -0.4785780    0.2342421
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.4402147   -0.7450836   -0.1353458
24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                  0.1020368   -0.1675752    0.3716489
24 months   JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH                     0                    1                  0.0392376   -0.0825606    0.1610357
24 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH                     0                    1                 -0.1312334   -0.5973196    0.3348528
24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                  0.0731495   -0.2239681    0.3702670
24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL                         0                    1                  0.4017768   -0.0371457    0.8406992
24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA                          0                    1                  0.0179723   -0.2467992    0.2827438
24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL                          0                    1                 -0.0994424   -0.3320763    0.1331914
24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU                           0                    1                  0.1508536   -0.1053463    0.4070535
24 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      SOUTH AFRICA                   0                    1                 -0.2088867   -0.4946117    0.0768383
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0648529   -0.3333092    0.2036033


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                 0.0138071   -0.0245459    0.0521601
Birth       JiVitA-3    BANGLADESH                     1                    NA                 0.0031665   -0.0033260    0.0096590
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.0191243   -0.0615870    0.0233385
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.0344409   -0.1054056    0.0365238
Birth       MAL-ED      BRAZIL                         1                    NA                -0.1709510   -0.5720579    0.2301558
Birth       MAL-ED      INDIA                          1                    NA                 0.0209006   -0.1771441    0.2189454
Birth       MAL-ED      NEPAL                          1                    NA                 0.3469779    0.0720945    0.6218613
Birth       MAL-ED      PERU                           1                    NA                -0.0538809   -0.1425195    0.0347577
Birth       MAL-ED      SOUTH AFRICA                   1                    NA                 0.0813864   -0.2504042    0.4131771
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4775109   -0.8121224   -0.1428993
6 months    GMS-Nepal   NEPAL                          1                    NA                 0.0115330   -0.0333071    0.0563730
6 months    JiVitA-3    BANGLADESH                     1                    NA                 0.0023802   -0.0046373    0.0093978
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.0010494   -0.0566256    0.0545268
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.0217369   -0.0860775    0.0426036
6 months    MAL-ED      BRAZIL                         1                    NA                -0.1310646   -0.3109251    0.0487958
6 months    MAL-ED      INDIA                          1                    NA                -0.0048852   -0.1010765    0.0913061
6 months    MAL-ED      NEPAL                          1                    NA                -0.0895691   -0.2285569    0.0494188
6 months    MAL-ED      PERU                           1                    NA                 0.0139241   -0.0776972    0.1055455
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                -0.0969113   -0.3786699    0.1848473
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3103063   -0.5255952   -0.0950174
24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0132520   -0.0296690    0.0561730
24 months   JiVitA-3    BANGLADESH                     1                    NA                 0.0037765   -0.0064814    0.0140345
24 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0173559   -0.0290430    0.0637549
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0126187   -0.0404095    0.0656469
24 months   MAL-ED      BRAZIL                         1                    NA                 0.1752962   -0.0476761    0.3982685
24 months   MAL-ED      INDIA                          1                    NA                 0.0059629   -0.0778875    0.0898134
24 months   MAL-ED      NEPAL                          1                    NA                -0.0469640   -0.1632761    0.0693482
24 months   MAL-ED      PERU                           1                    NA                 0.0325232   -0.0564277    0.1214741
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                -0.1526212   -0.3724034    0.0671611
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0393922   -0.2296278    0.1508433
