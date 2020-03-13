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
Birth       EE               PAKISTAN                       1                24      28
Birth       EE               PAKISTAN                       0                 4      28
Birth       GMS-Nepal        NEPAL                          1               390     522
Birth       GMS-Nepal        NEPAL                          0               132     522
Birth       IRC              INDIA                          1                 0      12
Birth       IRC              INDIA                          0                12      12
Birth       JiVitA-3         BANGLADESH                     1              8392   10744
Birth       JiVitA-3         BANGLADESH                     0              2352   10744
Birth       JiVitA-4         BANGLADESH                     1              1802    2224
Birth       JiVitA-4         BANGLADESH                     0               422    2224
Birth       Keneba           GAMBIA                         1               450    1327
Birth       Keneba           GAMBIA                         0               877    1327
Birth       MAL-ED           BANGLADESH                     1                68     194
Birth       MAL-ED           BANGLADESH                     0               126     194
Birth       MAL-ED           BRAZIL                         1                 5      57
Birth       MAL-ED           BRAZIL                         0                52      57
Birth       MAL-ED           INDIA                          1                 4      37
Birth       MAL-ED           INDIA                          0                33      37
Birth       MAL-ED           NEPAL                          1                 3      23
Birth       MAL-ED           NEPAL                          0                20      23
Birth       MAL-ED           PERU                           1                72     208
Birth       MAL-ED           PERU                           0               136     208
Birth       MAL-ED           SOUTH AFRICA                   1                 1      90
Birth       MAL-ED           SOUTH AFRICA                   0                89      90
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
6 months    JiVitA-3         BANGLADESH                     1              7625    9882
6 months    JiVitA-3         BANGLADESH                     0              2257    9882
6 months    JiVitA-4         BANGLADESH                     1              3327    4275
6 months    JiVitA-4         BANGLADESH                     0               948    4275
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
24 months   JiVitA-3         BANGLADESH                     1              3909    5067
24 months   JiVitA-3         BANGLADESH                     0              1158    5067
24 months   JiVitA-4         BANGLADESH                     1              3278    4184
24 months   JiVitA-4         BANGLADESH                     0               906    4184
24 months   Keneba           GAMBIA                         1               514    1514
24 months   Keneba           GAMBIA                         0              1000    1514
24 months   LCNI-5           MALAWI                         1                34     184
24 months   LCNI-5           MALAWI                         0               150     184
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
![](/tmp/76b7f85a-38f0-4e53-83eb-287cabc0bc60/5855861d-68d6-46a9-83a4-dfe6313247fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        optimal              observed          -1.0565439   -1.2099735   -0.9031143
Birth       JiVitA-3       BANGLADESH   optimal              observed          -0.7670774   -0.8066024   -0.7275524
Birth       JiVitA-4       BANGLADESH   optimal              observed          -0.6781528   -0.7704805   -0.5858252
Birth       Keneba         GAMBIA       optimal              observed          -1.2571224   -1.3569204   -1.1573243
Birth       MAL-ED         BANGLADESH   optimal              observed          -0.8764392   -1.1117913   -0.6410871
Birth       MAL-ED         BRAZIL       optimal              observed           0.1786662   -0.1887131    0.5460454
Birth       MAL-ED         PERU         optimal              observed          -0.0893395   -0.2789524    0.1002734
Birth       PROVIDE        BANGLADESH   optimal              observed          -1.2947899   -1.3827602   -1.2068195
Birth       SAS-CompFeed   INDIA        optimal              observed          -0.6562835   -0.8852815   -0.4272855
6 months    EE             PAKISTAN     optimal              observed          -0.4977018   -0.9811973   -0.0142063
6 months    GMS-Nepal      NEPAL        optimal              observed          -0.5777263   -0.6801371   -0.4753155
6 months    JiVitA-3       BANGLADESH   optimal              observed          -0.6120304   -0.6560574   -0.5680034
6 months    JiVitA-4       BANGLADESH   optimal              observed          -0.3473565   -0.3923065   -0.3024066
6 months    Keneba         GAMBIA       optimal              observed          -0.0131345   -0.1100449    0.0837759
6 months    LCNI-5         MALAWI       optimal              observed           0.2798878    0.0494701    0.5103055
6 months    MAL-ED         BANGLADESH   optimal              observed          -0.2970657   -0.4997524   -0.0943790
6 months    MAL-ED         BRAZIL       optimal              observed           1.4118443    0.9431689    1.8805197
6 months    MAL-ED         INDIA        optimal              observed          -0.1161678   -0.6435266    0.4111911
6 months    MAL-ED         NEPAL        optimal              observed          -0.1533652   -0.4145686    0.1078382
6 months    MAL-ED         PERU         optimal              observed           1.1570186    0.9515418    1.3624953
6 months    PROVIDE        BANGLADESH   optimal              observed           0.0028088   -0.1634034    0.1690209
6 months    SAS-CompFeed   INDIA        optimal              observed          -0.7249143   -1.0477394   -0.4020893
24 months   GMS-Nepal      NEPAL        optimal              observed          -1.0827889   -1.2112537   -0.9543240
24 months   JiVitA-3       BANGLADESH   optimal              observed          -1.2815271   -1.3427666   -1.2202877
24 months   JiVitA-4       BANGLADESH   optimal              observed          -1.1969715   -1.2568108   -1.1371321
24 months   Keneba         GAMBIA       optimal              observed          -0.7117636   -0.7943415   -0.6291857
24 months   LCNI-5         MALAWI       optimal              observed          -0.1762496   -0.4049601    0.0524610
24 months   MAL-ED         BANGLADESH   optimal              observed          -0.7825446   -0.9457313   -0.6193578
24 months   MAL-ED         BRAZIL       optimal              observed           0.2424418   -0.2366541    0.7215378
24 months   MAL-ED         INDIA        optimal              observed          -0.6307965   -1.1592146   -0.1023785
24 months   MAL-ED         NEPAL        optimal              observed          -0.9571712   -1.1149781   -0.7993643
24 months   MAL-ED         PERU         optimal              observed           0.0997618   -0.0687609    0.2682845
24 months   PROVIDE        BANGLADESH   optimal              observed          -0.7918937   -0.9579149   -0.6258725


### Parameter: E(Y)


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        observed             observed          -1.1064559   -1.2034951   -1.0094168
Birth       JiVitA-3       BANGLADESH   observed             observed          -0.7807809   -0.8030521   -0.7585097
Birth       JiVitA-4       BANGLADESH   observed             observed          -0.6904586   -0.7435822   -0.6373351
Birth       Keneba         GAMBIA       observed             observed          -1.2599925   -1.3251703   -1.1948146
Birth       MAL-ED         BANGLADESH   observed             observed          -0.9755670   -1.1287016   -0.8224325
Birth       MAL-ED         BRAZIL       observed             observed           0.4643860    0.1360519    0.7927200
Birth       MAL-ED         PERU         observed             observed          -0.0587981   -0.1871869    0.0695908
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
6 months    MAL-ED         INDIA        observed             observed          -0.7067317   -0.8369134   -0.5765499
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
24 months   MAL-ED         INDIA        observed             observed          -0.9442584   -1.0642426   -0.8242742
24 months   MAL-ED         NEPAL        observed             observed          -0.3674429   -0.4840752   -0.2508107
24 months   MAL-ED         PERU         observed             observed           0.1111982   -0.0118399    0.2342362
24 months   PROVIDE        BANGLADESH   observed             observed          -0.8928670   -0.9755153   -0.8102187


### Parameter: PAR


agecat      studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL        optimal              observed          -0.0499120   -0.1673287    0.0675046
Birth       JiVitA-3       BANGLADESH   optimal              observed          -0.0137035   -0.0471205    0.0197135
Birth       JiVitA-4       BANGLADESH   optimal              observed          -0.0123058   -0.0853244    0.0607128
Birth       Keneba         GAMBIA       optimal              observed          -0.0028701   -0.0795137    0.0737735
Birth       MAL-ED         BANGLADESH   optimal              observed          -0.0991278   -0.3041124    0.1058568
Birth       MAL-ED         BRAZIL       optimal              observed           0.2857198   -0.0211534    0.5925929
Birth       MAL-ED         PERU         optimal              observed           0.0305414   -0.1336379    0.1947207
Birth       PROVIDE        BANGLADESH   optimal              observed          -0.0036688   -0.0502925    0.0429550
Birth       SAS-CompFeed   INDIA        optimal              observed          -0.0033473   -0.0446450    0.0379504
6 months    EE             PAKISTAN     optimal              observed          -0.1129926   -0.6583207    0.4323355
6 months    GMS-Nepal      NEPAL        optimal              observed          -0.0231908   -0.0744809    0.0280993
6 months    JiVitA-3       BANGLADESH   optimal              observed           0.0119004   -0.0264147    0.0502154
6 months    JiVitA-4       BANGLADESH   optimal              observed          -0.0494891   -0.0710428   -0.0279354
6 months    Keneba         GAMBIA       optimal              observed          -0.1866302   -0.2664912   -0.1067691
6 months    LCNI-5         MALAWI       optimal              observed           0.1126122   -0.0795662    0.3047907
6 months    MAL-ED         BANGLADESH   optimal              observed           0.1757454    0.0285394    0.3229513
6 months    MAL-ED         BRAZIL       optimal              observed          -0.4397670   -0.8695282   -0.0100057
6 months    MAL-ED         INDIA        optimal              observed          -0.5905639   -1.1122808   -0.0688470
6 months    MAL-ED         NEPAL        optimal              observed           0.2625060    0.0344217    0.4905902
6 months    MAL-ED         PERU         optimal              observed          -0.1064035   -0.2802537    0.0674466
6 months    PROVIDE        BANGLADESH   optimal              observed          -0.2018994   -0.3489422   -0.0548566
6 months    SAS-CompFeed   INDIA        optimal              observed           0.0900283   -0.2741145    0.4541710
24 months   GMS-Nepal      NEPAL        optimal              observed          -0.0595636   -0.1491199    0.0299927
24 months   JiVitA-3       BANGLADESH   optimal              observed          -0.0288103   -0.0828044    0.0251837
24 months   JiVitA-4       BANGLADESH   optimal              observed          -0.0295605   -0.0796603    0.0205392
24 months   Keneba         GAMBIA       optimal              observed          -0.0914693   -0.1587730   -0.0241656
24 months   LCNI-5         MALAWI       optimal              observed           0.0991843   -0.0553316    0.2537003
24 months   MAL-ED         BANGLADESH   optimal              observed          -0.0344311   -0.1274650    0.0586029
24 months   MAL-ED         BRAZIL       optimal              observed           0.2201814   -0.2029948    0.6433576
24 months   MAL-ED         INDIA        optimal              observed          -0.3134618   -0.8341951    0.2072714
24 months   MAL-ED         NEPAL        optimal              observed           0.5897283    0.4232946    0.7561620
24 months   MAL-ED         PERU         optimal              observed           0.0114364   -0.1148023    0.1376750
24 months   PROVIDE        BANGLADESH   optimal              observed          -0.1009733   -0.2458776    0.0439309
