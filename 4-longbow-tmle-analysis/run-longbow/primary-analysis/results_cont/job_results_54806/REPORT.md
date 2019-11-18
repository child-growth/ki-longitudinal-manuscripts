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

agecat      studyid                    country                        predfeed6    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                72     205  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               133     205  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 6      60  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0                54      60  haz              
Birth       ki0047075b-MAL-ED          INDIA                          1                 4      39  haz              
Birth       ki0047075b-MAL-ED          INDIA                          0                35      39  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          1                 3      24  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          0                21      24  haz              
Birth       ki0047075b-MAL-ED          PERU                           1                73     213  haz              
Birth       ki0047075b-MAL-ED          PERU                           0               140     213  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1      91  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                90      91  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     113  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               113     113  haz              
Birth       ki1000109-EE               PAKISTAN                       1                38      42  haz              
Birth       ki1000109-EE               PAKISTAN                       0                 4      42  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1               419     563  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0               144     563  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             10466   13423  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2957   13423  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              2103    2632  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               529    2632  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                84     231  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               147     231  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1                30     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0               179     209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          1                11     218  haz              
6 months    ki0047075b-MAL-ED          INDIA                          0               207     218  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          1                12     225  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          0               213     225  haz              
6 months    ki0047075b-MAL-ED          PERU                           1                92     271  haz              
6 months    ki0047075b-MAL-ED          PERU                           0               179     271  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     233  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               230     233  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232  haz              
6 months    ki1000109-EE               PAKISTAN                       1                43      48  haz              
6 months    ki1000109-EE               PAKISTAN                       0                 5      48  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547  haz              
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272  haz              
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7644    9901  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2257    9901  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3328    4272  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               944    4272  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                76     205  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               129     205  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1                25     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0               144     169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          1                11     209  haz              
24 months   ki0047075b-MAL-ED          INDIA                          0               198     209  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          1                12     219  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          0               207     219  haz              
24 months   ki0047075b-MAL-ED          PERU                           1                68     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           0               133     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     216  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               213     216  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202  haz              
24 months   ki1000109-EE               PAKISTAN                       1                20      23  haz              
24 months   ki1000109-EE               PAKISTAN                       0                 3      23  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1               356     470  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     470  haz              
24 months   ki1148112-LCNI-5           MALAWI                         1                34     189  haz              
24 months   ki1148112-LCNI-5           MALAWI                         0               155     189  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3926    5088  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1162    5088  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3292    4199  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               907    4199  haz              


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
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/a01f5dd8-4680-48d4-9c05-43d8d4b9f8e9/825b2608-32d8-4012-a5a4-64854c764cd5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a01f5dd8-4680-48d4-9c05-43d8d4b9f8e9/825b2608-32d8-4012-a5a4-64854c764cd5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a01f5dd8-4680-48d4-9c05-43d8d4b9f8e9/825b2608-32d8-4012-a5a4-64854c764cd5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.0356630   -1.2610750   -0.8102510
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.0572562   -1.2346347   -0.8798776
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                -1.0216667   -2.1085384    0.0652051
Birth       ki0047075b-MAL-ED     BRAZIL       0                    NA                -0.6601852   -0.9595686   -0.3608018
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.8669686   -1.0309337   -0.7030034
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.9220545   -1.0698230   -0.7742860
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0504373   -1.1474979   -0.9533766
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.0978639   -1.2724610   -0.9232667
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.5946118   -1.6193983   -1.5698253
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.5975025   -1.6368097   -1.5581954
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.5075444   -1.5596293   -1.4554595
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.5960843   -1.7264882   -1.4656803
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.0682327   -1.2587246   -0.8777409
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.2403028   -1.3922012   -1.0884043
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.3456638   -0.0995278    0.7908554
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0334007   -0.1164678    0.1832692
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -1.8788634   -2.6463414   -1.1113853
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -1.1928646   -1.3139147   -1.0718144
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.7080063   -1.2975471   -0.1184654
6 months    ki0047075b-MAL-ED     NEPAL        0                    NA                -0.5577150   -0.6759379   -0.4394921
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -1.2741583   -1.4470556   -1.1012609
6 months    ki0047075b-MAL-ED     PERU         0                    NA                -1.3655512   -1.5007591   -1.2303433
6 months    ki1000109-EE          PAKISTAN     1                    NA                -2.3121318   -2.6865239   -1.9377397
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.8473333   -1.8424880    0.1478213
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.3060941   -1.3956926   -1.2164957
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.4905438   -1.6601633   -1.3209244
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                -1.7044775   -1.9943785   -1.4145764
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                -1.6242256   -1.7553836   -1.4930676
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.3084017   -1.3388467   -1.2779566
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.3321474   -1.3815289   -1.2827659
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.3105217   -1.3515837   -1.2694598
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.4866447   -1.5776924   -1.3955970
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -1.9588163   -2.1880086   -1.7296241
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.9367875   -2.0834110   -1.7901641
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0094321   -0.5005549    0.5194191
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.0117962   -0.1739781    0.1975705
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -2.4832622   -2.9981177   -1.9684067
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -1.8523771   -1.9842990   -1.7204552
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -1.5333782   -2.1248022   -0.9419543
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -1.3063470   -1.4318575   -1.1808366
24 months   ki0047075b-MAL-ED     PERU         1                    NA                -1.7858765   -1.9865729   -1.5851801
24 months   ki0047075b-MAL-ED     PERU         0                    NA                -1.7345711   -1.8823268   -1.5868153
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.9105046   -2.0056672   -1.8153419
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.8778399   -2.0695274   -1.6861523
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -1.9984480   -2.2945232   -1.7023729
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -1.9508428   -2.1089699   -1.7927158
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -2.0024832   -2.0424572   -1.9625091
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -2.0411279   -2.1114467   -1.9708091
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.7789874   -1.8207741   -1.7372008
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.8330709   -1.9104600   -1.7556818


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.0530244   -1.1913751   -0.9146736
Birth       ki0047075b-MAL-ED     BRAZIL       NA                   NA                -0.6963333   -0.9881882   -0.4044785
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.9065728   -1.0297267   -0.7834188
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.0641208   -1.1525364   -0.9757052
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.5955338   -1.6186322   -1.5724354
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.5273138   -1.5765339   -1.4780937
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.1900794   -1.3096296   -1.0705291
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -1.2188303   -1.3423090   -1.0953516
6 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.5622370   -0.6774081   -0.4470660
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                -1.3220326   -1.4308168   -1.2132484
6 months    ki1000109-EE          PAKISTAN     NA                   NA                -2.1595486   -2.5331781   -1.7859192
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.3540280   -1.4334801   -1.2745760
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3138259   -1.3418712   -1.2857806
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.3482303   -1.3866421   -1.3098185
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -1.9576341   -2.0857597   -1.8295086
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -1.8863397   -2.0168508   -1.7558287
24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -1.3187671   -1.4406685   -1.1968657
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.9002128   -1.9869255   -1.8135001
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -2.0118003   -2.0479952   -1.9756055
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.7914765   -1.8297816   -1.7531715


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.0215932   -0.3105974    0.2674111
Birth       ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL       0                    1                  0.3614815   -0.7658697    1.4888326
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 -0.0550859   -0.2464761    0.1363042
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0474266   -0.2390762    0.1442229
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0028907   -0.0436269    0.0378455
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0885399   -0.2280761    0.0509963
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.1720701   -0.4158195    0.0716793
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.3122630   -0.7847530    0.1602269
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                  0.6859988   -0.0903167    1.4623143
6 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL        0                    1                  0.1502913   -0.4510483    0.7516309
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.0913930   -0.3069971    0.1242111
6 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                  1.4647984    0.4015477    2.5280492
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.1844497   -0.3765391    0.0076396
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.0802519   -0.2372367    0.3977405
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0237458   -0.0762562    0.0287647
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.1761229   -0.2745638   -0.0776821
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0220288   -0.2478153    0.2918728
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0023640   -0.5419680    0.5466961
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                  0.6308851    0.0993232    1.1624470
24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL        0                    1                  0.2270312   -0.3773061    0.8313686
24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0513054   -0.1923155    0.2949263
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                  0.0326647   -0.1790946    0.2444240
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0476052   -0.2879297    0.3831401
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 -0.0386447   -0.1159615    0.0386721
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0540835   -0.1371588    0.0289918


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0173614   -0.2071180    0.1723953
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.3253333   -0.6896600    1.3403266
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.0396042   -0.1660841    0.0868757
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0136835   -0.0626572    0.0352901
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0009220   -0.0099033    0.0080592
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0197695   -0.0481422    0.0086033
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1218466   -0.2827807    0.0390874
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.2980880   -0.7098775    0.1137015
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                 0.6600331   -0.0759181    1.3959843
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1457692   -0.4278448    0.7193832
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.0478743   -0.1903057    0.0945571
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.1525832   -0.0166253    0.3217916
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0479339   -0.0980841    0.0022163
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0648819   -0.1980959    0.3278597
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0054242   -0.0173785    0.0065301
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0377086   -0.0591439   -0.0162733
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0011822   -0.1684462    0.1708106
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0033177   -0.4797110    0.4730755
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                 0.5969225    0.0930714    1.1007736
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.2146111   -0.3618231    0.7910453
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0334055   -0.1291821    0.1959932
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0102918   -0.0410361    0.0616197
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0333158   -0.2426462    0.3092778
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0093171   -0.0269962    0.0083619
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0124891   -0.0300121    0.0050338
