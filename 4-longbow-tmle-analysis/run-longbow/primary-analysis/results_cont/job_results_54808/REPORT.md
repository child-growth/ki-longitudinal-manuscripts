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

agecat      studyid                    country                        exclfeed3    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ----------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               138     215  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                77     215  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1                12      57  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0                45      57  haz              
Birth       ki0047075b-MAL-ED          INDIA                          1                24      41  haz              
Birth       ki0047075b-MAL-ED          INDIA                          0                17      41  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          1                 8      26  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          0                18      26  haz              
Birth       ki0047075b-MAL-ED          PERU                           1                49     223  haz              
Birth       ki0047075b-MAL-ED          PERU                           0               174     223  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                12     100  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                88     100  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                17     102  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                85     102  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4  haz              
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4  haz              
Birth       ki1000108-IRC              INDIA                          1                 0      10  haz              
Birth       ki1000108-IRC              INDIA                          0                10      10  haz              
Birth       ki1000109-EE               PAKISTAN                       1                35      35  haz              
Birth       ki1000109-EE               PAKISTAN                       0                 0      35  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               346     364  haz              
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                18     364  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               387     539  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               152     539  haz              
Birth       ki1101329-Keneba           GAMBIA                         1              1198    1356  haz              
Birth       ki1101329-Keneba           GAMBIA                         0               158    1356  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          1               380     458  haz              
Birth       ki1113344-GMS-Nepal        NEPAL                          0                78     458  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             12014   13276  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1262   13276  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               105     116  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                11     116  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               152     233  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                81     233  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1                60     187  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0               127     187  haz              
6 months    ki0047075b-MAL-ED          INDIA                          1               110     210  haz              
6 months    ki0047075b-MAL-ED          INDIA                          0               100     210  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          1                70     227  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          0               157     227  haz              
6 months    ki0047075b-MAL-ED          PERU                           1                61     270  haz              
6 months    ki0047075b-MAL-ED          PERU                           0               209     270  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                22     244  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               222     244  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                46     212  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               166     212  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10  haz              
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10  haz              
6 months    ki1000108-IRC              INDIA                          1                 0      10  haz              
6 months    ki1000108-IRC              INDIA                          0                10      10  haz              
6 months    ki1000109-EE               PAKISTAN                       1                39      39  haz              
6 months    ki1000109-EE               PAKISTAN                       0                 0      39  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               428     604  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               176     604  haz              
6 months    ki1101329-Keneba           GAMBIA                         1              1541    1742  haz              
6 months    ki1101329-Keneba           GAMBIA                         0               201    1742  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          1               367     441  haz              
6 months    ki1113344-GMS-Nepal        NEPAL                          0                74     441  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              8514    9328  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               814    9328  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                76      88  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                12      88  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               135     205  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                70     205  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1                52     152  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0               100     152  haz              
24 months   ki0047075b-MAL-ED          INDIA                          1               102     202  haz              
24 months   ki0047075b-MAL-ED          INDIA                          0               100     202  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          1                67     220  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          0               153     220  haz              
24 months   ki0047075b-MAL-ED          PERU                           1                43     198  haz              
24 months   ki0047075b-MAL-ED          PERU                           0               155     198  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                19     228  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     228  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                38     184  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               146     184  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10  haz              
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10  haz              
24 months   ki1000108-IRC              INDIA                          1                 0      10  haz              
24 months   ki1000108-IRC              INDIA                          0                10      10  haz              
24 months   ki1000109-EE               PAKISTAN                       1                20      20  haz              
24 months   ki1000109-EE               PAKISTAN                       0                 0      20  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               408     578  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               170     578  haz              
24 months   ki1101329-Keneba           GAMBIA                         1              1274    1420  haz              
24 months   ki1101329-Keneba           GAMBIA                         0               146    1420  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          1               322     384  haz              
24 months   ki1113344-GMS-Nepal        NEPAL                          0                62     384  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              4433    4852  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               419    4852  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               136     151  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                15     151  haz              


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
![](/tmp/a61db20c-0ce0-4ef9-afa5-fe38c617af35/31427540-5bae-41b6-9c11-23e932522256/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a61db20c-0ce0-4ef9-afa5-fe38c617af35/31427540-5bae-41b6-9c11-23e932522256/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a61db20c-0ce0-4ef9-afa5-fe38c617af35/31427540-5bae-41b6-9c11-23e932522256/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.1337102   -1.2957267   -0.9716936
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.0356435   -1.2912625   -0.7800246
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.6093313   -1.3210098    0.1023471
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.7367189   -1.0626983   -0.4107396
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                -1.3785626   -1.8946386   -0.8624867
Birth       ki0047075b-MAL-ED         INDIA                          0                    NA                -0.8385055   -1.1584810   -0.5185300
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.6962500   -1.1273498   -0.2651502
Birth       ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.8800000   -1.3706027   -0.3893973
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.8566507   -1.0911060   -0.6221953
Birth       ki0047075b-MAL-ED         PERU                           0                    NA                -0.8802478   -1.0035850   -0.7569107
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.8660037   -1.3013900   -0.4306175
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.5685357   -0.7873895   -0.3496819
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.5048167   -2.0265571   -0.9830763
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0639960   -1.3097853   -0.8182067
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.3791852   -1.4632653   -1.2951052
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.4188476   -2.1434587   -0.6942365
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.9076120   -0.9877967   -0.8274273
Birth       ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.8277994   -0.9610050   -0.6945938
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                 0.0021434   -0.0710703    0.0753570
Birth       ki1101329-Keneba          GAMBIA                         0                    NA                 0.0718912   -0.1028100    0.2465925
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.0256472   -1.1326525   -0.9186418
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.1835776   -1.4462251   -0.9209302
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.5901121   -1.6137319   -1.5664923
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.6176616   -1.6727723   -1.5625510
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.5736517   -1.7758436   -1.3714597
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.9271457   -2.7502566   -1.1040348
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.1825038   -1.3154818   -1.0495257
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -1.2571968   -1.4945849   -1.0198087
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0804391   -0.1987470    0.3596251
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0334215   -0.1537025    0.2205454
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -1.1775999   -1.3540856   -1.0011141
6 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -1.2131127   -1.4016812   -1.0245442
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.5656489   -0.7932297   -0.3380681
6 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.5257238   -0.6559045   -0.3955430
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                -1.3653945   -1.6003819   -1.1304072
6 months    ki0047075b-MAL-ED         PERU                           0                    NA                -1.2920685   -1.4130164   -1.1711205
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.7982754   -1.2753262   -0.3212246
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.0975518   -1.2326504   -0.9624531
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.4391154   -1.7110366   -1.1671941
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.3999183   -1.5435683   -1.2562682
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -1.4549959   -1.6008850   -1.3091069
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -1.4654856   -2.2428805   -0.6880907
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -1.0828762   -1.1661907   -0.9995617
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -1.1011287   -1.2531109   -0.9491465
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.9290916   -0.9831298   -0.8750533
6 months    ki1101329-Keneba          GAMBIA                         0                    NA                -1.1000642   -1.2578614   -0.9422670
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.3267062   -1.4216090   -1.2318034
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.4021626   -1.6519663   -1.1523589
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -1.3196921   -1.3488559   -1.2905283
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -1.3691731   -1.4535211   -1.2848252
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.1139400   -1.3031769   -0.9247030
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -1.2758192   -1.8054594   -0.7461791
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -1.9737576   -2.1300517   -1.8174636
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -2.0800140   -2.3096097   -1.8504184
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0591573   -0.3646348    0.2463202
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0060103   -0.2141834    0.2262041
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -2.0149427   -2.1997428   -1.8301426
24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -1.7802544   -1.9747176   -1.5857912
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -1.4087331   -1.6196403   -1.1978260
24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -1.2808890   -1.4268348   -1.1349432
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -1.7806681   -2.0794349   -1.4819013
24 months   ki0047075b-MAL-ED         PERU                           0                    NA                -1.7241369   -1.8571590   -1.5911148
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -1.2099432   -1.7011908   -0.7186956
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -1.6596903   -1.8056259   -1.5137546
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6287100   -2.9364856   -2.3209343
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.7004779   -2.8647097   -2.5362461
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -1.6458217   -1.7434679   -1.5481755
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -1.4848722   -1.6368364   -1.3329080
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -1.5741428   -1.6311098   -1.5171757
24 months   ki1101329-Keneba          GAMBIA                         0                    NA                -1.7836561   -1.9512103   -1.6161019
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -1.8842019   -1.9860485   -1.7823554
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -1.8689020   -2.1045212   -1.6332827
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -2.0050018   -2.0427861   -1.9672175
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -2.1624692   -2.2684707   -2.0564677
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -1.7135213   -1.8616257   -1.5654169
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                -2.1898183   -2.4751694   -1.9044672


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
Birth       ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0980666   -0.2051156    0.4012489
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.1273876   -0.9137182    0.6589430
Birth       ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         INDIA                          0                    1                  0.5400571   -0.0779897    1.1581040
Birth       ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.1837500   -0.8368488    0.4693488
Birth       ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         PERU                           0                    1                 -0.0235972   -0.2660738    0.2188795
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.2974680   -0.1898222    0.7847581
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.4408207   -0.1394735    1.0211150
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0396624   -0.7382457    0.6589209
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0798126   -0.0599573    0.2195826
Birth       ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba          GAMBIA                         0                    1                  0.0697479   -0.1117896    0.2512853
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.1579305   -0.4416431    0.1257822
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.0275495   -0.0829185    0.0278195
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.3534940   -1.1815229    0.4745349
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0746930   -0.3476044    0.1982183
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0470176   -0.3826174    0.2885822
6 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0355129   -0.2941005    0.2230748
6 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0399251   -0.2224725    0.3023228
6 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.0733261   -0.1911321    0.3377842
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.2992763   -0.7953798    0.1968272
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0391971   -0.2665633    0.3449575
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0104897   -0.7471588    0.7261794
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.0182525   -0.1902917    0.1537867
6 months    ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba          GAMBIA                         0                    1                 -0.1709726   -0.3374358   -0.0045094
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0754564   -0.3431810    0.1922681
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.0494810   -0.1345929    0.0356308
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.1618793   -0.7227615    0.3990029
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.1062564   -0.3849839    0.1724711
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0651676   -0.3117712    0.4421065
24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.2346883   -0.0281611    0.4975377
24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1278441   -0.1275313    0.3832195
24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0565313   -0.2711024    0.3841649
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.4497470   -0.9637244    0.0642303
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0717679   -0.4197725    0.2762367
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.1609495   -0.0176907    0.3395897
24 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.2095133   -0.3851617   -0.0338649
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0153000   -0.2401739    0.2707739
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.1574674   -0.2664307   -0.0485041
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 -0.4762970   -0.7981220   -0.1544720


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0387334   -0.0695552    0.1470221
Birth       ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0903178   -0.7255587    0.5449231
Birth       ki0047075b-MAL-ED         INDIA                          1                    NA                 0.1710017   -0.1167952    0.4587985
Birth       ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.1272115   -0.5805774    0.3261543
Birth       ki0047075b-MAL-ED         PERU                           1                    NA                -0.0187305   -0.2085084    0.1710474
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.2863037   -0.1440688    0.7166762
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3961893   -0.0909210    0.8832996
Birth       ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0145236   -0.0577567    0.0287095
Birth       ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0225100   -0.0167733    0.0617932
Birth       ki1101329-Keneba          GAMBIA                         1                    NA                 0.0076870   -0.0127061    0.0280802
Birth       ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0298768   -0.0785568    0.0188031
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0027336   -0.0079973    0.0025301
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0336759   -0.1059971    0.0386453
6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0417881   -0.1373130    0.0537369
6 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0195300   -0.2486005    0.2095404
6 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0226382   -0.1456983    0.1004218
6 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0022421   -0.1815457    0.1860300
6 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0545211   -0.1504240    0.2594662
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.2679472   -0.7204658    0.1845713
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0360650   -0.2076365    0.2797666
6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0147277   -0.0507565    0.0213012
6 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0088153   -0.0593489    0.0417183
6 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.0198401   -0.0390542   -0.0006260
6 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0232787   -0.0669747    0.0204174
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0043131   -0.0117723    0.0031462
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0854919   -0.1779600    0.0069762
24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0279009   -0.1224223    0.0666204
24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0428634   -0.2074290    0.2931559
24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.1155368   -0.0162072    0.2472807
24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0978013   -0.0811725    0.2767752
24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0393718   -0.2183710    0.2971147
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.4325093   -0.9081326    0.0431140
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0481107   -0.3256245    0.2294031
24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0433996   -0.0096694    0.0964685
24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0219742   -0.0402792   -0.0036693
24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0089025   -0.0321013    0.0499062
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0137307   -0.0232041   -0.0042573
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0591277   -0.0986911   -0.0195643
