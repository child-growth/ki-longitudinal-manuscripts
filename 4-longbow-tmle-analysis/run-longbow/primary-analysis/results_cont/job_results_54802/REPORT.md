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

**Intervention Variable:** safeh20

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        safeh20    n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0     213  haz              
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             213     213  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0      41  haz              
Birth       ki0047075b-MAL-ED          BRAZIL                         0              41      41  haz              
Birth       ki0047075b-MAL-ED          INDIA                          1               0      41  haz              
Birth       ki0047075b-MAL-ED          INDIA                          0              41      41  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          1               1      26  haz              
Birth       ki0047075b-MAL-ED          NEPAL                          0              25      26  haz              
Birth       ki0047075b-MAL-ED          PERU                           1               9     207  haz              
Birth       ki0047075b-MAL-ED          PERU                           0             198     207  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              13      96  haz              
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0              83      96  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              79     119  haz              
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              40     119  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     1             606     608  haz              
Birth       ki1017093-NIH-Birth        BANGLADESH                     0               2     608  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              45      45  haz              
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               0      45  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             732     732  haz              
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0     732  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           22392   22432  haz              
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              40   22432  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            2820    2820  haz              
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0    2820  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0     240  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     0             240     240  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0     142  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         0             142     142  haz              
6 months    ki0047075b-MAL-ED          INDIA                          1               0     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          0             235     235  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          1               1     233  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          0             232     233  haz              
6 months    ki0047075b-MAL-ED          PERU                           1              11     259  haz              
6 months    ki0047075b-MAL-ED          PERU                           0             248     259  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              37     248  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             211     248  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             168     246  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              78     246  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             380     380  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               0     380  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     1             535     537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     0               2     537  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              11      11  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      11  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             715     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0     715  haz              
6 months    ki1114097-CONTENT          PERU                           1              54      57  haz              
6 months    ki1114097-CONTENT          PERU                           0               3      57  haz              
6 months    ki1148112-LCNI-5           MALAWI                         1             672     816  haz              
6 months    ki1148112-LCNI-5           MALAWI                         0             144     816  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           16783   16803  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              20   16803  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            4824    4825  haz              
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1    4825  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     0             212     212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0     113  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         0             113     113  haz              
24 months   ki0047075b-MAL-ED          INDIA                          1               0     227  haz              
24 months   ki0047075b-MAL-ED          INDIA                          0             227     227  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          1               1     226  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          0             225     226  haz              
24 months   ki0047075b-MAL-ED          PERU                           1               7     193  haz              
24 months   ki0047075b-MAL-ED          PERU                           0             186     193  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              34     237  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             203     237  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1             145     213  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              68     213  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     1             427     429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     0               2     429  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               9       9  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0       9  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             514     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0     514  haz              
24 months   ki1114097-CONTENT          PERU                           1              45      48  haz              
24 months   ki1114097-CONTENT          PERU                           0               3      48  haz              
24 months   ki1148112-LCNI-5           MALAWI                         1             475     574  haz              
24 months   ki1148112-LCNI-5           MALAWI                         0              99     574  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8612    8623  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              11    8623  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            4746    4747  haz              
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1    4747  haz              


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/62c7849a-95e4-4204-9cd3-dbda49ee550b/20763c28-dab4-4d57-837f-077257a35555/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/62c7849a-95e4-4204-9cd3-dbda49ee550b/20763c28-dab4-4d57-837f-077257a35555/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/62c7849a-95e4-4204-9cd3-dbda49ee550b/20763c28-dab4-4d57-837f-077257a35555/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           1                    NA                -0.6677778   -1.2689426   -0.0666129
Birth       ki0047075b-MAL-ED   PERU                           0                    NA                -0.9054040   -1.0308665   -0.7799416
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.4491305   -1.1545333    0.2562723
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -0.5648023   -0.7741439   -0.3554607
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.0502275   -1.3005133   -0.7999418
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.2486396   -1.7191858   -0.7780934
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -1.5889194   -1.6085839   -1.5692549
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -1.9790765   -2.0152124   -1.9429406
6 months    ki0047075b-MAL-ED   PERU                           1                    NA                -1.2404811   -1.7795592   -0.7014030
6 months    ki0047075b-MAL-ED   PERU                           0                    NA                -1.3107681   -1.4236561   -1.1978801
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -1.0539828   -1.4586245   -0.6493412
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -1.0424572   -1.1789373   -0.9059770
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3389414   -1.4886475   -1.1892353
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4170253   -1.6250711   -1.2089794
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -1.6200450   -1.6971432   -1.5429469
6 months    ki1148112-LCNI-5    MALAWI                         0                    NA                -1.7543894   -1.9124476   -1.5963313
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -1.3128405   -1.3364974   -1.2891836
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -1.6101407   -1.6396634   -1.5806181
24 months   ki0047075b-MAL-ED   PERU                           1                    NA                -2.1757143   -2.7976265   -1.5538020
24 months   ki0047075b-MAL-ED   PERU                           0                    NA                -1.7370699   -1.8647759   -1.6093639
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -1.7105115   -2.1574880   -1.2635350
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    NA                -1.6364917   -1.7786179   -1.4943655
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6761162   -2.8456525   -2.5065800
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.6047955   -2.8316084   -2.3779825
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -1.8735813   -1.9643392   -1.7828233
24 months   ki1148112-LCNI-5    MALAWI                         0                    NA                -1.9286810   -2.1146367   -1.7427254
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -2.0132797   -2.0416143   -1.9849452
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    NA                -2.2692840   -2.3027546   -2.2358133


