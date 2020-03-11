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

agecat      studyid         country                        predfeed36    n_cell       n
----------  --------------  -----------------------------  -----------  -------  ------
Birth       EE              PAKISTAN                       1                  3       7
Birth       EE              PAKISTAN                       0                  4       7
Birth       GMS-Nepal       NEPAL                          1                422     526
Birth       GMS-Nepal       NEPAL                          0                104     526
Birth       JiVitA-3        BANGLADESH                     1               8334   10681
Birth       JiVitA-3        BANGLADESH                     0               2347   10681
Birth       JiVitA-4        BANGLADESH                     1               1999    2517
Birth       JiVitA-4        BANGLADESH                     0                518    2517
Birth       MAL-ED          BANGLADESH                     1                 72     221
Birth       MAL-ED          BANGLADESH                     0                149     221
Birth       MAL-ED          BRAZIL                         1                  8      65
Birth       MAL-ED          BRAZIL                         0                 57      65
Birth       MAL-ED          INDIA                          1                  4      42
Birth       MAL-ED          INDIA                          0                 38      42
Birth       MAL-ED          NEPAL                          1                  1      26
Birth       MAL-ED          NEPAL                          0                 25      26
Birth       MAL-ED          PERU                           1                 58     223
Birth       MAL-ED          PERU                           0                165     223
Birth       MAL-ED          SOUTH AFRICA                   1                  2     105
Birth       MAL-ED          SOUTH AFRICA                   0                103     105
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0     119
Birth       MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                119     119
6 months    EE              PAKISTAN                       1                  4       9
6 months    EE              PAKISTAN                       0                  5       9
6 months    GMS-Nepal       NEPAL                          1                422     527
6 months    GMS-Nepal       NEPAL                          0                105     527
6 months    JiVitA-3        BANGLADESH                     1               6593    8552
6 months    JiVitA-3        BANGLADESH                     0               1959    8552
6 months    JiVitA-4        BANGLADESH                     1               3253    4185
6 months    JiVitA-4        BANGLADESH                     0                932    4185
6 months    LCNI-5          MALAWI                         1                 47     272
6 months    LCNI-5          MALAWI                         0                225     272
6 months    MAL-ED          BANGLADESH                     1                 81     240
6 months    MAL-ED          BANGLADESH                     0                159     240
6 months    MAL-ED          BRAZIL                         1                 25     209
6 months    MAL-ED          BRAZIL                         0                184     209
6 months    MAL-ED          INDIA                          1                 17     233
6 months    MAL-ED          INDIA                          0                216     233
6 months    MAL-ED          NEPAL                          1                  8     235
6 months    MAL-ED          NEPAL                          0                227     235
6 months    MAL-ED          PERU                           1                 72     272
6 months    MAL-ED          PERU                           0                200     272
6 months    MAL-ED          SOUTH AFRICA                   1                  3     250
6 months    MAL-ED          SOUTH AFRICA                   0                247     250
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  5     243
6 months    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                238     243
6 months    SAS-FoodSuppl   INDIA                          1                  0     168
6 months    SAS-FoodSuppl   INDIA                          0                168     168
24 months   EE              PAKISTAN                       1                  0       3
24 months   EE              PAKISTAN                       0                  3       3
24 months   GMS-Nepal       NEPAL                          1                363     446
24 months   GMS-Nepal       NEPAL                          0                 83     446
24 months   JiVitA-3        BANGLADESH                     1               3334    4334
24 months   JiVitA-3        BANGLADESH                     0               1000    4334
24 months   JiVitA-4        BANGLADESH                     1               3157    4049
24 months   JiVitA-4        BANGLADESH                     0                892    4049
24 months   LCNI-5          MALAWI                         1                 34     189
24 months   LCNI-5          MALAWI                         0                155     189
24 months   MAL-ED          BANGLADESH                     1                 69     212
24 months   MAL-ED          BANGLADESH                     0                143     212
24 months   MAL-ED          BRAZIL                         1                 20     169
24 months   MAL-ED          BRAZIL                         0                149     169
24 months   MAL-ED          INDIA                          1                 17     224
24 months   MAL-ED          INDIA                          0                207     224
24 months   MAL-ED          NEPAL                          1                  8     227
24 months   MAL-ED          NEPAL                          0                219     227
24 months   MAL-ED          PERU                           1                 53     201
24 months   MAL-ED          PERU                           0                148     201
24 months   MAL-ED          SOUTH AFRICA                   1                  3     235
24 months   MAL-ED          SOUTH AFRICA                   0                232     235
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  4     213
24 months   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                209     213


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d1249145-f713-49f2-8796-04536d69cf12/69bfd9ab-fd61-4386-b12e-d3b671cd3886/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          optimal              observed          -1.0056091   -1.1015698   -0.9096483
Birth       JiVitA-3    BANGLADESH                     optimal              observed          -1.5893176   -1.6195282   -1.5591070
Birth       JiVitA-4    BANGLADESH                     optimal              observed          -1.4938102   -1.5806186   -1.4070019
Birth       MAL-ED      BANGLADESH                     optimal              observed          -1.1469760   -1.3343709   -0.9595812
Birth       MAL-ED      BRAZIL                         optimal              observed          -0.6224979   -0.9125679   -0.3324278
Birth       MAL-ED      PERU                           optimal              observed          -0.8263821   -0.9570124   -0.6957518
6 months    GMS-Nepal   NEPAL                          optimal              observed          -1.3115057   -1.4028829   -1.2201284
6 months    JiVitA-3    BANGLADESH                     optimal              observed          -1.3105181   -1.3575980   -1.2634383
6 months    JiVitA-4    BANGLADESH                     optimal              observed          -1.3361406   -1.3843263   -1.2879549
6 months    LCNI-5      MALAWI                         optimal              observed          -1.4827031   -1.6657953   -1.2996110
6 months    MAL-ED      BANGLADESH                     optimal              observed          -1.2091873   -1.3525157   -1.0658589
6 months    MAL-ED      BRAZIL                         optimal              observed          -0.0672884   -0.5224487    0.3878718
6 months    MAL-ED      INDIA                          optimal              observed          -1.3661099   -1.7460423   -0.9861774
6 months    MAL-ED      NEPAL                          optimal              observed          -0.3606104   -1.0341074    0.3128867
6 months    MAL-ED      PERU                           optimal              observed          -1.2808532   -1.4363426   -1.1253638
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.6888352   -2.1641080   -1.2135624
24 months   GMS-Nepal   NEPAL                          optimal              observed          -1.8701826   -1.9638440   -1.7765213
24 months   JiVitA-3    BANGLADESH                     optimal              observed          -1.9978603   -2.0403007   -1.9554199
24 months   JiVitA-4    BANGLADESH                     optimal              observed          -1.7821394   -1.8247831   -1.7394958
24 months   LCNI-5      MALAWI                         optimal              observed          -2.0308752   -2.2172031   -1.8445472
24 months   MAL-ED      BANGLADESH                     optimal              observed          -1.9131357   -2.0503318   -1.7759395
24 months   MAL-ED      BRAZIL                         optimal              observed          -0.0278252   -0.5764932    0.5208429
24 months   MAL-ED      INDIA                          optimal              observed          -1.8615555   -1.9915033   -1.7316077
24 months   MAL-ED      NEPAL                          optimal              observed          -1.8606891   -2.1542957   -1.5670825
24 months   MAL-ED      PERU                           optimal              observed          -1.7128005   -1.8966681   -1.5289329


