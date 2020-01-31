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

**Intervention Variable:** ever_underweight024

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

studyid                     country                        ever_underweight024    dead   n_cell       n  outcome_variable 
--------------------------  -----------------------------  --------------------  -----  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                         0      122     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     0                         1        1     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                         0      140     265  dead             
ki0047075b-MAL-ED           BANGLADESH                     1                         1        2     265  dead             
ki0047075b-MAL-ED           INDIA                          0                         0       97     251  dead             
ki0047075b-MAL-ED           INDIA                          0                         1        1     251  dead             
ki0047075b-MAL-ED           INDIA                          1                         0      152     251  dead             
ki0047075b-MAL-ED           INDIA                          1                         1        1     251  dead             
ki0047075b-MAL-ED           PERU                           0                         0      230     303  dead             
ki0047075b-MAL-ED           PERU                           0                         1        2     303  dead             
ki0047075b-MAL-ED           PERU                           1                         0       71     303  dead             
ki0047075b-MAL-ED           PERU                           1                         1        0     303  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         0      218     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         1        0     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         0       95     314  dead             
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         1        1     314  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      146     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        2     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0      113     262  dead             
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        1     262  dead             
ki1000109-EE                PAKISTAN                       0                         0       53     380  dead             
ki1000109-EE                PAKISTAN                       0                         1        0     380  dead             
ki1000109-EE                PAKISTAN                       1                         0      323     380  dead             
ki1000109-EE                PAKISTAN                       1                         1        4     380  dead             
ki1000304-VITAMIN-A         INDIA                          0                         0     1355    3906  dead             
ki1000304-VITAMIN-A         INDIA                          0                         1        7    3906  dead             
ki1000304-VITAMIN-A         INDIA                          1                         0     2473    3906  dead             
ki1000304-VITAMIN-A         INDIA                          1                         1       71    3906  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                         0      601    1533  dead             
ki1000304b-SAS-CompFeed     INDIA                          0                         1       15    1533  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                         0      882    1533  dead             
ki1000304b-SAS-CompFeed     INDIA                          1                         1       35    1533  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                         0       74     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          0                         1        2     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                         0      338     418  dead             
ki1000304b-SAS-FoodSuppl    INDIA                          1                         1        4     418  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                         0      350     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     0                         1        3     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                         0      346     700  dead             
ki1017093b-PROVIDE          BANGLADESH                     1                         1        1     700  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1856    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      539    2396  dead             
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2396  dead             
ki1101329-Keneba            GAMBIA                         0                         0     1610    2929  dead             
ki1101329-Keneba            GAMBIA                         0                         1       28    2929  dead             
ki1101329-Keneba            GAMBIA                         1                         0     1255    2929  dead             
ki1101329-Keneba            GAMBIA                         1                         1       36    2929  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0     4729    7165  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1       18    7165  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0     2397    7165  dead             
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1       21    7165  dead             
ki1113344-GMS-Nepal         NEPAL                          0                         0      220     697  dead             
ki1113344-GMS-Nepal         NEPAL                          0                         1        2     697  dead             
ki1113344-GMS-Nepal         NEPAL                          1                         0      470     697  dead             
ki1113344-GMS-Nepal         NEPAL                          1                         1        5     697  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0    10043   14086  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      487   14086  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0     2935   14086  dead             
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1      621   14086  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                         0     1164    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         0                         1       63    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                         0      639    1931  dead             
ki1148112-iLiNS-DOSE        MALAWI                         1                         1       65    1931  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0      775    1205  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       16    1205  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0      390    1205  dead             
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1       24    1205  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    12890   27260  dead             
kiGH5241-JiVitA-3           BANGLADESH                     0                         1      235   27260  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                         0    13544   27260  dead             
kiGH5241-JiVitA-3           BANGLADESH                     1                         1      591   27260  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     2570    5443  dead             
kiGH5241-JiVitA-4           BANGLADESH                     0                         1       13    5443  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                         0     2824    5443  dead             
kiGH5241-JiVitA-4           BANGLADESH                     1                         1       36    5443  dead             


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
![](/tmp/70d68ae2-7f04-4858-af6d-3a39efb6f1c1/7b297912-69ef-44af-85e0-5c9295381f80/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/70d68ae2-7f04-4858-af6d-3a39efb6f1c1/7b297912-69ef-44af-85e0-5c9295381f80/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/70d68ae2-7f04-4858-af6d-3a39efb6f1c1/7b297912-69ef-44af-85e0-5c9295381f80/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/70d68ae2-7f04-4858-af6d-3a39efb6f1c1/7b297912-69ef-44af-85e0-5c9295381f80/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0051395   0.0013415   0.0089375
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0279088   0.0215075   0.0343101
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0244482   0.0152421   0.0336543
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0382645   0.0216596   0.0548695
ki1101329-Keneba            GAMBIA         0                    NA                0.0183768   0.0115349   0.0252187
ki1101329-Keneba            GAMBIA         1                    NA                0.0273437   0.0183075   0.0363800
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0038291   0.0020634   0.0055947
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0084984   0.0048611   0.0121356
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0469869   0.0429194   0.0510545
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1694205   0.1568507   0.1819904
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0521453   0.0395937   0.0646969
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0893084   0.0682264   0.1103904
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0203776   0.0105176   0.0302376
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0565639   0.0344538   0.0786739
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0184641   0.0160189   0.0209092
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0397499   0.0363352   0.0431646
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0050112   0.0021324   0.0078900
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0124574   0.0084698   0.0164451


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


studyid                     country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 5.430256   2.5048385   11.772289
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 1.565125   1.0403117    2.354696
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.487948   0.9042869    2.448328
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.219433   1.1831523    4.163354
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 3.605694   3.2192036    4.038585
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.712684   1.2221396    2.400125
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 2.775789   1.4892317    5.173813
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 2.152826   1.8445845    2.512576
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 2.485932   1.2940557    4.775573


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0148298    0.0099700   0.0196895
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0081676   -0.0005441   0.0168793
ki1101329-Keneba            GAMBIA         0                    NA                0.0034737   -0.0017714   0.0087187
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0016140    0.0002249   0.0030032
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0316727    0.0282176   0.0351278
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0141416    0.0048896   0.0233936
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0128174    0.0042857   0.0213492
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0118368    0.0095755   0.0140980
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0039912    0.0014084   0.0065740


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.7426296    0.4793676   0.8727711
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.2504179   -0.0025483   0.4395548
ki1101329-Keneba            GAMBIA         0                    NA                0.1589742   -0.1148641   0.3655510
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.2965288    0.0135034   0.4983543
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.4026551    0.3631850   0.4396788
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.2133394    0.0658703   0.3375280
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.3861256    0.1080870   0.5774905
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.3906415    0.3177810   0.4557205
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.4433504    0.1004780   0.6555296
