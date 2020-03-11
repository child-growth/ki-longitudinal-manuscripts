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

**Intervention Variable:** exclfeed3

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

agecat      studyid          country                        exclfeed3    n_cell       n
----------  ---------------  -----------------------------  ----------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                 4       4
Birth       CMC-V-BCS-2002   INDIA                          0                 0       4
Birth       EE               PAKISTAN                       1                35      35
Birth       EE               PAKISTAN                       0                 0      35
Birth       GMS-Nepal        NEPAL                          1               380     458
Birth       GMS-Nepal        NEPAL                          0                78     458
Birth       IRC              INDIA                          1                 0      10
Birth       IRC              INDIA                          0                10      10
Birth       JiVitA-3         BANGLADESH                     1             12014   13276
Birth       JiVitA-3         BANGLADESH                     0              1262   13276
Birth       JiVitA-4         BANGLADESH                     1               105     116
Birth       JiVitA-4         BANGLADESH                     0                11     116
Birth       Keneba           GAMBIA                         1              1198    1356
Birth       Keneba           GAMBIA                         0               158    1356
Birth       MAL-ED           BANGLADESH                     1               138     215
Birth       MAL-ED           BANGLADESH                     0                77     215
Birth       MAL-ED           BRAZIL                         1                12      57
Birth       MAL-ED           BRAZIL                         0                45      57
Birth       MAL-ED           INDIA                          1                24      41
Birth       MAL-ED           INDIA                          0                17      41
Birth       MAL-ED           NEPAL                          1                 8      26
Birth       MAL-ED           NEPAL                          0                18      26
Birth       MAL-ED           PERU                           1                49     223
Birth       MAL-ED           PERU                           0               174     223
Birth       MAL-ED           SOUTH AFRICA                   1                12     100
Birth       MAL-ED           SOUTH AFRICA                   0                88     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                17     102
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                85     102
Birth       PROVIDE          BANGLADESH                     1               387     539
Birth       PROVIDE          BANGLADESH                     0               152     539
Birth       SAS-CompFeed     INDIA                          1               346     364
Birth       SAS-CompFeed     INDIA                          0                18     364
6 months    CMC-V-BCS-2002   INDIA                          1                10      10
6 months    CMC-V-BCS-2002   INDIA                          0                 0      10
6 months    EE               PAKISTAN                       1                39      39
6 months    EE               PAKISTAN                       0                 0      39
6 months    GMS-Nepal        NEPAL                          1               367     441
6 months    GMS-Nepal        NEPAL                          0                74     441
6 months    IRC              INDIA                          1                 0      10
6 months    IRC              INDIA                          0                10      10
6 months    JiVitA-3         BANGLADESH                     1              8514    9328
6 months    JiVitA-3         BANGLADESH                     0               814    9328
6 months    JiVitA-4         BANGLADESH                     1                76      88
6 months    JiVitA-4         BANGLADESH                     0                12      88
6 months    Keneba           GAMBIA                         1              1541    1742
6 months    Keneba           GAMBIA                         0               201    1742
6 months    MAL-ED           BANGLADESH                     1               152     233
6 months    MAL-ED           BANGLADESH                     0                81     233
6 months    MAL-ED           BRAZIL                         1                60     187
6 months    MAL-ED           BRAZIL                         0               127     187
6 months    MAL-ED           INDIA                          1               110     210
6 months    MAL-ED           INDIA                          0               100     210
6 months    MAL-ED           NEPAL                          1                70     227
6 months    MAL-ED           NEPAL                          0               157     227
6 months    MAL-ED           PERU                           1                61     270
6 months    MAL-ED           PERU                           0               209     270
6 months    MAL-ED           SOUTH AFRICA                   1                22     244
6 months    MAL-ED           SOUTH AFRICA                   0               222     244
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                46     212
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               166     212
6 months    PROVIDE          BANGLADESH                     1               428     604
6 months    PROVIDE          BANGLADESH                     0               176     604
6 months    SAS-CompFeed     INDIA                          1               379     398
6 months    SAS-CompFeed     INDIA                          0                19     398
24 months   CMC-V-BCS-2002   INDIA                          1                10      10
24 months   CMC-V-BCS-2002   INDIA                          0                 0      10
24 months   EE               PAKISTAN                       1                20      20
24 months   EE               PAKISTAN                       0                 0      20
24 months   GMS-Nepal        NEPAL                          1               322     384
24 months   GMS-Nepal        NEPAL                          0                62     384
24 months   IRC              INDIA                          1                 0      10
24 months   IRC              INDIA                          0                10      10
24 months   JiVitA-3         BANGLADESH                     1              4433    4852
24 months   JiVitA-3         BANGLADESH                     0               419    4852
24 months   JiVitA-4         BANGLADESH                     1               136     151
24 months   JiVitA-4         BANGLADESH                     0                15     151
24 months   Keneba           GAMBIA                         1              1274    1420
24 months   Keneba           GAMBIA                         0               146    1420
24 months   MAL-ED           BANGLADESH                     1               135     205
24 months   MAL-ED           BANGLADESH                     0                70     205
24 months   MAL-ED           BRAZIL                         1                52     152
24 months   MAL-ED           BRAZIL                         0               100     152
24 months   MAL-ED           INDIA                          1               102     202
24 months   MAL-ED           INDIA                          0               100     202
24 months   MAL-ED           NEPAL                          1                67     220
24 months   MAL-ED           NEPAL                          0               153     220
24 months   MAL-ED           PERU                           1                43     198
24 months   MAL-ED           PERU                           0               155     198
24 months   MAL-ED           SOUTH AFRICA                   1                19     228
24 months   MAL-ED           SOUTH AFRICA                   0               209     228
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                38     184
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               146     184
24 months   PROVIDE          BANGLADESH                     1               408     578
24 months   PROVIDE          BANGLADESH                     0               170     578


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
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
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA

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
![](/tmp/4a670e39-3a26-42ea-94b7-40f05b00b6db/c15420ea-f278-4419-abfc-490f284b3651/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          optimal              observed          -1.1199451   -1.2535630   -0.9863272
Birth       JiVitA-3       BANGLADESH                     optimal              observed          -1.5846638   -1.6247801   -1.5445475
Birth       JiVitA-4       BANGLADESH                     optimal              observed          -1.8469788   -2.4480341   -1.2459235
Birth       Keneba         GAMBIA                         optimal              observed           0.0748505   -0.0934449    0.2431459
Birth       MAL-ED         BANGLADESH                     optimal              observed          -1.0162209   -1.2549996   -0.7774423
Birth       MAL-ED         BRAZIL                         optimal              observed          -0.9767180   -1.5304327   -0.4230032
Birth       MAL-ED         INDIA                          optimal              observed          -0.8405335   -1.1569598   -0.5241072
Birth       MAL-ED         NEPAL                          optimal              observed          -0.9574385   -1.3953333   -0.5195437
Birth       MAL-ED         PERU                           optimal              observed          -0.9284211   -1.1302549   -0.7265873
Birth       MAL-ED         SOUTH AFRICA                   optimal              observed          -0.6507558   -0.8671811   -0.4343304
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0597582   -1.3052817   -0.8142346
Birth       PROVIDE        BANGLADESH                     optimal              observed          -0.8993106   -1.0307121   -0.7679091
Birth       SAS-CompFeed   INDIA                          optimal              observed          -1.5462085   -1.8641615   -1.2282554
6 months    GMS-Nepal      NEPAL                          optimal              observed          -1.4215710   -1.5342833   -1.3088587
6 months    JiVitA-3       BANGLADESH                     optimal              observed          -1.3162883   -1.3459801   -1.2865964
6 months    JiVitA-4       BANGLADESH                     optimal              observed          -1.1293285   -1.3176411   -0.9410158
6 months    Keneba         GAMBIA                         optimal              observed          -0.9359058   -0.9927170   -0.8790946
6 months    MAL-ED         BANGLADESH                     optimal              observed          -1.2344698   -1.4144157   -1.0545238
6 months    MAL-ED         BRAZIL                         optimal              observed           0.0094060   -0.2499400    0.2687520
6 months    MAL-ED         INDIA                          optimal              observed          -1.3207307   -1.4972915   -1.1441700
6 months    MAL-ED         NEPAL                          optimal              observed          -0.5379372   -0.6690664   -0.4068080
6 months    MAL-ED         PERU                           optimal              observed          -1.3183933   -1.4658325   -1.1709542
6 months    MAL-ED         SOUTH AFRICA                   optimal              observed          -0.7051671   -1.1925726   -0.2177617
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.4415468   -1.6766864   -1.2064073
6 months    PROVIDE        BANGLADESH                     optimal              observed          -1.1708885   -1.2786890   -1.0630880
6 months    SAS-CompFeed   INDIA                          optimal              observed          -1.4877061   -1.6531098   -1.3223023
24 months   GMS-Nepal      NEPAL                          optimal              observed          -1.8909220   -2.0969425   -1.6849015
24 months   JiVitA-3       BANGLADESH                     optimal              observed          -2.0051757   -2.0429574   -1.9673940
24 months   JiVitA-4       BANGLADESH                     optimal              observed          -1.7155765   -1.8636428   -1.5675101
24 months   Keneba         GAMBIA                         optimal              observed          -1.5731748   -1.6299398   -1.5164098
24 months   MAL-ED         BANGLADESH                     optimal              observed          -2.0570946   -2.2286396   -1.8855496
24 months   MAL-ED         BRAZIL                         optimal              observed           0.0954648   -0.1131777    0.3041073
24 months   MAL-ED         INDIA                          optimal              observed          -1.7367753   -1.9293236   -1.5442270
24 months   MAL-ED         NEPAL                          optimal              observed          -1.2779914   -1.4243543   -1.1316286
24 months   MAL-ED         PERU                           optimal              observed          -1.6937106   -1.9502508   -1.4371703
24 months   MAL-ED         SOUTH AFRICA                   optimal              observed          -1.5284764   -1.9740045   -1.0829482
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.6819296   -2.9370824   -2.4267768
24 months   PROVIDE        BANGLADESH                     optimal              observed          -1.4994358   -1.6519385   -1.3469330


### Parameter: E(Y)


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          observed             observed          -1.0555240   -1.1550843   -0.9559638
Birth       JiVitA-3       BANGLADESH                     observed             observed          -1.5928457   -1.6158667   -1.5698248
Birth       JiVitA-4       BANGLADESH                     observed             observed          -1.6073276   -1.8105798   -1.4040753
Birth       Keneba         GAMBIA                         observed             observed           0.0098304   -0.0597854    0.0794461
Birth       MAL-ED         BANGLADESH                     observed             observed          -1.0949767   -1.2319917   -0.9579618
Birth       MAL-ED         BRAZIL                         observed             observed          -0.6996491   -0.9856018   -0.4136965
Birth       MAL-ED         INDIA                          observed             observed          -1.2075610   -1.5261540   -0.8889679
Birth       MAL-ED         NEPAL                          observed             observed          -0.8234615   -1.1896049   -0.4573182
Birth       MAL-ED         PERU                           observed             observed          -0.8753812   -0.9932108   -0.7575515
Birth       MAL-ED         SOUTH AFRICA                   observed             observed          -0.5797000   -0.7788298   -0.3805702
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1086275   -1.3310338   -0.8862211
Birth       PROVIDE        BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed   INDIA                          observed             observed          -1.3937088   -1.5095039   -1.2779137
6 months    GMS-Nepal      NEPAL                          observed             observed          -1.3499849   -1.4387386   -1.2612312
6 months    JiVitA-3       BANGLADESH                     observed             observed          -1.3240051   -1.3526414   -1.2953689
6 months    JiVitA-4       BANGLADESH                     observed             observed          -1.1994318   -1.3808291   -1.0180345
6 months    Keneba         GAMBIA                         observed             observed          -0.9489317   -1.0001696   -0.8976937
6 months    MAL-ED         BANGLADESH                     observed             observed          -1.2242918   -1.3439424   -1.1046413
6 months    MAL-ED         BRAZIL                         observed             observed           0.0609091   -0.0944768    0.2162950
6 months    MAL-ED         INDIA                          observed             observed          -1.2002381   -1.3274929   -1.0729833
6 months    MAL-ED         NEPAL                          observed             observed          -0.5634068   -0.6769687   -0.4498449
6 months    MAL-ED         PERU                           observed             observed          -1.3108735   -1.4182407   -1.2035062
6 months    MAL-ED         SOUTH AFRICA                   observed             observed          -1.0662227   -1.1965862   -0.9358591
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.4030503   -1.5292443   -1.2768563
6 months    PROVIDE        BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed   INDIA                          observed             observed          -1.4697236   -1.6333919   -1.3060553
24 months   GMS-Nepal      NEPAL                          observed             observed          -1.8752995   -1.9688053   -1.7817937
24 months   JiVitA-3       BANGLADESH                     observed             observed          -2.0187325   -2.0554682   -1.9819968
24 months   JiVitA-4       BANGLADESH                     observed             observed          -1.7726490   -1.9111913   -1.6341067
24 months   Keneba         GAMBIA                         observed             observed          -1.5961170   -1.6505261   -1.5417080
24 months   MAL-ED         BANGLADESH                     observed             observed          -2.0016585   -2.1303297   -1.8729874
24 months   MAL-ED         BRAZIL                         observed             observed          -0.0162939   -0.1929098    0.1603221
24 months   MAL-ED         INDIA                          observed             observed          -1.8994059   -2.0346781   -1.7641337
24 months   MAL-ED         NEPAL                          observed             observed          -1.3109318   -1.4313748   -1.1904888
24 months   MAL-ED         PERU                           observed             observed          -1.7412963   -1.8630698   -1.6195228
24 months   MAL-ED         SOUTH AFRICA                   observed             observed          -1.6424525   -1.7808926   -1.5040124
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6768207   -2.8213178   -2.5323235
24 months   PROVIDE        BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          optimal              observed           0.0644211   -0.0497922    0.1786343
Birth       JiVitA-3       BANGLADESH                     optimal              observed          -0.0081819   -0.0411768    0.0248129
Birth       JiVitA-4       BANGLADESH                     optimal              observed           0.2396512   -0.3109527    0.7902551
Birth       Keneba         GAMBIA                         optimal              observed          -0.0650201   -0.2203454    0.0903052
Birth       MAL-ED         BANGLADESH                     optimal              observed          -0.0787558   -0.2502741    0.0927625
Birth       MAL-ED         BRAZIL                         optimal              observed           0.2770688   -0.2177019    0.7718396
Birth       MAL-ED         INDIA                          optimal              observed          -0.3670275   -0.7268550   -0.0071999
Birth       MAL-ED         NEPAL                          optimal              observed           0.1339770   -0.3449569    0.6129109
Birth       MAL-ED         PERU                           optimal              observed           0.0530399   -0.0983478    0.2044276
Birth       MAL-ED         SOUTH AFRICA                   optimal              observed           0.0710558   -0.0383951    0.1805067
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0488693   -0.1456745    0.0479359
Birth       PROVIDE        BANGLADESH                     optimal              observed           0.0142085   -0.0834521    0.1118692
Birth       SAS-CompFeed   INDIA                          optimal              observed           0.1524997   -0.1183746    0.4233739
6 months    GMS-Nepal      NEPAL                          optimal              observed           0.0715861   -0.0261485    0.1693208
6 months    JiVitA-3       BANGLADESH                     optimal              observed          -0.0077169   -0.0173768    0.0019430
6 months    JiVitA-4       BANGLADESH                     optimal              observed          -0.0701034   -0.1594627    0.0192560
6 months    Keneba         GAMBIA                         optimal              observed          -0.0130259   -0.0392899    0.0132382
6 months    MAL-ED         BANGLADESH                     optimal              observed           0.0101779   -0.1225236    0.1428794
6 months    MAL-ED         BRAZIL                         optimal              observed           0.0515031   -0.1648433    0.2678495
6 months    MAL-ED         INDIA                          optimal              observed           0.1204926   -0.0054892    0.2464745
6 months    MAL-ED         NEPAL                          optimal              observed          -0.0254696   -0.1061879    0.0552487
6 months    MAL-ED         PERU                           optimal              observed           0.0075198   -0.0817033    0.0967430
6 months    MAL-ED         SOUTH AFRICA                   optimal              observed          -0.3610555   -0.8252912    0.1031801
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0384965   -0.1447084    0.2217014
6 months    PROVIDE        BANGLADESH                     optimal              observed           0.0791970   -0.0035044    0.1618983
6 months    SAS-CompFeed   INDIA                          optimal              observed           0.0179824   -0.0394213    0.0753861
24 months   GMS-Nepal      NEPAL                          optimal              observed           0.0156225   -0.1742554    0.2055004
24 months   JiVitA-3       BANGLADESH                     optimal              observed          -0.0135568   -0.0230161   -0.0040975
24 months   JiVitA-4       BANGLADESH                     optimal              observed          -0.0570726   -0.0960511   -0.0180940
24 months   Keneba         GAMBIA                         optimal              observed          -0.0229422   -0.0405136   -0.0053709
24 months   MAL-ED         BANGLADESH                     optimal              observed           0.0554361   -0.0497679    0.1606400
24 months   MAL-ED         BRAZIL                         optimal              observed          -0.1117587   -0.2514339    0.0279166
24 months   MAL-ED         INDIA                          optimal              observed          -0.1626306   -0.3007200   -0.0245412
24 months   MAL-ED         NEPAL                          optimal              observed          -0.0329404   -0.1121720    0.0462913
24 months   MAL-ED         PERU                           optimal              observed          -0.0475857   -0.2468845    0.1517131
24 months   MAL-ED         SOUTH AFRICA                   optimal              observed          -0.1139761   -0.5413609    0.3134087
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0051089   -0.2156232    0.2258410
24 months   PROVIDE        BANGLADESH                     optimal              observed          -0.1029864   -0.2293230    0.0233503
