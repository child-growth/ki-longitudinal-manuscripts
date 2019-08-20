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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country        cleanck    ever_swasted   n_cell     n
----------------------------  -------------------------  -------------  --------  -------------  -------  ----
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           1                     0        1     2
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           1                     1        0     2
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           0                     0        1     2
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           0                     1        0     2
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        2     3
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        0     3
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        1     3
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     3
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          1                     0      141   368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          1                     1       22   368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          0                     0      172   368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          0                     1       33   368
0-24 months (no birth wast)   ki1000108-IRC              INDIA          1                     0      179   399
0-24 months (no birth wast)   ki1000108-IRC              INDIA          1                     1       51   399
0-24 months (no birth wast)   ki1000108-IRC              INDIA          0                     0      144   399
0-24 months (no birth wast)   ki1000108-IRC              INDIA          0                     1       25   399
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     1                     0      548   687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     1                     1       13   687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     0                     0      120   687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     0                     1        6   687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     1                     0      352   575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     1                     1        6   575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     0                     0      212   575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     0                     1        5   575
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          1                     0        8   525
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          1                     1        1   525
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          0                     0      411   525
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          0                     1      105   525
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           1                     0        1     2
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           1                     1        0     2
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           0                     0        1     2
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           0                     1        0     2
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        2     3
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        0     3
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        1     3
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     3
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          1                     0      147   350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          1                     1       10   350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          0                     0      173   350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          0                     1       20   350
0-6 months (no birth wast)    ki1000108-IRC              INDIA          1                     0      179   381
0-6 months (no birth wast)    ki1000108-IRC              INDIA          1                     1       43   381
0-6 months (no birth wast)    ki1000108-IRC              INDIA          0                     0      145   381
0-6 months (no birth wast)    ki1000108-IRC              INDIA          0                     1       14   381
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     1                     0      552   683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     1                     1        5   683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     0                     0      125   683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     0                     1        1   683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     1                     0      355   572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     1                     1        0   572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     0                     0      216   572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     0                     1        1   572
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          1                     0        8   506
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          1                     1        0   506
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          0                     0      483   506
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          0                     1       15   506
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        1     1
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        0     1
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        0     1
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     1
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          1                     0      150   373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          1                     1       13   373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          0                     0      193   373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          0                     1       17   373
6-24 months                   ki1000108-IRC              INDIA          1                     0      219   400
6-24 months                   ki1000108-IRC              INDIA          1                     1       12   400
6-24 months                   ki1000108-IRC              INDIA          0                     0      156   400
6-24 months                   ki1000108-IRC              INDIA          0                     1       13   400
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     1                     0      500   615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     1                     1        8   615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     0                     0      102   615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     0                     1        5   615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     1                     0      336   559
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     1                     1        7   559
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     0                     0      212   559
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     0                     1        4   559
6-24 months                   ki1113344-GMS-Nepal        NEPAL          1                     0        7   529
6-24 months                   ki1113344-GMS-Nepal        NEPAL          1                     1        1   529
6-24 months                   ki1113344-GMS-Nepal        NEPAL          0                     0      420   529
6-24 months                   ki1113344-GMS-Nepal        NEPAL          0                     1      101   529


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

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
![](/tmp/a6d27970-8998-4fe0-a13c-a2edee3c661a/2b480744-a107-4cf0-ae0b-d7f11e9b5973/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a6d27970-8998-4fe0-a13c-a2edee3c661a/2b480744-a107-4cf0-ae0b-d7f11e9b5973/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a6d27970-8998-4fe0-a13c-a2edee3c661a/2b480744-a107-4cf0-ae0b-d7f11e9b5973/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a6d27970-8998-4fe0-a13c-a2edee3c661a/2b480744-a107-4cf0-ae0b-d7f11e9b5973/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1396469   0.0840682   0.1952257
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1694277   0.1151760   0.2236793
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    NA                0.2216358   0.1668783   0.2763934
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    NA                0.1542541   0.0998465   0.2086617
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0231729   0.0107139   0.0356319
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0476190   0.0104077   0.0848303
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0167598   0.0034507   0.0300689
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0230415   0.0030618   0.0430212
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0641245   0.0255351   0.1027140
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1024112   0.0592613   0.1455612
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    NA                0.1932238   0.1405555   0.2458921
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    NA                0.0866479   0.0428136   0.1304822
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0814951   0.0393529   0.1236373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.0796301   0.0430133   0.1162468
6-24 months                   ki1000108-IRC              INDIA        1                    NA                0.0524542   0.0236297   0.0812787
6-24 months                   ki1000108-IRC              INDIA        0                    NA                0.0763081   0.0350668   0.1175493
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0157480   0.0049129   0.0265832
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0467290   0.0067059   0.0867521


### Parameter: E(Y)


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1494565   0.1129794   0.1859337
0-24 months (no birth wast)   ki1000108-IRC              INDIA        NA                   NA                0.1904762   0.1518980   0.2290544
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0276565   0.0153851   0.0399279
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0191304   0.0079242   0.0303367
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0857143   0.0563444   0.1150842
0-6 months (no birth wast)    ki1000108-IRC              INDIA        NA                   NA                0.1496063   0.1137437   0.1854689
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0804290   0.0527929   0.1080650
6-24 months                   ki1000108-IRC              INDIA        NA                   NA                0.0625000   0.0387487   0.0862513
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0211382   0.0097604   0.0325160


### Parameter: RR


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.2132573   0.7257169   2.0283298
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    1                 0.6959799   0.4518129   1.0720989
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    1                 2.0549451   0.7958985   5.3057006
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 1.3748079   0.4242271   4.4553885
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 1.5970672   0.7636607   3.3399956
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    1                 0.4484328   0.2517914   0.7986452
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 0.9771148   0.4895137   1.9504120
6-24 months                   ki1000108-IRC              INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA        0                    1                 1.4547563   0.6725178   3.1468550
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    1                 2.9672897   0.9890856   8.9019676


### Parameter: PAR


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0098096   -0.0340482    0.0536674
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    NA                -0.0311597   -0.0647153    0.0023959
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0044836   -0.0027483    0.0117155
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0023707   -0.0066927    0.0114340
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0215897   -0.0106344    0.0538138
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    NA                -0.0436175   -0.0735828   -0.0136522
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0010661   -0.0327904    0.0306581
6-24 months                   ki1000108-IRC              INDIA        1                    NA                 0.0100458   -0.0110418    0.0311334
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.0053902   -0.0018834    0.0126638


### Parameter: PAF


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.0656351   -0.2785885    0.3171862
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    NA                -0.1635882   -0.3516866   -0.0016652
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.1621165   -0.1317354    0.3796706
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.1239207   -0.4952816    0.4867088
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.2518803   -0.2218053    0.5419212
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    NA                -0.2915485   -0.4999224   -0.1121226
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0132555   -0.4954955    0.3134805
6-24 months                   ki1000108-IRC              INDIA        1                    NA                 0.1607328   -0.2465770    0.4349572
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                 0.2549970   -0.1393521    0.5128551
