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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** exclfeed6

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

agecat      studyid          country                        exclfeed6    n_cell       n
----------  ---------------  -----------------------------  ----------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       EE               PAKISTAN                       1                24      28
Birth       EE               PAKISTAN                       0                 4      28
Birth       GMS-Nepal        NEPAL                          1               390     522
Birth       GMS-Nepal        NEPAL                          0               132     522
Birth       IRC              INDIA                          1                 0      12
Birth       IRC              INDIA                          0                12      12
Birth       JiVitA-3         BANGLADESH                     1              8381   10744
Birth       JiVitA-3         BANGLADESH                     0              2363   10744
Birth       JiVitA-4         BANGLADESH                     1              1799    2224
Birth       JiVitA-4         BANGLADESH                     0               425    2224
Birth       Keneba           GAMBIA                         1               450    1327
Birth       Keneba           GAMBIA                         0               877    1327
Birth       MAL-ED           BANGLADESH                     1                29     194
Birth       MAL-ED           BANGLADESH                     0               165     194
Birth       MAL-ED           BRAZIL                         1                 1      57
Birth       MAL-ED           BRAZIL                         0                56      57
Birth       MAL-ED           INDIA                          1                 1      37
Birth       MAL-ED           INDIA                          0                36      37
Birth       MAL-ED           NEPAL                          1                 2      23
Birth       MAL-ED           NEPAL                          0                21      23
Birth       MAL-ED           PERU                           1                 2     208
Birth       MAL-ED           PERU                           0               206     208
Birth       MAL-ED           SOUTH AFRICA                   1                 0      90
Birth       MAL-ED           SOUTH AFRICA                   0                90      90
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               105     105
Birth       PROVIDE          BANGLADESH                     1               155     532
Birth       PROVIDE          BANGLADESH                     0               377     532
Birth       SAS-CompFeed     INDIA                          1               310     325
Birth       SAS-CompFeed     INDIA                          0                15     325
6 months    CMC-V-BCS-2002   INDIA                          1                19      19
6 months    CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    EE               PAKISTAN                       1                43      48
6 months    EE               PAKISTAN                       0                 5      48
6 months    GMS-Nepal        NEPAL                          1               406     547
6 months    GMS-Nepal        NEPAL                          0               141     547
6 months    IRC              INDIA                          1                 0      14
6 months    IRC              INDIA                          0                14      14
6 months    JiVitA-3         BANGLADESH                     1              7610    9882
6 months    JiVitA-3         BANGLADESH                     0              2272    9882
6 months    JiVitA-4         BANGLADESH                     1              3315    4275
6 months    JiVitA-4         BANGLADESH                     0               960    4275
6 months    Keneba           GAMBIA                         1               586    1908
6 months    Keneba           GAMBIA                         0              1322    1908
6 months    LCNI-5           MALAWI                         1                47     272
6 months    LCNI-5           MALAWI                         0               225     272
6 months    MAL-ED           BANGLADESH                     1                33     231
6 months    MAL-ED           BANGLADESH                     0               198     231
6 months    MAL-ED           BRAZIL                         1                12     209
6 months    MAL-ED           BRAZIL                         0               197     209
6 months    MAL-ED           INDIA                          1                 2     218
6 months    MAL-ED           INDIA                          0               216     218
6 months    MAL-ED           NEPAL                          1                 5     225
6 months    MAL-ED           NEPAL                          0               220     225
6 months    MAL-ED           PERU                           1                 5     271
6 months    MAL-ED           PERU                           0               266     271
6 months    MAL-ED           SOUTH AFRICA                   1                 0     233
6 months    MAL-ED           SOUTH AFRICA                   0               233     233
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               232     232
6 months    PROVIDE          BANGLADESH                     1               141     603
6 months    PROVIDE          BANGLADESH                     0               462     603
6 months    SAS-CompFeed     INDIA                          1               376     395
6 months    SAS-CompFeed     INDIA                          0                19     395
6 months    SAS-FoodSuppl    INDIA                          1                 0     168
6 months    SAS-FoodSuppl    INDIA                          0               168     168
24 months   CMC-V-BCS-2002   INDIA                          1                19      19
24 months   CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   EE               PAKISTAN                       1                20      23
24 months   EE               PAKISTAN                       0                 3      23
24 months   GMS-Nepal        NEPAL                          1               355     469
24 months   GMS-Nepal        NEPAL                          0               114     469
24 months   IRC              INDIA                          1                 0      14
24 months   IRC              INDIA                          0                14      14
24 months   JiVitA-3         BANGLADESH                     1              3899    5067
24 months   JiVitA-3         BANGLADESH                     0              1168    5067
24 months   JiVitA-4         BANGLADESH                     1              3266    4184
24 months   JiVitA-4         BANGLADESH                     0               918    4184
24 months   Keneba           GAMBIA                         1               514    1514
24 months   Keneba           GAMBIA                         0              1000    1514
24 months   LCNI-5           MALAWI                         1                34     184
24 months   LCNI-5           MALAWI                         0               150     184
24 months   MAL-ED           BANGLADESH                     1                31     205
24 months   MAL-ED           BANGLADESH                     0               174     205
24 months   MAL-ED           BRAZIL                         1                11     169
24 months   MAL-ED           BRAZIL                         0               158     169
24 months   MAL-ED           INDIA                          1                 2     209
24 months   MAL-ED           INDIA                          0               207     209
24 months   MAL-ED           NEPAL                          1                 5     219
24 months   MAL-ED           NEPAL                          0               214     219
24 months   MAL-ED           PERU                           1                 3     201
24 months   MAL-ED           PERU                           0               198     201
24 months   MAL-ED           SOUTH AFRICA                   1                 0     216
24 months   MAL-ED           SOUTH AFRICA                   0               216     216
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               202     202
24 months   PROVIDE          BANGLADESH                     1               137     579
24 months   PROVIDE          BANGLADESH                     0               442     579


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
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/bf947cb2-c1bc-4665-af6a-dcced55832c5/dd16f850-a327-4fa5-8e2e-be891a31c694/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        optimal              observed          -1.1307083   -1.2750715   -0.9863450
Birth       JiVitA-3       BANGLADESH   optimal              observed          -0.7664663   -0.8042343   -0.7286983
Birth       JiVitA-4       BANGLADESH   optimal              observed          -0.6761248   -0.7675534   -0.5846962
Birth       Keneba         GAMBIA       optimal              observed          -1.2442985   -1.3448464   -1.1437505
Birth       MAL-ED         BANGLADESH   optimal              observed          -0.8742836   -1.2530354   -0.4955318
Birth       PROVIDE        BANGLADESH   optimal              observed          -1.3444548   -1.4361453   -1.2527644
Birth       SAS-CompFeed   INDIA        optimal              observed          -0.6562835   -0.8852815   -0.4272855
6 months    EE             PAKISTAN     optimal              observed          -0.8212673   -1.0013293   -0.6412053
6 months    GMS-Nepal      NEPAL        optimal              observed          -0.5756299   -0.6776680   -0.4735919
6 months    JiVitA-3       BANGLADESH   optimal              observed          -0.6048616   -0.6450415   -0.5646818
6 months    JiVitA-4       BANGLADESH   optimal              observed          -0.3511900   -0.3966575   -0.3057226
6 months    Keneba         GAMBIA       optimal              observed          -0.0216838   -0.1179749    0.0746072
6 months    LCNI-5         MALAWI       optimal              observed           0.3281523    0.1636440    0.4926605
6 months    MAL-ED         BANGLADESH   optimal              observed          -0.3043063   -0.6127523    0.0041397
6 months    MAL-ED         BRAZIL       optimal              observed           1.3429127    0.7012188    1.9846066
6 months    MAL-ED         NEPAL        optimal              observed           0.1178111   -0.0201128    0.2557350
6 months    MAL-ED         PERU         optimal              observed           0.9258360    0.7934166    1.0582555
6 months    PROVIDE        BANGLADESH   optimal              observed           0.0231105   -0.1414858    0.1877068
6 months    SAS-CompFeed   INDIA        optimal              observed          -0.7249143   -1.0477394   -0.4020893
24 months   GMS-Nepal      NEPAL        optimal              observed          -1.1096269   -1.2342442   -0.9850096
24 months   JiVitA-3       BANGLADESH   optimal              observed          -1.2798323   -1.3397606   -1.2199039
24 months   JiVitA-4       BANGLADESH   optimal              observed          -1.2194952   -1.2757487   -1.1632417
24 months   Keneba         GAMBIA       optimal              observed          -0.6971955   -0.7793669   -0.6150241
24 months   LCNI-5         MALAWI       optimal              observed          -0.1851679   -0.3971685    0.0268328
24 months   MAL-ED         BANGLADESH   optimal              observed          -0.7495598   -0.8846994   -0.6144201
24 months   MAL-ED         BRAZIL       optimal              observed           0.7705050    0.5270141    1.0139960
24 months   MAL-ED         NEPAL        optimal              observed          -0.5053331   -0.6317052   -0.3789611
24 months   PROVIDE        BANGLADESH   optimal              observed          -0.8127580   -0.9754386   -0.6500775


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        observed             observed          -1.1064559   -1.2034951   -1.0094168
Birth       JiVitA-3       BANGLADESH   observed             observed          -0.7807809   -0.8030521   -0.7585097
Birth       JiVitA-4       BANGLADESH   observed             observed          -0.6904586   -0.7435822   -0.6373351
Birth       Keneba         GAMBIA       observed             observed          -1.2599925   -1.3251703   -1.1948146
Birth       MAL-ED         BANGLADESH   observed             observed          -0.9755670   -1.1287016   -0.8224325
Birth       PROVIDE        BANGLADESH   observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed   INDIA        observed             observed          -0.6596308   -0.9005716   -0.4186900
6 months    EE             PAKISTAN     observed             observed          -0.6106944   -0.9239621   -0.2974268
6 months    GMS-Nepal      NEPAL        observed             observed          -0.6009171   -0.6886356   -0.5131986
6 months    JiVitA-3       BANGLADESH   observed             observed          -0.6001300   -0.6240378   -0.5762223
6 months    JiVitA-4       BANGLADESH   observed             observed          -0.3968456   -0.4358721   -0.3578192
6 months    Keneba         GAMBIA       observed             observed          -0.1997647   -0.2531388   -0.1463906
6 months    LCNI-5         MALAWI       observed             observed           0.3925000    0.2735307    0.5114693
6 months    MAL-ED         BANGLADESH   observed             observed          -0.1213203   -0.2539388    0.0112981
6 months    MAL-ED         BRAZIL       observed             observed           0.9720774    0.8078144    1.1363403
6 months    MAL-ED         NEPAL        observed             observed           0.1091407   -0.0265536    0.2448351
6 months    MAL-ED         PERU         observed             observed           1.0506150    0.9281868    1.1730433
6 months    PROVIDE        BANGLADESH   observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed   INDIA        observed             observed          -0.6348861   -0.7630511   -0.5067211
24 months   GMS-Nepal      NEPAL        observed             observed          -1.1423525   -1.2336321   -1.0510729
24 months   JiVitA-3       BANGLADESH   observed             observed          -1.3103375   -1.3408810   -1.2797940
24 months   JiVitA-4       BANGLADESH   observed             observed          -1.2265320   -1.2620508   -1.1910132
24 months   Keneba         GAMBIA       observed             observed          -0.8032329   -0.8532842   -0.7531817
24 months   LCNI-5         MALAWI       observed             observed          -0.0770652   -0.2204213    0.0662909
24 months   MAL-ED         BANGLADESH   observed             observed          -0.8169756   -0.9388013   -0.6951499
24 months   MAL-ED         BRAZIL       observed             observed           0.4626233    0.2567495    0.6684971
24 months   MAL-ED         NEPAL        observed             observed          -0.3674429   -0.4840752   -0.2508107
24 months   PROVIDE        BANGLADESH   observed             observed          -0.8928670   -0.9755153   -0.8102187


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        optimal              observed           0.0242523   -0.0843908    0.1328955
Birth       JiVitA-3       BANGLADESH   optimal              observed          -0.0143146   -0.0460008    0.0173716
Birth       JiVitA-4       BANGLADESH   optimal              observed          -0.0143338   -0.0864053    0.0577377
Birth       Keneba         GAMBIA       optimal              observed          -0.0156940   -0.0926694    0.0612814
Birth       MAL-ED         BANGLADESH   optimal              observed          -0.1012834   -0.4599329    0.2573661
Birth       PROVIDE        BANGLADESH   optimal              observed           0.0459962   -0.0123120    0.1043044
Birth       SAS-CompFeed   INDIA        optimal              observed          -0.0033473   -0.0446450    0.0379504
6 months    EE             PAKISTAN     optimal              observed           0.2105728   -0.1263007    0.5474464
6 months    GMS-Nepal      NEPAL        optimal              observed          -0.0252872   -0.0758180    0.0252436
6 months    JiVitA-3       BANGLADESH   optimal              observed           0.0047316   -0.0288113    0.0382745
6 months    JiVitA-4       BANGLADESH   optimal              observed          -0.0456556   -0.0686775   -0.0226336
6 months    Keneba         GAMBIA       optimal              observed          -0.1780808   -0.2573869   -0.0987747
6 months    LCNI-5         MALAWI       optimal              observed           0.0643477   -0.0433386    0.1720341
6 months    MAL-ED         BANGLADESH   optimal              observed           0.1829859   -0.1007712    0.4667431
6 months    MAL-ED         BRAZIL       optimal              observed          -0.3708354   -0.9927318    0.2510611
6 months    MAL-ED         NEPAL        optimal              observed          -0.0086704   -0.0271198    0.0097791
6 months    MAL-ED         PERU         optimal              observed           0.1247790    0.0631740    0.1863840
6 months    PROVIDE        BANGLADESH   optimal              observed          -0.2222012   -0.3674867   -0.0769156
6 months    SAS-CompFeed   INDIA        optimal              observed           0.0900283   -0.2741145    0.4541710
24 months   GMS-Nepal      NEPAL        optimal              observed          -0.0327256   -0.1200789    0.0546277
24 months   JiVitA-3       BANGLADESH   optimal              observed          -0.0305052   -0.0827664    0.0217560
24 months   JiVitA-4       BANGLADESH   optimal              observed          -0.0070368   -0.0531194    0.0390457
24 months   Keneba         GAMBIA       optimal              observed          -0.1060374   -0.1731496   -0.0389253
24 months   LCNI-5         MALAWI       optimal              observed           0.1081026   -0.0598430    0.2760483
24 months   MAL-ED         BANGLADESH   optimal              observed          -0.0674158   -0.1496559    0.0148242
24 months   MAL-ED         BRAZIL       optimal              observed          -0.3078818   -0.4485556   -0.1672080
24 months   MAL-ED         NEPAL        optimal              observed           0.1378902    0.0725173    0.2032631
24 months   PROVIDE        BANGLADESH   optimal              observed          -0.0801090   -0.2207541    0.0605362
