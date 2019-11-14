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
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1             10997   12129
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0              1132   12129
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
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1              8481    9289
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0               808    9289
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
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              4381    4795
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               414    4795
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
![](/tmp/6bc6a69a-6024-4c2a-bc30-af7613032423/d053aaf0-eee9-4256-988d-04abdfa0e52f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6bc6a69a-6024-4c2a-bc30-af7613032423/d053aaf0-eee9-4256-988d-04abdfa0e52f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6bc6a69a-6024-4c2a-bc30-af7613032423/d053aaf0-eee9-4256-988d-04abdfa0e52f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.9082105   -1.0741933   -0.7422277
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.0750009   -1.4367877   -0.7132141
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.6080647    0.0881706    1.1279589
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.2936705   -0.1588629    0.7462039
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                -1.0043099   -1.3703980   -0.6382217
Birth       ki0047075b-MAL-ED     INDIA                          0                    NA                -0.9386390   -1.4424784   -0.4347995
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.9584273   -1.4148847   -0.5019699
Birth       ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.8159386   -1.2153834   -0.4164937
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.0269203   -0.1239270    0.1777675
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                -0.1607777   -0.3723845    0.0508290
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.3071541   -0.7454940    0.1311858
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.1083546   -0.3851348    0.1684256
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.4388778    1.0269649    1.8507906
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6308811    0.3822109    0.8795513
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.1123893   -1.2315572   -0.9932213
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.0658045   -1.2820505   -0.8495586
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.7842372   -0.8067037   -0.7617707
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.7619135   -0.8248917   -0.6989352
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.4156180   -0.6383645   -0.1928714
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.6475000   -1.0569566   -0.2380434
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.1102128   -0.2558665    0.0354410
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.2134907   -0.5358194    0.1088381
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 1.0506540    0.7982701    1.3030380
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.8858822    0.6349522    1.1368123
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.7190092   -0.8659118   -0.5721065
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -0.7448856   -1.0389464   -0.4508247
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.2047160   -0.0057384    0.4151704
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                 0.0088547   -0.1615642    0.1792736
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 1.0391092    0.8917687    1.1864498
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                 1.0862008    0.8692383    1.3031632
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.6656919    0.3893090    0.9420748
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.5221478    0.3471283    0.6971674
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.9207556    0.6672533    1.1742578
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.4150785    0.2550013    0.5751556
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.6255191   -0.7358071   -0.5152311
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.5433237   -0.7952549   -0.2913924
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.6061442   -0.6316529   -0.5806355
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -0.5829824   -0.6602150   -0.5057498
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.4099718   -0.6363526   -0.1835911
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.3842011   -0.8148973    0.0464950
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.8171535   -0.9568047   -0.6775022
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.7728628   -1.0293699   -0.5163556
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.3097987    0.0265200    0.5930774
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.7119280    0.3757511    1.0481049
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.9639275   -1.1046350   -0.8232200
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -0.9248051   -1.1580761   -0.6915341
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.3216824   -0.4935839   -0.1497808
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.4202920   -0.5768018   -0.2637823
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0634268   -0.0663606    0.1932142
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                 0.2010894   -0.0319597    0.4341385
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.5728665    0.3171181    0.8286150
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                 0.3710829    0.2313205    0.5108453
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1194324   -0.0856408    0.3245056
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0337149   -0.1385387    0.2059686
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.1512491   -1.2636551   -1.0388430
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -0.9937173   -1.2336144   -0.7538202
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.3161864   -1.3482616   -1.2841112
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.2676336   -1.3837780   -1.1514893
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.0160426   -1.1795103   -0.8525749
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -0.9552198   -1.4018265   -0.5086132


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.9404455   -1.0889530   -0.7919381
Birth       ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.4316364    0.0969688    0.7663039
Birth       ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.9779487   -1.2664810   -0.6894164
Birth       ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.7944000   -1.1625222   -0.4262778
Birth       ki0047075b-MAL-ED     PERU                           NA                   NA                -0.0335321   -0.1564905    0.0894263
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.1588889   -0.3845288    0.0667510
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7996842    0.5874808    1.0118876
Birth       ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.0991706   -1.2073693   -0.9909719
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.7822228   -0.8038489   -0.7605966
Birth       kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.4347423   -0.6441144   -0.2253701
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.1312375   -0.2633777    0.0009027
6 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.9730392    0.7966084    1.1494700
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.7190952   -0.8496984   -0.5884921
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                 0.1047871   -0.0305193    0.2400934
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                 1.0554753    0.9329598    1.1779909
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                 0.5569945    0.4061636    0.7078255
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5257626    0.3871543    0.6643709
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -0.6198791   -0.7206518   -0.5191063
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -0.6040726   -0.6286341   -0.5795110
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -0.4110227   -0.6122701   -0.2097753
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -0.8086098   -0.9307952   -0.6864243
24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.4943421    0.2716679    0.7170163
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -0.9524010   -1.0710590   -0.8337430
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.3806364   -0.4971717   -0.2641010
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                 0.1199242    0.0008627    0.2389858
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                 0.4181579    0.2964894    0.5398263
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0485870   -0.0868148    0.1839888
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.1396441   -1.2416403   -1.0376479
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.3119979   -1.3435475   -1.2804484
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.0096000   -1.1619164   -0.8572836


### Parameter: ATE


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.1667904   -0.5673059    0.2337251
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.3143942   -1.0104612    0.3816728
Birth       ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     INDIA                          0                    1                  0.0656709   -0.5737968    0.7051386
Birth       ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     NEPAL                          0                    1                  0.1424887   -0.4744909    0.7594684
Birth       ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                 -0.1876980   -0.4479067    0.0725108
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.1987995   -0.3386380    0.7362370
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.8079967   -1.2957445   -0.3202489
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0465847   -0.1915289    0.2846983
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0223238   -0.0428686    0.0875161
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.2318820   -0.6871466    0.2233826
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.1032779   -0.4575018    0.2509460
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.1647718   -0.5219489    0.1924053
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                 -0.0258764   -0.3554490    0.3036962
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.1958613   -0.4667375    0.0750148
6 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                  0.0470915   -0.2149169    0.3091000
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.1435441   -0.4699355    0.1828473
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.5056771   -0.8099160   -0.2014382
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0821954   -0.1926927    0.3570836
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0231618   -0.0569704    0.1032940
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0257707   -0.4578336    0.5093750
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0442907   -0.2512990    0.3398804
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.4021293   -0.0368555    0.8411140
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.0391224   -0.2336615    0.3119063
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 -0.0986097   -0.3287057    0.1314863
24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                  0.1376626   -0.1224875    0.3978127
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.2017836   -0.4937612    0.0901940
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0857174   -0.3517731    0.1803383
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.1575318   -0.1073183    0.4223819
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                  0.0485528   -0.0700284    0.1671340
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.0608228   -0.4176983    0.5393439


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0322350   -0.1044920    0.0400219
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.1764283   -0.5850640    0.2322073
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0263612   -0.1836521    0.2363744
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.1640273   -0.1017887    0.4298433
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.0604524   -0.1482066    0.0273019
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.1482652   -0.2202549    0.5167854
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.6391936   -1.0195847   -0.2588024
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0132186   -0.0258652    0.0523024
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0020145   -0.0041158    0.0081447
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0191243   -0.0615870    0.0233385
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0210247   -0.0842488    0.0421994
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0776148   -0.2575612    0.1023315
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0000861   -0.0936683    0.0934962
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0999289   -0.2410132    0.0411553
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                 0.0163661   -0.0743762    0.1071083
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1086974   -0.3619431    0.1445484
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3949930   -0.6160356   -0.1739503
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0056400   -0.0402019    0.0514820
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0020716   -0.0048955    0.0090388
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0010509   -0.0547505    0.0526487
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0085437   -0.0441651    0.0612525
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.1845434   -0.0341102    0.4031969
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0115265   -0.0730290    0.0960820
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0589540   -0.1742061    0.0562981
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0564975   -0.0309699    0.1439648
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1547086   -0.3802996    0.0708824
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0708454   -0.2597960    0.1181052
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0116050   -0.0309663    0.0541763
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0041885   -0.0059972    0.0143743
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                 0.0064426   -0.0407931    0.0536783
