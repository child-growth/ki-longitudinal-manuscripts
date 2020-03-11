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
Birth       EE               PAKISTAN                       1                38      42
Birth       EE               PAKISTAN                       0                 4      42
Birth       GMS-Nepal        NEPAL                          1               419     563
Birth       GMS-Nepal        NEPAL                          0               144     563
Birth       IRC              INDIA                          1                 0      14
Birth       IRC              INDIA                          0                14      14
Birth       JiVitA-3         BANGLADESH                     1             10452   13423
Birth       JiVitA-3         BANGLADESH                     0              2971   13423
Birth       JiVitA-4         BANGLADESH                     1              2098    2632
Birth       JiVitA-4         BANGLADESH                     0               534    2632
Birth       Keneba           GAMBIA                         1               485    1403
Birth       Keneba           GAMBIA                         0               918    1403
Birth       MAL-ED           BANGLADESH                     1                31     205
Birth       MAL-ED           BANGLADESH                     0               174     205
Birth       MAL-ED           BRAZIL                         1                 2      60
Birth       MAL-ED           BRAZIL                         0                58      60
Birth       MAL-ED           INDIA                          1                 1      39
Birth       MAL-ED           INDIA                          0                38      39
Birth       MAL-ED           NEPAL                          1                 2      24
Birth       MAL-ED           NEPAL                          0                22      24
Birth       MAL-ED           PERU                           1                 2     213
Birth       MAL-ED           PERU                           0               211     213
Birth       MAL-ED           SOUTH AFRICA                   1                 0      91
Birth       MAL-ED           SOUTH AFRICA                   0                91      91
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
6 months    JiVitA-3         BANGLADESH                     1              7628    9901
6 months    JiVitA-3         BANGLADESH                     0              2273    9901
6 months    JiVitA-4         BANGLADESH                     1              3316    4272
6 months    JiVitA-4         BANGLADESH                     0               956    4272
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
24 months   JiVitA-3         BANGLADESH                     1              3916    5088
24 months   JiVitA-3         BANGLADESH                     0              1172    5088
24 months   JiVitA-4         BANGLADESH                     1              3280    4199
24 months   JiVitA-4         BANGLADESH                     0               919    4199
24 months   Keneba           GAMBIA                         1               515    1513
24 months   Keneba           GAMBIA                         0               998    1513
24 months   LCNI-5           MALAWI                         1                34     189
24 months   LCNI-5           MALAWI                         0               155     189
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
![](/tmp/82d3fcdf-de20-4daf-a00b-281a46ebfb28/e38a437f-9ab9-4e64-8ae3-b03be307e8a4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        optimal              observed          -1.1449716   -1.2655704   -1.0243729
Birth       JiVitA-3       BANGLADESH   optimal              observed          -1.6113015   -1.6410324   -1.5815707
Birth       JiVitA-4       BANGLADESH   optimal              observed          -1.5078448   -1.5606159   -1.4550737
Birth       Keneba         GAMBIA       optimal              observed           0.0127196   -0.0765719    0.1020111
Birth       MAL-ED         BANGLADESH   optimal              observed          -1.0363681   -1.1894973   -0.8832390
Birth       PROVIDE        BANGLADESH   optimal              observed          -0.8835169   -0.9867325   -0.7803013
Birth       SAS-CompFeed   INDIA        optimal              observed          -1.5394402   -1.8299178   -1.2489627
6 months    EE             PAKISTAN     optimal              observed          -0.8166759   -2.2488773    0.6155256
6 months    GMS-Nepal      NEPAL        optimal              observed          -1.2910129   -1.3783098   -1.2037160
6 months    JiVitA-3       BANGLADESH   optimal              observed          -1.3073357   -1.3377301   -1.2769412
6 months    JiVitA-4       BANGLADESH   optimal              observed          -1.3372695   -1.3882726   -1.2862664
6 months    Keneba         GAMBIA       optimal              observed          -0.8979088   -0.9722996   -0.8235179
6 months    LCNI-5         MALAWI       optimal              observed          -1.4518775   -1.6319101   -1.2718448
6 months    MAL-ED         BANGLADESH   optimal              observed          -1.0668085   -1.2882565   -0.8453604
6 months    MAL-ED         BRAZIL       optimal              observed          -0.3314743   -0.7859954    0.1230468
6 months    MAL-ED         NEPAL        optimal              observed          -0.6721787   -1.1402625   -0.2040949
6 months    MAL-ED         PERU         optimal              observed          -1.3118158   -1.4225160   -1.2011157
6 months    PROVIDE        BANGLADESH   optimal              observed          -1.1850195   -1.3011806   -1.0688584
6 months    SAS-CompFeed   INDIA        optimal              observed          -1.4877061   -1.6531098   -1.3223023
24 months   GMS-Nepal      NEPAL        optimal              observed          -1.9526471   -2.1137722   -1.7915220
24 months   JiVitA-3       BANGLADESH   optimal              observed          -1.9966255   -2.0427752   -1.9504757
24 months   JiVitA-4       BANGLADESH   optimal              observed          -1.7799705   -1.8217708   -1.7381701
24 months   Keneba         GAMBIA       optimal              observed          -1.5257814   -1.6118495   -1.4397132
24 months   LCNI-5         MALAWI       optimal              observed          -1.9501123   -2.1095618   -1.7906628
24 months   MAL-ED         BANGLADESH   optimal              observed          -2.1169904   -2.3110618   -1.9229190
24 months   MAL-ED         BRAZIL       optimal              observed          -0.1599880   -0.3727011    0.0527250
24 months   MAL-ED         NEPAL        optimal              observed          -1.4756854   -1.8106062   -1.1407647
24 months   PROVIDE        BANGLADESH   optimal              observed          -1.5081889   -1.6162376   -1.4001403


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        observed             observed          -1.0641208   -1.1525364   -0.9757052
Birth       JiVitA-3       BANGLADESH   observed             observed          -1.5955338   -1.6186322   -1.5724354
Birth       JiVitA-4       BANGLADESH   observed             observed          -1.5273138   -1.5765339   -1.4780937
Birth       Keneba         GAMBIA       observed             observed           0.0126443   -0.0554367    0.0807254
Birth       MAL-ED         BANGLADESH   observed             observed          -1.0530244   -1.1913751   -0.9146736
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
24 months   MAL-ED         NEPAL        observed             observed          -1.3187671   -1.4406685   -1.1968657
24 months   PROVIDE        BANGLADESH   observed             observed          -1.6024221   -1.6857420   -1.5191023


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        optimal              observed           0.0808508    0.0012742    0.1604274
Birth       JiVitA-3       BANGLADESH   optimal              observed           0.0157677   -0.0034830    0.0350185
Birth       JiVitA-4       BANGLADESH   optimal              observed          -0.0194690   -0.0485351    0.0095970
Birth       Keneba         GAMBIA       optimal              observed          -0.0000752   -0.0631031    0.0629526
Birth       MAL-ED         BANGLADESH   optimal              observed          -0.0166563   -0.0695465    0.0362340
Birth       PROVIDE        BANGLADESH   optimal              observed          -0.0015851   -0.0650037    0.0618335
Birth       SAS-CompFeed   INDIA        optimal              observed           0.1457314   -0.0954388    0.3869016
6 months    EE             PAKISTAN     optimal              observed          -1.3428727   -2.7213150    0.0355695
6 months    GMS-Nepal      NEPAL        optimal              observed          -0.0630151   -0.1148037   -0.0112265
6 months    JiVitA-3       BANGLADESH   optimal              observed          -0.0064902   -0.0185084    0.0055280
6 months    JiVitA-4       BANGLADESH   optimal              observed          -0.0109608   -0.0445194    0.0225978
6 months    Keneba         GAMBIA       optimal              observed          -0.0352020   -0.0933664    0.0229624
6 months    LCNI-5         MALAWI       optimal              observed          -0.1877181   -0.3275057   -0.0479305
6 months    MAL-ED         BANGLADESH   optimal              observed          -0.1232709   -0.3232877    0.0767459
6 months    MAL-ED         BRAZIL       optimal              observed           0.3790500   -0.0650043    0.8231043
6 months    MAL-ED         NEPAL        optimal              observed           0.1099417   -0.3588656    0.5787490
6 months    MAL-ED         PERU         optimal              observed          -0.0102168   -0.0241544    0.0037209
6 months    PROVIDE        BANGLADESH   optimal              observed           0.0933280   -0.0052883    0.1919443
6 months    SAS-CompFeed   INDIA        optimal              observed           0.0179824   -0.0394213    0.0753861
24 months   GMS-Nepal      NEPAL        optimal              observed           0.0524343   -0.0814911    0.1863597
24 months   JiVitA-3       BANGLADESH   optimal              observed          -0.0151749   -0.0426531    0.0123034
24 months   JiVitA-4       BANGLADESH   optimal              observed          -0.0115061   -0.0289016    0.0058894
24 months   Keneba         GAMBIA       optimal              observed          -0.0618480   -0.1322765    0.0085806
24 months   LCNI-5         MALAWI       optimal              observed          -0.0150200   -0.0758778    0.0458379
24 months   MAL-ED         BANGLADESH   optimal              observed           0.1593563    0.0225016    0.2962110
24 months   MAL-ED         BRAZIL       optimal              observed           0.1661024    0.0254578    0.3067471
24 months   MAL-ED         NEPAL        optimal              observed           0.1569183   -0.1858643    0.4997009
24 months   PROVIDE        BANGLADESH   optimal              observed          -0.0942332   -0.1700281   -0.0184384
