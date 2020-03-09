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

agecat      studyid     country                        predfeed3    n_cell       n
----------  ----------  -----------------------------  ----------  -------  ------
Birth       EE          PAKISTAN                       1                22      22
Birth       EE          PAKISTAN                       0                 0      22
Birth       GMS-Nepal   NEPAL                          1               352     422
Birth       GMS-Nepal   NEPAL                          0                70     422
Birth       JiVitA-3    BANGLADESH                     1              9638   10634
Birth       JiVitA-3    BANGLADESH                     0               996   10634
Birth       JiVitA-4    BANGLADESH                     1                89      97
Birth       JiVitA-4    BANGLADESH                     0                 8      97
Birth       MAL-ED      BANGLADESH                     1               164     202
Birth       MAL-ED      BANGLADESH                     0                38     202
Birth       MAL-ED      BRAZIL                         1                23      55
Birth       MAL-ED      BRAZIL                         0                32      55
Birth       MAL-ED      INDIA                          1                27      39
Birth       MAL-ED      INDIA                          0                12      39
Birth       MAL-ED      NEPAL                          1                14      25
Birth       MAL-ED      NEPAL                          0                11      25
Birth       MAL-ED      PERU                           1               145     218
Birth       MAL-ED      PERU                           0                73     218
Birth       MAL-ED      SOUTH AFRICA                   1                33      99
Birth       MAL-ED      SOUTH AFRICA                   0                66      99
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                24      95
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                71      95
6 months    EE          PAKISTAN                       1                39      39
6 months    EE          PAKISTAN                       0                 0      39
6 months    GMS-Nepal   NEPAL                          1               367     441
6 months    GMS-Nepal   NEPAL                          0                74     441
6 months    JiVitA-3    BANGLADESH                     1              8500    9310
6 months    JiVitA-3    BANGLADESH                     0               810    9310
6 months    JiVitA-4    BANGLADESH                     1                76      88
6 months    JiVitA-4    BANGLADESH                     0                12      88
6 months    MAL-ED      BANGLADESH                     1               191     233
6 months    MAL-ED      BANGLADESH                     0                42     233
6 months    MAL-ED      BRAZIL                         1                93     187
6 months    MAL-ED      BRAZIL                         0                94     187
6 months    MAL-ED      INDIA                          1               147     210
6 months    MAL-ED      INDIA                          0                63     210
6 months    MAL-ED      NEPAL                          1               113     227
6 months    MAL-ED      NEPAL                          0               114     227
6 months    MAL-ED      PERU                           1               176     270
6 months    MAL-ED      PERU                           0                94     270
6 months    MAL-ED      SOUTH AFRICA                   1                63     244
6 months    MAL-ED      SOUTH AFRICA                   0               181     244
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                64     212
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               148     212
24 months   EE          PAKISTAN                       1                20      20
24 months   EE          PAKISTAN                       0                 0      20
24 months   GMS-Nepal   NEPAL                          1               322     384
24 months   GMS-Nepal   NEPAL                          0                62     384
24 months   JiVitA-3    BANGLADESH                     1              4417    4833
24 months   JiVitA-3    BANGLADESH                     0               416    4833
24 months   JiVitA-4    BANGLADESH                     1               135     150
24 months   JiVitA-4    BANGLADESH                     0                15     150
24 months   MAL-ED      BANGLADESH                     1               168     205
24 months   MAL-ED      BANGLADESH                     0                37     205
24 months   MAL-ED      BRAZIL                         1                79     152
24 months   MAL-ED      BRAZIL                         0                73     152
24 months   MAL-ED      INDIA                          1               139     202
24 months   MAL-ED      INDIA                          0                63     202
24 months   MAL-ED      NEPAL                          1               110     220
24 months   MAL-ED      NEPAL                          0               110     220
24 months   MAL-ED      PERU                           1               131     198
24 months   MAL-ED      PERU                           0                67     198
24 months   MAL-ED      SOUTH AFRICA                   1                60     228
24 months   MAL-ED      SOUTH AFRICA                   0               168     228
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                54     184
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               130     184


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
![](/tmp/c927b77e-3042-407a-bf59-d93582df6743/333e0a1c-3b3a-4380-9955-2c68ee79a741/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c927b77e-3042-407a-bf59-d93582df6743/333e0a1c-3b3a-4380-9955-2c68ee79a741/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c927b77e-3042-407a-bf59-d93582df6743/333e0a1c-3b3a-4380-9955-2c68ee79a741/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                -1.1133528   -1.2325001   -0.9942056
Birth       GMS-Nepal   NEPAL                          0                    NA                -1.0854602   -1.3031762   -0.8677442
Birth       JiVitA-3    BANGLADESH                     1                    NA                -0.7830717   -0.8063082   -0.7598352
Birth       JiVitA-3    BANGLADESH                     0                    NA                -0.7519445   -0.8182622   -0.6856269
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.4156180   -0.6383645   -0.1928714
Birth       JiVitA-4    BANGLADESH                     0                    NA                -0.6475000   -1.0569566   -0.2380434
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.9080751   -1.0739952   -0.7421550
Birth       MAL-ED      BANGLADESH                     0                    NA                -1.0830962   -1.4501892   -0.7160032
Birth       MAL-ED      BRAZIL                         1                    NA                 0.5624681    0.0379559    1.0869802
Birth       MAL-ED      BRAZIL                         0                    NA                 0.3382994   -0.1260399    0.8026386
Birth       MAL-ED      INDIA                          1                    NA                -1.0188136   -1.3933709   -0.6442563
Birth       MAL-ED      INDIA                          0                    NA                -0.8617983   -1.3243833   -0.3992133
Birth       MAL-ED      NEPAL                          1                    NA                -1.0202560   -1.4787609   -0.5617510
Birth       MAL-ED      NEPAL                          0                    NA                -0.7391508   -1.1878093   -0.2904923
Birth       MAL-ED      PERU                           1                    NA                 0.0160275   -0.1350482    0.1671032
Birth       MAL-ED      PERU                           0                    NA                -0.1927331   -0.4035110    0.0180449
Birth       MAL-ED      SOUTH AFRICA                   1                    NA                -0.2928569   -0.6984335    0.1127196
Birth       MAL-ED      SOUTH AFRICA                   0                    NA                -0.1237049   -0.3978550    0.1504453
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.1587553    0.7939138    1.5235967
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6000867    0.3565567    0.8436167
6 months    GMS-Nepal   NEPAL                          1                    NA                -0.6276951   -0.7379781   -0.5174121
6 months    GMS-Nepal   NEPAL                          0                    NA                -0.5714931   -0.8236276   -0.3193586
6 months    JiVitA-3    BANGLADESH                     1                    NA                -0.6062241   -0.6317807   -0.5806676
6 months    JiVitA-3    BANGLADESH                     0                    NA                -0.5823337   -0.6600984   -0.5045690
6 months    JiVitA-4    BANGLADESH                     1                    NA                -0.4133991   -0.6401950   -0.1866032
6 months    JiVitA-4    BANGLADESH                     0                    NA                -0.7458757   -1.1184692   -0.3732822
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.1134566   -0.2588366    0.0319234
6 months    MAL-ED      BANGLADESH                     0                    NA                -0.1029096   -0.4398360    0.2340167
6 months    MAL-ED      BRAZIL                         1                    NA                 1.0464404    0.7972457    1.2956351
6 months    MAL-ED      BRAZIL                         0                    NA                 0.8873722    0.6355790    1.1391655
6 months    MAL-ED      INDIA                          1                    NA                -0.7114718   -0.8594520   -0.5634915
6 months    MAL-ED      INDIA                          0                    NA                -0.7354112   -1.0124816   -0.4583407
6 months    MAL-ED      NEPAL                          1                    NA                 0.2009567   -0.0082379    0.4101512
6 months    MAL-ED      NEPAL                          0                    NA                 0.0067786   -0.1670150    0.1805722
6 months    MAL-ED      PERU                           1                    NA                 1.0302821    0.8825489    1.1780153
6 months    MAL-ED      PERU                           0                    NA                 1.0796327    0.8580078    1.3012575
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                 0.6807896    0.3845939    0.9769852
6 months    MAL-ED      SOUTH AFRICA                   0                    NA                 0.5164678    0.3416307    0.6913049
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8303643    0.5763247    1.0844038
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3924175    0.2305509    0.5542841
24 months   GMS-Nepal   NEPAL                          1                    NA                -1.1508741   -1.2636253   -1.0381229
24 months   GMS-Nepal   NEPAL                          0                    NA                -1.0141633   -1.2530411   -0.7752855
24 months   JiVitA-3    BANGLADESH                     1                    NA                -1.3146290   -1.3464158   -1.2828423
24 months   JiVitA-3    BANGLADESH                     0                    NA                -1.2733712   -1.3949787   -1.1517637
24 months   JiVitA-4    BANGLADESH                     1                    NA                -1.0286422   -1.1915308   -0.8657535
24 months   JiVitA-4    BANGLADESH                     0                    NA                -1.3251002   -1.7657423   -0.8844581
24 months   MAL-ED      BANGLADESH                     1                    NA                -0.8231637   -0.9626543   -0.6836730
24 months   MAL-ED      BANGLADESH                     0                    NA                -0.7325426   -0.9911757   -0.4739095
24 months   MAL-ED      BRAZIL                         1                    NA                 0.2822417    0.0010671    0.5634163
24 months   MAL-ED      BRAZIL                         0                    NA                 0.7158011    0.3831453    1.0484570
24 months   MAL-ED      INDIA                          1                    NA                -0.9504543   -1.0914185   -0.8094902
24 months   MAL-ED      INDIA                          0                    NA                -0.9858706   -1.2053938   -0.7663473
24 months   MAL-ED      NEPAL                          1                    NA                -0.3342325   -0.5068211   -0.1616440
24 months   MAL-ED      NEPAL                          0                    NA                -0.4258893   -0.5821562   -0.2696224
24 months   MAL-ED      PERU                           1                    NA                 0.0615462   -0.0692819    0.1923743
24 months   MAL-ED      PERU                           0                    NA                 0.2114779   -0.0202811    0.4432370
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.5604978    0.2933993    0.8275964
24 months   MAL-ED      SOUTH AFRICA                   0                    NA                 0.3634577    0.2220739    0.5048415
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1099819   -0.0965313    0.3164950
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0241359   -0.1480405    0.1963122


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
Birth       GMS-Nepal   NEPAL                          0                    1                  0.0278926   -0.2129779    0.2687632
Birth       JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3    BANGLADESH                     0                    1                  0.0311271   -0.0376211    0.0998754
Birth       JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4    BANGLADESH                     0                    1                 -0.2318820   -0.6871466    0.2233826
Birth       MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BANGLADESH                     0                    1                 -0.1750211   -0.5781396    0.2280975
Birth       MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      BRAZIL                         0                    1                 -0.2241687   -0.9281970    0.4798596
Birth       MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      INDIA                          0                    1                  0.1570153   -0.4457198    0.7597505
Birth       MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      NEPAL                          0                    1                  0.2811051   -0.3939234    0.9561336
Birth       MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      PERU                           0                    1                 -0.2087606   -0.4689284    0.0514073
Birth       MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      SOUTH AFRICA                   0                    1                  0.1691521   -0.3217143    0.6600185
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.5586686   -1.0030805   -0.1142566
6 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal   NEPAL                          0                    1                  0.0562020   -0.2192265    0.3316305
6 months    JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3    BANGLADESH                     0                    1                  0.0238904   -0.0569455    0.1047263
6 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4    BANGLADESH                     0                    1                 -0.3324766   -0.7655632    0.1006099
6 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BANGLADESH                     0                    1                  0.0105470   -0.3572120    0.3783059
6 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      BRAZIL                         0                    1                 -0.1590681   -0.5160123    0.1978760
6 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      INDIA                          0                    1                 -0.0239394   -0.3389199    0.2910412
6 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      NEPAL                          0                    1                 -0.1941781   -0.4665525    0.0781963
6 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      PERU                           0                    1                  0.0493506   -0.2174049    0.3161060
6 months    MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      SOUTH AFRICA                   0                    1                 -0.1643218   -0.5083985    0.1797550
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.4379468   -0.7380186   -0.1378750
24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal   NEPAL                          0                    1                  0.1367108   -0.1274720    0.4008935
24 months   JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3    BANGLADESH                     0                    1                  0.0412578   -0.0827732    0.1652888
24 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4    BANGLADESH                     0                    1                 -0.2964580   -0.7724179    0.1795019
24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BANGLADESH                     0                    1                  0.0906211   -0.2069779    0.3882201
24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      BRAZIL                         0                    1                  0.4335594    0.0050213    0.8620976
24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      INDIA                          0                    1                 -0.0354162   -0.2953885    0.2245561
24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      NEPAL                          0                    1                 -0.0916568   -0.3226734    0.1393599
24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      PERU                           0                    1                  0.1499317   -0.1107065    0.4105700
24 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      SOUTH AFRICA                   0                    1                 -0.1970401   -0.4991032    0.1050229
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0858460   -0.3550516    0.1833597


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          1                    NA                 0.0141822   -0.0256399    0.0540043
Birth       JiVitA-3    BANGLADESH                     1                    NA                 0.0032080   -0.0033047    0.0097208
Birth       JiVitA-4    BANGLADESH                     1                    NA                -0.0191243   -0.0615870    0.0233385
Birth       MAL-ED      BANGLADESH                     1                    NA                -0.0330635   -0.1039665    0.0378395
Birth       MAL-ED      BRAZIL                         1                    NA                -0.1308317   -0.5437663    0.2821028
Birth       MAL-ED      INDIA                          1                    NA                 0.0408649   -0.1723609    0.2540908
Birth       MAL-ED      NEPAL                          1                    NA                 0.2258560   -0.0487652    0.5004771
Birth       MAL-ED      PERU                           1                    NA                -0.0495596   -0.1380890    0.0389698
Birth       MAL-ED      SOUTH AFRICA                   1                    NA                 0.1339680   -0.1935153    0.4614514
Birth       MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3590711   -0.6993117   -0.0188304
6 months    GMS-Nepal   NEPAL                          1                    NA                 0.0078160   -0.0379759    0.0536080
6 months    JiVitA-3    BANGLADESH                     1                    NA                 0.0021264   -0.0048722    0.0091250
6 months    JiVitA-4    BANGLADESH                     1                    NA                 0.0023764   -0.0539243    0.0586771
6 months    MAL-ED      BANGLADESH                     1                    NA                -0.0170370   -0.0805661    0.0464921
6 months    MAL-ED      BRAZIL                         1                    NA                -0.0710259   -0.2481961    0.1061442
6 months    MAL-ED      INDIA                          1                    NA                -0.0071274   -0.0999669    0.0857120
6 months    MAL-ED      NEPAL                          1                    NA                -0.0968084   -0.2366292    0.0430124
6 months    MAL-ED      PERU                           1                    NA                 0.0211315   -0.0702302    0.1124932
6 months    MAL-ED      SOUTH AFRICA                   1                    NA                -0.1243825   -0.3965947    0.1478297
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3046017   -0.5166310   -0.0925724
24 months   GMS-Nepal   NEPAL                          1                    NA                 0.0112300   -0.0317079    0.0541679
24 months   JiVitA-3    BANGLADESH                     1                    NA                 0.0036772   -0.0067452    0.0140997
24 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0190422   -0.0294999    0.0675843
24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0154807   -0.0388003    0.0697618
24 months   MAL-ED      BRAZIL                         1                    NA                 0.2158723    0.0030369    0.4287077
24 months   MAL-ED      INDIA                          1                    NA                -0.0012289   -0.0870868    0.0846291
24 months   MAL-ED      NEPAL                          1                    NA                -0.0448129   -0.1603229    0.0706970
24 months   MAL-ED      PERU                           1                    NA                 0.0560590   -0.0324953    0.1446134
24 months   MAL-ED      SOUTH AFRICA                   1                    NA                -0.1484181   -0.3837210    0.0868847
24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0604076   -0.2510591    0.1302439
