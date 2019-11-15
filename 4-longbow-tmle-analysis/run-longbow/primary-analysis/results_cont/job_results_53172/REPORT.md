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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

* arm
* sex
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
* month
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
* delta_month
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

agecat      studyid                    country                        exclfeed3    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               138     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                77     215
Birth       ki0047075b-MAL-ED          BRAZIL                         1                12      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                45      57
Birth       ki0047075b-MAL-ED          INDIA                          1                24      41
Birth       ki0047075b-MAL-ED          INDIA                          0                17      41
Birth       ki0047075b-MAL-ED          NEPAL                          1                 8      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                18      26
Birth       ki0047075b-MAL-ED          PERU                           1                49     223
Birth       ki0047075b-MAL-ED          PERU                           0               174     223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                12     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                88     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                17     102
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                85     102
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4
Birth       ki1000108-IRC              INDIA                          1                 0      10
Birth       ki1000108-IRC              INDIA                          0                10      10
Birth       ki1000109-EE               PAKISTAN                       1                35      35
Birth       ki1000109-EE               PAKISTAN                       0                 0      35
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               346     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                18     364
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               387     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               152     539
Birth       ki1101329-Keneba           GAMBIA                         1              1198    1356
Birth       ki1101329-Keneba           GAMBIA                         0               158    1356
Birth       ki1113344-GMS-Nepal        NEPAL                          1               380     458
Birth       ki1113344-GMS-Nepal        NEPAL                          0                78     458
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             12014   13276
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1262   13276
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               105     116
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                11     116
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               152     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                81     233
6 months    ki0047075b-MAL-ED          BRAZIL                         1                60     187
6 months    ki0047075b-MAL-ED          BRAZIL                         0               127     187
6 months    ki0047075b-MAL-ED          INDIA                          1               110     210
6 months    ki0047075b-MAL-ED          INDIA                          0               100     210
6 months    ki0047075b-MAL-ED          NEPAL                          1                70     227
6 months    ki0047075b-MAL-ED          NEPAL                          0               157     227
6 months    ki0047075b-MAL-ED          PERU                           1                61     270
6 months    ki0047075b-MAL-ED          PERU                           0               209     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                22     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               222     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                46     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               166     212
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
6 months    ki1000108-IRC              INDIA                          1                 0      10
6 months    ki1000108-IRC              INDIA                          0                10      10
6 months    ki1000109-EE               PAKISTAN                       1                39      39
6 months    ki1000109-EE               PAKISTAN                       0                 0      39
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               428     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               176     604
6 months    ki1101329-Keneba           GAMBIA                         1              1541    1742
6 months    ki1101329-Keneba           GAMBIA                         0               201    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1               367     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                74     441
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              8514    9328
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               814    9328
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                76      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                12      88
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               135     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                70     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                52     152
24 months   ki0047075b-MAL-ED          BRAZIL                         0               100     152
24 months   ki0047075b-MAL-ED          INDIA                          1               102     202
24 months   ki0047075b-MAL-ED          INDIA                          0               100     202
24 months   ki0047075b-MAL-ED          NEPAL                          1                67     220
24 months   ki0047075b-MAL-ED          NEPAL                          0               153     220
24 months   ki0047075b-MAL-ED          PERU                           1                43     198
24 months   ki0047075b-MAL-ED          PERU                           0               155     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                19     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     228
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                38     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               146     184
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
24 months   ki1000108-IRC              INDIA                          1                 0      10
24 months   ki1000108-IRC              INDIA                          0                10      10
24 months   ki1000109-EE               PAKISTAN                       1                20      20
24 months   ki1000109-EE               PAKISTAN                       0                 0      20
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               408     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               170     578
24 months   ki1101329-Keneba           GAMBIA                         1              1274    1420
24 months   ki1101329-Keneba           GAMBIA                         0               146    1420
24 months   ki1113344-GMS-Nepal        NEPAL                          1               322     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                62     384
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              4433    4852
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               419    4852
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               136     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                15     151


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/1eeccc6d-eec8-45b5-ad19-3040dd7c506c/c5711ffb-81eb-4f39-b417-18c34f5abd2c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1eeccc6d-eec8-45b5-ad19-3040dd7c506c/c5711ffb-81eb-4f39-b417-18c34f5abd2c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1eeccc6d-eec8-45b5-ad19-3040dd7c506c/c5711ffb-81eb-4f39-b417-18c34f5abd2c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.1230985   -1.2841155   -0.9620816
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.0081994   -1.2610679   -0.7553309
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.5775625   -1.2897560    0.1346309
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.7427735   -1.0668969   -0.4186501
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -1.4231140   -1.9304347   -0.9157933
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.8689138   -1.1703349   -0.5674927
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.6962500   -1.1273498   -0.2651502
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.8800000   -1.3706027   -0.3893973
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.8490703   -1.0752151   -0.6229254
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -0.8794955   -1.0027226   -0.7562684
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.9711660   -1.4223408   -0.5199912
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.5692996   -0.7875437   -0.3510556
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.6630764   -2.2185456   -1.1076072
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0830538   -1.3323405   -0.8337672
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.3791852   -1.4632653   -1.2951052
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.4188476   -2.1434587   -0.6942365
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.9053743   -0.9854424   -0.8253063
Birth       ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.8160096   -0.9480805   -0.6839388
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                 0.0037475   -0.0693656    0.0768606
Birth       ki1101329-Keneba          GAMBIA                         0                    NA                 0.0649152   -0.1136939    0.2435244
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.0246066   -1.1316256   -0.9175877
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.1677310   -1.4310148   -0.9044471
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.5899535   -1.6135892   -1.5663179
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.6135376   -1.6685359   -1.5585393
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.5668819   -1.7686140   -1.3651498
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.4899311   -2.0288629   -0.9509993
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.1982099   -1.3323213   -1.0640984
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.3097545   -1.5508788   -1.0686302
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1122309   -0.1700612    0.3945229
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0402546   -0.1486467    0.2291560
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -1.1683733   -1.3414410   -0.9953056
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -1.2417823   -1.4317718   -1.0517929
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.6319358   -0.8581773   -0.4056942
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.5355739   -0.6659870   -0.4051609
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -1.3615787   -1.6009805   -1.1221768
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                -1.2941602   -1.4151288   -1.1731916
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.7342423   -1.2180347   -0.2504499
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.0989592   -1.2339903   -0.9639282
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.4301448   -1.7125001   -1.1477895
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4008248   -1.5447831   -1.2568665
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.4654856   -2.2428805   -0.6880907
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -1.0891096   -1.1729727   -1.0052465
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -1.1167879   -1.2718826   -0.9616931
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.9289615   -0.9828589   -0.8750641
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                -1.1097949   -1.2642444   -0.9553454
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.3300178   -1.4249804   -1.2350552
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.4965706   -1.7325118   -1.2606294
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.3197150   -1.3488822   -1.2905478
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.3678191   -1.4527092   -1.2829290
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.1233771   -1.3116861   -0.9350681
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.5590145   -2.2615736   -0.8564555
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.9723344   -2.1286362   -1.8160326
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -2.0583472   -2.2855353   -1.8311590
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0979705   -0.4060723    0.2101313
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0210595   -0.1987838    0.2409028
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -2.0274628   -2.2078871   -1.8470385
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -1.7692473   -1.9621741   -1.5763205
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -1.3484985   -1.5611410   -1.1358560
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -1.2699904   -1.4163844   -1.1235964
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -1.7981332   -2.0971838   -1.4990827
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                -1.7268474   -1.8593026   -1.5943923
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -1.4788610   -1.9649457   -0.9927763
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.6647669   -1.8105696   -1.5189643
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5807533   -2.9173120   -2.2441946
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6944052   -2.8560732   -2.5327372
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -1.6506892   -1.7482671   -1.5531113
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -1.5114943   -1.6645785   -1.3584100
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -1.5765838   -1.6334042   -1.5197635
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                -1.7735226   -1.9338866   -1.6131586
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.8830019   -1.9847132   -1.7812905
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.8704389   -2.1050582   -1.6358196
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -2.0048539   -2.0426645   -1.9670434
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -2.1552076   -2.2628101   -2.0476052
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.7144611   -1.8621565   -1.5667658
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -2.0645774   -2.3371514   -1.7920035


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.0949767   -1.2319917   -0.9579618
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.6996491   -0.9856018   -0.4136965
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.2075610   -1.5261540   -0.8889679
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.8234615   -1.1896049   -0.4573182
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                -0.8753812   -0.9932108   -0.7575515
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.5797000   -0.7788298   -0.3805702
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1086275   -1.3310338   -0.8862211
Birth       ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -1.3937088   -1.5095039   -1.2779137
Birth       ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba          GAMBIA                         NA                   NA                 0.0098304   -0.0597854    0.0794461
Birth       ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.0555240   -1.1550843   -0.9559638
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.5928457   -1.6158667   -1.5698248
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.6073276   -1.8105798   -1.4040753
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -1.2242918   -1.3439424   -1.1046413
6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0609091   -0.0944768    0.2162950
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.2002381   -1.3274929   -1.0729833
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.5634068   -0.6769687   -0.4498449
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                -1.3108735   -1.4182407   -1.2035062
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -1.0662227   -1.1965862   -0.9358591
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.4030503   -1.5292443   -1.2768563
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1101329-Keneba          GAMBIA                         NA                   NA                -0.9489317   -1.0001696   -0.8976937
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.3499849   -1.4387386   -1.2612312
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.3240051   -1.3526414   -1.2953689
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.1994318   -1.3808291   -1.0180345
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -2.0016585   -2.1303297   -1.8729874
24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.0162939   -0.1929098    0.1603221
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -1.8994059   -2.0346781   -1.7641337
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -1.3109318   -1.4313748   -1.1904888
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -1.7412963   -1.8630698   -1.6195228
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -1.6424525   -1.7808926   -1.5040124
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6768207   -2.8213178   -2.5323235
24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -1.5961170   -1.6505261   -1.5417080
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.8752995   -1.9688053   -1.7817937
24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -2.0187325   -2.0554682   -1.9819968
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.7726490   -1.9111913   -1.6341067


