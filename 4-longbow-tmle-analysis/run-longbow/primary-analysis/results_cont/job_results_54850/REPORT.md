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

agecat      studyid                    country                        exclfeed3    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               130     202  whz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                72     202  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1                11      55  whz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0                44      55  whz              
Birth       ki0047075b-MAL-ED          INDIA                          1                22      39  whz              
Birth       ki0047075b-MAL-ED          INDIA                          0                17      39  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          1                 8      25  whz              
Birth       ki0047075b-MAL-ED          NEPAL                          0                17      25  whz              
Birth       ki0047075b-MAL-ED          PERU                           1                47     218  whz              
Birth       ki0047075b-MAL-ED          PERU                           0               171     218  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                12      99  whz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                87      99  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                15      95  whz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                80      95  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4  whz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4  whz              
Birth       ki1000108-IRC              INDIA                          1                 0       9  whz              
Birth       ki1000108-IRC              INDIA                          0                 9       9  whz              
Birth       ki1000109-EE               PAKISTAN                       1                22      22  whz              
Birth       ki1000109-EE               PAKISTAN                       0                 0      22  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               310     325  whz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                15     325  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               381     532  whz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               151     532  whz              
Birth       ki1101329-Keneba           GAMBIA                         1              1133    1282  whz              
Birth       ki1101329-Keneba           GAMBIA                         0               149    1282  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1               352     422  whz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0                70     422  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              9636   10634  whz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               998   10634  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                89      97  whz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 8      97  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               152     233  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                81     233  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1                60     187  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0               127     187  whz              
6 months    ki0047075b-MAL-ED          INDIA                          1               110     210  whz              
6 months    ki0047075b-MAL-ED          INDIA                          0               100     210  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          1                70     227  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          0               157     227  whz              
6 months    ki0047075b-MAL-ED          PERU                           1                61     270  whz              
6 months    ki0047075b-MAL-ED          PERU                           0               209     270  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                22     244  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               222     244  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                46     212  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               166     212  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10  whz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10  whz              
6 months    ki1000108-IRC              INDIA                          1                 0      10  whz              
6 months    ki1000108-IRC              INDIA                          0                10      10  whz              
6 months    ki1000109-EE               PAKISTAN                       1                39      39  whz              
6 months    ki1000109-EE               PAKISTAN                       0                 0      39  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               376     395  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     395  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               428     603  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               175     603  whz              
6 months    ki1101329-Keneba           GAMBIA                         1              1541    1742  whz              
6 months    ki1101329-Keneba           GAMBIA                         0               201    1742  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1               367     441  whz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0                74     441  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              8499    9310  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               811    9310  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                76      88  whz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                12      88  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               135     205  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                70     205  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1                52     152  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0               100     152  whz              
24 months   ki0047075b-MAL-ED          INDIA                          1               102     202  whz              
24 months   ki0047075b-MAL-ED          INDIA                          0               100     202  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          1                67     220  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          0               153     220  whz              
24 months   ki0047075b-MAL-ED          PERU                           1                43     198  whz              
24 months   ki0047075b-MAL-ED          PERU                           0               155     198  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                19     228  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     228  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                38     184  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               146     184  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10  whz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10  whz              
24 months   ki1000108-IRC              INDIA                          1                 0      10  whz              
24 months   ki1000108-IRC              INDIA                          0                10      10  whz              
24 months   ki1000109-EE               PAKISTAN                       1                20      20  whz              
24 months   ki1000109-EE               PAKISTAN                       0                 0      20  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               408     579  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               171     579  whz              
24 months   ki1101329-Keneba           GAMBIA                         1              1274    1421  whz              
24 months   ki1101329-Keneba           GAMBIA                         0               147    1421  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1               322     384  whz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0                62     384  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              4416    4833  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               417    4833  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               135     150  whz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                15     150  whz              


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/7f237972-50b6-402e-8def-a76750719155/fd376a74-e4ab-4562-8250-23203c067725/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7f237972-50b6-402e-8def-a76750719155/fd376a74-e4ab-4562-8250-23203c067725/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7f237972-50b6-402e-8def-a76750719155/fd376a74-e4ab-4562-8250-23203c067725/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.8926337   -1.0776025   -0.7076648
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.0134333   -1.2642114   -0.7626552
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.3903175   -0.3127051    1.0933400
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.4271744    0.0403224    0.8140263
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -1.0218138   -1.4408683   -0.6027592
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.8880654   -1.3580956   -0.4180353
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.4487500   -0.8783289   -0.0191711
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.9570588   -1.4394884   -0.4746293
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                 0.2245759   -0.0156813    0.4648330
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -0.1017196   -0.2439089    0.0404697
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.8047053   -1.5762460   -0.0331645
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.1690234   -0.4121219    0.0740751
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.3432809    0.8902826    1.7962792
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.6968120    0.4655217    0.9281024
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.6419787   -0.8661092   -0.4178481
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.0901282   -1.7027393   -0.4775170
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -1.2673465   -1.3556319   -1.1790610
Birth       ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -1.3799809   -1.5213376   -1.2386241
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                -1.2590441   -1.3269278   -1.1911604
Birth       ki1101329-Keneba          GAMBIA                         0                    NA                -1.2899063   -1.4763893   -1.1034232
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.1091709   -1.2269065   -0.9914353
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.0477449   -1.2488036   -0.8466862
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.7828535   -0.8061075   -0.7595996
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.7508939   -0.8172433   -0.6845446
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.4156180   -0.6383645   -0.1928714
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.6475000   -1.0569566   -0.2380434
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1025941   -0.2682095    0.0630212
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.2121206   -0.4287655    0.0045243
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 1.0901532    0.7681176    1.4121889
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.8860451    0.6762050    1.0958851
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.7057424   -0.8685873   -0.5428975
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.7577161   -0.9679224   -0.5475099
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.1931410   -0.0570965    0.4433786
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0640747   -0.0987356    0.2268851
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 1.1943120    0.9799449    1.4086790
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                 1.0172754    0.8717497    1.1628012
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.5849769    0.2401896    0.9297642
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.5604251    0.3969488    0.7239014
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.7979431    0.4859238    1.1099624
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.4462584    0.2930005    0.5995163
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.6438016   -0.7819173   -0.5056859
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.6500492   -1.1672739   -0.1328245
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.1358568   -0.2298204   -0.0418932
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.3541540   -0.5196002   -0.1887077
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.1822612   -0.2406304   -0.1238921
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                -0.3841264   -0.5626934   -0.2055593
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.6282702   -0.7386105   -0.5179300
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.6129806   -0.8651548   -0.3608064
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.6061761   -0.6317069   -0.5806452
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.5831785   -0.6605617   -0.5057954
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.4066101   -0.6363709   -0.1768494
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.1802849   -0.6212201    0.2606503
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.8289775   -0.9847580   -0.6731970
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.8042899   -0.9929237   -0.6156561
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.2857259   -0.0554822    0.6269339
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.5875530    0.3034089    0.8716971
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.9300346   -1.0851893   -0.7748799
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.9676904   -1.1468166   -0.7885641
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.2168928   -0.4245801   -0.0092054
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.4210796   -0.5611049   -0.2810542
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.1339901   -0.0800338    0.3480140
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.1260638   -0.0121171    0.2642447
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.7178315    0.4454826    0.9901804
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.3838516    0.2535147    0.5141886
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1256989   -0.1153424    0.3667402
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0484938   -0.1113305    0.2083181
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.9209777   -1.0171174   -0.8248379
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.8305835   -0.9850244   -0.6761425
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.7740629   -0.8283079   -0.7198178
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                -0.9578214   -1.1121814   -0.8034614
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.1552075   -1.2677877   -1.0426274
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.1021840   -1.3365008   -0.8678672
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.3141043   -1.3459121   -1.2822964
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.2818206   -1.3984884   -1.1651528
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.0248298   -1.1875172   -0.8621423
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -0.8154919   -1.3385063   -0.2924775


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.9411386   -1.0895370   -0.7927402
Birth       ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.4316364    0.0969688    0.7663039
Birth       ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.9779487   -1.2664810   -0.6894164
Birth       ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.7944000   -1.1625222   -0.4262778
Birth       ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0335321   -0.1564905    0.0894263
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1588889   -0.3845288    0.0667510
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7996842    0.5874808    1.0118876
Birth       ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.6596308   -0.9005716   -0.4186900
Birth       ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1101329-Keneba          GAMBIA                         NA                   NA                -1.2629563   -1.3291505   -1.1967622
Birth       ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.0991706   -1.2073693   -0.9909719
Birth       kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.7798636   -0.8022140   -0.7575133
Birth       kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.4347423   -0.6441144   -0.2253701
6 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.1304936   -0.2625419    0.0015547
6 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.9754144    0.7990651    1.1517638
6 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.7185992   -0.8491469   -0.5880515
6 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.1041483   -0.0311352    0.2394318
6 months    ki0047075b-MAL-ED         PERU                           NA                   NA                 1.0514136    0.9289176    1.1739096
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.5564071    0.4055220    0.7072922
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5257626    0.3871543    0.6643709
6 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba          GAMBIA                         NA                   NA                -0.2057183   -0.2614359   -0.1500006
6 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.6198791   -0.7206518   -0.5191063
6 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.6040977   -0.6286619   -0.5795335
6 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.4110227   -0.6122701   -0.2097753
24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.8076829   -0.9296166   -0.6857493
24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.4981140    0.2760418    0.7201863
24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.9516832   -1.0703961   -0.8329703
24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.3790455   -0.4958857   -0.2622052
24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                 0.1176052   -0.0015211    0.2367315
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.4120797    0.2900939    0.5340654
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0495743   -0.0857535    0.1849021
24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -0.7930925   -0.8442611   -0.7419240
24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -1.1396441   -1.2416403   -1.0376479
24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -1.3109518   -1.3423299   -1.2795737
24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -1.0096000   -1.1619164   -0.8572836


