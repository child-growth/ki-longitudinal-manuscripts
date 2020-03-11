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

**Intervention Variable:** pers_wast

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

agecat      studyid          country                        pers_wast    n_cell      n
----------  ---------------  -----------------------------  ----------  -------  -----
Birth       CMC-V-BCS-2002   INDIA                          0                80     92
Birth       CMC-V-BCS-2002   INDIA                          1                12     92
Birth       CMIN             BANGLADESH                     0                16     18
Birth       CMIN             BANGLADESH                     1                 2     18
Birth       CONTENT          PERU                           0                 2      2
Birth       CONTENT          PERU                           1                 0      2
Birth       EE               PAKISTAN                       0               224    240
Birth       EE               PAKISTAN                       1                16    240
Birth       GMS-Nepal        NEPAL                          0               521    585
Birth       GMS-Nepal        NEPAL                          1                64    585
Birth       IRC              INDIA                          0               319    387
Birth       IRC              INDIA                          1                68    387
Birth       Keneba           GAMBIA                         0              1374   1419
Birth       Keneba           GAMBIA                         1                45   1419
Birth       MAL-ED           BANGLADESH                     0               220    229
Birth       MAL-ED           BANGLADESH                     1                 9    229
Birth       MAL-ED           BRAZIL                         0                65     65
Birth       MAL-ED           BRAZIL                         1                 0     65
Birth       MAL-ED           INDIA                          0                43     45
Birth       MAL-ED           INDIA                          1                 2     45
Birth       MAL-ED           NEPAL                          0                26     27
Birth       MAL-ED           NEPAL                          1                 1     27
Birth       MAL-ED           PERU                           0               233    233
Birth       MAL-ED           PERU                           1                 0    233
Birth       MAL-ED           SOUTH AFRICA                   0               111    113
Birth       MAL-ED           SOUTH AFRICA                   1                 2    113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               123    123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    123
Birth       PROVIDE          BANGLADESH                     0               516    539
Birth       PROVIDE          BANGLADESH                     1                23    539
Birth       ResPak           PAKISTAN                       0                30     34
Birth       ResPak           PAKISTAN                       1                 4     34
6 months    CMC-V-BCS-2002   INDIA                          0               313    365
6 months    CMC-V-BCS-2002   INDIA                          1                52    365
6 months    CMIN             BANGLADESH                     0               232    243
6 months    CMIN             BANGLADESH                     1                11    243
6 months    CONTENT          PERU                           0               215    215
6 months    CONTENT          PERU                           1                 0    215
6 months    EE               PAKISTAN                       0               347    373
6 months    EE               PAKISTAN                       1                26    373
6 months    GMS-Nepal        NEPAL                          0               499    559
6 months    GMS-Nepal        NEPAL                          1                60    559
6 months    Guatemala BSC    GUATEMALA                      0               267    276
6 months    Guatemala BSC    GUATEMALA                      1                 9    276
6 months    IRC              INDIA                          0               337    406
6 months    IRC              INDIA                          1                69    406
6 months    Keneba           GAMBIA                         0              1836   1897
6 months    Keneba           GAMBIA                         1                61   1897
6 months    MAL-ED           BANGLADESH                     0               234    241
6 months    MAL-ED           BANGLADESH                     1                 7    241
6 months    MAL-ED           BRAZIL                         0               208    209
6 months    MAL-ED           BRAZIL                         1                 1    209
6 months    MAL-ED           INDIA                          0               218    236
6 months    MAL-ED           INDIA                          1                18    236
6 months    MAL-ED           NEPAL                          0               230    236
6 months    MAL-ED           NEPAL                          1                 6    236
6 months    MAL-ED           PERU                           0               273    273
6 months    MAL-ED           PERU                           1                 0    273
6 months    MAL-ED           SOUTH AFRICA                   0               252    254
6 months    MAL-ED           SOUTH AFRICA                   1                 2    254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               247    247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    247
6 months    PROVIDE          BANGLADESH                     0               590    604
6 months    PROVIDE          BANGLADESH                     1                14    604
6 months    ResPak           PAKISTAN                       0               202    227
6 months    ResPak           PAKISTAN                       1                25    227
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1968   2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                51   2019
24 months   CMC-V-BCS-2002   INDIA                          0               311    366
24 months   CMC-V-BCS-2002   INDIA                          1                55    366
24 months   CMIN             BANGLADESH                     0               233    242
24 months   CMIN             BANGLADESH                     1                 9    242
24 months   CONTENT          PERU                           0               164    164
24 months   CONTENT          PERU                           1                 0    164
24 months   EE               PAKISTAN                       0               156    167
24 months   EE               PAKISTAN                       1                11    167
24 months   GMS-Nepal        NEPAL                          0               430    479
24 months   GMS-Nepal        NEPAL                          1                49    479
24 months   IRC              INDIA                          0               339    408
24 months   IRC              INDIA                          1                69    408
24 months   Keneba           GAMBIA                         0              1395   1442
24 months   Keneba           GAMBIA                         1                47   1442
24 months   MAL-ED           BANGLADESH                     0               206    212
24 months   MAL-ED           BANGLADESH                     1                 6    212
24 months   MAL-ED           BRAZIL                         0               168    169
24 months   MAL-ED           BRAZIL                         1                 1    169
24 months   MAL-ED           INDIA                          0               209    227
24 months   MAL-ED           INDIA                          1                18    227
24 months   MAL-ED           NEPAL                          0               222    228
24 months   MAL-ED           NEPAL                          1                 6    228
24 months   MAL-ED           PERU                           0               201    201
24 months   MAL-ED           PERU                           1                 0    201
24 months   MAL-ED           SOUTH AFRICA                   0               236    238
24 months   MAL-ED           SOUTH AFRICA                   1                 2    238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               214    214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0    214
24 months   PROVIDE          BANGLADESH                     0               565    578
24 months   PROVIDE          BANGLADESH                     1                13    578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 6      6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      6


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

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/21272547-01a6-4b40-8035-c41ec03a54cf/0fd4e16e-2adc-4993-b407-b8bdae181901/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8716983   -1.0866814   -0.6567153
Birth       EE               PAKISTAN                       optimal              observed          -1.5221002   -2.4101472   -0.6340533
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.9481663   -1.1463025   -0.7500300
Birth       IRC              INDIA                          optimal              observed          -0.0667010   -0.4734081    0.3400061
Birth       Keneba           GAMBIA                         optimal              observed          -0.0015120   -0.3828837    0.3798597
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.7839324   -1.9844308    0.4165659
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.8753806   -0.9529023   -0.7978589
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -1.3646185   -1.6702332   -1.0590039
6 months    CMIN             BANGLADESH                     optimal              observed          -1.8837441   -2.1846390   -1.5828493
6 months    EE               PAKISTAN                       optimal              observed          -1.9646655   -2.1768779   -1.7524530
6 months    GMS-Nepal        NEPAL                          optimal              observed          -1.3887518   -1.4759093   -1.3015943
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -1.5419408   -1.6572609   -1.4266208
6 months    IRC              INDIA                          optimal              observed          -0.7382659   -1.0785088   -0.3980230
6 months    Keneba           GAMBIA                         optimal              observed          -0.9048476   -0.9537356   -0.8559597
6 months    MAL-ED           BANGLADESH                     optimal              observed          -1.0314290   -2.6910606    0.6282025
6 months    MAL-ED           INDIA                          optimal              observed          -1.4280324   -1.7724136   -1.0836512
6 months    MAL-ED           NEPAL                          optimal              observed          -0.5471736   -0.6605690   -0.4337782
6 months    PROVIDE          BANGLADESH                     optimal              observed          -1.0710590   -1.1455765   -0.9965414
6 months    ResPak           PAKISTAN                       optimal              observed          -0.8049131   -1.4331455   -0.1766808
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5437456   -0.5936463   -0.4938448
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4957609   -2.6004944   -2.3910273
24 months   CMIN             BANGLADESH                     optimal              observed          -2.5012719   -2.6291582   -2.3733856
24 months   EE               PAKISTAN                       optimal              observed          -2.6366034   -2.7880013   -2.4852055
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.7995492   -1.8912202   -1.7078782
24 months   IRC              INDIA                          optimal              observed          -1.7053920   -1.9064494   -1.5043345
24 months   Keneba           GAMBIA                         optimal              observed          -1.5735238   -1.6277659   -1.5192817
24 months   MAL-ED           BANGLADESH                     optimal              observed          -1.2665209   -1.8226509   -0.7103910
24 months   MAL-ED           INDIA                          optimal              observed          -1.5984976   -2.0191055   -1.1778897
24 months   MAL-ED           NEPAL                          optimal              observed          -1.5132743   -1.6545316   -1.3720170
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.6843364   -1.7583855   -1.6102874


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       EE               PAKISTAN                       observed             observed          -1.8608750   -2.0482045   -1.6735455
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.0554530   -1.1411259   -0.9697801
Birth       IRC              INDIA                          observed             observed          -0.3117313   -0.4727359   -0.1507267
Birth       Keneba           GAMBIA                         observed             observed           0.0432135   -0.0229516    0.1093787
Birth       MAL-ED           BANGLADESH                     observed             observed          -1.1041048   -1.2383048   -0.9699048
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -1.4241872   -1.5668135   -1.2815609
6 months    CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    EE               PAKISTAN                       observed             observed          -2.0835567   -2.2027557   -1.9643578
6 months    GMS-Nepal        NEPAL                          observed             observed          -1.3533244   -1.4319426   -1.2747062
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -1.5734843   -1.6884116   -1.4585570
6 months    IRC              INDIA                          observed             observed          -1.2382964   -1.3698449   -1.1067479
6 months    Keneba           GAMBIA                         observed             observed          -0.9282048   -0.9770928   -0.8793169
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           INDIA                          observed             observed          -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED           NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ResPak           PAKISTAN                       observed             observed          -1.3874523   -1.5959323   -1.1789723
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5450830   -0.5941754   -0.4959906
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -2.5489071   -2.6476125   -2.4502017
24 months   CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   EE               PAKISTAN                       observed             observed          -2.6699900   -2.8138051   -2.5261749
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.8938622   -1.9795205   -1.8082040
24 months   IRC              INDIA                          observed             observed          -1.7989338   -1.8927769   -1.7050907
24 months   Keneba           GAMBIA                         observed             observed          -1.5924094   -1.6461889   -1.5386298
24 months   MAL-ED           BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED           NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0894973   -0.2065997    0.0276050
Birth       EE               PAKISTAN                       optimal              observed          -0.3387748   -1.2006409    0.5230914
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.1072867   -0.2874429    0.0728694
Birth       IRC              INDIA                          optimal              observed          -0.2450303   -0.6068134    0.1167528
Birth       Keneba           GAMBIA                         optimal              observed           0.0447255   -0.3299925    0.4194435
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.3201724   -1.4925194    0.8521747
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0097214   -0.0227460    0.0033031
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0595687   -0.3175439    0.1984065
6 months    CMIN             BANGLADESH                     optimal              observed           0.0993066   -0.1705639    0.3691770
6 months    EE               PAKISTAN                       optimal              observed          -0.1188913   -0.3015122    0.0637297
6 months    GMS-Nepal        NEPAL                          optimal              observed           0.0354274   -0.0207476    0.0916023
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.0315435   -0.0596475   -0.0034395
6 months    IRC              INDIA                          optimal              observed          -0.5000305   -0.8065101   -0.1935509
6 months    Keneba           GAMBIA                         optimal              observed          -0.0233572   -0.0359079   -0.0108065
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.1735640   -1.7974298    1.4503017
6 months    MAL-ED           INDIA                          optimal              observed           0.2165070   -0.1026533    0.5356672
6 months    MAL-ED           NEPAL                          optimal              observed          -0.0144083   -0.0373357    0.0085191
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0206325   -0.0381886   -0.0030765
6 months    ResPak           PAKISTAN                       optimal              observed          -0.5825392   -1.1734263    0.0083480
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0013374   -0.0081619    0.0054871
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.0531462   -0.0978161   -0.0084764
24 months   CMIN             BANGLADESH                     optimal              observed          -0.0096785   -0.0332183    0.0138613
24 months   EE               PAKISTAN                       optimal              observed          -0.0333866   -0.0636290   -0.0031443
24 months   GMS-Nepal        NEPAL                          optimal              observed          -0.0943130   -0.1425729   -0.0460531
24 months   IRC              INDIA                          optimal              observed          -0.0935419   -0.2767976    0.0897138
24 months   Keneba           GAMBIA                         optimal              observed          -0.0188856   -0.0309572   -0.0068139
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.7118753   -1.2701727   -0.1535779
24 months   MAL-ED           INDIA                          optimal              observed          -0.2876918   -0.6962099    0.1208263
24 months   MAL-ED           NEPAL                          optimal              observed           0.2056865    0.1164359    0.2949372
24 months   PROVIDE          BANGLADESH                     optimal              observed           0.0819143    0.0082591    0.1555695