### Parameter: E(Y)


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          observed             observed          -1.0299620   -1.1192344   -0.9406896
Birth       JiVitA-3    BANGLADESH                     observed             observed          -1.5762700   -1.6018685   -1.5506716
Birth       JiVitA-4    BANGLADESH                     observed             observed          -1.5234724   -1.5733491   -1.4735957
Birth       MAL-ED      BANGLADESH                     observed             observed          -1.0802262   -1.2151319   -0.9453206
Birth       MAL-ED      BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED      PERU                           observed             observed          -0.8913004   -1.0115814   -0.7710195
6 months    GMS-Nepal   NEPAL                          observed             observed          -1.3337634   -1.4135810   -1.2539459
6 months    JiVitA-3    BANGLADESH                     observed             observed          -1.3152982   -1.3444394   -1.2861570
6 months    JiVitA-4    BANGLADESH                     observed             observed          -1.3514886   -1.3904044   -1.3125729
6 months    LCNI-5      MALAWI                         observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    MAL-ED      BANGLADESH                     observed             observed          -1.2072639   -1.3248889   -1.0896388
6 months    MAL-ED      BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    MAL-ED      INDIA                          observed             observed          -1.2055794   -1.3250712   -1.0860876
6 months    MAL-ED      NEPAL                          observed             observed          -0.5621418   -0.6752179   -0.4490658
6 months    MAL-ED      PERU                           observed             observed          -1.3230913   -1.4314947   -1.2146879
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3737037   -1.4970489   -1.2503585
24 months   GMS-Nepal   NEPAL                          observed             observed          -1.8830717   -1.9710591   -1.7950844
24 months   JiVitA-3    BANGLADESH                     observed             observed          -2.0071989   -2.0453355   -1.9690623
24 months   JiVitA-4    BANGLADESH                     observed             observed          -1.7922845   -1.8313538   -1.7532153
24 months   LCNI-5      MALAWI                         observed             observed          -1.9651323   -2.1053230   -1.8249415
24 months   MAL-ED      BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED      BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   MAL-ED      INDIA                          observed             observed          -1.8906250   -2.0165920   -1.7646580
24 months   MAL-ED      NEPAL                          observed             observed          -1.3082379   -1.4282426   -1.1882331
24 months   MAL-ED      PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994


