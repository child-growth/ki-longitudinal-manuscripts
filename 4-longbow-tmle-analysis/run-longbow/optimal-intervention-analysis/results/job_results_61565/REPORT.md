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

**Intervention Variable:** exclfeed36

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

agecat      studyid          country                        exclfeed36    n_cell       n
----------  ---------------  -----------------------------  -----------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                  3       3
Birth       CMC-V-BCS-2002   INDIA                          0                  0       3
Birth       EE               PAKISTAN                       1                  3       7
Birth       EE               PAKISTAN                       0                  4       7
Birth       GMS-Nepal        NEPAL                          1                422     526
Birth       GMS-Nepal        NEPAL                          0                104     526
Birth       IRC              INDIA                          1                  0       4
Birth       IRC              INDIA                          0                  4       4
Birth       JiVitA-3         BANGLADESH                     1               8322   10681
Birth       JiVitA-3         BANGLADESH                     0               2359   10681
Birth       JiVitA-4         BANGLADESH                     1               1994    2517
Birth       JiVitA-4         BANGLADESH                     0                523    2517
Birth       Keneba           GAMBIA                         1                363    1253
Birth       Keneba           GAMBIA                         0                890    1253
Birth       MAL-ED           BANGLADESH                     1                 32     221
Birth       MAL-ED           BANGLADESH                     0                189     221
Birth       MAL-ED           BRAZIL                         1                  5      65
Birth       MAL-ED           BRAZIL                         0                 60      65
Birth       MAL-ED           INDIA                          1                  1      42
Birth       MAL-ED           INDIA                          0                 41      42
Birth       MAL-ED           NEPAL                          1                  0      26
Birth       MAL-ED           NEPAL                          0                 26      26
Birth       MAL-ED           PERU                           1                  5     223
Birth       MAL-ED           PERU                           0                218     223
Birth       MAL-ED           SOUTH AFRICA                   1                  1     105
Birth       MAL-ED           SOUTH AFRICA                   0                104     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0     119
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                119     119
Birth       PROVIDE          BANGLADESH                     1                119     490
Birth       PROVIDE          BANGLADESH                     0                371     490
6 months    CMC-V-BCS-2002   INDIA                          1                  9       9
6 months    CMC-V-BCS-2002   INDIA                          0                  0       9
6 months    EE               PAKISTAN                       1                  4       9
6 months    EE               PAKISTAN                       0                  5       9
6 months    GMS-Nepal        NEPAL                          1                422     527
6 months    GMS-Nepal        NEPAL                          0                105     527
6 months    IRC              INDIA                          1                  0       4
6 months    IRC              INDIA                          0                  4       4
6 months    JiVitA-3         BANGLADESH                     1               6578    8552
6 months    JiVitA-3         BANGLADESH                     0               1974    8552
6 months    JiVitA-4         BANGLADESH                     1               3241    4185
6 months    JiVitA-4         BANGLADESH                     0                944    4185
6 months    Keneba           GAMBIA                         1                507    1790
6 months    Keneba           GAMBIA                         0               1283    1790
6 months    LCNI-5           MALAWI                         1                 47     272
6 months    LCNI-5           MALAWI                         0                225     272
6 months    MAL-ED           BANGLADESH                     1                 30     240
6 months    MAL-ED           BANGLADESH                     0                210     240
6 months    MAL-ED           BRAZIL                         1                 12     209
6 months    MAL-ED           BRAZIL                         0                197     209
6 months    MAL-ED           INDIA                          1                  9     233
6 months    MAL-ED           INDIA                          0                224     233
6 months    MAL-ED           NEPAL                          1                  4     235
6 months    MAL-ED           NEPAL                          0                231     235
6 months    MAL-ED           PERU                           1                  6     272
6 months    MAL-ED           PERU                           0                266     272
6 months    MAL-ED           SOUTH AFRICA                   1                  1     250
6 months    MAL-ED           SOUTH AFRICA                   0                249     250
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  4     243
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                239     243
6 months    PROVIDE          BANGLADESH                     1                145     603
6 months    PROVIDE          BANGLADESH                     0                458     603
6 months    SAS-FoodSuppl    INDIA                          1                  0     168
6 months    SAS-FoodSuppl    INDIA                          0                168     168
24 months   CMC-V-BCS-2002   INDIA                          1                  9       9
24 months   CMC-V-BCS-2002   INDIA                          0                  0       9
24 months   EE               PAKISTAN                       1                  0       3
24 months   EE               PAKISTAN                       0                  3       3
24 months   GMS-Nepal        NEPAL                          1                363     446
24 months   GMS-Nepal        NEPAL                          0                 83     446
24 months   IRC              INDIA                          1                  0       4
24 months   IRC              INDIA                          0                  4       4
24 months   JiVitA-3         BANGLADESH                     1               3325    4334
24 months   JiVitA-3         BANGLADESH                     0               1009    4334
24 months   JiVitA-4         BANGLADESH                     1               3145    4049
24 months   JiVitA-4         BANGLADESH                     0                904    4049
24 months   Keneba           GAMBIA                         1                424    1394
24 months   Keneba           GAMBIA                         0                970    1394
24 months   LCNI-5           MALAWI                         1                 34     189
24 months   LCNI-5           MALAWI                         0                155     189
24 months   MAL-ED           BANGLADESH                     1                 25     212
24 months   MAL-ED           BANGLADESH                     0                187     212
24 months   MAL-ED           BRAZIL                         1                 11     169
24 months   MAL-ED           BRAZIL                         0                158     169
24 months   MAL-ED           INDIA                          1                  9     224
24 months   MAL-ED           INDIA                          0                215     224
24 months   MAL-ED           NEPAL                          1                  4     227
24 months   MAL-ED           NEPAL                          0                223     227
24 months   MAL-ED           PERU                           1                  4     201
24 months   MAL-ED           PERU                           0                197     201
24 months   MAL-ED           SOUTH AFRICA                   1                  1     235
24 months   MAL-ED           SOUTH AFRICA                   0                234     235
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  3     213
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                210     213
24 months   PROVIDE          BANGLADESH                     1                141     577
24 months   PROVIDE          BANGLADESH                     0                436     577


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b7f4bbdb-0977-4efb-ac54-a6979f0304f9/f8b9565e-46dd-45c3-af5d-8a2d8b11b30b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        optimal              observed          -1.0054919   -1.1015302   -0.9094535
Birth       JiVitA-3    BANGLADESH   optimal              observed          -1.5749614   -1.6035445   -1.5463782
Birth       JiVitA-4    BANGLADESH   optimal              observed          -1.5029209   -1.5563543   -1.4494876
Birth       Keneba      GAMBIA       optimal              observed          -0.0690144   -0.1717678    0.0337391
Birth       MAL-ED      BANGLADESH   optimal              observed          -1.0706063   -1.2220846   -0.9191280
Birth       MAL-ED      BRAZIL       optimal              observed          -0.6106585   -0.8913832   -0.3299339
Birth       MAL-ED      PERU         optimal              observed          -0.9894298   -1.1147796   -0.8640800
Birth       PROVIDE     BANGLADESH   optimal              observed          -0.8632249   -0.9510966   -0.7753532
6 months    GMS-Nepal   NEPAL        optimal              observed          -1.2498987   -1.3399147   -1.1598826
6 months    JiVitA-3    BANGLADESH   optimal              observed          -1.3126197   -1.3533789   -1.2718605
6 months    JiVitA-4    BANGLADESH   optimal              observed          -1.3336529   -1.3818242   -1.2854816
6 months    Keneba      GAMBIA       optimal              observed          -0.9096591   -0.9948162   -0.8245021
6 months    LCNI-5      MALAWI       optimal              observed          -1.4990259   -1.6863022   -1.3117496
6 months    MAL-ED      BANGLADESH   optimal              observed          -1.5506029   -1.7250998   -1.3761060
6 months    MAL-ED      BRAZIL       optimal              observed           0.2552674   -0.6001628    1.1106976
6 months    MAL-ED      INDIA        optimal              observed          -0.9933951   -2.1266097    0.1398194
6 months    MAL-ED      PERU         optimal              observed          -1.4157301   -1.8521064   -0.9793537
6 months    PROVIDE     BANGLADESH   optimal              observed          -1.1651588   -1.2596180   -1.0706996
24 months   GMS-Nepal   NEPAL        optimal              observed          -1.8697697   -1.9635132   -1.7760263
24 months   JiVitA-3    BANGLADESH   optimal              observed          -1.9976843   -2.0401489   -1.9552197
24 months   JiVitA-4    BANGLADESH   optimal              observed          -1.7829180   -1.8264187   -1.7394173
24 months   Keneba      GAMBIA       optimal              observed          -1.5292013   -1.6197808   -1.4386218
24 months   LCNI-5      MALAWI       optimal              observed          -2.0479796   -2.2235627   -1.8723964
24 months   MAL-ED      BANGLADESH   optimal              observed          -2.1779811   -2.4624856   -1.8934765
24 months   MAL-ED      BRAZIL       optimal              observed           0.0429713   -0.7682017    0.8541444
24 months   MAL-ED      INDIA        optimal              observed          -1.8760210   -2.0030224   -1.7490196
24 months   PROVIDE     BANGLADESH   optimal              observed          -1.5014011   -1.6149352   -1.3878669


