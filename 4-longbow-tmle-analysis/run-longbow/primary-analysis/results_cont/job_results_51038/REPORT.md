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

**Intervention Variable:** trth2o

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nhh
* W_nchldlt5
* cleanck
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        trth2o    n_cell     n
----------  -------------------------  -----------------------------  -------  -------  ----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1            124   126
Birth       ki0047075b-MAL-ED          BANGLADESH                     0              2   126
Birth       ki0047075b-MAL-ED          BRAZIL                         1             11    81
Birth       ki0047075b-MAL-ED          BRAZIL                         0             70    81
Birth       ki0047075b-MAL-ED          INDIA                          1              2     6
Birth       ki0047075b-MAL-ED          INDIA                          0              4     6
Birth       ki0047075b-MAL-ED          NEPAL                          1             49    61
Birth       ki0047075b-MAL-ED          NEPAL                          0             12    61
Birth       ki0047075b-MAL-ED          PERU                           1             36    45
Birth       ki0047075b-MAL-ED          PERU                           0              9    45
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              1    10
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    10
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              2    20
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             18    20
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             25    25
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              0    25
Birth       ki1000108-IRC              INDIA                          1            105   105
Birth       ki1000108-IRC              INDIA                          0              0   105
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             12    23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             11    23
6 months    ki0047075b-MAL-ED          BANGLADESH                     1            132   134
6 months    ki0047075b-MAL-ED          BANGLADESH                     0              2   134
6 months    ki0047075b-MAL-ED          BRAZIL                         1             13   103
6 months    ki0047075b-MAL-ED          BRAZIL                         0             90   103
6 months    ki0047075b-MAL-ED          INDIA                          1              4     9
6 months    ki0047075b-MAL-ED          INDIA                          0              5     9
6 months    ki0047075b-MAL-ED          NEPAL                          1             69    83
6 months    ki0047075b-MAL-ED          NEPAL                          0             14    83
6 months    ki0047075b-MAL-ED          PERU                           1             39    49
6 months    ki0047075b-MAL-ED          PERU                           0             10    49
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             10    12
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    42
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             36    42
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1            120   120
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0   120
6 months    ki1000108-IRC              INDIA                          1            121   121
6 months    ki1000108-IRC              INDIA                          0              0   121
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             13   582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            569   582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            396   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            319   715
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1     4
6 months    ki1113344-GMS-Nepal        NEPAL                          0              3     4
24 months   ki0047075b-MAL-ED          BANGLADESH                     1            133   135
24 months   ki0047075b-MAL-ED          BANGLADESH                     0              2   135
24 months   ki0047075b-MAL-ED          BRAZIL                         1             13   103
24 months   ki0047075b-MAL-ED          BRAZIL                         0             90   103
24 months   ki0047075b-MAL-ED          INDIA                          1              4     9
24 months   ki0047075b-MAL-ED          INDIA                          0              5     9
24 months   ki0047075b-MAL-ED          NEPAL                          1             69    83
24 months   ki0047075b-MAL-ED          NEPAL                          0             14    83
24 months   ki0047075b-MAL-ED          PERU                           1             39    49
24 months   ki0047075b-MAL-ED          PERU                           0             10    49
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              2    11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0              9    11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              6    43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             37    43
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1            119   119
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0   119
24 months   ki1000108-IRC              INDIA                          1            121   121
24 months   ki1000108-IRC              INDIA                          0              0   121
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             14   578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            564   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            242   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            272   514
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1     4
24 months   ki1113344-GMS-Nepal        NEPAL                          0              3     4


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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

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
![](/tmp/12c74039-60fe-4a9f-9fb4-fb4f978f994f/01b95439-12f8-43ac-98ba-f8c8190d5397/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/12c74039-60fe-4a9f-9fb4-fb4f978f994f/01b95439-12f8-43ac-98ba-f8c8190d5397/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/12c74039-60fe-4a9f-9fb4-fb4f978f994f/01b95439-12f8-43ac-98ba-f8c8190d5397/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BRAZIL                         1                    NA                 1.1414435    0.4745165    1.8083704
Birth       ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.3746742    0.0788613    0.6704872
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                -1.0354324   -1.2763018   -0.7945629
Birth       ki0047075b-MAL-ED       NEPAL                          0                    NA                -0.8806253   -1.4745870   -0.2866636
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                -0.1833333   -0.5206097    0.1539430
Birth       ki0047075b-MAL-ED       PERU                           0                    NA                 0.0533333   -0.2938838    0.4005504
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.6341186   -1.3459275    0.0776903
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.8023299   -1.5967881   -0.0078718
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                 1.0548379    0.3886491    1.7210267
6 months    ki0047075b-MAL-ED       BRAZIL                         0                    NA                 1.0252488    0.7681702    1.2823274
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.1112641   -0.1540825    0.3766107
6 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.2900824   -0.3993200    0.9794848
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                 1.0331910    0.6688592    1.3975229
6 months    ki0047075b-MAL-ED       PERU                           0                    NA                 0.4484120   -0.1803295    1.0771536
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 1.4100000    1.0960519    1.7239481
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5646759    0.2190799    0.9102720
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.8071872    0.3042435    1.3101310
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.2321918   -0.3169989   -0.1473846
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0397190   -0.0623543    0.1417923
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                 0.0096795   -0.1128624    0.1322213
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                 0.6899832    0.1179853    1.2619812
24 months   ki0047075b-MAL-ED       BRAZIL                         0                    NA                 0.5273207    0.2458079    0.8088335
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.2703314   -0.4889489   -0.0517139
24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                 0.0104387   -0.4699107    0.4907880
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0855991   -0.2419553    0.4131535
24 months   ki0047075b-MAL-ED       PERU                           0                    NA                 0.3590750   -0.4176698    1.1358198
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2166667   -0.6845675    1.1179009
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0854054   -0.2281139    0.3989247
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.3549602   -0.7734312    0.0635108
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                -0.9007401   -0.9849790   -0.8165012
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.7629884   -0.8983471   -0.6276297
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                -0.4791673   -0.6194477   -0.3388868


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.4682716    0.1940109    0.7425323
Birth       ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.9847541   -1.2066471   -0.7628611
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                -0.1360000   -0.4160147    0.1440147
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.7508696   -1.2358912   -0.2658480
6 months    ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.9728964    0.7346428    1.2111501
6 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                 0.1409639   -0.1073951    0.3893228
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                 0.9037755    0.5863704    1.2211806
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.6854365    0.3724525    0.9984205
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
24 months   ki0047075b-MAL-ED       BRAZIL                         NA                   NA                 0.5139320    0.2565665    0.7712976
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                -0.2262651   -0.4277663   -0.0247638
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                 0.1145918   -0.1849945    0.4141781
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1037209   -0.1942394    0.4016813
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847


### Parameter: ATE


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.7667692   -1.4990872   -0.0344513
Birth       ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       NEPAL                          0                    1                  0.1548071   -0.4919120    0.8015261
Birth       ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED       PERU                           0                    1                  0.2366667   -0.2473943    0.7207277
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.1682114   -1.2602770    0.9238542
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.0295891   -0.7541617    0.6949836
6 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       NEPAL                          0                    1                  0.1788183   -0.5580170    0.9156535
6 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       PERU                           0                    1                 -0.5847790   -1.3061709    0.1366128
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.8453241   -1.3122289   -0.3784193
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -1.0393790   -1.5493284   -0.5294296
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0300395   -0.1890560    0.1289769
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       BRAZIL                         0                    1                 -0.1626625   -0.8032892    0.4779641
24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.2807701   -0.2473551    0.8088954
24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       PERU                           0                    1                  0.2734760   -0.5662420    1.1131940
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1312613   -1.0854716    0.8229491
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.5457799   -0.9722743   -0.1192854
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.2838211    0.0897195    0.4779228


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.6731719   -1.3123712   -0.0339726
Birth       ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0506783   -0.0702499    0.1716064
Birth       ki0047075b-MAL-ED       PERU                           1                    NA                 0.0473333   -0.0534388    0.1481054
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.1167510   -0.6440485    0.4105465
6 months    ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.0819414   -0.7259014    0.5620186
6 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0296997   -0.0988590    0.1582585
6 months    ki0047075b-MAL-ED       PERU                           1                    NA                -0.1294155   -0.2845895    0.0257585
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.7245635   -1.1348822   -0.3142448
6 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -1.0155578   -1.5139856   -0.5171300
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0099568   -0.0815306    0.0616171
24 months   ki0047075b-MAL-ED       BRAZIL                         1                    NA                -0.1760512   -0.7383162    0.3862139
24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0440664   -0.0534800    0.1416128
24 months   ki0047075b-MAL-ED       PERU                           1                    NA                 0.0289928   -0.1244943    0.1824798
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1129457   -0.9341257    0.7082342
24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.5329810   -0.9497701   -0.1161919
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.1526382    0.0431992    0.2620773
