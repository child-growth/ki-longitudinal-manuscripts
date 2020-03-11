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

**Intervention Variable:** predexfd6

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

agecat      studyid          country                        predexfd6    n_cell       n
----------  ---------------  -----------------------------  ----------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       EE               PAKISTAN                       1                38      42
Birth       EE               PAKISTAN                       0                 4      42
Birth       GMS-Nepal        NEPAL                          1               419     563
Birth       GMS-Nepal        NEPAL                          0               144     563
Birth       IRC              INDIA                          1                 0      14
Birth       IRC              INDIA                          0                14      14
Birth       JiVitA-3         BANGLADESH                     1             10466   13423
Birth       JiVitA-3         BANGLADESH                     0              2957   13423
Birth       JiVitA-4         BANGLADESH                     1              2103    2632
Birth       JiVitA-4         BANGLADESH                     0               529    2632
Birth       Keneba           GAMBIA                         1               485    1403
Birth       Keneba           GAMBIA                         0               918    1403
Birth       MAL-ED           BANGLADESH                     1                72     205
Birth       MAL-ED           BANGLADESH                     0               133     205
Birth       MAL-ED           BRAZIL                         1                 6      60
Birth       MAL-ED           BRAZIL                         0                54      60
Birth       MAL-ED           INDIA                          1                 4      39
Birth       MAL-ED           INDIA                          0                35      39
Birth       MAL-ED           NEPAL                          1                 3      24
Birth       MAL-ED           NEPAL                          0                21      24
Birth       MAL-ED           PERU                           1                73     213
Birth       MAL-ED           PERU                           0               140     213
Birth       MAL-ED           SOUTH AFRICA                   1                 1      91
Birth       MAL-ED           SOUTH AFRICA                   0                90      91
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               113     113
Birth       PROVIDE          BANGLADESH                     1               159     539
Birth       PROVIDE          BANGLADESH                     0               380     539
Birth       SAS-CompFeed     INDIA                          1               346     364
Birth       SAS-CompFeed     INDIA                          0                18     364
6 months    CMC-V-BCS-2002   INDIA                          1                19      19
6 months    CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    EE               PAKISTAN                       1                43      48
6 months    EE               PAKISTAN                       0                 5      48
6 months    GMS-Nepal        NEPAL                          1               406     547
6 months    GMS-Nepal        NEPAL                          0               141     547
6 months    IRC              INDIA                          1                 0      14
6 months    IRC              INDIA                          0                14      14
6 months    JiVitA-3         BANGLADESH                     1              7644    9901
6 months    JiVitA-3         BANGLADESH                     0              2257    9901
6 months    JiVitA-4         BANGLADESH                     1              3328    4272
6 months    JiVitA-4         BANGLADESH                     0               944    4272
6 months    Keneba           GAMBIA                         1               586    1908
6 months    Keneba           GAMBIA                         0              1322    1908
6 months    LCNI-5           MALAWI                         1                47     272
6 months    LCNI-5           MALAWI                         0               225     272
6 months    MAL-ED           BANGLADESH                     1                84     231
6 months    MAL-ED           BANGLADESH                     0               147     231
6 months    MAL-ED           BRAZIL                         1                30     209
6 months    MAL-ED           BRAZIL                         0               179     209
6 months    MAL-ED           INDIA                          1                11     218
6 months    MAL-ED           INDIA                          0               207     218
6 months    MAL-ED           NEPAL                          1                12     225
6 months    MAL-ED           NEPAL                          0               213     225
6 months    MAL-ED           PERU                           1                92     271
6 months    MAL-ED           PERU                           0               179     271
6 months    MAL-ED           SOUTH AFRICA                   1                 3     233
6 months    MAL-ED           SOUTH AFRICA                   0               230     233
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     232
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               231     232
6 months    PROVIDE          BANGLADESH                     1               141     604
6 months    PROVIDE          BANGLADESH                     0               463     604
6 months    SAS-CompFeed     INDIA                          1               379     398
6 months    SAS-CompFeed     INDIA                          0                19     398
6 months    SAS-FoodSuppl    INDIA                          1                 0     168
6 months    SAS-FoodSuppl    INDIA                          0               168     168
24 months   CMC-V-BCS-2002   INDIA                          1                19      19
24 months   CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   EE               PAKISTAN                       1                20      23
24 months   EE               PAKISTAN                       0                 3      23
24 months   GMS-Nepal        NEPAL                          1               356     470
24 months   GMS-Nepal        NEPAL                          0               114     470
24 months   IRC              INDIA                          1                 0      14
24 months   IRC              INDIA                          0                14      14
24 months   JiVitA-3         BANGLADESH                     1              3926    5088
24 months   JiVitA-3         BANGLADESH                     0              1162    5088
24 months   JiVitA-4         BANGLADESH                     1              3292    4199
24 months   JiVitA-4         BANGLADESH                     0               907    4199
24 months   Keneba           GAMBIA                         1               515    1513
24 months   Keneba           GAMBIA                         0               998    1513
24 months   LCNI-5           MALAWI                         1                34     189
24 months   LCNI-5           MALAWI                         0               155     189
24 months   MAL-ED           BANGLADESH                     1                76     205
24 months   MAL-ED           BANGLADESH                     0               129     205
24 months   MAL-ED           BRAZIL                         1                25     169
24 months   MAL-ED           BRAZIL                         0               144     169
24 months   MAL-ED           INDIA                          1                11     209
24 months   MAL-ED           INDIA                          0               198     209
24 months   MAL-ED           NEPAL                          1                12     219
24 months   MAL-ED           NEPAL                          0               207     219
24 months   MAL-ED           PERU                           1                68     201
24 months   MAL-ED           PERU                           0               133     201
24 months   MAL-ED           SOUTH AFRICA                   1                 3     216
24 months   MAL-ED           SOUTH AFRICA                   0               213     216
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1     202
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               201     202
24 months   PROVIDE          BANGLADESH                     1               137     578
24 months   PROVIDE          BANGLADESH                     0               441     578


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
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
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
![](/tmp/9908ada6-7e83-4cfb-92de-2481bebc0136/1d0ef3f4-8179-42e6-9481-984c3dfa1892/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        optimal              observed          -1.1500096   -1.2675164   -1.0325029
Birth       JiVitA-3       BANGLADESH   optimal              observed          -1.5975812   -1.6310052   -1.5641571
Birth       JiVitA-4       BANGLADESH   optimal              observed          -1.5609228   -1.6451163   -1.4767294
Birth       Keneba         GAMBIA       optimal              observed           0.0076451   -0.0840392    0.0993294
Birth       MAL-ED         BANGLADESH   optimal              observed          -0.9708627   -1.1491920   -0.7925334
Birth       MAL-ED         BRAZIL       optimal              observed          -0.6567476   -0.9564460   -0.3570492
Birth       MAL-ED         PERU         optimal              observed          -0.9895205   -1.1383748   -0.8406663
Birth       PROVIDE        BANGLADESH   optimal              observed          -0.8907575   -0.9853762   -0.7961388
Birth       SAS-CompFeed   INDIA        optimal              observed          -1.5394402   -1.8299178   -1.2489627
6 months    EE             PAKISTAN     optimal              observed          -0.9848753   -2.2559033    0.2861527
6 months    GMS-Nepal      NEPAL        optimal              observed          -1.3129918   -1.4044917   -1.2214918
6 months    JiVitA-3       BANGLADESH   optimal              observed          -1.3083712   -1.3388060   -1.2779364
6 months    JiVitA-4       BANGLADESH   optimal              observed          -1.3493240   -1.4037183   -1.2949298
6 months    Keneba         GAMBIA       optimal              observed          -0.8672065   -0.9447434   -0.7896697
6 months    LCNI-5         MALAWI       optimal              observed          -1.5746819   -1.7960930   -1.3532708
6 months    MAL-ED         BANGLADESH   optimal              observed          -1.0850330   -1.2489985   -0.9210676
6 months    MAL-ED         BRAZIL       optimal              observed           0.0266113   -0.4326847    0.4859072
6 months    MAL-ED         INDIA        optimal              observed          -1.3120380   -1.8629640   -0.7611121
6 months    MAL-ED         NEPAL        optimal              observed          -0.7723962   -0.9758965   -0.5688959
6 months    MAL-ED         PERU         optimal              observed          -1.2535883   -1.4200432   -1.0871334
6 months    PROVIDE        BANGLADESH   optimal              observed          -1.2211415   -1.3357828   -1.1065001
6 months    SAS-CompFeed   INDIA        optimal              observed          -1.4877061   -1.6531098   -1.3223023
24 months   GMS-Nepal      NEPAL        optimal              observed          -1.8044633   -1.9691545   -1.6397721
24 months   JiVitA-3       BANGLADESH   optimal              observed          -2.0067588   -2.0480282   -1.9654893
24 months   JiVitA-4       BANGLADESH   optimal              observed          -1.7800063   -1.8215798   -1.7384327
24 months   Keneba         GAMBIA       optimal              observed          -1.5340908   -1.6159596   -1.4522220
24 months   LCNI-5         MALAWI       optimal              observed          -1.9498300   -2.1081665   -1.7914935
24 months   MAL-ED         BANGLADESH   optimal              observed          -1.9018802   -2.0626110   -1.7411494
24 months   MAL-ED         BRAZIL       optimal              observed          -0.3008638   -0.5010821   -0.1006455
24 months   MAL-ED         INDIA        optimal              observed          -1.8460555   -1.9775533   -1.7145578
24 months   MAL-ED         NEPAL        optimal              observed          -1.5337170   -1.6818287   -1.3856053
24 months   MAL-ED         PERU         optimal              observed          -1.6860859   -1.8532403   -1.5189314
24 months   PROVIDE        BANGLADESH   optimal              observed          -1.5243271   -1.6279588   -1.4206954


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        observed             observed          -1.0641208   -1.1525364   -0.9757052
Birth       JiVitA-3       BANGLADESH   observed             observed          -1.5955338   -1.6186322   -1.5724354
Birth       JiVitA-4       BANGLADESH   observed             observed          -1.5273138   -1.5765339   -1.4780937
Birth       Keneba         GAMBIA       observed             observed           0.0126443   -0.0554367    0.0807254
Birth       MAL-ED         BANGLADESH   observed             observed          -1.0530244   -1.1913751   -0.9146736
Birth       MAL-ED         BRAZIL       observed             observed          -0.6963333   -0.9881882   -0.4044785
Birth       MAL-ED         PERU         observed             observed          -0.9065728   -1.0297267   -0.7834188
Birth       PROVIDE        BANGLADESH   observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed   INDIA        observed             observed          -1.3937088   -1.5095039   -1.2779137
6 months    EE             PAKISTAN     observed             observed          -2.1595486   -2.5331781   -1.7859192
6 months    GMS-Nepal      NEPAL        observed             observed          -1.3540280   -1.4334801   -1.2745760
6 months    JiVitA-3       BANGLADESH   observed             observed          -1.3138259   -1.3418712   -1.2857806
6 months    JiVitA-4       BANGLADESH   observed             observed          -1.3482303   -1.3866421   -1.3098185
6 months    Keneba         GAMBIA       observed             observed          -0.9331108   -0.9823173   -0.8839043
6 months    LCNI-5         MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    MAL-ED         BANGLADESH   observed             observed          -1.1900794   -1.3096296   -1.0705291
6 months    MAL-ED         BRAZIL       observed             observed           0.0475758   -0.0963508    0.1915023
6 months    MAL-ED         INDIA        observed             observed          -1.2188303   -1.3423090   -1.0953516
6 months    MAL-ED         NEPAL        observed             observed          -0.5622370   -0.6774081   -0.4470660
6 months    MAL-ED         PERU         observed             observed          -1.3220326   -1.4308168   -1.2132484
6 months    PROVIDE        BANGLADESH   observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed   INDIA        observed             observed          -1.4697236   -1.6333919   -1.3060553
24 months   GMS-Nepal      NEPAL        observed             observed          -1.9002128   -1.9869255   -1.8135001
24 months   JiVitA-3       BANGLADESH   observed             observed          -2.0118003   -2.0479952   -1.9756055
24 months   JiVitA-4       BANGLADESH   observed             observed          -1.7914765   -1.8297816   -1.7531715
24 months   Keneba         GAMBIA       observed             observed          -1.5876293   -1.6406755   -1.5345831
24 months   LCNI-5         MALAWI       observed             observed          -1.9651323   -2.1053230   -1.8249415
24 months   MAL-ED         BANGLADESH   observed             observed          -1.9576341   -2.0857597   -1.8295086
24 months   MAL-ED         BRAZIL       observed             observed           0.0061144   -0.1625850    0.1748138
24 months   MAL-ED         INDIA        observed             observed          -1.8863397   -2.0168508   -1.7558287
24 months   MAL-ED         NEPAL        observed             observed          -1.3187671   -1.4406685   -1.1968657
24 months   MAL-ED         PERU         observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   PROVIDE        BANGLADESH   observed             observed          -1.6024221   -1.6857420   -1.5191023


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        optimal              observed           0.0858888   -0.0071430    0.1789207
Birth       JiVitA-3       BANGLADESH   optimal              observed           0.0020474   -0.0205557    0.0246504
Birth       JiVitA-4       BANGLADESH   optimal              observed           0.0336090   -0.0345118    0.1017298
Birth       Keneba         GAMBIA       optimal              observed           0.0049992   -0.0558553    0.0658538
Birth       MAL-ED         BANGLADESH   optimal              observed          -0.0821616   -0.2343342    0.0700109
Birth       MAL-ED         BRAZIL       optimal              observed          -0.0395857   -0.1570231    0.0778516
Birth       MAL-ED         PERU         optimal              observed           0.0829478   -0.0325737    0.1984693
Birth       PROVIDE        BANGLADESH   optimal              observed           0.0056555   -0.0481105    0.0594214
Birth       SAS-CompFeed   INDIA        optimal              observed           0.1457314   -0.0954388    0.3869016
6 months    EE             PAKISTAN     optimal              observed          -1.1746733   -2.3955272    0.0461806
6 months    GMS-Nepal      NEPAL        optimal              observed          -0.0410363   -0.0939405    0.0118680
6 months    JiVitA-3       BANGLADESH   optimal              observed          -0.0054547   -0.0174137    0.0065044
6 months    JiVitA-4       BANGLADESH   optimal              observed           0.0010937   -0.0396705    0.0418579
6 months    Keneba         GAMBIA       optimal              observed          -0.0659042   -0.1262412   -0.0055673
6 months    LCNI-5         MALAWI       optimal              observed          -0.0649137   -0.2470721    0.1172447
6 months    MAL-ED         BANGLADESH   optimal              observed          -0.1050463   -0.2368373    0.0267446
6 months    MAL-ED         BRAZIL       optimal              observed           0.0209645   -0.3882178    0.4301467
6 months    MAL-ED         INDIA        optimal              observed           0.0932078   -0.4283303    0.6147459
6 months    MAL-ED         NEPAL        optimal              observed           0.2101592    0.0399313    0.3803871
6 months    MAL-ED         PERU         optimal              observed          -0.0684443   -0.2043902    0.0675016
6 months    PROVIDE        BANGLADESH   optimal              observed           0.1294500    0.0423417    0.2165583
6 months    SAS-CompFeed   INDIA        optimal              observed           0.0179824   -0.0394213    0.0753861
24 months   GMS-Nepal      NEPAL        optimal              observed          -0.0957495   -0.2236377    0.0321388
24 months   JiVitA-3       BANGLADESH   optimal              observed          -0.0050416   -0.0243174    0.0142343
24 months   JiVitA-4       BANGLADESH   optimal              observed          -0.0114703   -0.0287688    0.0058283
24 months   Keneba         GAMBIA       optimal              observed          -0.0535385   -0.1181528    0.0110758
24 months   LCNI-5         MALAWI       optimal              observed          -0.0153023   -0.0754336    0.0448290
24 months   MAL-ED         BANGLADESH   optimal              observed          -0.0557540   -0.1802933    0.0687854
24 months   MAL-ED         BRAZIL       optimal              observed           0.3069782    0.1591329    0.4548236
24 months   MAL-ED         INDIA        optimal              observed          -0.0402842   -0.0783020   -0.0022663
24 months   MAL-ED         NEPAL        optimal              observed           0.2149499    0.1199876    0.3099122
24 months   MAL-ED         PERU         optimal              observed          -0.0663851   -0.1922186    0.0594484
24 months   PROVIDE        BANGLADESH   optimal              observed          -0.0780950   -0.1529333   -0.0032568
