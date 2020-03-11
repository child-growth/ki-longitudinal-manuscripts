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

**Intervention Variable:** anywast06

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        anywast06    n_cell      n
----------  ---------------  -----------------------------  ----------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          0                37     92
Birth       CMC-V-BCS-2002   INDIA                          1                55     92
Birth       CMIN             BANGLADESH                     0                15     20
Birth       CMIN             BANGLADESH                     1                 5     20
Birth       CONTENT          PERU                           0                 2      2
Birth       CONTENT          PERU                           1                 0      2
Birth       EE               PAKISTAN                       0               156    240
Birth       EE               PAKISTAN                       1                84    240
Birth       GMS-Nepal        NEPAL                          0               422    684
Birth       GMS-Nepal        NEPAL                          1               262    684
Birth       IRC              INDIA                          0               164    388
Birth       IRC              INDIA                          1               224    388
Birth       Keneba           GAMBIA                         0               994   1542
Birth       Keneba           GAMBIA                         1               548   1542
Birth       MAL-ED           BANGLADESH                     0               177    229
Birth       MAL-ED           BANGLADESH                     1                52    229
Birth       MAL-ED           BRAZIL                         0                62     65
Birth       MAL-ED           BRAZIL                         1                 3     65
Birth       MAL-ED           INDIA                          0                33     47
Birth       MAL-ED           INDIA                          1                14     47
Birth       MAL-ED           NEPAL                          0                23     27
Birth       MAL-ED           NEPAL                          1                 4     27
Birth       MAL-ED           PERU                           0               223    233
Birth       MAL-ED           PERU                           1                10    233
Birth       MAL-ED           SOUTH AFRICA                   0               101    122
Birth       MAL-ED           SOUTH AFRICA                   1                21    122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               119    124
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 5    124
Birth       PROVIDE          BANGLADESH                     0               396    539
Birth       PROVIDE          BANGLADESH                     1               143    539
Birth       ResPak           PAKISTAN                       0                28     42
Birth       ResPak           PAKISTAN                       1                14     42
6 months    CMC-V-BCS-2002   INDIA                          0               177    365
6 months    CMC-V-BCS-2002   INDIA                          1               188    365
6 months    CMIN             BANGLADESH                     0               201    243
6 months    CMIN             BANGLADESH                     1                42    243
6 months    CONTENT          PERU                           0               211    215
6 months    CONTENT          PERU                           1                 4    215
6 months    EE               PAKISTAN                       0               249    373
6 months    EE               PAKISTAN                       1               124    373
6 months    GMS-Nepal        NEPAL                          0               336    564
6 months    GMS-Nepal        NEPAL                          1               228    564
6 months    Guatemala BSC    GUATEMALA                      0               270    280
6 months    Guatemala BSC    GUATEMALA                      1                10    280
6 months    IRC              INDIA                          0               180    407
6 months    IRC              INDIA                          1               227    407
6 months    Keneba           GAMBIA                         0              1441   2056
6 months    Keneba           GAMBIA                         1               615   2056
6 months    MAL-ED           BANGLADESH                     0               183    241
6 months    MAL-ED           BANGLADESH                     1                58    241
6 months    MAL-ED           BRAZIL                         0               194    209
6 months    MAL-ED           BRAZIL                         1                15    209
6 months    MAL-ED           INDIA                          0               159    236
6 months    MAL-ED           INDIA                          1                77    236
6 months    MAL-ED           NEPAL                          0               188    236
6 months    MAL-ED           NEPAL                          1                48    236
6 months    MAL-ED           PERU                           0               263    273
6 months    MAL-ED           PERU                           1                10    273
6 months    MAL-ED           SOUTH AFRICA                   0               223    254
6 months    MAL-ED           SOUTH AFRICA                   1                31    254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               234    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                13    247
6 months    PROVIDE          BANGLADESH                     0               450    604
6 months    PROVIDE          BANGLADESH                     1               154    604
6 months    ResPak           PAKISTAN                       0               143    239
6 months    ResPak           PAKISTAN                       1                96    239
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1728   2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               301   2029
24 months   CMC-V-BCS-2002   INDIA                          0               176    366
24 months   CMC-V-BCS-2002   INDIA                          1               190    366
24 months   CMIN             BANGLADESH                     0               200    242
24 months   CMIN             BANGLADESH                     1                42    242
24 months   CONTENT          PERU                           0               162    164
24 months   CONTENT          PERU                           1                 2    164
24 months   EE               PAKISTAN                       0               109    167
24 months   EE               PAKISTAN                       1                58    167
24 months   GMS-Nepal        NEPAL                          0               300    488
24 months   GMS-Nepal        NEPAL                          1               188    488
24 months   IRC              INDIA                          0               181    409
24 months   IRC              INDIA                          1               228    409
24 months   Keneba           GAMBIA                         0              1091   1563
24 months   Keneba           GAMBIA                         1               472   1563
24 months   MAL-ED           BANGLADESH                     0               162    212
24 months   MAL-ED           BANGLADESH                     1                50    212
24 months   MAL-ED           BRAZIL                         0               156    169
24 months   MAL-ED           BRAZIL                         1                13    169
24 months   MAL-ED           INDIA                          0               151    227
24 months   MAL-ED           INDIA                          1                76    227
24 months   MAL-ED           NEPAL                          0               182    228
24 months   MAL-ED           NEPAL                          1                46    228
24 months   MAL-ED           PERU                           0               193    201
24 months   MAL-ED           PERU                           1                 8    201
24 months   MAL-ED           SOUTH AFRICA                   0               212    238
24 months   MAL-ED           SOUTH AFRICA                   1                26    238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               202    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                12    214
24 months   PROVIDE          BANGLADESH                     0               432    578
24 months   PROVIDE          BANGLADESH                     1               146    578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 5      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      6


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/68e75bbe-63d0-4891-8791-30fbd92f5889/c9824f8a-2cea-4acb-9c16-b9e19ad8f995/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.7875741   -1.1305943   -0.4445540
Birth       CMIN             BANGLADESH                     optimal              observed          -1.5947816   -1.8584516   -1.3311115
Birth       EE               PAKISTAN                       optimal              observed          -1.4775737   -1.8534026   -1.1017447
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.8742895   -0.9972115   -0.7513675
Birth       IRC              INDIA                          optimal              observed           0.1090361   -0.1071136    0.3251858
Birth       Keneba           GAMBIA                         optimal              observed           0.4046395    0.2932933    0.5159857
Birth       MAL-ED           BANGLADESH                     optimal              observed          -1.1606173   -1.4523053   -0.8689293
Birth       MAL-ED           INDIA                          optimal              observed          -1.0249601   -1.7220871   -0.3278331
Birth       MAL-ED           PERU                           optimal              observed          -0.9527410   -1.6127392   -0.2927429
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.2399767   -0.7030052    0.2230518
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.7250970   -2.6947324   -0.7554616
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.8114005   -0.9337398   -0.6890612
Birth       ResPak           PAKISTAN                       optimal              observed          -0.4463926   -1.3816980    0.4889128
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -1.4402479   -1.6494790   -1.2310169
6 months    CMIN             BANGLADESH                     optimal              observed          -1.7706223   -1.9205642   -1.6206803
6 months    EE               PAKISTAN                       optimal              observed          -2.0136472   -2.1813205   -1.8459739
6 months    GMS-Nepal        NEPAL                          optimal              observed          -1.3511377   -1.4651590   -1.2371165
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -1.5518038   -1.6618108   -1.4417968
6 months    IRC              INDIA                          optimal              observed          -1.0624716   -1.2400479   -0.8848953
6 months    Keneba           GAMBIA                         optimal              observed          -0.9032143   -0.9567923   -0.8496364
6 months    MAL-ED           BANGLADESH                     optimal              observed          -1.2530164   -1.4393049   -1.0667279
6 months    MAL-ED           BRAZIL                         optimal              observed           0.1218183   -0.3326013    0.5762378
6 months    MAL-ED           INDIA                          optimal              observed          -1.2362257   -1.4291232   -1.0433281
6 months    MAL-ED           NEPAL                          optimal              observed          -0.5271504   -0.6474572   -0.4068436
6 months    MAL-ED           PERU                           optimal              observed          -1.0740942   -1.9510467   -0.1971418
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.9841796   -1.1905775   -0.7777816
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.5310317   -1.6630303   -1.3990331
6 months    PROVIDE          BANGLADESH                     optimal              observed          -1.0531445   -1.1388088   -0.9674803
6 months    ResPak           PAKISTAN                       optimal              observed          -1.0289824   -1.3673380   -0.6906268
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5782921   -0.6670388   -0.4895454
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -2.5825551   -2.7319635   -2.4331466
24 months   CMIN             BANGLADESH                     optimal              observed          -2.4844013   -2.6226725   -2.3461302
24 months   EE               PAKISTAN                       optimal              observed          -2.7563620   -2.9483841   -2.5643399
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.9370306   -2.0720369   -1.8020242
24 months   IRC              INDIA                          optimal              observed          -1.7820159   -1.9192298   -1.6448020
24 months   Keneba           GAMBIA                         optimal              observed          -1.5466178   -1.6168633   -1.4763723
24 months   MAL-ED           BANGLADESH                     optimal              observed          -2.0407823   -2.2724204   -1.8091442
24 months   MAL-ED           BRAZIL                         optimal              observed           0.0626269   -0.1067133    0.2319671
24 months   MAL-ED           INDIA                          optimal              observed          -1.7785676   -2.0003669   -1.5567684
24 months   MAL-ED           NEPAL                          optimal              observed          -1.4564872   -1.7086358   -1.2043387
24 months   MAL-ED           PERU                           optimal              observed          -1.5379319   -2.3924302   -0.6834336
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.7651723   -2.1742210   -1.3561235
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.8687348   -3.3882111   -2.3492585
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.5866616   -1.6863617   -1.4869614


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       CMIN             BANGLADESH                     observed             observed          -1.2030000   -1.6953191   -0.7106809
Birth       EE               PAKISTAN                       observed             observed          -1.8608750   -2.0482045   -1.6735455
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.0454532   -1.1235003   -0.9674062
Birth       IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       Keneba           GAMBIA                         observed             observed           0.0325486   -0.0310420    0.0961393
Birth       MAL-ED           BANGLADESH                     observed             observed          -1.1041048   -1.2383048   -0.9699048
Birth       MAL-ED           INDIA                          observed             observed          -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED           PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.5877869   -0.7622273   -0.4133464
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1369355   -1.3453337   -0.9285373
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ResPak           PAKISTAN                       observed             observed          -0.9800000   -1.4086438   -0.5513562
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -1.4241872   -1.5668135   -1.2815609
6 months    CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    EE               PAKISTAN                       observed             observed          -2.0835567   -2.2027557   -1.9643578
6 months    GMS-Nepal        NEPAL                          observed             observed          -1.3508392   -1.4290633   -1.2726152
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -1.5785476   -1.6926664   -1.4644288
6 months    IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    Keneba           GAMBIA                         observed             observed          -0.9116762   -0.9588660   -0.8644864
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          observed             observed          -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED           NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ResPak           PAKISTAN                       observed             observed          -1.4314086   -1.6374838   -1.2253335
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5434389   -0.5924056   -0.4944722
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -2.5489071   -2.6476125   -2.4502017
24 months   CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   EE               PAKISTAN                       observed             observed          -2.6699900   -2.8138051   -2.5261749
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   Keneba           GAMBIA                         observed             observed          -1.5774758   -1.6295950   -1.5253566
24 months   MAL-ED           BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED           NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1736215   -0.4529232    0.1056802
Birth       CMIN             BANGLADESH                     optimal              observed           0.3917816   -0.1411819    0.9247451
Birth       EE               PAKISTAN                       optimal              observed          -0.3833013   -0.6713772   -0.0952255
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.1711637   -0.2700936   -0.0722338
Birth       IRC              INDIA                          optimal              observed          -0.4170773   -0.5532592   -0.2808954
Birth       Keneba           GAMBIA                         optimal              observed          -0.3720909   -0.4597897   -0.2843920
Birth       MAL-ED           BANGLADESH                     optimal              observed           0.0565125   -0.1867580    0.2997829
Birth       MAL-ED           INDIA                          optimal              observed          -0.1786569   -0.7397144    0.3824006
Birth       MAL-ED           PERU                           optimal              observed           0.0699513   -0.5736428    0.7135455
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.3478102   -0.7604134    0.0647930
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5881615   -0.3687678    1.5450909
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0737016   -0.1666456    0.0192425
Birth       ResPak           PAKISTAN                       optimal              observed          -0.5336074   -1.3291074    0.2618926
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed           0.0160607   -0.1263089    0.1584302
6 months    CMIN             BANGLADESH                     optimal              observed          -0.0138153   -0.0791229    0.0514923
6 months    EE               PAKISTAN                       optimal              observed          -0.0699095   -0.1855313    0.0457123
6 months    GMS-Nepal        NEPAL                          optimal              observed           0.0002985   -0.0873145    0.0879115
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.0267438   -0.0716063    0.0181187
6 months    IRC              INDIA                          optimal              observed          -0.1719346   -0.2884215   -0.0554477
6 months    Keneba           GAMBIA                         optimal              observed          -0.0084618   -0.0413428    0.0244191
6 months    MAL-ED           BANGLADESH                     optimal              observed           0.0480233   -0.0804368    0.1764835
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.0742425   -0.5078027    0.3593177
6 months    MAL-ED           INDIA                          optimal              observed           0.0247002   -0.1317983    0.1811987
6 months    MAL-ED           NEPAL                          optimal              observed          -0.0344315   -0.0993245    0.0304615
6 months    MAL-ED           PERU                           optimal              observed          -0.2495718   -1.1083573    0.6092136
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0791407   -0.2666375    0.1083562
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1622867    0.0836130    0.2409604
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0385470   -0.0832622    0.0061682
6 months    ResPak           PAKISTAN                       optimal              observed          -0.4024262   -0.6602986   -0.1445539
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0348532   -0.0384593    0.1081657
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed           0.0336480   -0.0671716    0.1344675
24 months   CMIN             BANGLADESH                     optimal              observed          -0.0265491   -0.0834343    0.0303362
24 months   EE               PAKISTAN                       optimal              observed           0.0863720   -0.0325812    0.2053251
24 months   GMS-Nepal        NEPAL                          optimal              observed           0.0496125   -0.0521354    0.1513605
24 months   IRC              INDIA                          optimal              observed          -0.0167616   -0.1007367    0.0672135
24 months   Keneba           GAMBIA                         optimal              observed          -0.0308580   -0.0800082    0.0182922
24 months   MAL-ED           BANGLADESH                     optimal              observed           0.0623861   -0.1195768    0.2443490
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.0565125   -0.1321252    0.0191002
24 months   MAL-ED           INDIA                          optimal              observed          -0.1076218   -0.2873737    0.0721301
24 months   MAL-ED           NEPAL                          optimal              observed           0.1488995   -0.0565501    0.3543491
24 months   MAL-ED           PERU                           optimal              observed          -0.2145391   -1.0491312    0.6200531
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed           0.1201127   -0.2489116    0.4891370
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2231740   -0.2646914    0.7110395
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.0157606   -0.0597187    0.0281975
