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

agecat      studyid                    country                        predfeed6    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                68     194  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               126     194  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 5      57  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0                52      57  whz              
Birth       ki0047075b-MAL-ED          INDIA                          1                 4      37  whz              
Birth       ki0047075b-MAL-ED          INDIA                          0                33      37  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          1                 3      23  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          0                20      23  whz              
Birth       ki0047075b-MAL-ED          PERU                           1                72     208  whz              
Birth       ki0047075b-MAL-ED          PERU                           0               136     208  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1      90  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                89      90  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     105  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               105     105  whz              
Birth       ki1000109-EE               PAKISTAN                       1                24      28  whz              
Birth       ki1000109-EE               PAKISTAN                       0                 4      28  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1               390     522  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0               132     522  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              8392   10744  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2352   10744  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1802    2224  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               422    2224  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                84     231  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               147     231  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1                30     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0               179     209  whz              
6 months    ki0047075b-MAL-ED          INDIA                          1                11     218  whz              
6 months    ki0047075b-MAL-ED          INDIA                          0               207     218  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          1                12     225  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          0               213     225  whz              
6 months    ki0047075b-MAL-ED          PERU                           1                92     271  whz              
6 months    ki0047075b-MAL-ED          PERU                           0               179     271  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     233  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               230     233  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232  whz              
6 months    ki1000109-EE               PAKISTAN                       1                43      48  whz              
6 months    ki1000109-EE               PAKISTAN                       0                 5      48  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547  whz              
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272  whz              
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7625    9882  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2257    9882  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3327    4275  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               948    4275  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                76     205  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               129     205  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1                25     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0               144     169  whz              
24 months   ki0047075b-MAL-ED          INDIA                          1                11     209  whz              
24 months   ki0047075b-MAL-ED          INDIA                          0               198     209  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          1                12     219  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          0               207     219  whz              
24 months   ki0047075b-MAL-ED          PERU                           1                68     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           0               133     201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     216  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               213     216  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202  whz              
24 months   ki1000109-EE               PAKISTAN                       1                20      23  whz              
24 months   ki1000109-EE               PAKISTAN                       0                 3      23  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1               355     469  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     469  whz              
24 months   ki1148112-LCNI-5           MALAWI                         1                34     184  whz              
24 months   ki1148112-LCNI-5           MALAWI                         0               150     184  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3909    5067  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1158    5067  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3278    4184  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               906    4184  whz              


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
![](/tmp/030cbbd0-e933-49d6-aee7-a0f4e2c4a4d4/cdaf1fd0-74b9-4ac7-8eb3-762287ff24b7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/030cbbd0-e933-49d6-aee7-a0f4e2c4a4d4/cdaf1fd0-74b9-4ac7-8eb3-762287ff24b7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/030cbbd0-e933-49d6-aee7-a0f4e2c4a4d4/cdaf1fd0-74b9-4ac7-8eb3-762287ff24b7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.8181909   -1.0525237   -0.5838581
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.0238952   -1.2299396   -0.8178508
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0220000   -1.4978207    1.5418207
Birth       ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.5069231    0.1803892    0.8334570
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.0123141   -0.2255487    0.2009206
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.0860753   -0.2501952    0.0780446
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.1046281   -1.2176138   -0.9916425
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.1353369   -1.2957967   -0.9748771
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.7869143   -0.8117224   -0.7621061
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.7586814   -0.8023754   -0.7149875
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.6764238   -0.7312515   -0.6215960
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.7473629   -0.8846383   -0.6100875
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1324717   -0.3688346    0.1038912
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1105154   -0.2775789    0.0565482
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 1.6007794    1.1806161    2.0209427
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.8873063    0.7130098    1.0616028
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.0584892   -0.5130579    0.3960795
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.7418050   -0.8750872   -0.6085229
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1375085   -0.4922755    0.7672924
6 months    ki0047075b-MAL-ED     NEPAL        0                    NA                 0.1143481   -0.0244221    0.2531183
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 1.1890281    0.9869039    1.3911522
6 months    ki0047075b-MAL-ED     PERU         0                    NA                 0.9785631    0.8255479    1.1315782
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.5749658   -0.6773721   -0.4725594
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.6558214   -0.8258381   -0.4858047
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.3764140    0.0421624    0.7106657
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.3951290    0.2681954    0.5220626
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.6033364   -0.6304499   -0.5762228
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.5902599   -0.6358734   -0.5446465
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.3463655   -0.3909509   -0.3017801
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5553734   -0.6346579   -0.4760890
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.9149670   -1.1079108   -0.7220232
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.7516199   -0.9169689   -0.5862709
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.4848506   -0.1308273    1.1005284
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.4688604    0.2474867    0.6902341
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.7002331   -1.2254809   -0.1749852
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.9581068   -1.0824297   -0.8337840
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.5125213   -1.1161271    0.0910845
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.3623223   -0.4824582   -0.2421863
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0594134   -0.1270845    0.2459112
24 months   ki0047075b-MAL-ED     PERU         0                    NA                 0.1303096   -0.0278668    0.2884860
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0889394   -1.1887847   -0.9890941
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.3161993   -1.5282275   -1.1041711
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1392176   -0.4686519    0.1902168
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0575685   -0.2188466    0.1037096
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.3208800   -1.3557462   -1.2860138
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.2741968   -1.3368682   -1.2115255
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.2221784   -1.2639745   -1.1803823
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.2308528   -1.3083587   -1.1533470


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.9755670   -1.1287016   -0.8224325
Birth       ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.4643860    0.1360519    0.7927200
Birth       ki0047075b-MAL-ED     PERU         NA                   NA                -0.0587981   -0.1871869    0.0695908
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.1064559   -1.2034951   -1.0094168
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.7807809   -0.8030521   -0.7585097
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.6904586   -0.7435822   -0.6373351
6 months    ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.1213203   -0.2539388    0.0112981
6 months    ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                -0.7067317   -0.8369134   -0.5765499
6 months    ki0047075b-MAL-ED     NEPAL        NA                   NA                 0.1091407   -0.0265536    0.2448351
6 months    ki0047075b-MAL-ED     PERU         NA                   NA                 1.0506150    0.9281868    1.1730433
6 months    ki1000109-EE          PAKISTAN     NA                   NA                -0.6106944   -0.9239621   -0.2974268
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                -0.6009171   -0.6886356   -0.5131986
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                 0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -0.6001300   -0.6240378   -0.5762223
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -0.3968456   -0.4358721   -0.3578192
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                -0.8169756   -0.9388013   -0.6951499
24 months   ki0047075b-MAL-ED     BRAZIL       NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                -0.9442584   -1.0642426   -0.8242742
24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                -0.3674429   -0.4840752   -0.2508107
24 months   ki0047075b-MAL-ED     PERU         NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                -1.1423525   -1.2336321   -1.0510729
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                -1.3103375   -1.3408810   -1.2797940
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                -1.2265320   -1.2620508   -1.1910132


### Parameter: ATE


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.2057043   -0.5235602    0.1121517
Birth       ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL       0                    1                  0.4849231   -1.0695798    2.0394260
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 -0.0737612   -0.3434812    0.1959588
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0307088   -0.2177363    0.1563187
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0282328   -0.0202490    0.0767147
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0709392   -0.2148811    0.0730027
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0219563   -0.2689516    0.3128643
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.7134731   -1.1669535   -0.2599927
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 -0.6833158   -1.1574074   -0.2092243
6 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL        0                    1                 -0.0231604   -0.6678842    0.6215634
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.2104650   -0.4641359    0.0432059
6 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0808556   -0.2795736    0.1178624
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.0187150   -0.3393228    0.3767528
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0130764   -0.0386373    0.0647902
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.2090079   -0.2988617   -0.1191541
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.1633471   -0.0987200    0.4254141
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.0159901   -0.6698185    0.6378382
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                 -0.2578738   -0.7980565    0.2823089
24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL        0                    1                  0.1501991   -0.4654647    0.7658628
24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0708962   -0.1711238    0.3129163
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.2272599   -0.4618214    0.0073016
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0816491   -0.2865287    0.4498269
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0466831   -0.0246587    0.1180250
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0086744   -0.0946050    0.0772562


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1573761   -0.3664858    0.0517336
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.4423860   -0.9762121    1.8609840
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.0464840   -0.2242913    0.1313232
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0018278   -0.0489152    0.0452596
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0061334   -0.0044763    0.0167430
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0140349   -0.0414484    0.0133786
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0111514   -0.1783832    0.2006859
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.6287020   -1.0215061   -0.2358980
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.6482425   -1.0996829   -0.1968021
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0283677   -0.6390459    0.5823104
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.1384130   -0.3069045    0.0300784
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0259514   -0.0774828    0.0255801
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0160860   -0.2830881    0.3152601
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0032063   -0.0086178    0.0150304
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0504801   -0.0717392   -0.0292210
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0979914   -0.0692466    0.2652294
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.0222273   -0.5902214    0.5457668
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.2440253   -0.7622029    0.2741523
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.1450784   -0.4448030    0.7349598
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0517848   -0.1089106    0.2124802
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0534131   -0.1101607    0.0033345
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0621524   -0.2442913    0.3685961
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0105425   -0.0057570    0.0268420
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0043536   -0.0245976    0.0158904
