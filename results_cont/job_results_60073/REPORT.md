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

**Intervention Variable:** earlybf

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
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
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
* delta_brthmon
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

agecat      studyid        country                        earlybf    n_cell       n
----------  -------------  -----------------------------  --------  -------  ------
Birth       EE             PAKISTAN                       1              44     229
Birth       EE             PAKISTAN                       0             185     229
Birth       GMS-Nepal      NEPAL                          1             180     632
Birth       GMS-Nepal      NEPAL                          0             452     632
Birth       JiVitA-3       BANGLADESH                     1             236   22370
Birth       JiVitA-3       BANGLADESH                     0           22134   22370
Birth       JiVitA-4       BANGLADESH                     1            1912    2823
Birth       JiVitA-4       BANGLADESH                     0             911    2823
Birth       MAL-ED         BANGLADESH                     1             147     230
Birth       MAL-ED         BANGLADESH                     0              83     230
Birth       MAL-ED         BRAZIL                         1              28      65
Birth       MAL-ED         BRAZIL                         0              37      65
Birth       MAL-ED         INDIA                          1              32      46
Birth       MAL-ED         INDIA                          0              14      46
Birth       MAL-ED         NEPAL                          1              14      27
Birth       MAL-ED         NEPAL                          0              13      27
Birth       MAL-ED         PERU                           1             175     233
Birth       MAL-ED         PERU                           0              58     233
Birth       MAL-ED         SOUTH AFRICA                   1              69     111
Birth       MAL-ED         SOUTH AFRICA                   0              42     111
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             111     125
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              14     125
Birth       NIH-Crypto     BANGLADESH                     1             634     732
Birth       NIH-Crypto     BANGLADESH                     0              98     732
Birth       SAS-CompFeed   INDIA                          1              86    1207
Birth       SAS-CompFeed   INDIA                          0            1121    1207
Birth       ZVITAMBO       ZIMBABWE                       1            6556   12354
Birth       ZVITAMBO       ZIMBABWE                       0            5798   12354
6 months    EE             PAKISTAN                       1              68     362
6 months    EE             PAKISTAN                       0             294     362
6 months    GMS-Nepal      NEPAL                          1             151     511
6 months    GMS-Nepal      NEPAL                          0             360     511
6 months    JiVitA-3       BANGLADESH                     1              35   16811
6 months    JiVitA-3       BANGLADESH                     0           16776   16811
6 months    JiVitA-4       BANGLADESH                     1            3094    4831
6 months    JiVitA-4       BANGLADESH                     0            1737    4831
6 months    MAL-ED         BANGLADESH                     1             147     240
6 months    MAL-ED         BANGLADESH                     0              93     240
6 months    MAL-ED         BRAZIL                         1              95     209
6 months    MAL-ED         BRAZIL                         0             114     209
6 months    MAL-ED         INDIA                          1             140     236
6 months    MAL-ED         INDIA                          0              96     236
6 months    MAL-ED         NEPAL                          1              96     236
6 months    MAL-ED         NEPAL                          0             140     236
6 months    MAL-ED         PERU                           1             202     273
6 months    MAL-ED         PERU                           0              71     273
6 months    MAL-ED         SOUTH AFRICA                   1             156     250
6 months    MAL-ED         SOUTH AFRICA                   0              94     250
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             205     247
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              42     247
6 months    NIH-Crypto     BANGLADESH                     1             619     715
6 months    NIH-Crypto     BANGLADESH                     0              96     715
6 months    SAS-CompFeed   INDIA                          1              98    1336
6 months    SAS-CompFeed   INDIA                          0            1238    1336
6 months    ZVITAMBO       ZIMBABWE                       1            4146    7698
6 months    ZVITAMBO       ZIMBABWE                       0            3552    7698
24 months   EE             PAKISTAN                       1              32     164
24 months   EE             PAKISTAN                       0             132     164
24 months   GMS-Nepal      NEPAL                          1             131     445
24 months   GMS-Nepal      NEPAL                          0             314     445
24 months   JiVitA-3       BANGLADESH                     1               1    8632
24 months   JiVitA-3       BANGLADESH                     0            8631    8632
24 months   JiVitA-4       BANGLADESH                     1            3042    4752
24 months   JiVitA-4       BANGLADESH                     0            1710    4752
24 months   MAL-ED         BANGLADESH                     1             128     211
24 months   MAL-ED         BANGLADESH                     0              83     211
24 months   MAL-ED         BRAZIL                         1              80     169
24 months   MAL-ED         BRAZIL                         0              89     169
24 months   MAL-ED         INDIA                          1             134     227
24 months   MAL-ED         INDIA                          0              93     227
24 months   MAL-ED         NEPAL                          1              95     228
24 months   MAL-ED         NEPAL                          0             133     228
24 months   MAL-ED         PERU                           1             149     201
24 months   MAL-ED         PERU                           0              52     201
24 months   MAL-ED         SOUTH AFRICA                   1             144     235
24 months   MAL-ED         SOUTH AFRICA                   0              91     235
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1             180     214
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0              34     214
24 months   NIH-Crypto     BANGLADESH                     1             443     514
24 months   NIH-Crypto     BANGLADESH                     0              71     514
24 months   ZVITAMBO       ZIMBABWE                       1             717    1406
24 months   ZVITAMBO       ZIMBABWE                       0             689    1406


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
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
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/dc570301-a6f4-4e64-89ec-193309d4b053/72b1e81b-94ad-4517-86a4-0f26a27c8007/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/dc570301-a6f4-4e64-89ec-193309d4b053/72b1e81b-94ad-4517-86a4-0f26a27c8007/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/dc570301-a6f4-4e64-89ec-193309d4b053/72b1e81b-94ad-4517-86a4-0f26a27c8007/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    NA                -1.7524138   -2.0524305   -1.4523971
Birth       EE             PAKISTAN                       0                    NA                -1.9069296   -2.1087467   -1.7051126
Birth       GMS-Nepal      NEPAL                          1                    NA                -0.9870250   -1.1388113   -0.8352388
Birth       GMS-Nepal      NEPAL                          0                    NA                -1.0869618   -1.1853267   -0.9885969
Birth       JiVitA-3       BANGLADESH                     1                    NA                -2.0588794   -2.1127296   -2.0050292
Birth       JiVitA-3       BANGLADESH                     0                    NA                -1.5873545   -1.6069267   -1.5677824
Birth       JiVitA-4       BANGLADESH                     1                    NA                -1.5094935   -1.5670717   -1.4519152
Birth       JiVitA-4       BANGLADESH                     0                    NA                -1.5489223   -1.6424848   -1.4553598
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.9885001   -1.1481522   -0.8288480
Birth       MAL-ED         BANGLADESH                     0                    NA                -1.3660117   -1.6035340   -1.1284895
Birth       MAL-ED         BRAZIL                         1                    NA                -0.3643259   -0.8642873    0.1356355
Birth       MAL-ED         BRAZIL                         0                    NA                -0.7739240   -1.1314218   -0.4164261
Birth       MAL-ED         INDIA                          1                    NA                -1.1107705   -1.4775987   -0.7439423
Birth       MAL-ED         INDIA                          0                    NA                -1.4056307   -1.9693850   -0.8418765
Birth       MAL-ED         NEPAL                          1                    NA                -0.7776479   -1.2989445   -0.2563513
Birth       MAL-ED         NEPAL                          0                    NA                -0.8810310   -1.3634219   -0.3986401
Birth       MAL-ED         PERU                           1                    NA                -0.8139462   -0.9423985   -0.6854938
Birth       MAL-ED         PERU                           0                    NA                -1.0222432   -1.2139582   -0.8305282
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.4536706   -0.6881157   -0.2192254
Birth       MAL-ED         SOUTH AFRICA                   0                    NA                -0.7187867   -1.0468104   -0.3907630
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.1197378   -1.3362734   -0.9032023
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0849747   -1.8486549   -0.3212945
Birth       NIH-Crypto     BANGLADESH                     1                    NA                -0.9075445   -0.9825218   -0.8325673
Birth       NIH-Crypto     BANGLADESH                     0                    NA                -0.8843921   -1.0839800   -0.6848041
Birth       SAS-CompFeed   INDIA                          1                    NA                -1.0994066   -1.2772210   -0.9215922
Birth       SAS-CompFeed   INDIA                          0                    NA                -1.4308867   -1.4933116   -1.3684618
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                -0.4922462   -0.5227669   -0.4617255
Birth       ZVITAMBO       ZIMBABWE                       0                    NA                -0.4758523   -0.5072392   -0.4444654
6 months    EE             PAKISTAN                       1                    NA                -2.0003146   -2.3166706   -1.6839586
6 months    EE             PAKISTAN                       0                    NA                -2.1041375   -2.2334069   -1.9748681
6 months    GMS-Nepal      NEPAL                          1                    NA                -1.1726803   -1.3195246   -1.0258361
6 months    GMS-Nepal      NEPAL                          0                    NA                -1.3818273   -1.4785035   -1.2851512
6 months    JiVitA-3       BANGLADESH                     1                    NA                -2.2145730   -2.2601404   -2.1690055
6 months    JiVitA-3       BANGLADESH                     0                    NA                -1.3111158   -1.3347273   -1.2875043
6 months    JiVitA-4       BANGLADESH                     1                    NA                -1.3320986   -1.3782615   -1.2859357
6 months    JiVitA-4       BANGLADESH                     0                    NA                -1.3683416   -1.4266775   -1.3100057
6 months    MAL-ED         BANGLADESH                     1                    NA                -1.1673163   -1.3171986   -1.0174340
6 months    MAL-ED         BANGLADESH                     0                    NA                -1.2842938   -1.4780361   -1.0905515
6 months    MAL-ED         BRAZIL                         1                    NA                 0.0001441   -0.2220210    0.2223092
6 months    MAL-ED         BRAZIL                         0                    NA                 0.1019584   -0.0857470    0.2896639
6 months    MAL-ED         INDIA                          1                    NA                -1.2121001   -1.3662915   -1.0579086
6 months    MAL-ED         INDIA                          0                    NA                -1.2594147   -1.4453632   -1.0734661
6 months    MAL-ED         NEPAL                          1                    NA                -0.6892656   -0.8535317   -0.5249995
6 months    MAL-ED         NEPAL                          0                    NA                -0.4826428   -0.6342115   -0.3310741
6 months    MAL-ED         PERU                           1                    NA                -1.3266850   -1.4539994   -1.1993706
6 months    MAL-ED         PERU                           0                    NA                -1.2794368   -1.4910582   -1.0678154
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                -1.0420514   -1.1963052   -0.8877975
6 months    MAL-ED         SOUTH AFRICA                   0                    NA                -1.0507905   -1.2809363   -0.8206447
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3244835   -1.4530030   -1.1959640
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.5282614   -1.9125777   -1.1439450
6 months    NIH-Crypto     BANGLADESH                     1                    NA                -1.2284180   -1.3049355   -1.1519006
6 months    NIH-Crypto     BANGLADESH                     0                    NA                -1.0035343   -1.2002488   -0.8068198
6 months    SAS-CompFeed   INDIA                          1                    NA                -1.3046030   -1.5804232   -1.0287828
6 months    SAS-CompFeed   INDIA                          0                    NA                -1.4110959   -1.4864420   -1.3357497
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                -0.8354682   -0.8709683   -0.7999680
6 months    ZVITAMBO       ZIMBABWE                       0                    NA                -0.8903708   -0.9291195   -0.8516221
24 months   EE             PAKISTAN                       1                    NA                -2.7053123   -3.1533848   -2.2572397
24 months   EE             PAKISTAN                       0                    NA                -2.6505160   -2.7985524   -2.5024795
24 months   GMS-Nepal      NEPAL                          1                    NA                -1.5719765   -1.7198043   -1.4241487
24 months   GMS-Nepal      NEPAL                          0                    NA                -2.0029013   -2.1123282   -1.8934744
24 months   JiVitA-4       BANGLADESH                     1                    NA                -1.7944995   -1.8391425   -1.7498564
24 months   JiVitA-4       BANGLADESH                     0                    NA                -1.7548979   -1.8082646   -1.7015312
24 months   MAL-ED         BANGLADESH                     1                    NA                -1.9719622   -2.1296654   -1.8142589
24 months   MAL-ED         BANGLADESH                     0                    NA                -1.9835835   -2.2031803   -1.7639867
24 months   MAL-ED         BRAZIL                         1                    NA                -0.0059366   -0.2635329    0.2516596
24 months   MAL-ED         BRAZIL                         0                    NA                 0.0112604   -0.2163996    0.2389205
24 months   MAL-ED         INDIA                          1                    NA                -1.9306026   -2.0952759   -1.7659292
24 months   MAL-ED         INDIA                          0                    NA                -1.8175012   -2.0059086   -1.6290937
24 months   MAL-ED         NEPAL                          1                    NA                -1.3733572   -1.5468896   -1.1998249
24 months   MAL-ED         NEPAL                          0                    NA                -1.2700551   -1.4329343   -1.1071759
24 months   MAL-ED         PERU                           1                    NA                -1.8144174   -1.9554617   -1.6733731
24 months   MAL-ED         PERU                           0                    NA                -1.5740298   -1.8107663   -1.3372933
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -1.6599657   -1.8342979   -1.4856336
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                -1.5868140   -1.8077208   -1.3659073
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.6171271   -2.7622419   -2.4720123
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.7659148   -3.1042885   -2.4275410
24 months   NIH-Crypto     BANGLADESH                     1                    NA                -1.4790304   -1.5713807   -1.3866801
24 months   NIH-Crypto     BANGLADESH                     0                    NA                -1.2033244   -1.3806231   -1.0260258
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                -1.5881842   -1.6736054   -1.5027629
24 months   ZVITAMBO       ZIMBABWE                       0                    NA                -1.6033971   -1.6871809   -1.5196134


