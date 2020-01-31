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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               8334   10681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               2347   10681
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               6593    8552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1959    8552
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               3334    4334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1000    4334
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







# Results Detail

## Results Plots
![](/tmp/88d61f6c-2b31-49fe-9ed6-4209ac95d151/4fde1412-44bf-4daf-9409-fb7e5eccf0ee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -1.2386771   -1.4247296   -1.0526246
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.6194216   -0.9107313   -0.3281118
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.8868311   -1.0326612   -0.7410010
Birth       ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.0065919   -1.1027990   -0.9103849
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.5965778   -1.6258013   -1.5673543
Birth       kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.5556701   -1.6350326   -1.4763076
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -1.2566654   -1.4218358   -1.0914949
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.0008792   -0.4562133    0.4579718
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -1.2646795   -1.6878067   -0.8415523
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.3374775   -0.9970943    0.3221394
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed          -1.4479997   -1.6439652   -1.2520342
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.6724583   -2.1400838   -1.2048328
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.2890327   -1.3797733   -1.1982920
6 months    ki1148112-LCNI-5      MALAWI                         optimal              observed          -1.5592189   -1.7192654   -1.3991725
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.2907012   -1.3345002   -1.2469022
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.3345821   -1.3951909   -1.2739733
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -2.0132448   -2.1912415   -1.8352481
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.0386442   -0.4744110    0.5516993
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -1.8620837   -1.9920172   -1.7321502
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -1.7284968   -2.1743606   -1.2826329
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed          -1.7378455   -1.9147260   -1.5609650
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.8734209   -1.9669231   -1.7799186
24 months   ki1148112-LCNI-5      MALAWI                         optimal              observed          -2.0391308   -2.2388392   -1.8394224
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -2.0047716   -2.0591045   -1.9504387
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.7792691   -1.8235862   -1.7349520


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -1.0802262   -1.2151319   -0.9453206
Birth       ki0047075b-MAL-ED     BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED     PERU                           observed             observed          -0.8913004   -1.0115814   -0.7710195
Birth       ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.0299620   -1.1192344   -0.9406896
Birth       kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.5762700   -1.6018685   -1.5506716
Birth       kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.5234724   -1.5733491   -1.4735957
6 months    ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -1.2072639   -1.3248889   -1.0896388
6 months    ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED     INDIA                          observed             observed          -1.2055794   -1.3250712   -1.0860876
6 months    ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.5621418   -0.6752179   -0.4490658
6 months    ki0047075b-MAL-ED     PERU                           observed             observed          -1.3230913   -1.4314947   -1.2146879
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3737037   -1.4970489   -1.2503585
6 months    ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.3337634   -1.4135810   -1.2539459
6 months    ki1148112-LCNI-5      MALAWI                         observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.3152982   -1.3444394   -1.2861570
6 months    kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.3514886   -1.3904044   -1.3125729
24 months   ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED     INDIA                          observed             observed          -1.8906250   -2.0165920   -1.7646580
24 months   ki0047075b-MAL-ED     NEPAL                          observed             observed          -1.3082379   -1.4282426   -1.1882331
24 months   ki0047075b-MAL-ED     PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.8830717   -1.9710591   -1.7950844
24 months   ki1148112-LCNI-5      MALAWI                         observed             observed          -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -2.0071989   -2.0453355   -1.9690623
24 months   kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.7922845   -1.8313538   -1.7532153


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.1584508    0.0199437   0.2969580
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.0565784   -0.1720554   0.0588986
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.0044693   -0.0815698   0.0726312
Birth       ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0233700   -0.0658660   0.0191259
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed           0.0203078    0.0056496   0.0349660
Birth       kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed           0.0321977   -0.0299976   0.0943930
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.0494015   -0.0777536   0.1765565
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.0466965   -0.3801030   0.4734960
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed           0.0591001   -0.3261108   0.4443111
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.2246644   -0.8735781   0.4242493
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed           0.1249084   -0.0353104   0.2851271
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2987546   -0.1708357   0.7683448
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0447308   -0.1092207   0.0197592
6 months    ki1148112-LCNI-5      MALAWI                         optimal              observed          -0.0803766   -0.2021206   0.0413673
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0245970   -0.0549829   0.0057890
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0169066   -0.0618364   0.0280233
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.0348486   -0.0907526   0.1604497
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.0325298   -0.5133004   0.4482409
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.0285413   -0.0681551   0.0110726
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed           0.4202589   -0.0207546   0.8612723
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed          -0.0146255   -0.1449276   0.1156767
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0096509   -0.0556401   0.0363383
24 months   ki1148112-LCNI-5      MALAWI                         optimal              observed           0.0739985   -0.0643743   0.2123712
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0024273   -0.0389723   0.0341177
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0130154   -0.0359717   0.0099409
