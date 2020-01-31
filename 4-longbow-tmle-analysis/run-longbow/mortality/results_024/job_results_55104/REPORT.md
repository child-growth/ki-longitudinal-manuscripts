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

**Outcome Variable:** dead

## Predictor Variables

**Intervention Variable:** ever_sunderweight024

**Adjustment Set:**

* sex
* arm
* brthmon
* vagbrth
* hhwealth_quart
* W_mage
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_meducyrs
* W_feducyrs
* W_nrooms
* W_parity
* impsan
* safeh20
* delta_vagbrth
* delta_hhwealth_quart
* delta_W_mage
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_meducyrs
* delta_W_feducyrs
* delta_W_nrooms
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_sunderweight024    dead   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------------  -----  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                          0      223     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     0                          1        2     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                          0       39     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                          1        1     265  dead             
ki0047075b-MAL-ED           INDIA                          0                          0      197     251  dead             
ki0047075b-MAL-ED           INDIA                          0                          1        1     251  dead             
ki0047075b-MAL-ED           INDIA                          1                          0       52     251  dead             
ki0047075b-MAL-ED           INDIA                          1                          1        1     251  dead             
ki0047075b-MAL-ED           PERU                           0                          0      285     303  dead             
ki0047075b-MAL-ED           PERU                           0                          1        2     303  dead             
ki0047075b-MAL-ED           PERU                           1                          0       16     303  dead             
ki0047075b-MAL-ED           PERU                           1                          1        0     303  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          0      287     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          1        0     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          0       26     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          1        1     314  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          0      225     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          1        2     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          0       34     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          1        1     262  dead             
ki1000109-EE                PAKISTAN                       0                          0      175     380  dead             
ki1000109-EE                PAKISTAN                       0                          1        1     380  dead             
ki1000109-EE                PAKISTAN                       1                          0      201     380  dead             
ki1000109-EE                PAKISTAN                       1                          1        3     380  dead             
ki1000304-VITAMIN-A         INDIA                          0                          0     2612    3906  dead             
ki1000304-VITAMIN-A         INDIA                          0                          1       27    3906  dead             
ki1000304-VITAMIN-A         INDIA                          1                          0     1216    3906  dead             
ki1000304-VITAMIN-A         INDIA                          1                          1       51    3906  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                          0     1100    1533  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                          1       23    1533  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                          0      383    1533  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                          1       27    1533  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                          0      230     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                          1        2     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                          0      182     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                          1        4     418  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                          0      602     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                          1        4     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                          0       94     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                          1        0     700  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     2242    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      153    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2396  dead             
ki1101329-Keneba            GAMBIA                         0                          0     2374    2929  dead             
ki1101329-Keneba            GAMBIA                         0                          1       41    2929  dead             
ki1101329-Keneba            GAMBIA                         1                          0      491    2929  dead             
ki1101329-Keneba            GAMBIA                         1                          1       23    2929  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          0     6333    7165  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          1       31    7165  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          0      793    7165  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          1        8    7165  dead             
ki1113344-GMS-Nepal         NEPAL                          0                          0      464     697  dead             
ki1113344-GMS-Nepal         NEPAL                          0                          1        3     697  dead             
ki1113344-GMS-Nepal         NEPAL                          1                          0      226     697  dead             
ki1113344-GMS-Nepal         NEPAL                          1                          1        4     697  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                          0    12049   14086  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                          1      721   14086  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                          0      929   14086  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                          1      387   14086  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                          0     1576    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                          1       99    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                          0      227    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                          1       29    1931  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          0     1025    1205  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          1       25    1205  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          0      140    1205  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          1       15    1205  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                          0    21585   27260  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                          1      413   27260  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                          0     4849   27260  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                          1      413   27260  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                          0     4478    5443  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                          1       28    5443  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                          0      916    5443  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                          1       21    5443  dead             


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/66f54fa6-a8b6-42e9-a46c-f058438068b8/f55e9ecd-9bdb-4ebe-8ac4-54f9f593041c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/66f54fa6-a8b6-42e9-a46c-f058438068b8/f55e9ecd-9bdb-4ebe-8ac4-54f9f593041c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/66f54fa6-a8b6-42e9-a46c-f058438068b8/f55e9ecd-9bdb-4ebe-8ac4-54f9f593041c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/66f54fa6-a8b6-42e9-a46c-f058438068b8/f55e9ecd-9bdb-4ebe-8ac4-54f9f593041c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0101105   0.0062758   0.0139452
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0406073   0.0295979   0.0516166
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0210041   0.0085491   0.0334590
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0660474   0.0424436   0.0896513
ki1101329-Keneba            GAMBIA         0                    NA                0.0169212   0.0117695   0.0220730
ki1101329-Keneba            GAMBIA         1                    NA                0.0440863   0.0261159   0.0620568
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0048712   0.0031605   0.0065818
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0099875   0.0031008   0.0168742
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0569968   0.0529747   0.0610189
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.2848269   0.2596642   0.3099895
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0591453   0.0478578   0.0704327
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.1096602   0.0713545   0.1479660
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0238395   0.0146071   0.0330718
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0893165   0.0438843   0.1347487
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0191171   0.0173170   0.0209171
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0749458   0.0665121   0.0833796
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0062468   0.0038707   0.0086229
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0212557   0.0120844   0.0304270


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0199693   0.0155816   0.0243570
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
ki1101329-Keneba            GAMBIA         NA                   NA                0.0218505   0.0165551   0.0271458
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054431   0.0037394   0.0071469
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0786597   0.0742138   0.0831055
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0331950   0.0230759   0.0433141
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0303008   0.0281489   0.0324527
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0090024   0.0064532   0.0115515


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 4.016345   2.5195449   6.402357
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 3.144507   1.7017082   5.810586
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 2.605385   1.5663261   4.333728
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.050340   0.9457227   4.445167
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 4.997243   4.4645962   5.593438
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.854083   1.2450502   2.761033
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 3.746583   1.9768537   7.100618
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 3.920360   3.3982402   4.522700
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 3.402636   1.9053604   6.076503


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0098588    0.0061041   0.0136135
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0116117    0.0050610   0.0181624
ki1101329-Keneba            GAMBIA         0                    NA                0.0049292    0.0016333   0.0082251
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005720   -0.0002222   0.0013661
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0216629    0.0190878   0.0242379
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0071416    0.0017163   0.0125670
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0093556    0.0030909   0.0156202
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0111837    0.0095867   0.0127808
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0027556    0.0010597   0.0044514


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.4936970    0.3123005   0.6272459
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.3560153    0.1007414   0.5388242
ki1101329-Keneba            GAMBIA         0                    NA                0.2255890    0.0708566   0.3545534
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.1050823   -0.0490188   0.2365458
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.2753999    0.2454886   0.3041255
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.1077383    0.0240016   0.1842908
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.2818363    0.0912600   0.4324460
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.3690900    0.3241974   0.4110005
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.3060913    0.1133892   0.4569102
