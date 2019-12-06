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

**Outcome Variable:** dead0plus

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

studyid                     country                        ever_sunderweight024    dead0plus   n_cell       n  outcome_variable 
--------------------------  -----------------------------  ---------------------  ----------  -------  ------  -----------------
ki0047075b-MAL-ED           BANGLADESH                     0                               0      223     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     0                               1        2     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                               0       39     265  dead0plus        
ki0047075b-MAL-ED           BANGLADESH                     1                               1        1     265  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                               0      197     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          0                               1        1     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                               0       52     251  dead0plus        
ki0047075b-MAL-ED           INDIA                          1                               1        1     251  dead0plus        
ki0047075b-MAL-ED           PERU                           0                               0      285     303  dead0plus        
ki0047075b-MAL-ED           PERU                           0                               1        2     303  dead0plus        
ki0047075b-MAL-ED           PERU                           1                               0       16     303  dead0plus        
ki0047075b-MAL-ED           PERU                           1                               1        0     303  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                               0      287     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   0                               1        0     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                               0       26     314  dead0plus        
ki0047075b-MAL-ED           SOUTH AFRICA                   1                               1        1     314  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                               0      225     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                               1        2     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                               0       34     262  dead0plus        
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                               1        1     262  dead0plus        
ki1000109-EE                PAKISTAN                       0                               0      175     380  dead0plus        
ki1000109-EE                PAKISTAN                       0                               1        1     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                               0      201     380  dead0plus        
ki1000109-EE                PAKISTAN                       1                               1        3     380  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                               0     2612    3906  dead0plus        
ki1000304-VITAMIN-A         INDIA                          0                               1       27    3906  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                               0     1216    3906  dead0plus        
ki1000304-VITAMIN-A         INDIA                          1                               1       51    3906  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                               0     1100    1533  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          0                               1       23    1533  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                               0      383    1533  dead0plus        
ki1000304b-SAS-CompFeed     INDIA                          1                               1       27    1533  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                               0      230     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          0                               1        2     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                               0      182     418  dead0plus        
ki1000304b-SAS-FoodSuppl    INDIA                          1                               1        4     418  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                               0      601     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     0                               1        5     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                               0       94     700  dead0plus        
ki1017093b-PROVIDE          BANGLADESH                     1                               1        0     700  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               0     2242    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                               1        1    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               0      153    2396  dead0plus        
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                               1        0    2396  dead0plus        
ki1101329-Keneba            GAMBIA                         0                               0     2353    2929  dead0plus        
ki1101329-Keneba            GAMBIA                         0                               1       62    2929  dead0plus        
ki1101329-Keneba            GAMBIA                         1                               0      477    2929  dead0plus        
ki1101329-Keneba            GAMBIA                         1                               1       37    2929  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                               0     6327    7165  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                               1       37    7165  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                               0      790    7165  dead0plus        
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                               1       11    7165  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                               0      464     697  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          0                               1        3     697  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                               0      226     697  dead0plus        
ki1113344-GMS-Nepal         NEPAL                          1                               1        4     697  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                               0    12041   14086  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       0                               1      729   14086  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                               0      927   14086  dead0plus        
ki1126311-ZVITAMBO          ZIMBABWE                       1                               1      389   14086  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                               0     1576    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         0                               1       99    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                               0      227    1931  dead0plus        
ki1148112-iLiNS-DOSE        MALAWI                         1                               1       29    1931  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                               0     1021    1205  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         0                               1       29    1205  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                               0      140    1205  dead0plus        
ki1148112-iLiNS-DYAD-M      MALAWI                         1                               1       15    1205  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                               0    21565   27260  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     0                               1      433   27260  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                               0     4828   27260  dead0plus        
kiGH5241-JiVitA-3           BANGLADESH                     1                               1      434   27260  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                               0     4477    5443  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     0                               1       29    5443  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                               0      916    5443  dead0plus        
kiGH5241-JiVitA-4           BANGLADESH                     1                               1       21    5443  dead0plus        


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




# Results Detail

## Results Plots
![](/tmp/7ba7beb5-e6ca-446f-9a70-6a2771ba168b/b16fd2d8-e5cc-465e-9100-bfd0a1ffe909/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7ba7beb5-e6ca-446f-9a70-6a2771ba168b/b16fd2d8-e5cc-465e-9100-bfd0a1ffe909/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7ba7beb5-e6ca-446f-9a70-6a2771ba168b/b16fd2d8-e5cc-465e-9100-bfd0a1ffe909/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7ba7beb5-e6ca-446f-9a70-6a2771ba168b/b16fd2d8-e5cc-465e-9100-bfd0a1ffe909/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0100298   0.0062213   0.0138383
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0411443   0.0300070   0.0522816
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0210041   0.0085491   0.0334590
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0660474   0.0424436   0.0896513
ki1101329-Keneba            GAMBIA         0                    NA                0.0258846   0.0194894   0.0322797
ki1101329-Keneba            GAMBIA         1                    NA                0.0688596   0.0468870   0.0908322
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0058421   0.0039662   0.0077180
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0130323   0.0052489   0.0208157
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0576648   0.0536195   0.0617101
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.2830913   0.2582946   0.3078880
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0591804   0.0478910   0.0704698
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.1119196   0.0731005   0.1507388
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0277697   0.0178168   0.0377225
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0926854   0.0451504   0.1402204
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0200213   0.0181761   0.0218666
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0781631   0.0695431   0.0867831
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0064391   0.0040074   0.0088708
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0211686   0.0119011   0.0304362


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0199693   0.0155816   0.0243570
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0326158   0.0204960   0.0447355
ki1101329-Keneba            GAMBIA         NA                   NA                0.0337999   0.0272543   0.0403456
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0066992   0.0048103   0.0085882
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0793696   0.0749054   0.0838337
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0662869   0.0551877   0.0773861
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0365145   0.0259198   0.0471093
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0318048   0.0296069   0.0340028
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0091861   0.0065991   0.0117731


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate   ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ---------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 4.102213   2.574123   6.537430
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 3.144507   1.701708   5.810586
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 2.660258   1.776609   3.983418
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.230765   1.132413   4.394435
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 4.909254   4.389801   5.490175
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.891161   1.272847   2.809835
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 3.337651   1.785538   6.238969
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 3.903987   3.394097   4.490476
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 3.287518   1.837549   5.881626


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0099395    0.0061960   0.0136830
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0116117    0.0050610   0.0181624
ki1101329-Keneba            GAMBIA         0                    NA                0.0079154    0.0037385   0.0120922
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0008571   -0.0000713   0.0017856
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0217048    0.0191208   0.0242887
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0071065    0.0016883   0.0125247
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0087449    0.0024856   0.0150042
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0117835    0.0101415   0.0134255
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0027470    0.0010498   0.0044442


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.4977393    0.3176556   0.6302955
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.3560153    0.1007414   0.5388242
ki1101329-Keneba            GAMBIA         0                    NA                0.2341833    0.1094583   0.3414400
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.1279464   -0.0167036   0.2520165
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.2734645    0.2436826   0.3020736
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.1072083    0.0235750   0.1836782
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.2394902    0.0644924   0.3817526
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.3704938    0.3264642   0.4116451
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.2990404    0.1090743   0.4485013