### Parameter: E(Y)


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           NA                   NA                -0.8950725   -1.0180716   -0.7720734
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -0.5523958   -0.7550074   -0.3497843
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1158824   -1.3283278   -0.9034369
Birth       kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -1.5896835   -1.6089596   -1.5704074
6 months    ki0047075b-MAL-ED   PERU                           NA                   NA                -1.3065026   -1.4164323   -1.1965728
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -1.0533804   -1.1834360   -0.9233247
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3658943   -1.4882808   -1.2435078
6 months    ki1148112-LCNI-5    MALAWI                         NA                   NA                -1.6426961   -1.7120603   -1.5733318
6 months    kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -1.3132090   -1.3363486   -1.2900693
24 months   ki0047075b-MAL-ED   PERU                           NA                   NA                -1.7529793   -1.8786399   -1.6273186
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   NA                   NA                -1.6471273   -1.7822999   -1.5119547
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6488498   -2.7844961   -2.5132034
24 months   ki1148112-LCNI-5    MALAWI                         NA                   NA                -1.8822648   -1.9637218   -1.8008078
24 months   kiGH5241-JiVitA-3   BANGLADESH                     NA                   NA                -2.0135591   -2.0412422   -1.9858759


### Parameter: ATE


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   PERU                           0                    1                 -0.2376263   -0.8517435    0.3764910
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                 -0.1156718   -0.8540044    0.6226609
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1984121   -0.7337538    0.3369297
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.3901571   -0.4298797   -0.3504344
6 months    ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   PERU                           0                    1                 -0.0702870   -0.6211178    0.4805438
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0115257   -0.4161130    0.4391643
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0780839   -0.3321390    0.1759712
6 months    ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5    MALAWI                         0                    1                 -0.1343444   -0.3102616    0.0415728
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.2973002   -0.3334462   -0.2611542
24 months   ki0047075b-MAL-ED   PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   PERU                           0                    1                  0.4386444   -0.1962443    1.0735331
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   0                    1                  0.0740198   -0.3953763    0.5434159
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0713208   -0.2111511    0.3537926
24 months   ki1148112-LCNI-5    MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5    MALAWI                         0                    1                 -0.0550998   -0.2621335    0.1519340
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3   BANGLADESH                     0                    1                 -0.2560043   -0.2988767   -0.2131318


### Parameter: PAR


agecat      studyid             country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED   PERU                           1                    NA                -0.2272947   -0.8147485   0.3601591
Birth       ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                -0.1032653   -0.7545546   0.5480240
Birth       ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0656548   -0.2285395   0.0972299
Birth       kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0007641   -0.0017970   0.0002689
6 months    ki0047075b-MAL-ED   PERU                           1                    NA                -0.0660215   -0.5969696   0.4649267
6 months    ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0006025   -0.3642760   0.3654809
6 months    ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0269529   -0.1076682   0.0537624
6 months    ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0226510   -0.0537924   0.0084903
6 months    kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0003684   -0.0012658   0.0005289
24 months   ki0047075b-MAL-ED   PERU                           1                    NA                 0.4227350   -0.1892366   1.0347066
24 months   ki0047075b-MAL-ED   SOUTH AFRICA                   1                    NA                 0.0633842   -0.3438108   0.4705792
24 months   ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0272665   -0.0621551   0.1166880
24 months   ki1148112-LCNI-5    MALAWI                         1                    NA                -0.0086835   -0.0442208   0.0268538
24 months   kiGH5241-JiVitA-3   BANGLADESH                     1                    NA                -0.0002793   -0.0014299   0.0008713