### Parameter: ATE


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.1148991   -0.1861581    0.4159563
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.1652110   -0.9571333    0.6267113
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                  0.5542002   -0.0445156    1.1529161
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.1837500   -0.8368488    0.4693488
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 -0.0304253   -0.2649223    0.2040718
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.4018663   -0.1020836    0.9058163
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.5800226   -0.0441137    1.2041588
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0396624   -0.7382457    0.6589209
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0893647   -0.0494453    0.2281747
Birth       ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA                         0                    1                  0.0611678   -0.1244819    0.2468174
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.1431243   -0.4279063    0.1416576
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.0235841   -0.0788522    0.0316841
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.0769508   -0.4822604    0.6361619
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.1115446   -0.3885308    0.1654416
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0719762   -0.4127613    0.2688088
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0734090   -0.3318187    0.1850007
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0963618   -0.1651844    0.3579080
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.0674185   -0.2010816    0.3359186
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.3647169   -0.8669203    0.1374864
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0293200   -0.2882832    0.3469231
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0104897   -0.7471588    0.7261794
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.0276783   -0.2041643    0.1488078
6 months    ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA                         0                    1                 -0.1808334   -0.3438088   -0.0178580
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.1665528   -0.4204927    0.0873871
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.0481041   -0.1340494    0.0378412
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.4356374   -1.1633373    0.2920625
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0860128   -0.3619780    0.1899524
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.1190301   -0.2573155    0.4953756
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.2582155   -0.0026485    0.5190794
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0785082   -0.1805603    0.3375766
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0712858   -0.2561488    0.3987204
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.1859059   -0.6952462    0.3234343
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1136519   -0.4870407    0.2597369
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.1391949   -0.0403000    0.3186898
24 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.1969387   -0.3642496   -0.0296278
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0125629   -0.2423130    0.2674389
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.1503537   -0.2606677   -0.0400398
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.3501163   -0.6615928   -0.0386399


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0281218   -0.0800402    0.1362837
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.1220866   -0.7605439    0.5163707
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                 0.2155530   -0.0673169    0.4984230
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.1272115   -0.5805774    0.3261543
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.0263109   -0.2085167    0.1558949
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.3914660   -0.0572974    0.8402294
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5544490    0.0258664    1.0830316
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0145236   -0.0577567    0.0287095
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0202723   -0.0191480    0.0596926
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                 0.0060829   -0.0146484    0.0268142
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0309174   -0.0799545    0.0181197
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0028922   -0.0081545    0.0023701
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0404457   -0.1181309    0.0372395
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0260820   -0.1220347    0.0698707
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0513218   -0.2837974    0.1811538
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0318648   -0.1558166    0.0920870
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0685290   -0.1129763    0.2500344
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0507052   -0.1581396    0.2595501
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.3319804   -0.7911235    0.1271627
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0270945   -0.2281109    0.2822998
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0147277   -0.0507565    0.0213012
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0025819   -0.0538597    0.0486959
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.0199702   -0.0390044   -0.0009359
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0199671   -0.0633318    0.0233976
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0042902   -0.0118127    0.0032324
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0760547   -0.1631022    0.0109927
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0293242   -0.1236476    0.0649993
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0816767   -0.1707015    0.3340548
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.1280568   -0.0016411    0.2577548
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0375667   -0.1435970    0.2187304
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0568369   -0.2008717    0.3145456
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.1635915   -0.6339136    0.3067307
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0960674   -0.4018872    0.2097524
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0482670   -0.0048361    0.1013701
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0195332   -0.0370239   -0.0020425
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0077024   -0.0331153    0.0485201
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0138786   -0.0233178   -0.0044394
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0581879   -0.0980523   -0.0183234