### Parameter: PAR


agecat      studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL                          optimal              observed          -0.0243529   -0.0660502    0.0173444
Birth       JiVitA-3    BANGLADESH                     optimal              observed           0.0130476   -0.0031432    0.0292383
Birth       JiVitA-4    BANGLADESH                     optimal              observed          -0.0296622   -0.0977626    0.0384383
Birth       MAL-ED      BANGLADESH                     optimal              observed           0.0667498   -0.0744988    0.2079984
Birth       MAL-ED      BRAZIL                         optimal              observed          -0.0535021   -0.1674034    0.0603991
Birth       MAL-ED      PERU                           optimal              observed          -0.0649184   -0.1663455    0.0365087
6 months    GMS-Nepal   NEPAL                          optimal              observed          -0.0222578   -0.0752529    0.0307373
6 months    JiVitA-3    BANGLADESH                     optimal              observed          -0.0047801   -0.0377538    0.0281937
6 months    JiVitA-4    BANGLADESH                     optimal              observed          -0.0153481   -0.0479891    0.0172930
6 months    LCNI-5      MALAWI                         optimal              observed          -0.1568924   -0.3037312   -0.0100537
6 months    MAL-ED      BANGLADESH                     optimal              observed           0.0019234   -0.1211847    0.1250316
6 months    MAL-ED      BRAZIL                         optimal              observed           0.1148642   -0.3059474    0.5356758
6 months    MAL-ED      INDIA                          optimal              observed           0.1605305   -0.1882903    0.5093512
6 months    MAL-ED      NEPAL                          optimal              observed          -0.2015315   -0.8642315    0.4611686
6 months    MAL-ED      PERU                           optimal              observed          -0.0422381   -0.1705065    0.0860303
6 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3151315   -0.1604706    0.7907336
24 months   GMS-Nepal   NEPAL                          optimal              observed          -0.0128891   -0.0584670    0.0326887
24 months   JiVitA-3    BANGLADESH                     optimal              observed          -0.0093386   -0.0292063    0.0105291
24 months   JiVitA-4    BANGLADESH                     optimal              observed          -0.0101451   -0.0284415    0.0081513
24 months   LCNI-5      MALAWI                         optimal              observed           0.0657429   -0.0423429    0.1738287
24 months   MAL-ED      BANGLADESH                     optimal              observed          -0.0652606   -0.1617380    0.0312169
24 months   MAL-ED      BRAZIL                         optimal              observed           0.0339396   -0.4827400    0.5506191
24 months   MAL-ED      INDIA                          optimal              observed          -0.0290695   -0.0684775    0.0103385
24 months   MAL-ED      NEPAL                          optimal              observed           0.5524512    0.2597504    0.8451520
24 months   MAL-ED      PERU                           optimal              observed          -0.0396705   -0.1799649    0.1006240
