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

agecat      studyid               country                        predfeed3    n_cell       n  outcome_variable 
----------  --------------------  -----------------------------  ----------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1               164     202  whz              
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                38     202  whz              
Birth       ki0047075b-MAL-ED     BRAZIL                         1                23      55  whz              
Birth       ki0047075b-MAL-ED     BRAZIL                         0                32      55  whz              
Birth       ki0047075b-MAL-ED     INDIA                          1                27      39  whz              
Birth       ki0047075b-MAL-ED     INDIA                          0                12      39  whz              
Birth       ki0047075b-MAL-ED     NEPAL                          1                14      25  whz              
Birth       ki0047075b-MAL-ED     NEPAL                          0                11      25  whz              
Birth       ki0047075b-MAL-ED     PERU                           1               145     218  whz              
Birth       ki0047075b-MAL-ED     PERU                           0                73     218  whz              
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                33      99  whz              
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                66      99  whz              
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                24      95  whz              
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                71      95  whz              
Birth       ki1000109-EE          PAKISTAN                       1                22      22  whz              
Birth       ki1000109-EE          PAKISTAN                       0                 0      22  whz              
Birth       ki1113344-GMS-Nepal   NEPAL                          1               352     422  whz              
Birth       ki1113344-GMS-Nepal   NEPAL                          0                70     422  whz              
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1              9638   10634  whz              
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0               996   10634  whz              
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                89      97  whz              
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                 8      97  whz              
6 months    ki0047075b-MAL-ED     BANGLADESH                     1               191     233  whz              
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                42     233  whz              
6 months    ki0047075b-MAL-ED     BRAZIL                         1                93     187  whz              
6 months    ki0047075b-MAL-ED     BRAZIL                         0                94     187  whz              
6 months    ki0047075b-MAL-ED     INDIA                          1               147     210  whz              
6 months    ki0047075b-MAL-ED     INDIA                          0                63     210  whz              
6 months    ki0047075b-MAL-ED     NEPAL                          1               113     227  whz              
6 months    ki0047075b-MAL-ED     NEPAL                          0               114     227  whz              
6 months    ki0047075b-MAL-ED     PERU                           1               176     270  whz              
6 months    ki0047075b-MAL-ED     PERU                           0                94     270  whz              
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                63     244  whz              
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               181     244  whz              
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                64     212  whz              
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               148     212  whz              
6 months    ki1000109-EE          PAKISTAN                       1                39      39  whz              
6 months    ki1000109-EE          PAKISTAN                       0                 0      39  whz              
6 months    ki1113344-GMS-Nepal   NEPAL                          1               367     441  whz              
6 months    ki1113344-GMS-Nepal   NEPAL                          0                74     441  whz              
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1              8500    9310  whz              
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0               810    9310  whz              
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                76      88  whz              
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                12      88  whz              
24 months   ki0047075b-MAL-ED     BANGLADESH                     1               168     205  whz              
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                37     205  whz              
24 months   ki0047075b-MAL-ED     BRAZIL                         1                79     152  whz              
24 months   ki0047075b-MAL-ED     BRAZIL                         0                73     152  whz              
24 months   ki0047075b-MAL-ED     INDIA                          1               139     202  whz              
24 months   ki0047075b-MAL-ED     INDIA                          0                63     202  whz              
24 months   ki0047075b-MAL-ED     NEPAL                          1               110     220  whz              
24 months   ki0047075b-MAL-ED     NEPAL                          0               110     220  whz              
24 months   ki0047075b-MAL-ED     PERU                           1               131     198  whz              
24 months   ki0047075b-MAL-ED     PERU                           0                67     198  whz              
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60     228  whz              
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               168     228  whz              
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                54     184  whz              
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               130     184  whz              
24 months   ki1000109-EE          PAKISTAN                       1                20      20  whz              
24 months   ki1000109-EE          PAKISTAN                       0                 0      20  whz              
24 months   ki1113344-GMS-Nepal   NEPAL                          1               322     384  whz              
24 months   ki1113344-GMS-Nepal   NEPAL                          0                62     384  whz              
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              4417    4833  whz              
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               416    4833  whz              
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1               135     150  whz              
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                15     150  whz              


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/fa878228-b792-4670-8200-e46d9d5f4b4b/e5b965ab-c2a5-43cb-ac16-73b320e7c87e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fa878228-b792-4670-8200-e46d9d5f4b4b/e5b965ab-c2a5-43cb-ac16-73b320e7c87e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/fa878228-b792-4670-8200-e46d9d5f4b4b/e5b965ab-c2a5-43cb-ac16-73b320e7c87e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.9066606   -1.0725608   -0.7407603
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.1022487   -1.4703929   -0.7341046
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.5995500    0.0737672    1.1253329
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.3162128   -0.1367730    0.7691986
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                -1.0176521   -1.3837117   -0.6515925
Birth       ki0047075b-MAL-ED     INDIA                          0                    NA                -0.8288196   -1.3091678   -0.3484713
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                -1.1906677   -1.6837159   -0.6976196
Birth       ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.7555342   -1.1176410   -0.3934275
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.0114821   -0.1392479    0.1622121
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                -0.2184957   -0.4270956   -0.0098958
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1576883   -0.5689021    0.2535256
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.0704168   -0.3445936    0.2037600
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.2873806    0.9361719    1.6385893
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6188521    0.3723567    0.8653474
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.1116863   -1.2299752   -0.9933974
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.0589807   -1.2652249   -0.8527365
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.7830613   -0.8062987   -0.7598239
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.7487395   -0.8152356   -0.6822434
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.4156180   -0.6383645   -0.1928714
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.6475000   -1.0569566   -0.2380434
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.1160824   -0.2619166    0.0297517
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.1889702   -0.5163286    0.1383881
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 1.0942169    0.8364393    1.3519945
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.9170616    0.6703155    1.1638076
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.7181281   -0.8667155   -0.5695407
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -0.7256340   -0.9943623   -0.4569057
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.1655702   -0.0402499    0.3713904
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0331616   -0.1390253    0.2053486
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 1.0444164    0.8961934    1.1926395
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                 1.0639564    0.8473970    1.2805159
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.6978887    0.4065107    0.9892668
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.5122106    0.3379555    0.6864657
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7587148    0.5109997    1.0064298
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3856272    0.2236248    0.5476296
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.6267145   -0.7366358   -0.5167932
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.5566082   -0.8061556   -0.3070608
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.6062826   -0.6318518   -0.5807134
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.5820910   -0.6597372   -0.5044448
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.4088001   -0.6365020   -0.1810981
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.6495827   -0.9853569   -0.3138085
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.8191325   -0.9586072   -0.6796578
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.7042596   -0.9588519   -0.4496672
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.2777825   -0.0097505    0.5653155
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.7257178    0.3826434    1.0687922
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.9617590   -1.1016680   -0.8218499
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -0.9369560   -1.1608992   -0.7130128
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.3303450   -0.5024922   -0.1581979
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.4048172   -0.5616035   -0.2480308
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0559197   -0.0759320    0.1877714
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.1937191   -0.0350826    0.4225208
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.5561481    0.3060348    0.8062614
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.3610710    0.2207248    0.5014171
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1192874   -0.0939450    0.3325197
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0196874   -0.1539163    0.1932911
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.1509975   -1.2636930   -1.0383019
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.9934382   -1.2394867   -0.7473897
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.3145943   -1.3464426   -1.2827460
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.2731854   -1.3932469   -1.1531239
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.0259389   -1.1888658   -0.8630119
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.8499787   -1.3371815   -0.3627759


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.9411386   -1.0895370   -0.7927402
Birth       ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.4316364    0.0969688    0.7663039
Birth       ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.9779487   -1.2664810   -0.6894164
Birth       ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.7944000   -1.1625222   -0.4262778
Birth       ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0335321   -0.1564905    0.0894263
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.1588889   -0.3845288    0.0667510
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7996842    0.5874808    1.0118876
Birth       ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.0991706   -1.2073693   -0.9909719
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.7798636   -0.8022140   -0.7575133
Birth       kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.4347423   -0.6441144   -0.2253701
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.1304936   -0.2625419    0.0015547
6 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.9754144    0.7990651    1.1517638
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.7185992   -0.8491469   -0.5880515
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                 0.1041483   -0.0311352    0.2394318
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                 1.0514136    0.9289176    1.1739096
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                 0.5564071    0.4055220    0.7072922
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5257626    0.3871543    0.6643709
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.6198791   -0.7206518   -0.5191063
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.6040977   -0.6286619   -0.5795335
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.4110227   -0.6122701   -0.2097753
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.8076829   -0.9296166   -0.6857493
24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.4981140    0.2760418    0.7201863
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.9516832   -1.0703961   -0.8329703
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.3790455   -0.4958857   -0.2622052
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                 0.1176052   -0.0015211    0.2367315
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                 0.4120797    0.2900939    0.5340654
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0495743   -0.0857535    0.1849021
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.1396441   -1.2416403   -1.0376479
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.3109518   -1.3423299   -1.2795737
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.0096000   -1.1619164   -0.8572836


