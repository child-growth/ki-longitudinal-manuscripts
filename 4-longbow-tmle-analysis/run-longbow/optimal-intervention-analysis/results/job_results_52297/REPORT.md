---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** predfeed36

**Adjustment Set:**

* arm
* sex
* month
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

agecat      studyid                    country                        predfeed36    n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 72     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                149     221
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  8      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 57      65
Birth       ki0047075b-MAL-ED          INDIA                          1                  4      42
Birth       ki0047075b-MAL-ED          INDIA                          0                 38      42
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                 25      26
Birth       ki0047075b-MAL-ED          PERU                           1                 58     223
Birth       ki0047075b-MAL-ED          PERU                           0                165     223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  2     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                103     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                119     119
Birth       ki1000109-EE               PAKISTAN                       1                  3       7
Birth       ki1000109-EE               PAKISTAN                       0                  4       7
Birth       ki1113344-GMS-Nepal        NEPAL                          1                422     526
Birth       ki1113344-GMS-Nepal        NEPAL                          0                104     526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               9859   12642
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2783   12642
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1999    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                518    2517
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 81     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                159     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 25     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                184     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 17     233
6 months    ki0047075b-MAL-ED          INDIA                          0                216     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  8     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                227     235
6 months    ki0047075b-MAL-ED          PERU                           1                 72     272
6 months    ki0047075b-MAL-ED          PERU                           0                200     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                247     250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238     243
6 months    ki1000109-EE               PAKISTAN                       1                  4       9
6 months    ki1000109-EE               PAKISTAN                       0                  5       9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                168     168
6 months    ki1113344-GMS-Nepal        NEPAL                          1                422     527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                105     527
6 months    ki1148112-LCNI-5           MALAWI                         1                 47     272
6 months    ki1148112-LCNI-5           MALAWI                         0                225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6576    8533
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1957    8533
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               3253    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                932    4185
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 69     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                143     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 20     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                149     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 17     224
24 months   ki0047075b-MAL-ED          INDIA                          0                207     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  8     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                219     227
24 months   ki0047075b-MAL-ED          PERU                           1                 53     201
24 months   ki0047075b-MAL-ED          PERU                           0                148     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  3     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                232     235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                209     213
24 months   ki1000109-EE               PAKISTAN                       1                  0       3
24 months   ki1000109-EE               PAKISTAN                       0                  3       3
24 months   ki1113344-GMS-Nepal        NEPAL                          1                363     446
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 83     446
24 months   ki1148112-LCNI-5           MALAWI                         1                 34     189
24 months   ki1148112-LCNI-5           MALAWI                         0                155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3311    4300
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                989    4300
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               3157    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                892    4049


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```




# Results Detail

## Results Plots
![](/tmp/ff5384fc-e546-4a1a-a298-34d0ef0979aa/c4d92b5d-5934-4173-93ac-43bbf787349a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -1.0983118   -1.2946008   -0.9020228
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.6203068   -0.9114356   -0.3291780
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.8306558   -0.9486780   -0.7126335
Birth       ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.0054646   -1.1014296   -0.9094995
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.2009113   -1.2405092   -1.1613135
Birth       kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.5277735   -1.6083833   -1.4471636
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -1.3637960   -1.5419086   -1.1856835
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.0008582   -0.4251389    0.4234225
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -1.2855568   -1.9435028   -0.6276109
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.3334153   -0.9894781    0.3226475
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed          -1.4636230   -1.6473307   -1.2799154
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.5484768   -2.1695987   -0.9273550
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.3358282   -1.4319078   -1.2397486
6 months    ki1148112-LCNI-5      MALAWI                         optimal              observed          -1.4601992   -1.6399115   -1.2804870
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.3364459   -1.3744115   -1.2984803
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.3649214   -1.4212504   -1.3085924
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -2.0019932   -2.1656993   -1.8382870
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.1758255   -0.6647210    0.3130699
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -1.8613994   -1.9913211   -1.7314777
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -1.7099503   -2.1561273   -1.2637733
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed          -1.7952757   -1.9788725   -1.6116789
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.8711512   -1.9649054   -1.7773969
24 months   ki1148112-LCNI-5      MALAWI                         optimal              observed          -1.9503377   -2.1086369   -1.7920384
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -2.0034869   -2.0459623   -1.9610116
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.7811205   -1.8251056   -1.7371354


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -1.0802262   -1.2151319   -0.9453206
Birth       ki0047075b-MAL-ED     BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED     PERU                           observed             observed          -0.8913004   -1.0115814   -0.7710195
Birth       ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.0299620   -1.1192344   -0.9406896
Birth       kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.1758733   -1.2120647   -1.1396819
Birth       kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.5234724   -1.5733491   -1.4735957
6 months    ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -1.2077639   -1.3255735   -1.0899543
6 months    ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA                          observed             observed          -1.2054220   -1.3250470   -1.0857970
6 months    ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.5616170   -0.6748246   -0.4484095
6 months    ki0047075b-MAL-ED     PERU                           observed             observed          -1.3275368   -1.4361710   -1.2189025
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3737037   -1.4970489   -1.2503585
6 months    ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.3337634   -1.4135810   -1.2539459
6 months    ki1148112-LCNI-5      MALAWI                         observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.3384308   -1.3675493   -1.3093123
6 months    kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.3514886   -1.3904044   -1.3125729
24 months   ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED     INDIA                          observed             observed          -1.8892634   -2.0152690   -1.7632578
24 months   ki0047075b-MAL-ED     NEPAL                          observed             observed          -1.3125330   -1.4327032   -1.1923629
24 months   ki0047075b-MAL-ED     PERU                           observed             observed          -1.7544776   -1.8753255   -1.6336298
24 months   ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.8830717   -1.9710591   -1.7950844
24 months   ki1148112-LCNI-5      MALAWI                         observed             observed          -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -2.0131814   -2.0513347   -1.9750280
24 months   kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.7922845   -1.8313538   -1.7532153


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.0180855   -0.1338528    0.1700239
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.0556932   -0.1722468    0.0608604
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.0606447   -0.1349078    0.0136184
Birth       ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0244974   -0.0663752    0.0173803
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed           0.0250380    0.0027464    0.0473297
Birth       kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed           0.0043011   -0.0534981    0.0621003
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.1560322    0.0366870    0.2753773
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.0518789   -0.3425206    0.4462784
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed           0.0801348   -0.5431450    0.7034146
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.2282017   -0.8735668    0.4171633
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed           0.1360863   -0.0201606    0.2923332
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1747731   -0.4441294    0.7936757
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed           0.0020647   -0.0592156    0.0633451
6 months    ki1148112-LCNI-5      MALAWI                         optimal              observed          -0.1793963   -0.3197977   -0.0389950
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0019849   -0.0255787    0.0216089
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed           0.0134327   -0.0285725    0.0554380
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.0230781   -0.0935217    0.1396778
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.1829261   -0.2789555    0.6448077
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.0278640   -0.0668591    0.0111312
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed           0.3974173   -0.0408807    0.8357152
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed           0.0407981   -0.0936472    0.1752433
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0119206   -0.0576975    0.0338563
24 months   ki1148112-LCNI-5      MALAWI                         optimal              observed          -0.0147946   -0.0751430    0.0455537
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0096945   -0.0296050    0.0102161
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0111640   -0.0316909    0.0093629