### Parameter: E(Y)


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       NA                   NA                -1.8713537   -2.0647180   -1.6779894
Birth       GMS-Nepal      NEPAL                          NA                   NA                -1.0578481   -1.1411010   -0.9745953
Birth       JiVitA-3       BANGLADESH                     NA                   NA                -1.5896710   -1.6089649   -1.5703770
Birth       JiVitA-4       BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
Birth       MAL-ED         BANGLADESH                     NA                   NA                -1.1218261   -1.2566576   -0.9869945
Birth       MAL-ED         BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED         INDIA                          NA                   NA                -1.2221739   -1.5203945   -0.9239534
Birth       MAL-ED         NEPAL                          NA                   NA                -0.8533333   -1.2104864   -0.4961803
Birth       MAL-ED         PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED         SOUTH AFRICA                   NA                   NA                -0.5709009   -0.7569265   -0.3848753
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Crypto     BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       SAS-CompFeed   INDIA                          NA                   NA                -1.4072245   -1.4817853   -1.3326638
Birth       ZVITAMBO       ZIMBABWE                       NA                   NA                -0.4895257   -0.5113672   -0.4676841
6 months    EE             PAKISTAN                       NA                   NA                -2.0838858   -2.2054394   -1.9623322
6 months    GMS-Nepal      NEPAL                          NA                   NA                -1.3175310   -1.3993963   -1.2356656
6 months    JiVitA-3       BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
6 months    JiVitA-4       BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
6 months    MAL-ED         BANGLADESH                     NA                   NA                -1.2056389   -1.3233420   -1.0879358
6 months    MAL-ED         BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED         INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED         NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED         PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED         SOUTH AFRICA                   NA                   NA                -1.0598800   -1.1885688   -0.9311912
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Crypto     BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    SAS-CompFeed   INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ZVITAMBO       ZIMBABWE                       NA                   NA                -0.8625370   -0.8897591   -0.8353150
24 months   EE             PAKISTAN                       NA                   NA                -2.6678252   -2.8138884   -2.5217620
24 months   GMS-Nepal      NEPAL                          NA                   NA                -1.8793783   -1.9705101   -1.7882464
24 months   JiVitA-4       BANGLADESH                     NA                   NA                -1.7807218   -1.8162478   -1.7451958
24 months   MAL-ED         BANGLADESH                     NA                   NA                -1.9735782   -2.1004502   -1.8467062
24 months   MAL-ED         BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED         INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED         NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED         PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                -1.6365071   -1.7722110   -1.5008032
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Crypto     BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ZVITAMBO       ZIMBABWE                       NA                   NA                -1.6006366   -1.6621572   -1.5391159


