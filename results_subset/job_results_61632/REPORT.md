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
Birth       EE               PAKISTAN                       1                22      22
Birth       EE               PAKISTAN                       0                 0      22
Birth       GMS-Nepal        NEPAL                          1               352     422
Birth       GMS-Nepal        NEPAL                          0                70     422
Birth       IRC              INDIA                          1                 0       9
Birth       IRC              INDIA                          0                 9       9
Birth       JiVitA-3         BANGLADESH                     1              9636   10634
Birth       JiVitA-3         BANGLADESH                     0               998   10634
Birth       JiVitA-4         BANGLADESH                     1                89      97
Birth       JiVitA-4         BANGLADESH                     0                 8      97
Birth       Keneba           GAMBIA                         1              1133    1282
Birth       Keneba           GAMBIA                         0               149    1282
Birth       MAL-ED           BANGLADESH                     1               130     202
Birth       MAL-ED           BANGLADESH                     0                72     202
Birth       MAL-ED           BRAZIL                         1                11      55
Birth       MAL-ED           BRAZIL                         0                44      55
Birth       MAL-ED           INDIA                          1                22      39
Birth       MAL-ED           INDIA                          0                17      39
Birth       MAL-ED           NEPAL                          1                 8      25
Birth       MAL-ED           NEPAL                          0                17      25
Birth       MAL-ED           PERU                           1                47     218
Birth       MAL-ED           PERU                           0               171     218
Birth       MAL-ED           SOUTH AFRICA                   1                12      99
Birth       MAL-ED           SOUTH AFRICA                   0                87      99
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                15      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                80      95
Birth       PROVIDE          BANGLADESH                     1               381     532
Birth       PROVIDE          BANGLADESH                     0               151     532
Birth       SAS-CompFeed     INDIA                          1               310     325
Birth       SAS-CompFeed     INDIA                          0                15     325
6 months    CMC-V-BCS-2002   INDIA                          1                10      10
6 months    CMC-V-BCS-2002   INDIA                          0                 0      10
6 months    EE               PAKISTAN                       1                39      39
6 months    EE               PAKISTAN                       0                 0      39
6 months    GMS-Nepal        NEPAL                          1               367     441
6 months    GMS-Nepal        NEPAL                          0                74     441
6 months    IRC              INDIA                          1                 0      10
6 months    IRC              INDIA                          0                10      10
6 months    JiVitA-3         BANGLADESH                     1              8499    9310
6 months    JiVitA-3         BANGLADESH                     0               811    9310
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
6 months    PROVIDE          BANGLADESH                     1               428     603
6 months    PROVIDE          BANGLADESH                     0               175     603
6 months    SAS-CompFeed     INDIA                          1               376     395
6 months    SAS-CompFeed     INDIA                          0                19     395
24 months   CMC-V-BCS-2002   INDIA                          1                10      10
24 months   CMC-V-BCS-2002   INDIA                          0                 0      10
24 months   EE               PAKISTAN                       1                20      20
24 months   EE               PAKISTAN                       0                 0      20
24 months   GMS-Nepal        NEPAL                          1               322     384
24 months   GMS-Nepal        NEPAL                          0                62     384
24 months   IRC              INDIA                          1                 0      10
24 months   IRC              INDIA                          0                10      10
24 months   JiVitA-3         BANGLADESH                     1              4416    4833
24 months   JiVitA-3         BANGLADESH                     0               417    4833
24 months   JiVitA-4         BANGLADESH                     1               135     150
24 months   JiVitA-4         BANGLADESH                     0                15     150
24 months   Keneba           GAMBIA                         1              1274    1421
24 months   Keneba           GAMBIA                         0               147    1421
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
24 months   PROVIDE          BANGLADESH                     1               408     579
24 months   PROVIDE          BANGLADESH                     0               171     579


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
![](/tmp/f815ef92-5feb-48a9-a12e-403fb5d72a7b/4d2e0267-c46c-459f-be7b-80af98bb65ae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          optimal              observed          -1.0572921   -1.2568691   -0.8577151
Birth       JiVitA-3       BANGLADESH                     optimal              observed          -0.7498424   -0.8037031   -0.6959817
Birth       JiVitA-4       BANGLADESH                     optimal              observed          -0.4158834   -0.6385797   -0.1931871
Birth       Keneba         GAMBIA                         optimal              observed          -1.2683690   -1.3515765   -1.1851615
Birth       MAL-ED         BANGLADESH                     optimal              observed          -0.7036628   -0.9251014   -0.4822242
Birth       MAL-ED         BRAZIL                         optimal              observed           0.0271287   -0.6047636    0.6590210
Birth       MAL-ED         INDIA                          optimal              observed          -0.4933206   -0.9020254   -0.0846158
Birth       MAL-ED         NEPAL                          optimal              observed          -0.4615289   -0.9359456    0.0128878
Birth       MAL-ED         PERU                           optimal              observed           0.2475497    0.0627320    0.4323675
Birth       MAL-ED         SOUTH AFRICA                   optimal              observed           0.5068551    0.1030524    0.9106578
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.4151661    0.9133730    1.9169592
Birth       PROVIDE        BANGLADESH                     optimal              observed          -1.2666835   -1.3544496   -1.1789174
Birth       SAS-CompFeed   INDIA                          optimal              observed          -0.6562835   -0.8852815   -0.4272855
6 months    GMS-Nepal      NEPAL                          optimal              observed          -0.6033674   -0.8437093   -0.3630255
6 months    JiVitA-3       BANGLADESH                     optimal              observed          -0.5634309   -0.6264063   -0.5004555
6 months    JiVitA-4       BANGLADESH                     optimal              observed          -0.5375392   -0.8157437   -0.2593347
6 months    Keneba         GAMBIA                         optimal              observed          -0.1946978   -0.2564022   -0.1329935
6 months    MAL-ED         BANGLADESH                     optimal              observed          -0.0139535   -0.1926031    0.1646960
6 months    MAL-ED         BRAZIL                         optimal              observed           1.1987178    0.8884236    1.5090120
6 months    MAL-ED         INDIA                          optimal              observed          -0.5842590   -0.7757891   -0.3927290
6 months    MAL-ED         NEPAL                          optimal              observed           0.2304215   -0.0092875    0.4701304
6 months    MAL-ED         PERU                           optimal              observed           1.1541453    0.9509600    1.3573305
6 months    MAL-ED         SOUTH AFRICA                   optimal              observed           0.7025834    0.5158235    0.8893434
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.8769658    0.5850700    1.1688617
6 months    PROVIDE        BANGLADESH                     optimal              observed          -0.1386241   -0.2324962   -0.0447520
6 months    SAS-CompFeed   INDIA                          optimal              observed          -0.7249143   -1.0477394   -0.4020893
24 months   GMS-Nepal      NEPAL                          optimal              observed          -1.0461150   -1.2727054   -0.8195246
24 months   JiVitA-3       BANGLADESH                     optimal              observed          -1.2860733   -1.4037333   -1.1684134
24 months   JiVitA-4       BANGLADESH                     optimal              observed          -0.9709483   -1.5200946   -0.4218020
24 months   Keneba         GAMBIA                         optimal              observed          -0.7899581   -0.8729725   -0.7069438
24 months   MAL-ED         BANGLADESH                     optimal              observed          -0.7419264   -0.9374016   -0.5464512
24 months   MAL-ED         BRAZIL                         optimal              observed           0.5968959    0.3233243    0.8704674
24 months   MAL-ED         INDIA                          optimal              observed          -1.1197990   -1.2873916   -0.9522065
24 months   MAL-ED         NEPAL                          optimal              observed          -0.2622900   -0.4756078   -0.0489723
24 months   MAL-ED         PERU                           optimal              observed          -0.0641243   -0.2172422    0.0889936
24 months   MAL-ED         SOUTH AFRICA                   optimal              observed           0.6942427    0.3850133    1.0034722
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1611474   -0.3437707    0.0214760
24 months   PROVIDE        BANGLADESH                     optimal              observed          -0.8250652   -0.9813180   -0.6688125


### Parameter: E(Y)


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          observed             observed          -1.0991706   -1.2073693   -0.9909719
Birth       JiVitA-3       BANGLADESH                     observed             observed          -0.7798636   -0.8022140   -0.7575133
Birth       JiVitA-4       BANGLADESH                     observed             observed          -0.4347423   -0.6441144   -0.2253701
Birth       Keneba         GAMBIA                         observed             observed          -1.2629563   -1.3291505   -1.1967622
Birth       MAL-ED         BANGLADESH                     observed             observed          -0.9411386   -1.0895370   -0.7927402
Birth       MAL-ED         BRAZIL                         observed             observed           0.4316364    0.0969688    0.7663039
Birth       MAL-ED         INDIA                          observed             observed          -0.9779487   -1.2664810   -0.6894164
Birth       MAL-ED         NEPAL                          observed             observed          -0.7944000   -1.1625222   -0.4262778
Birth       MAL-ED         PERU                           observed             observed          -0.0335321   -0.1564905    0.0894263
Birth       MAL-ED         SOUTH AFRICA                   observed             observed          -0.1588889   -0.3845288    0.0667510
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7996842    0.5874808    1.0118876
Birth       PROVIDE        BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed   INDIA                          observed             observed          -0.6596308   -0.9005716   -0.4186900
6 months    GMS-Nepal      NEPAL                          observed             observed          -0.6198791   -0.7206518   -0.5191063
6 months    JiVitA-3       BANGLADESH                     observed             observed          -0.6040977   -0.6286619   -0.5795335
6 months    JiVitA-4       BANGLADESH                     observed             observed          -0.4110227   -0.6122701   -0.2097753
6 months    Keneba         GAMBIA                         observed             observed          -0.2057183   -0.2614359   -0.1500006
6 months    MAL-ED         BANGLADESH                     observed             observed          -0.1304936   -0.2625419    0.0015547
6 months    MAL-ED         BRAZIL                         observed             observed           0.9754144    0.7990651    1.1517638
6 months    MAL-ED         INDIA                          observed             observed          -0.7185992   -0.8491469   -0.5880515
6 months    MAL-ED         NEPAL                          observed             observed           0.1041483   -0.0311352    0.2394318
6 months    MAL-ED         PERU                           observed             observed           1.0514136    0.9289176    1.1739096
6 months    MAL-ED         SOUTH AFRICA                   observed             observed           0.5564071    0.4055220    0.7072922
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5257626    0.3871543    0.6643709
6 months    PROVIDE        BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed   INDIA                          observed             observed          -0.6348861   -0.7630511   -0.5067211
24 months   GMS-Nepal      NEPAL                          observed             observed          -1.1396441   -1.2416403   -1.0376479
24 months   JiVitA-3       BANGLADESH                     observed             observed          -1.3109518   -1.3423299   -1.2795737
24 months   JiVitA-4       BANGLADESH                     observed             observed          -1.0096000   -1.1619164   -0.8572836
24 months   Keneba         GAMBIA                         observed             observed          -0.7930925   -0.8442611   -0.7419240
24 months   MAL-ED         BANGLADESH                     observed             observed          -0.8076829   -0.9296166   -0.6857493
24 months   MAL-ED         BRAZIL                         observed             observed           0.4981140    0.2760418    0.7201863
24 months   MAL-ED         INDIA                          observed             observed          -0.9516832   -1.0703961   -0.8329703
24 months   MAL-ED         NEPAL                          observed             observed          -0.3790455   -0.4958857   -0.2622052
24 months   MAL-ED         PERU                           observed             observed           0.1176052   -0.0015211    0.2367315
24 months   MAL-ED         SOUTH AFRICA                   observed             observed           0.4120797    0.2900939    0.5340654
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0495743   -0.0857535    0.1849021
24 months   PROVIDE        BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          optimal              observed          -0.0418785   -0.2190953    0.1353383
Birth       JiVitA-3       BANGLADESH                     optimal              observed          -0.0300213   -0.0790471    0.0190046
Birth       JiVitA-4       BANGLADESH                     optimal              observed          -0.0188589   -0.0623536    0.0246357
Birth       Keneba         GAMBIA                         optimal              observed           0.0054127   -0.0476064    0.0584318
Birth       MAL-ED         BANGLADESH                     optimal              observed          -0.2374759   -0.4026407   -0.0723110
Birth       MAL-ED         BRAZIL                         optimal              observed           0.4045077   -0.1444061    0.9534214
Birth       MAL-ED         INDIA                          optimal              observed          -0.4846281   -0.7911583   -0.1780980
Birth       MAL-ED         NEPAL                          optimal              observed          -0.3328711   -0.8228964    0.1571542
Birth       MAL-ED         PERU                           optimal              observed          -0.2810818   -0.4507122   -0.1114515
Birth       MAL-ED         SOUTH AFRICA                   optimal              observed          -0.6657440   -1.0608719   -0.2706161
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6154819   -1.0971214   -0.1338424
Birth       PROVIDE        BANGLADESH                     optimal              observed          -0.0317752   -0.0762713    0.0127210
Birth       SAS-CompFeed   INDIA                          optimal              observed          -0.0033473   -0.0446450    0.0379504
6 months    GMS-Nepal      NEPAL                          optimal              observed          -0.0165117   -0.2218570    0.1888337
6 months    JiVitA-3       BANGLADESH                     optimal              observed          -0.0406668   -0.0988177    0.0174840
6 months    JiVitA-4       BANGLADESH                     optimal              observed           0.1265165   -0.1079902    0.3610232
6 months    Keneba         GAMBIA                         optimal              observed          -0.0110205   -0.0393386    0.0172977
6 months    MAL-ED         BANGLADESH                     optimal              observed          -0.1165400   -0.2404329    0.0073529
6 months    MAL-ED         BRAZIL                         optimal              observed          -0.2233034   -0.4775890    0.0309823
6 months    MAL-ED         INDIA                          optimal              observed          -0.1343402   -0.2664828   -0.0021975
6 months    MAL-ED         NEPAL                          optimal              observed          -0.1262731   -0.3258182    0.0732719
6 months    MAL-ED         PERU                           optimal              observed          -0.1027317   -0.2806914    0.0752280
6 months    MAL-ED         SOUTH AFRICA                   optimal              observed          -0.1461763   -0.3366789    0.0443263
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3512033   -0.5930517   -0.1093548
6 months    PROVIDE        BANGLADESH                     optimal              observed          -0.0604666   -0.1160098   -0.0049233
6 months    SAS-CompFeed   INDIA                          optimal              observed           0.0900283   -0.2741145    0.4541710
24 months   GMS-Nepal      NEPAL                          optimal              observed          -0.0935291   -0.2913204    0.1042621
24 months   JiVitA-3       BANGLADESH                     optimal              observed          -0.0248784   -0.1346603    0.0849034
24 months   JiVitA-4       BANGLADESH                     optimal              observed          -0.0386517   -0.5639195    0.4866161
24 months   Keneba         GAMBIA                         optimal              observed          -0.0031344   -0.0647622    0.0584934
24 months   MAL-ED         BANGLADESH                     optimal              observed          -0.0657565   -0.2051994    0.0736863
24 months   MAL-ED         BRAZIL                         optimal              observed          -0.0987818   -0.2587352    0.0611715
24 months   MAL-ED         INDIA                          optimal              observed           0.1681159    0.0474774    0.2887543
24 months   MAL-ED         NEPAL                          optimal              observed          -0.1167554   -0.2946227    0.0611118
24 months   MAL-ED         PERU                           optimal              observed           0.1817295    0.0499802    0.3134788
24 months   MAL-ED         SOUTH AFRICA                   optimal              observed          -0.2821631   -0.5947846    0.0304585
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2107216    0.0503586    0.3710847
24 months   PROVIDE        BANGLADESH                     optimal              observed          -0.0678018   -0.1966958    0.0610922
