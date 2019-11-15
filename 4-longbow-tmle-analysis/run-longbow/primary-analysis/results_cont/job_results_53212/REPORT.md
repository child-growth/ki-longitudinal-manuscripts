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

agecat      studyid                    country                        predfeed6    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                68     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               126     194
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 5      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                52      57
Birth       ki0047075b-MAL-ED          INDIA                          1                 4      37
Birth       ki0047075b-MAL-ED          INDIA                          0                33      37
Birth       ki0047075b-MAL-ED          NEPAL                          1                 3      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                20      23
Birth       ki0047075b-MAL-ED          PERU                           1                72     208
Birth       ki0047075b-MAL-ED          PERU                           0               136     208
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                89      90
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               105     105
Birth       ki1000109-EE               PAKISTAN                       1                24      28
Birth       ki1000109-EE               PAKISTAN                       0                 4      28
Birth       ki1113344-GMS-Nepal        NEPAL                          1               390     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0               132     522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              8392   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2352   10744
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1802    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               422    2224
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                84     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               147     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               179     209
6 months    ki0047075b-MAL-ED          INDIA                          1                11     218
6 months    ki0047075b-MAL-ED          INDIA                          0               207     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                12     225
6 months    ki0047075b-MAL-ED          NEPAL                          0               213     225
6 months    ki0047075b-MAL-ED          PERU                           1                92     271
6 months    ki0047075b-MAL-ED          PERU                           0               179     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               230     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232
6 months    ki1000109-EE               PAKISTAN                       1                43      48
6 months    ki1000109-EE               PAKISTAN                       0                 5      48
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7625    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2257    9882
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3327    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               948    4275
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                76     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               129     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               144     169
24 months   ki0047075b-MAL-ED          INDIA                          1                11     209
24 months   ki0047075b-MAL-ED          INDIA                          0               198     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                12     219
24 months   ki0047075b-MAL-ED          NEPAL                          0               207     219
24 months   ki0047075b-MAL-ED          PERU                           1                68     201
24 months   ki0047075b-MAL-ED          PERU                           0               133     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               213     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202
24 months   ki1000109-EE               PAKISTAN                       1                20      23
24 months   ki1000109-EE               PAKISTAN                       0                 3      23
24 months   ki1113344-GMS-Nepal        NEPAL                          1               355     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     469
24 months   ki1148112-LCNI-5           MALAWI                         1                34     184
24 months   ki1148112-LCNI-5           MALAWI                         0               150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3909    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1158    5067
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3278    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               906    4184


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
![](/tmp/41dc13f6-1c63-4561-97e9-f02a98f1b9a3/5ce4b826-96dd-4aab-b4fb-05f7befc590e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/41dc13f6-1c63-4561-97e9-f02a98f1b9a3/5ce4b826-96dd-4aab-b4fb-05f7befc590e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/41dc13f6-1c63-4561-97e9-f02a98f1b9a3/5ce4b826-96dd-4aab-b4fb-05f7befc590e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.8833368   -1.1074446   -0.6592290
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -1.0283066   -1.2334423   -0.8231709
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0220000   -1.4978207    1.5418207
Birth       ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.5069231    0.1803892    0.8334570
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.0041235   -0.2219429    0.2136959
Birth       ki0047075b-MAL-ED     PERU         0                    NA                -0.0857283   -0.2473291    0.0758724
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.1046899   -1.2171228   -0.9922570
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.1227297   -1.2810796   -0.9643799
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.7870934   -0.8118685   -0.7623183
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.7617487   -0.8051011   -0.7183962
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.6759155   -0.7306891   -0.6211420
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.7500979   -0.8877469   -0.6124490
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.1515750   -0.3858537    0.0827037
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1062277   -0.2714067    0.0589514
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                 1.4651991    0.9996100    1.9307883
6 months    ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.8902150    0.7157352    1.0646947
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.1022321   -0.6367708    0.4323065
6 months    ki0047075b-MAL-ED     INDIA        0                    NA                -0.7374898   -0.8716649   -0.6033147
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0103841   -0.6708268    0.6915951
6 months    ki0047075b-MAL-ED     NEPAL        0                    NA                 0.1154294   -0.0241929    0.2550517
6 months    ki0047075b-MAL-ED     PERU         1                    NA                 1.1803657    0.9786883    1.3820432
6 months    ki0047075b-MAL-ED     PERU         0                    NA                 0.9854763    0.8323263    1.1386263
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.6248062   -0.9715960   -0.2780164
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.4893333   -0.8590751   -0.1195916
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.5758194   -0.6779531   -0.4736858
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.6666746   -0.8361019   -0.4972474
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.3539119    0.0224065    0.6854173
6 months    ki1148112-LCNI-5      MALAWI       0                    NA                 0.4003312    0.2732536    0.5274089
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.6030503   -0.6301320   -0.5759685
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.5895661   -0.6354591   -0.5436730
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.3447532   -0.3896822   -0.2998241
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5643131   -0.6451969   -0.4834293
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.9065560   -1.0989154   -0.7141967
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.7486551   -0.9148110   -0.5824993
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.4109727   -0.2156861    1.0376315
24 months   ki0047075b-MAL-ED     BRAZIL       0                    NA                 0.4719481    0.2514046    0.6924916
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.7599901   -1.3106123   -0.2093680
24 months   ki0047075b-MAL-ED     INDIA        0                    NA                -0.9565577   -1.0810882   -0.8320273
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.3296913   -0.9323907    0.2730082
24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                -0.3672649   -0.4869601   -0.2475698
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0432185   -0.1410528    0.2274898
24 months   ki0047075b-MAL-ED     PERU         0                    NA                 0.1298059   -0.0286349    0.2882467
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -1.0883356   -1.1881820   -0.9884892
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.2941359   -1.5024642   -1.0858076
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                -0.1376294   -0.4529507    0.1776920
24 months   ki1148112-LCNI-5      MALAWI       0                    NA                -0.0657176   -0.2267230    0.0952878
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -1.3206796   -1.3555627   -1.2857964
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -1.2719513   -1.3343028   -1.2095998
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -1.2212476   -1.2625938   -1.1799014
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -1.2335058   -1.3107808   -1.1562307


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
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 -0.1449698   -0.4511859    0.1612463
Birth       ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL       0                    1                  0.4849231   -1.0695798    2.0394260
Birth       ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU         0                    1                 -0.0816048   -0.3535782    0.1903685
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0180398   -0.2012985    0.1652189
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0253448   -0.0227029    0.0733924
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0741824   -0.2183333    0.0699685
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.0453473   -0.2421824    0.3328769
6 months    ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL       0                    1                 -0.5749842   -1.0710130   -0.0789553
6 months    ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA        0                    1                 -0.6352577   -1.1868979   -0.0836175
6 months    ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL        0                    1                  0.1050453   -0.5910269    0.8011174
6 months    ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU         0                    1                 -0.1948894   -0.4481202    0.0583413
6 months    ki1000109-EE          PAKISTAN     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                  0.1354729   -0.3714513    0.6423970
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.0908552   -0.2880735    0.1063631
6 months    ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5      MALAWI       0                    1                  0.0464193   -0.3088165    0.4016552
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0134842   -0.0384753    0.0654437
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.2195599   -0.3112879   -0.1278320
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                  0.1579009   -0.1005040    0.4163058
24 months   ki0047075b-MAL-ED     BRAZIL       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL       0                    1                  0.0609754   -0.6037565    0.7257073
24 months   ki0047075b-MAL-ED     INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA        0                    1                 -0.1965676   -0.7611425    0.3680073
24 months   ki0047075b-MAL-ED     NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL        0                    1                 -0.0375737   -0.6525856    0.5774382
24 months   ki0047075b-MAL-ED     PERU         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU         0                    1                  0.0865874   -0.1532486    0.3264234
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 -0.2058004   -0.4371500    0.0255493
24 months   ki1148112-LCNI-5      MALAWI       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5      MALAWI       0                    1                  0.0719117   -0.2830926    0.4269161
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                  0.0487283   -0.0223376    0.1197941
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 -0.0122581   -0.0977694    0.0732531


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0922302   -0.2915813    0.1071209
Birth       ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.4423860   -0.9762121    1.8609840
Birth       ki0047075b-MAL-ED     PERU         1                    NA                -0.0546746   -0.2362373    0.1268881
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0017661   -0.0479125    0.0443803
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0063125   -0.0042403    0.0168654
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0145431   -0.0417834    0.0126972
6 months    ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0302546   -0.1572039    0.2177132
6 months    ki0047075b-MAL-ED     BRAZIL       1                    NA                -0.4931218   -0.9226760   -0.0635675
6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.6044995   -1.1335956   -0.0754035
6 months    ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0987566   -0.5621031    0.7596163
6 months    ki0047075b-MAL-ED     PERU         1                    NA                -0.1297507   -0.2977344    0.0382330
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0141118   -0.0400020    0.0682256
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0250977   -0.0758888    0.0256934
6 months    ki1148112-LCNI-5      MALAWI       1                    NA                 0.0385881   -0.2565602    0.3337364
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0029202   -0.0089353    0.0147757
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0520925   -0.0736683   -0.0305167
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0895804   -0.0771063    0.2562671
24 months   ki0047075b-MAL-ED     BRAZIL       1                    NA                 0.0516506   -0.5219910    0.6252922
24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.1842682   -0.7267723    0.3582358
24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                -0.0377517   -0.6253320    0.5498287
24 months   ki0047075b-MAL-ED     PERU         1                    NA                 0.0679797   -0.0904594    0.2264188
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0540170   -0.1109997    0.0029658
24 months   ki1148112-LCNI-5      MALAWI       1                    NA                 0.0605641   -0.2336088    0.3547371
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0103421   -0.0059061    0.0265903
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0052844   -0.0249631    0.0143942
