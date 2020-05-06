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
![](/tmp/8ccd4053-5ff4-4d5c-b5d0-849e73f5db53/dc47ff80-0e09-43a0-85dc-78522de1a58b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8ccd4053-5ff4-4d5c-b5d0-849e73f5db53/dc47ff80-0e09-43a0-85dc-78522de1a58b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8ccd4053-5ff4-4d5c-b5d0-849e73f5db53/dc47ff80-0e09-43a0-85dc-78522de1a58b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -1.1108883   -1.2290688   -0.9927077
Birth       GMS-Nepal   NEPAL                          0                    NA                -1.0584444   -1.2610297   -0.8558591
Birth       JiVitA-3    BANGLADESH                     1                    NA                -0.7830127   -0.8062435   -0.7597818
Birth       JiVitA-3    BANGLADESH                     0                    NA                -0.7490507   -0.8155042   -0.6825972
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.4156180   -0.6383645   -0.1928714
Birth       JiVitA-4    BANGLADESH                     0                    NA                -0.6475000   -1.0569566   -0.2380434
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.9123817   -1.0792235   -0.7455399
Birth       MAL-ED      BANGLADESH                     0                    NA                -1.0485482   -1.4140528   -0.6830435
Birth       MAL-ED      BRAZIL                         1                    NA                 0.6045864    0.0679791    1.1411937
Birth       MAL-ED      BRAZIL                         0                    NA                 0.3236024   -0.1517094    0.7989142
Birth       MAL-ED      INDIA                          1                    NA                -1.0210164   -1.3937752   -0.6482576
Birth       MAL-ED      INDIA                          0                    NA                -0.9495282   -1.4612997   -0.4377567
Birth       MAL-ED      NEPAL                          1                    NA                -1.1990713   -1.6693986   -0.7287441
Birth       MAL-ED      NEPAL                          0                    NA                -0.8415061   -1.1895576   -0.4934547
Birth       MAL-ED      PERU                           1                    NA                 0.0325164   -0.1173585    0.1823913
Birth       MAL-ED      PERU                           0                    NA                -0.1733351   -0.3814011    0.0347310
Birth       MAL-ED      SOUTH AFRICA                   1                    NA                -0.2465589   -0.6543905    0.1612727
Birth       MAL-ED      SOUTH AFRICA                   0                    NA                -0.1214859   -0.3959131    0.1529413
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.2242798    0.8816060    1.5669535
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6144265    0.3668689    0.8619841
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.6283882   -0.7383513   -0.5184252
6 months    GMS-Nepal   NEPAL                          0                    NA                -0.5989121   -0.8474882   -0.3503361
6 months    JiVitA-3    BANGLADESH                     1                    NA                -0.6060772   -0.6316434   -0.5805109
6 months    JiVitA-3    BANGLADESH                     0                    NA                -0.5901458   -0.6678290   -0.5124626
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.4004002   -0.6288177   -0.1719827
6 months    JiVitA-4    BANGLADESH                     0                    NA                -0.4322224   -0.8300141   -0.0344308
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.1102217   -0.2568266    0.0363833
6 months    MAL-ED      BANGLADESH                     0                    NA                -0.2019694   -0.5435048    0.1395660
6 months    MAL-ED      BRAZIL                         1                    NA                 1.0616644    0.8071568    1.3161719
6 months    MAL-ED      BRAZIL                         0                    NA                 0.8957215    0.6510789    1.1403641
6 months    MAL-ED      INDIA                          1                    NA                -0.7114466   -0.8585538   -0.5643393
6 months    MAL-ED      INDIA                          0                    NA                -0.7357182   -1.0079756   -0.4634607
6 months    MAL-ED      NEPAL                          1                    NA                 0.1859717   -0.0210648    0.3930081
6 months    MAL-ED      NEPAL                          0                    NA                 0.0149211   -0.1549050    0.1847472
6 months    MAL-ED      PERU                           1                    NA                 1.0402779    0.8919601    1.1885957
6 months    MAL-ED      PERU                           0                    NA                 1.0811176    0.8651332    1.2971020
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                 0.6379559    0.3398414    0.9360705
6 months    MAL-ED      SOUTH AFRICA                   0                    NA                 0.5266489    0.3533797    0.6999181
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8241001    0.5698710    1.0783293
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3988022    0.2375094    0.5600950
24 months   GMS-Nepal   NEPAL                          1                    NA                -1.1529693   -1.2657316   -1.0402069
24 months   GMS-Nepal   NEPAL                          0                    NA                -1.0385411   -1.2807070   -0.7963751
24 months   JiVitA-3    BANGLADESH                     1                    NA                -1.3145514   -1.3463748   -1.2827280
24 months   JiVitA-3    BANGLADESH                     0                    NA                -1.2795318   -1.3974983   -1.1615653
24 months   JiVitA-4    BANGLADESH                     1                    NA                -1.0132073   -1.1766155   -0.8497990
24 months   JiVitA-4    BANGLADESH                     0                    NA                -0.5572826   -1.0687333   -0.0458319
24 months   MAL-ED      BANGLADESH                     1                    NA                -0.8281492   -0.9675889   -0.6887095
24 months   MAL-ED      BANGLADESH                     0                    NA                -0.7048290   -0.9904205   -0.4192376
24 months   MAL-ED      BRAZIL                         1                    NA                 0.2776979   -0.0073276    0.5627233
24 months   MAL-ED      BRAZIL                         0                    NA                 0.7084158    0.3781024    1.0387292
24 months   MAL-ED      INDIA                          1                    NA                -0.9595646   -1.0994188   -0.8197104
24 months   MAL-ED      INDIA                          0                    NA                -0.9398779   -1.1693935   -0.7103622
24 months   MAL-ED      NEPAL                          1                    NA                -0.3413975   -0.5158755   -0.1669194
24 months   MAL-ED      NEPAL                          0                    NA                -0.4319979   -0.5871223   -0.2768734
24 months   MAL-ED      PERU                           1                    NA                 0.0723696   -0.0606603    0.2053995
24 months   MAL-ED      PERU                           0                    NA                 0.2287748   -0.0067433    0.4642929
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.5558419    0.2928414    0.8188425
24 months   MAL-ED      SOUTH AFRICA                   0                    NA                 0.3659963    0.2279726    0.5040200
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1470763   -0.0583267    0.3524792
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0242358   -0.1485811    0.1970527


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
Birth       GMS-Nepal   NEPAL                          0                    1                  0.0524439   -0.1674898    0.2723776
Birth       JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH                     0                    1                  0.0339619   -0.0350096    0.1029335
Birth       JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH                     0                    1                 -0.2318820   -0.6871466    0.2233826
Birth       MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                 -0.1361664   -0.5377854    0.2654526
Birth       MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL                         0                    1                 -0.2809840   -1.0040359    0.4420679
Birth       MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      INDIA                          0                    1                  0.0714882   -0.5921246    0.7351010
Birth       MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      NEPAL                          0                    1                  0.3575652   -0.2764398    0.9915702
Birth       MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU                           0                    1                 -0.2058515   -0.4625436    0.0508407
Birth       MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      SOUTH AFRICA                   0                    1                  0.1250730   -0.3691685    0.6193145
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.6098532   -1.0372263   -0.1824801
6 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                  0.0294761   -0.2406795    0.2996316
6 months    JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH                     0                    1                  0.0159314   -0.0647738    0.0966366
6 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH                     0                    1                 -0.0318222   -0.4885357    0.4248912
6 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                 -0.0917477   -0.4662699    0.2827744
6 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL                         0                    1                 -0.1659429   -0.5199693    0.1880836
6 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA                          0                    1                 -0.0242716   -0.3356437    0.2871005
6 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL                          0                    1                 -0.1710506   -0.4396049    0.0975038
6 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU                           0                    1                  0.0408397   -0.2209049    0.3025843
6 months    MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      SOUTH AFRICA                   0                    1                 -0.1113071   -0.4561580    0.2335439
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.4252979   -0.7268035   -0.1237923
24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                  0.1144282   -0.1528654    0.3817217
24 months   JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH                     0                    1                  0.0350196   -0.0851439    0.1551831
24 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH                     0                    1                  0.4559246   -0.0852037    0.9970530
24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                  0.1233202   -0.2047665    0.4514069
24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL                         0                    1                  0.4307180   -0.0039348    0.8653707
24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA                          0                    1                  0.0196867   -0.2497579    0.2891314
24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL                          0                    1                 -0.0906004   -0.3246694    0.1434686
24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU                           0                    1                  0.1564052   -0.1121280    0.4249384
24 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      SOUTH AFRICA                   0                    1                 -0.1898456   -0.4863889    0.1066976
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1228404   -0.3913903    0.1457094


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                 0.0117177   -0.0246345    0.0480698
Birth       JiVitA-3    BANGLADESH                     1                    NA                 0.0031490   -0.0033426    0.0096406
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.0191243   -0.0615870    0.0233385
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.0287569   -0.1003819    0.0428682
Birth       MAL-ED      BRAZIL                         1                    NA                -0.1729500   -0.5952432    0.2493432
Birth       MAL-ED      INDIA                          1                    NA                 0.0430677   -0.1799586    0.2660940
Birth       MAL-ED      NEPAL                          1                    NA                 0.4046713    0.0777786    0.7315641
Birth       MAL-ED      PERU                           1                    NA                -0.0660485   -0.1538845    0.0217875
Birth       MAL-ED      SOUTH AFRICA                   1                    NA                 0.0876700   -0.2411286    0.4164686
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4245955   -0.7469317   -0.1022594
6 months    GMS-Nepal   NEPAL                          1                    NA                 0.0085092   -0.0362303    0.0532487
6 months    JiVitA-3    BANGLADESH                     1                    NA                 0.0019794   -0.0050310    0.0089899
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.0106226   -0.0661089    0.0448638
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.0202719   -0.0857163    0.0451725
6 months    MAL-ED      BRAZIL                         1                    NA                -0.0862500   -0.2645297    0.0920298
6 months    MAL-ED      INDIA                          1                    NA                -0.0071526   -0.1002147    0.0859094
6 months    MAL-ED      NEPAL                          1                    NA                -0.0818234   -0.2196013    0.0559546
6 months    MAL-ED      PERU                           1                    NA                 0.0111357   -0.0799477    0.1022190
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                -0.0815488   -0.3537748    0.1906771
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2983376   -0.5106736   -0.0860015
24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0133252   -0.0294965    0.0561469
24 months   JiVitA-3    BANGLADESH                     1                    NA                 0.0035996   -0.0065335    0.0137327
24 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0036073   -0.0433870    0.0506015
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0204663   -0.0392944    0.0802269
24 months   MAL-ED      BRAZIL                         1                    NA                 0.2204162    0.0026852    0.4381471
24 months   MAL-ED      INDIA                          1                    NA                 0.0078814   -0.0770104    0.0927733
24 months   MAL-ED      NEPAL                          1                    NA                -0.0376480   -0.1570526    0.0817566
24 months   MAL-ED      PERU                           1                    NA                 0.0452356   -0.0460083    0.1364796
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                -0.1437623   -0.3757691    0.0882446
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0975020   -0.2881517    0.0931477
