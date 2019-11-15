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

agecat      studyid               country                        predfeed3    n_cell       n
----------  --------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1               164     202
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                38     202
Birth       ki0047075b-MAL-ED     BRAZIL                         1                23      55
Birth       ki0047075b-MAL-ED     BRAZIL                         0                32      55
Birth       ki0047075b-MAL-ED     INDIA                          1                27      39
Birth       ki0047075b-MAL-ED     INDIA                          0                12      39
Birth       ki0047075b-MAL-ED     NEPAL                          1                14      25
Birth       ki0047075b-MAL-ED     NEPAL                          0                11      25
Birth       ki0047075b-MAL-ED     PERU                           1               145     218
Birth       ki0047075b-MAL-ED     PERU                           0                73     218
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                33      99
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                66      99
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                24      95
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                71      95
Birth       ki1000109-EE          PAKISTAN                       1                22      22
Birth       ki1000109-EE          PAKISTAN                       0                 0      22
Birth       ki1113344-GMS-Nepal   NEPAL                          1               352     422
Birth       ki1113344-GMS-Nepal   NEPAL                          0                70     422
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1              9638   10634
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0               996   10634
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                89      97
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                 8      97
6 months    ki0047075b-MAL-ED     BANGLADESH                     1               191     233
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                42     233
6 months    ki0047075b-MAL-ED     BRAZIL                         1                93     187
6 months    ki0047075b-MAL-ED     BRAZIL                         0                94     187
6 months    ki0047075b-MAL-ED     INDIA                          1               147     210
6 months    ki0047075b-MAL-ED     INDIA                          0                63     210
6 months    ki0047075b-MAL-ED     NEPAL                          1               113     227
6 months    ki0047075b-MAL-ED     NEPAL                          0               114     227
6 months    ki0047075b-MAL-ED     PERU                           1               176     270
6 months    ki0047075b-MAL-ED     PERU                           0                94     270
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                63     244
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               181     244
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                64     212
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               148     212
6 months    ki1000109-EE          PAKISTAN                       1                39      39
6 months    ki1000109-EE          PAKISTAN                       0                 0      39
6 months    ki1113344-GMS-Nepal   NEPAL                          1               367     441
6 months    ki1113344-GMS-Nepal   NEPAL                          0                74     441
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1              8500    9310
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0               810    9310
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                76      88
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                12      88
24 months   ki0047075b-MAL-ED     BANGLADESH                     1               168     205
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                37     205
24 months   ki0047075b-MAL-ED     BRAZIL                         1                79     152
24 months   ki0047075b-MAL-ED     BRAZIL                         0                73     152
24 months   ki0047075b-MAL-ED     INDIA                          1               139     202
24 months   ki0047075b-MAL-ED     INDIA                          0                63     202
24 months   ki0047075b-MAL-ED     NEPAL                          1               110     220
24 months   ki0047075b-MAL-ED     NEPAL                          0               110     220
24 months   ki0047075b-MAL-ED     PERU                           1               131     198
24 months   ki0047075b-MAL-ED     PERU                           0                67     198
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60     228
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               168     228
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                54     184
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               130     184
24 months   ki1000109-EE          PAKISTAN                       1                20      20
24 months   ki1000109-EE          PAKISTAN                       0                 0      20
24 months   ki1113344-GMS-Nepal   NEPAL                          1               322     384
24 months   ki1113344-GMS-Nepal   NEPAL                          0                62     384
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              4417    4833
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               416    4833
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1               135     150
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                15     150


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
![](/tmp/1a462519-afbf-42db-b998-aad8c1adb1f7/27427aff-c019-4708-a523-f5ea359285d0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1a462519-afbf-42db-b998-aad8c1adb1f7/27427aff-c019-4708-a523-f5ea359285d0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1a462519-afbf-42db-b998-aad8c1adb1f7/27427aff-c019-4708-a523-f5ea359285d0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.9058082   -1.0702434   -0.7413730
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.0632891   -1.4420270   -0.6845513
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.5956576    0.0875943    1.1037209
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.3135691   -0.1455791    0.7727172
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                -1.0089055   -1.3770060   -0.6408049
Birth       ki0047075b-MAL-ED     INDIA                          0                    NA                -0.8939073   -1.4169854   -0.3708292
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                -1.1057254   -1.5683389   -0.6431120
Birth       ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.8451965   -1.2808817   -0.4095113
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.0243426   -0.1267193    0.1754045
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                -0.1620388   -0.3741213    0.0500437
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.3948903   -0.8175655    0.0277848
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.1320747   -0.4046730    0.1405237
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.2748398    0.9122804    1.6373991
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6192008    0.3732666    0.8651350
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.1099573   -1.2283271   -0.9915874
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.0471642   -1.2539389   -0.8403896
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.7830116   -0.8062461   -0.7597772
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.7497610   -0.8162467   -0.6832753
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.4156180   -0.6383645   -0.1928714
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.6475000   -1.0569566   -0.2380434
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.1082391   -0.2537169    0.0372387
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.2340463   -0.5625880    0.0944955
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 1.0561225    0.8028740    1.3093710
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.9035958    0.6574657    1.1497260
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.7208577   -0.8691766   -0.5725389
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -0.7363213   -1.0091981   -0.4634445
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.1997681   -0.0056015    0.4051378
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0067314   -0.1671983    0.1806610
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 1.0394471    0.8923110    1.1865831
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                 1.0626548    0.8415912    1.2837184
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.6717180    0.3886690    0.9547670
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.5167139    0.3411249    0.6923029
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8028128    0.5434167    1.0622089
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3940166    0.2314021    0.5566312
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.6300407   -0.7403747   -0.5197068
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.6707292   -0.9226167   -0.4188418
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.6061053   -0.6316784   -0.5805323
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.5795431   -0.6571035   -0.5019827
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.4010532   -0.6278778   -0.1742286
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.1474188   -0.5901275    0.2952900
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.8211926   -0.9604990   -0.6818862
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.7600900   -1.0173615   -0.5028184
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.2608883   -0.0279846    0.5497611
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.7478745    0.4082544    1.0874946
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.9612751   -1.1013064   -0.8212437
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -0.9360124   -1.1565658   -0.7154591
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.3331944   -0.5044857   -0.1619031
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.4099208   -0.5662313   -0.2536103
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0696597   -0.0618438    0.2011632
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.2237200   -0.0092358    0.4566757
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.5858861    0.3369615    0.8348106
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.3494625    0.2091790    0.4897460
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1286793   -0.0827682    0.3401269
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0243723   -0.1470677    0.1958123
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.1543908   -1.2670852   -1.0416965
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.1305153   -1.3703738   -0.8906568
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.3145140   -1.3463261   -1.2827018
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.2756576   -1.4022900   -1.1490251
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.0153082   -1.1784100   -0.8522065
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.9299223   -1.3784993   -0.4813453


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
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.1574809   -0.5711812    0.2562194
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.2820885   -0.9782206    0.4140435
Birth       ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     INDIA                          0                    1                  0.1149982   -0.5658914    0.7958877
Birth       ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     NEPAL                          0                    1                  0.2605290   -0.3874982    0.9085561
Birth       ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                 -0.1863814   -0.4476483    0.0748855
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.2628157   -0.2500908    0.7757222
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.6556390   -1.0950894   -0.2161885
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0627931   -0.1632445    0.2888307
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0332506   -0.0355584    0.1020596
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.2318820   -0.6871466    0.2233826
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.1258072   -0.4847976    0.2331833
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.1525267   -0.5069256    0.2018723
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0154636   -0.3267227    0.2957955
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.1930368   -0.4607257    0.0746521
6 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                  0.0232077   -0.2424810    0.2888963
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.1550041   -0.4893254    0.1793172
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.4087962   -0.7150217   -0.1025706
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.0406885   -0.3160487    0.2346717
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0265623   -0.0542198    0.1073444
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.2536344   -0.2466372    0.7539061
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0611026   -0.2341043    0.3563096
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.4869863    0.0427818    0.9311907
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0252626   -0.2352820    0.2858072
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0767264   -0.3056283    0.1521755
24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.1540602   -0.1089297    0.4170502
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.2364236   -0.5224044    0.0495572
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1043070   -0.3773804    0.1687663
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0238755   -0.2417549    0.2895060
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0388564   -0.0900959    0.1678086
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0853859   -0.3946184    0.5653902


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0353304   -0.1072566    0.0365958
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1640212   -0.5684844    0.2404420
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0309568   -0.1912848    0.2531983
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.3113254    0.0344634    0.5881874
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.0578747   -0.1461762    0.0304268
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.2360014   -0.1163073    0.5883102
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4751556   -0.8103547   -0.1399565
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0107867   -0.0264376    0.0480109
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0031480   -0.0033278    0.0096237
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0191243   -0.0615870    0.0233385
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0222545   -0.0850857    0.0405768
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0807081   -0.2582696    0.0968534
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0022585   -0.0910507    0.0955678
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0956198   -0.2312278    0.0399882
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 0.0119665   -0.0798266    0.1037596
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1153109   -0.3741133    0.1434915
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2770502   -0.4940347   -0.0600657
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0101617   -0.0357146    0.0560380
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0020076   -0.0050135    0.0090287
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0099695   -0.0649757    0.0450367
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0135097   -0.0392921    0.0663115
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.2372258    0.0188436    0.4556079
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0095919   -0.0745369    0.0937206
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0458510   -0.1604719    0.0687698
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0479455   -0.0397789    0.1356699
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1738064   -0.3902124    0.0425996
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0791051   -0.2746299    0.1164198
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0147467   -0.0281148    0.0576083
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0035622   -0.0069019    0.0140263
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0057082   -0.0415328    0.0529492