### Parameter: E(Y)


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        observed             observed          -1.0299620   -1.1192344   -0.9406896
Birth       JiVitA-3    BANGLADESH   observed             observed          -1.5762700   -1.6018685   -1.5506716
Birth       JiVitA-4    BANGLADESH   observed             observed          -1.5234724   -1.5733491   -1.4735957
Birth       Keneba      GAMBIA       observed             observed           0.0318156   -0.0392907    0.1029220
Birth       MAL-ED      BANGLADESH   observed             observed          -1.0802262   -1.2151319   -0.9453206
Birth       MAL-ED      BRAZIL       observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED      PERU         observed             observed          -0.8913004   -1.0115814   -0.7710195
Birth       PROVIDE     BANGLADESH   observed             observed          -0.8769592   -0.9559693   -0.7979491
6 months    GMS-Nepal   NEPAL        observed             observed          -1.3337634   -1.4135810   -1.2539459
6 months    JiVitA-3    BANGLADESH   observed             observed          -1.3152982   -1.3444394   -1.2861570
6 months    JiVitA-4    BANGLADESH   observed             observed          -1.3514886   -1.3904044   -1.3125729
6 months    Keneba      GAMBIA       observed             observed          -0.9355822   -0.9858754   -0.8852889
6 months    LCNI-5      MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    MAL-ED      BANGLADESH   observed             observed          -1.2072639   -1.3248889   -1.0896388
6 months    MAL-ED      BRAZIL       observed             observed           0.0475758   -0.0963508    0.1915023
6 months    MAL-ED      INDIA        observed             observed          -1.2055794   -1.3250712   -1.0860876
6 months    MAL-ED      PERU         observed             observed          -1.3230913   -1.4314947   -1.2146879
6 months    PROVIDE     BANGLADESH   observed             observed          -1.0855583   -1.1591292   -1.0119875
24 months   GMS-Nepal   NEPAL        observed             observed          -1.8830717   -1.9710591   -1.7950844
24 months   JiVitA-3    BANGLADESH   observed             observed          -2.0071989   -2.0453355   -1.9690623
24 months   JiVitA-4    BANGLADESH   observed             observed          -1.7922845   -1.8313538   -1.7532153
24 months   Keneba      GAMBIA       observed             observed          -1.5981956   -1.6534947   -1.5428965
24 months   LCNI-5      MALAWI       observed             observed          -1.9651323   -2.1053230   -1.8249415
24 months   MAL-ED      BANGLADESH   observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED      BRAZIL       observed             observed           0.0061144   -0.1625850    0.1748138
24 months   MAL-ED      INDIA        observed             observed          -1.8906250   -2.0165920   -1.7646580
24 months   PROVIDE     BANGLADESH   observed             observed          -1.6022704   -1.6857342   -1.5188065


