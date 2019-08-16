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

agecat      studyid                    country        cleanck    n_cell     n
----------  -------------------------  -------------  --------  -------  ----
Birth       ki0047075b-MAL-ED          PERU           1               1     2
Birth       ki0047075b-MAL-ED          PERU           0               1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1               1     2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0               1     2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1              37    88
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0              51    88
Birth       ki1000108-IRC              INDIA          1             198   337
Birth       ki1000108-IRC              INDIA          0             139   337
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1              11    17
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0               6    17
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1             162   368
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0             206   368
6 months    ki1000108-IRC              INDIA          1             229   398
6 months    ki1000108-IRC              INDIA          0             169   398
6 months    ki1017093b-PROVIDE         BANGLADESH     1             481   582
6 months    ki1017093b-PROVIDE         BANGLADESH     0             101   582
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1             329   545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0             216   545
6 months    ki1113344-GMS-Nepal        NEPAL          1               8   504
6 months    ki1113344-GMS-Nepal        NEPAL          0             496   504
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             163   372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             209   372
24 months   ki1000108-IRC              INDIA          1             231   400
24 months   ki1000108-IRC              INDIA          0             169   400
24 months   ki1017093b-PROVIDE         BANGLADESH     1             480   578
24 months   ki1017093b-PROVIDE         BANGLADESH     0              98   578
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             199   410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             211   410
24 months   ki1113344-GMS-Nepal        NEPAL          1               7   445
24 months   ki1113344-GMS-Nepal        NEPAL          0             438   445


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

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
![](/tmp/3270759a-b577-449c-8541-eaf4b0f432fd/451e6022-7bc3-4088-b7b2-4dd72711397a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3270759a-b577-449c-8541-eaf4b0f432fd/451e6022-7bc3-4088-b7b2-4dd72711397a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3270759a-b577-449c-8541-eaf4b0f432fd/451e6022-7bc3-4088-b7b2-4dd72711397a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.3390279   -0.8272821    0.1492262
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.8515290   -1.3363959   -0.3666620
Birth       ki1000108-IRC              INDIA        1                    NA                -0.7804138   -1.0336724   -0.5271552
Birth       ki1000108-IRC              INDIA        0                    NA                -1.1773113   -1.4805173   -0.8741053
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.7990909   -1.4601804   -0.1380015
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.6483333   -1.6406455    0.3439788
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.3898881   -0.6168567   -0.1629195
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.6537608   -0.8761652   -0.4313563
6 months    ki1000108-IRC              INDIA        1                    NA                -0.6713311   -0.8565488   -0.4861135
6 months    ki1000108-IRC              INDIA        0                    NA                -0.5499691   -0.7650475   -0.3348907
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.1385293   -0.2301935   -0.0468650
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.5391038   -0.7436320   -0.3345756
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.1176469   -0.0074410    0.2427348
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0334214   -0.1966578    0.1298150
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.8406250   -1.1883379   -0.4929121
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.6206788   -0.7126572   -0.5287003
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2836034   -0.4595070   -0.1076998
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.7434047   -0.8760021   -0.6108073
24 months   ki1000108-IRC              INDIA        1                    NA                -0.6849059   -0.8120389   -0.5577728
24 months   ki1000108-IRC              INDIA        0                    NA                -0.8339224   -0.9776731   -0.6901716
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.8412830   -0.9294657   -0.7531003
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.1054409   -1.3293298   -0.8815520
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.6334939   -0.7888067   -0.4781810
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.4804736   -0.6515054   -0.3094418
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.9585714   -1.4549933   -0.4621496
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -1.1218379   -1.2165987   -1.0270771


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA        NA                   NA                -0.9860831   -1.1746070   -0.7975591
Birth       ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.7458824   -1.2998567   -0.1919080
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA        NA                   NA                -0.6153685   -0.7522411   -0.4784959
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                 0.0640826   -0.0252594    0.1534245
6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                -0.6241700   -0.7143013   -0.5340386
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA        NA                   NA                -0.7479083   -0.8403586   -0.6554581
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.5518293   -0.6602513   -0.4434072
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                -1.1192697   -1.2125104   -1.0260289


### Parameter: ATE


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.5125010   -1.2054883    0.1804862
Birth       ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA        0                    1                 -0.3968975   -0.7971996    0.0034045
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.1507576   -1.0416025    1.3431177
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.2638727   -0.5796654    0.0519200
6 months    ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA        0                    1                  0.1213620   -0.1652566    0.4079806
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.4005745   -0.6249284   -0.1762207
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    1                 -0.1510683   -0.3571005    0.0549639
6 months    ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL        0                    1                  0.2199462   -0.1397262    0.5796187
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    1                 -0.4598013   -0.6805745   -0.2390281
24 months   ki1000108-IRC              INDIA        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA        0                    1                 -0.1490165   -0.3427488    0.0447158
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    1                 -0.2641579   -0.5041162   -0.0241997
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    1                  0.1530203   -0.0780826    0.3841231
24 months   ki1113344-GMS-Nepal        NEPAL        1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL        0                    1                 -0.1632665   -0.6686517    0.3421188


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2884721   -0.7130195    0.1360753
Birth       ki1000108-IRC              INDIA        1                    NA                -0.2056693   -0.3734248   -0.0379138
Birth       ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0532086   -0.3691024    0.4755196
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.1127886   -0.2920887    0.0665116
6 months    ki1000108-IRC              INDIA        1                    NA                 0.0559626   -0.0699982    0.1819235
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0698413   -0.1111953   -0.0284873
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0535643   -0.1403799    0.0332513
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                 0.2164550   -0.1342338    0.5671439
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.2735471   -0.4133334   -0.1337609
24 months   ki1000108-IRC              INDIA        1                    NA                -0.0630025   -0.1461389    0.0201339
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0466582   -0.0880482   -0.0052681
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                 0.0816646   -0.0445951    0.2079243
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.1606982   -0.6534525    0.3320560