### Parameter: ATE


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.1207997   -0.4330713    0.1914720
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0368569   -0.7707312    0.8444451
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                  0.1337483   -0.5240781    0.7915747
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.5083088   -1.1542781    0.1376604
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 -0.3262955   -0.6061898   -0.0464012
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.6356819   -0.1836178    1.4549815
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.6464689   -1.1579719   -0.1349658
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.4481495   -0.9783682    0.0820692
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.1126344   -0.2750112    0.0497423
Birth       ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA                         0                    1                 -0.0308622   -0.2222969    0.1605726
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0614259   -0.1557899    0.2786418
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0319596   -0.0368438    0.1007630
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.2318820   -0.6871466    0.2233826
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.1095264   -0.3829130    0.1638601
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.2041082   -0.5913391    0.1831228
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0519738   -0.3198060    0.2158584
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.1290663   -0.4261603    0.1680278
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                 -0.1770366   -0.4367600    0.0826869
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0245518   -0.4084527    0.3593491
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.3516847   -0.6997334   -0.0036360
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0062476   -0.5560776    0.5435824
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.2182971   -0.4086107   -0.0279836
6 months    ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA                         0                    1                 -0.2018651   -0.3889001   -0.0148301
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0152897   -0.2602972    0.2908765
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0229975   -0.0573898    0.1033848
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.2263252   -0.2793079    0.7319584
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0246876   -0.2193325    0.2687077
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.3018272   -0.1404614    0.7441157
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0376558   -0.2766363    0.2013247
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.2041868   -0.4546227    0.0462491
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                 -0.0079262   -0.2593220    0.2434695
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.3339798   -0.6362106   -0.0317490
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0772051   -0.3700084    0.2155982
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0903942   -0.0891564    0.2699448
24 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.1837585   -0.3474247   -0.0200924
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0530235   -0.2072639    0.3133110
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0322837   -0.0868267    0.1513942
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                  0.2093379   -0.3393247    0.7580004


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0485049   -0.1599989    0.0629891
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0413189   -0.6100781    0.6927160
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0438650   -0.2553497    0.3430798
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.3456500   -0.7950359    0.1037359
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.2581080   -0.4780013   -0.0382147
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.6458164   -0.0960842    1.3877169
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5435967   -0.9793975   -0.1077959
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0176521   -0.0527130    0.0174088
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0311122   -0.0771179    0.0148935
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                -0.0039122   -0.0261803    0.0183558
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0100003   -0.0256945    0.0456950
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0029899   -0.0035069    0.0094867
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0191243   -0.0615870    0.0233385
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0278994   -0.1240113    0.0682125
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.1147388   -0.3780964    0.1486189
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0128568   -0.1413334    0.1156197
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0889927   -0.2971837    0.1191983
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.1428984   -0.3444799    0.0586831
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0285698   -0.3812966    0.3241570
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2721805   -0.5467009    0.0023398
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0089155   -0.0178262    0.0356572
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0632338   -0.1188175   -0.0076502
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.0234570   -0.0445987   -0.0023153
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0083912   -0.0375302    0.0543125
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0020783   -0.0048998    0.0090564
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0044126   -0.0669847    0.0581595
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0212946   -0.0636800    0.1062691
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.2123882   -0.0805508    0.5053272
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0216486   -0.1462153    0.1029181
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.1621527   -0.3386565    0.0143512
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0163848   -0.2140600    0.1812903
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.3057518   -0.5833387   -0.0281649
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0761246   -0.3121776    0.1599284
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0281107   -0.0248218    0.0810431
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0190297   -0.0358557   -0.0022036
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0155634   -0.0275729    0.0586997
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0031525   -0.0071925    0.0134975
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0152298   -0.0317367    0.0621962