### Parameter: PAR


agecat      studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal   NEPAL        optimal              observed          -0.0244701   -0.0662745    0.0173343
Birth       JiVitA-3    BANGLADESH   optimal              observed          -0.0013087   -0.0125960    0.0099786
Birth       JiVitA-4    BANGLADESH   optimal              observed          -0.0205515   -0.0494640    0.0083611
Birth       Keneba      GAMBIA       optimal              observed           0.1008300    0.0258529    0.1758071
Birth       MAL-ED      BANGLADESH   optimal              observed          -0.0096199   -0.0541505    0.0349106
Birth       MAL-ED      BRAZIL       optimal              observed          -0.0653415   -0.1623866    0.0317037
Birth       MAL-ED      PERU         optimal              observed           0.0981294    0.0377466    0.1585122
Birth       PROVIDE     BANGLADESH   optimal              observed          -0.0137343   -0.0484193    0.0209508
6 months    GMS-Nepal   NEPAL        optimal              observed          -0.0838648   -0.1541727   -0.0135569
6 months    JiVitA-3    BANGLADESH   optimal              observed          -0.0026785   -0.0298607    0.0245038
6 months    JiVitA-4    BANGLADESH   optimal              observed          -0.0178357   -0.0505268    0.0148553
6 months    Keneba      GAMBIA       optimal              observed          -0.0259230   -0.0959956    0.0441496
6 months    LCNI-5      MALAWI       optimal              observed          -0.1405697   -0.2909896    0.0098503
6 months    MAL-ED      BANGLADESH   optimal              observed           0.3433390    0.1837591    0.5029188
6 months    MAL-ED      BRAZIL       optimal              observed          -0.2076916   -1.0319414    0.6165581
6 months    MAL-ED      INDIA        optimal              observed          -0.2121843   -1.3192348    0.8948663
6 months    MAL-ED      PERU         optimal              observed           0.0926388   -0.3247093    0.5099869
6 months    PROVIDE     BANGLADESH   optimal              observed           0.0796005   -0.0053492    0.1645501
24 months   GMS-Nepal   NEPAL        optimal              observed          -0.0133020   -0.0593109    0.0327069
24 months   JiVitA-3    BANGLADESH   optimal              observed          -0.0095146   -0.0294717    0.0104425
24 months   JiVitA-4    BANGLADESH   optimal              observed          -0.0093665   -0.0285939    0.0098609
24 months   Keneba      GAMBIA       optimal              observed          -0.0689943   -0.1450939    0.0071053
24 months   LCNI-5      MALAWI       optimal              observed           0.0828473   -0.0201949    0.1858894
24 months   MAL-ED      BANGLADESH   optimal              observed           0.1995848   -0.0455098    0.4446795
24 months   MAL-ED      BRAZIL       optimal              observed          -0.0368569   -0.8011244    0.7274105
24 months   MAL-ED      INDIA        optimal              observed          -0.0146040   -0.0471686    0.0179606
24 months   PROVIDE     BANGLADESH   optimal              observed          -0.1008693   -0.1813768   -0.0203618