### Parameter: ATE


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       EE             PAKISTAN                       0                    1                 -0.1545158   -0.4461301    0.1370985
Birth       GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal      NEPAL                          0                    1                 -0.0999368   -0.2756015    0.0757280
Birth       JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3       BANGLADESH                     0                    1                  0.4715249    0.4164551    0.5265947
Birth       JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4       BANGLADESH                     0                    1                 -0.0394288   -0.1495584    0.0707007
Birth       MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BANGLADESH                     0                    1                 -0.3775116   -0.6641117   -0.0909115
Birth       MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         BRAZIL                         0                    1                 -0.4095981   -1.0500136    0.2308174
Birth       MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         INDIA                          0                    1                 -0.2948603   -0.9723285    0.3826080
Birth       MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         NEPAL                          0                    1                 -0.1033831   -0.7985012    0.5917350
Birth       MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         PERU                           0                    1                 -0.2082970   -0.4153574   -0.0012367
Birth       MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         SOUTH AFRICA                   0                    1                 -0.2651161   -0.6714217    0.1411894
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0347631   -0.7618589    0.8313852
Birth       NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto     BANGLADESH                     0                    1                  0.0231525   -0.1864963    0.2328012
Birth       SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                 -0.3314801   -0.4594813   -0.2034788
Birth       ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO       ZIMBABWE                       0                    1                  0.0163939   -0.0260029    0.0587907
6 months    EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    EE             PAKISTAN                       0                    1                 -0.1038229   -0.4431752    0.2355295
6 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal      NEPAL                          0                    1                 -0.2091470   -0.3831542   -0.0351398
6 months    JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3       BANGLADESH                     0                    1                  0.9034572    0.8527042    0.9542102
6 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4       BANGLADESH                     0                    1                 -0.0362430   -0.1083745    0.0358886
6 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BANGLADESH                     0                    1                 -0.1169775   -0.3632223    0.1292673
6 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         BRAZIL                         0                    1                  0.1018143   -0.1877349    0.3913635
6 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         INDIA                          0                    1                 -0.0473146   -0.2897468    0.1951176
6 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         NEPAL                          0                    1                  0.2066228   -0.0164567    0.4297024
6 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         PERU                           0                    1                  0.0472483   -0.2015673    0.2960638
6 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         SOUTH AFRICA                   0                    1                 -0.0087391   -0.2872489    0.2697707
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2037779   -0.6096683    0.2021125
6 months    NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto     BANGLADESH                     0                    1                  0.2248837    0.0137695    0.4359979
6 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                 -0.1064929   -0.3580352    0.1450495
6 months    ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO       ZIMBABWE                       0                    1                 -0.0549026   -0.1045570   -0.0052483
24 months   EE             PAKISTAN                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   EE             PAKISTAN                       0                    1                  0.0547963   -0.4179054    0.5274980
24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                 -0.4309247   -0.6127346   -0.2491149
24 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4       BANGLADESH                     0                    1                  0.0396016   -0.0260848    0.1052879
24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                 -0.0116214   -0.2827800    0.2595373
24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         BRAZIL                         0                    1                  0.0171971   -0.3286887    0.3630829
24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         INDIA                          0                    1                  0.1131014   -0.1358120    0.3620148
24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         NEPAL                          0                    1                  0.1033021   -0.1340016    0.3406058
24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         PERU                           0                    1                  0.2403876   -0.0374552    0.5182304
24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0731517   -0.2089961    0.3552995
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1487877   -0.5175917    0.2200163
24 months   NIH-Crypto     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto     BANGLADESH                     0                    1                  0.2757060    0.0758249    0.4755870
24 months   ZVITAMBO       ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO       ZIMBABWE                       0                    1                 -0.0152130   -0.1325970    0.1021710


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       EE             PAKISTAN                       1                    NA                -0.1189399   -0.3578533    0.1199735
Birth       GMS-Nepal      NEPAL                          1                    NA                -0.0708231   -0.1984295    0.0567834
Birth       JiVitA-3       BANGLADESH                     1                    NA                 0.4692084    0.4158356    0.5225813
Birth       JiVitA-4       BANGLADESH                     1                    NA                -0.0137974   -0.0490976    0.0215029
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.1333260   -0.2400729   -0.0265791
Birth       MAL-ED         BRAZIL                         1                    NA                -0.3116741   -0.7376382    0.1142900
Birth       MAL-ED         INDIA                          1                    NA                -0.1114034   -0.3135679    0.0907611
Birth       MAL-ED         NEPAL                          1                    NA                -0.0756854   -0.4095972    0.2582263
Birth       MAL-ED         PERU                           1                    NA                -0.0688435   -0.1226385   -0.0150486
Birth       MAL-ED         SOUTH AFRICA                   1                    NA                -0.1172303   -0.2758176    0.0413570
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0358622   -0.1277024    0.0559781
Birth       NIH-Crypto     BANGLADESH                     1                    NA                -0.0019500   -0.0299282    0.0260282
Birth       SAS-CompFeed   INDIA                          1                    NA                -0.3078179   -0.4303157   -0.1853201
Birth       ZVITAMBO       ZIMBABWE                       1                    NA                 0.0027205   -0.0192264    0.0246675
6 months    EE             PAKISTAN                       1                    NA                -0.0835712   -0.3604216    0.1932792
6 months    GMS-Nepal      NEPAL                          1                    NA                -0.1448507   -0.2680268   -0.0216745
6 months    JiVitA-3       BANGLADESH                     1                    NA                 0.9014798    0.8519397    0.9510198
6 months    JiVitA-4       BANGLADESH                     1                    NA                -0.0126954   -0.0391029    0.0137120
6 months    MAL-ED         BANGLADESH                     1                    NA                -0.0383226   -0.1334923    0.0568471
6 months    MAL-ED         BRAZIL                         1                    NA                 0.0474316   -0.1121251    0.2069884
6 months    MAL-ED         INDIA                          1                    NA                 0.0005747   -0.1004393    0.1015887
6 months    MAL-ED         NEPAL                          1                    NA                 0.1276837   -0.0050466    0.2604140
6 months    MAL-ED         PERU                           1                    NA                 0.0030190   -0.0602794    0.0663173
6 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.0178286   -0.1228686    0.0872114
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0442615   -0.1107307    0.0222078
6 months    NIH-Crypto     BANGLADESH                     1                    NA                 0.0297397    0.0010826    0.0583968
6 months    SAS-CompFeed   INDIA                          1                    NA                -0.0972533   -0.3350924    0.1405858
6 months    ZVITAMBO       ZIMBABWE                       1                    NA                -0.0270688   -0.0503234   -0.0038143
24 months   EE             PAKISTAN                       1                    NA                 0.0374871   -0.3538084    0.4287825
24 months   GMS-Nepal      NEPAL                          1                    NA                -0.3074018   -0.4372778   -0.1775257
24 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0137777   -0.0098331    0.0373884
24 months   MAL-ED         BANGLADESH                     1                    NA                -0.0016160   -0.1074681    0.1042360
24 months   MAL-ED         BRAZIL                         1                    NA                 0.0120510   -0.1701273    0.1942293
24 months   MAL-ED         INDIA                          1                    NA                 0.0444131   -0.0580637    0.1468899
24 months   MAL-ED         NEPAL                          1                    NA                 0.0657695   -0.0726081    0.2041471
24 months   MAL-ED         PERU                           1                    NA                 0.0619464   -0.0087338    0.1326267
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0234586   -0.0850432    0.1319605
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0284337   -0.0926107    0.0357434
24 months   NIH-Crypto     BANGLADESH                     1                    NA                 0.0377658    0.0091486    0.0663830
24 months   ZVITAMBO       ZIMBABWE                       1                    NA                -0.0124524   -0.0707476    0.0458428