### Parameter: ATE


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.1955882   -0.6000067    0.2088303
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.2833372   -0.9840127    0.4173382
Birth       ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     INDIA                          0                    1                  0.1888325   -0.4310045    0.8086695
Birth       ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     NEPAL                          0                    1                  0.4351335   -0.2048352    1.0751022
Birth       ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                 -0.2299778   -0.4898211    0.0298656
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0872715   -0.4140214    0.5885644
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.6685286   -1.1000065   -0.2370506
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0527056   -0.1724434    0.2778545
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0343218   -0.0345832    0.1032268
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.2318820   -0.6871466    0.2233826
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0728878   -0.4318672    0.2860916
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.1771553   -0.5347563    0.1804456
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0075059   -0.3167069    0.3016950
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.1324086   -0.4011469    0.1363298
6 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                  0.0195400   -0.2418549    0.2809350
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.1856781   -0.5258326    0.1544764
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.3730876   -0.6681777   -0.0779975
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0701063   -0.2014894    0.3417021
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0241916   -0.0565974    0.1049806
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.2407826   -0.6468343    0.1652691
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.1148730   -0.1799034    0.4096493
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.4479353   -0.0001539    0.8960245
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0248030   -0.2396424    0.2892485
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0744721   -0.3056943    0.1567500
24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.1377994   -0.1237424    0.3993412
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.1950771   -0.4810292    0.0908750
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0996000   -0.3742348    0.1750349
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.1575593   -0.1129923    0.4281108
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0414089   -0.0811790    0.1639968
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.1759602   -0.3403693    0.6922896


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0344781   -0.1054531    0.0364970
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1679137   -0.5814631    0.2456358
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0397034   -0.1789976    0.2584043
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.3962677    0.0594186    0.7331169
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.0450142   -0.1347729    0.0447444
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0012006   -0.3409848    0.3385835
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4876964   -0.8135481   -0.1618447
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0125157   -0.0245326    0.0495640
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0031976   -0.0033032    0.0096985
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0191243   -0.0615870    0.0233385
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0144111   -0.0784244    0.0496022
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1188025   -0.3019205    0.0643155
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0004711   -0.0946614    0.0937191
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0614219   -0.1979875    0.0751437
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 0.0069971   -0.0835510    0.0975452
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1414816   -0.4107411    0.1277778
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2329522   -0.4414682   -0.0244361
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0068355   -0.0381483    0.0518192
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0021849   -0.0048243    0.0091940
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0022227   -0.0601252    0.0556799
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0114496   -0.0430941    0.0659933
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.2203316    0.0025209    0.4381422
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0100758   -0.0742398    0.0943915
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0487004   -0.1649141    0.0675132
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0616855   -0.0289878    0.1523588
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1440684   -0.3612732    0.0731364
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0697131   -0.2656512    0.1262250
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0113534   -0.0314422    0.0541489
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0036425   -0.0066548    0.0139398
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0163389   -0.0318314    0.0645091
