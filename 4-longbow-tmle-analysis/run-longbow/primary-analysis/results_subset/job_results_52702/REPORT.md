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

agecat      studyid                    country                        exclfeed3    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               130     202
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                72     202
Birth       ki0047075b-MAL-ED          BRAZIL                         1                11      55
Birth       ki0047075b-MAL-ED          BRAZIL                         0                44      55
Birth       ki0047075b-MAL-ED          INDIA                          1                22      39
Birth       ki0047075b-MAL-ED          INDIA                          0                17      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                 8      25
Birth       ki0047075b-MAL-ED          NEPAL                          0                17      25
Birth       ki0047075b-MAL-ED          PERU                           1                47     218
Birth       ki0047075b-MAL-ED          PERU                           0               171     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                12      99
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                87      99
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                15      95
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                80      95
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4
Birth       ki1000108-IRC              INDIA                          1                 0       9
Birth       ki1000108-IRC              INDIA                          0                 9       9
Birth       ki1000109-EE               PAKISTAN                       1                22      22
Birth       ki1000109-EE               PAKISTAN                       0                 0      22
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               310     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                15     325
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               381     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               151     532
Birth       ki1101329-Keneba           GAMBIA                         1              1133    1282
Birth       ki1101329-Keneba           GAMBIA                         0               149    1282
Birth       ki1113344-GMS-Nepal        NEPAL                          1               352     422
Birth       ki1113344-GMS-Nepal        NEPAL                          0                70     422
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             10995   12129
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1134   12129
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                89      97
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 8      97
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               152     233
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                81     233
6 months    ki0047075b-MAL-ED          BRAZIL                         1                60     187
6 months    ki0047075b-MAL-ED          BRAZIL                         0               127     187
6 months    ki0047075b-MAL-ED          INDIA                          1               110     210
6 months    ki0047075b-MAL-ED          INDIA                          0               100     210
6 months    ki0047075b-MAL-ED          NEPAL                          1                70     227
6 months    ki0047075b-MAL-ED          NEPAL                          0               157     227
6 months    ki0047075b-MAL-ED          PERU                           1                61     270
6 months    ki0047075b-MAL-ED          PERU                           0               209     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                22     244
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               222     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                46     212
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               166     212
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
6 months    ki1000108-IRC              INDIA                          1                 0      10
6 months    ki1000108-IRC              INDIA                          0                10      10
6 months    ki1000109-EE               PAKISTAN                       1                39      39
6 months    ki1000109-EE               PAKISTAN                       0                 0      39
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               376     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     395
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               428     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               175     603
6 months    ki1101329-Keneba           GAMBIA                         1              1541    1742
6 months    ki1101329-Keneba           GAMBIA                         0               201    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1               367     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                74     441
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              8480    9289
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               809    9289
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                76      88
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                12      88
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               135     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                70     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                52     152
24 months   ki0047075b-MAL-ED          BRAZIL                         0               100     152
24 months   ki0047075b-MAL-ED          INDIA                          1               102     202
24 months   ki0047075b-MAL-ED          INDIA                          0               100     202
24 months   ki0047075b-MAL-ED          NEPAL                          1                67     220
24 months   ki0047075b-MAL-ED          NEPAL                          0               153     220
24 months   ki0047075b-MAL-ED          PERU                           1                43     198
24 months   ki0047075b-MAL-ED          PERU                           0               155     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                19     228
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               209     228
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                38     184
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               146     184
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
24 months   ki1000108-IRC              INDIA                          1                 0      10
24 months   ki1000108-IRC              INDIA                          0                10      10
24 months   ki1000109-EE               PAKISTAN                       1                20      20
24 months   ki1000109-EE               PAKISTAN                       0                 0      20
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               408     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               171     579
24 months   ki1101329-Keneba           GAMBIA                         1              1274    1421
24 months   ki1101329-Keneba           GAMBIA                         0               147    1421
24 months   ki1113344-GMS-Nepal        NEPAL                          1               322     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                62     384
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              4380    4795
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               415    4795
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               135     150
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                15     150


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

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
![](/tmp/1f4f6a09-4407-420f-b744-42970a986b65/3a2a681e-f15a-4397-877e-a3c6ecbf00b2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.8478803   -1.0554280   -0.6403326
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.5433224    0.0815783    1.0050666
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.6206154   -1.0869074   -0.1543234
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.4343190   -0.9563946    0.0877566
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed           0.2431176    0.0331253    0.4531100
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.3337437   -0.0693524    0.7368398
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.3086779    0.8312315    1.7861242
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.6562835   -0.8852815   -0.4272855
Birth       ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -1.2671327   -1.3542827   -1.1799826
Birth       ki1101329-Keneba          GAMBIA                         optimal              observed          -1.3504638   -1.4656407   -1.2352868
Birth       ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.0894504   -1.2818632   -0.8970375
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.7732242   -0.8261865   -0.7202620
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.4186088   -0.6421482   -0.1950693
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0518400   -0.2614013    0.1577213
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed           1.1957574    0.9068388    1.4846759
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.6425497   -0.8545420   -0.4305574
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed           0.3099077    0.0966603    0.5231551
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed           1.1878437    0.9722761    1.4034113
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.5080489    0.2830839    0.7330140
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.9495687    0.6786669    1.2204704
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.7249143   -1.0477394   -0.4020893
6 months    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.1410206   -0.2347548   -0.0472864
6 months    ki1101329-Keneba          GAMBIA                         optimal              observed          -0.1825804   -0.2409586   -0.1242023
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.7453514   -0.9610792   -0.5296236
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.5674352   -0.6311546   -0.5037158
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.5332378   -0.8402636   -0.2262120
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.7825550   -0.9662496   -0.5988603
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.5495722    0.2345130    0.8646314
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.9610733   -1.1683776   -0.7537690
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.2735213   -0.4814770   -0.0655655
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -0.0521316   -0.2109608    0.1066977
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.7125570    0.4322486    0.9928654
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0458940   -0.1667622    0.2585502
24 months   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.8290877   -0.9839800   -0.6741953
24 months   ki1101329-Keneba          GAMBIA                         optimal              observed          -0.7688687   -0.8229632   -0.7147741
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.1257730   -1.3205770   -0.9309691
24 months   kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.2594554   -1.3723304   -1.1465803
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.1074397   -1.4515779   -0.7633015


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.9404455   -1.0889530   -0.7919381
Birth       ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.4316364    0.0969688    0.7663039
Birth       ki0047075b-MAL-ED         INDIA                          observed             observed          -0.9779487   -1.2664810   -0.6894164
Birth       ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.7944000   -1.1625222   -0.4262778
Birth       ki0047075b-MAL-ED         PERU                           observed             observed          -0.0335321   -0.1564905    0.0894263
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -0.1588889   -0.3845288    0.0667510
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7996842    0.5874808    1.0118876
Birth       ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -0.6596308   -0.9005716   -0.4186900
Birth       ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1101329-Keneba          GAMBIA                         observed             observed          -1.2629563   -1.3291505   -1.1967622
Birth       ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.0991706   -1.2073693   -0.9909719
Birth       kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -0.7822228   -0.8038489   -0.7605966
Birth       kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -0.4347423   -0.6441144   -0.2253701
6 months    ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.1312375   -0.2633777    0.0009027
6 months    ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.9730392    0.7966084    1.1494700
6 months    ki0047075b-MAL-ED         INDIA                          observed             observed          -0.7190952   -0.8496984   -0.5884921
6 months    ki0047075b-MAL-ED         NEPAL                          observed             observed           0.1047871   -0.0305193    0.2400934
6 months    ki0047075b-MAL-ED         PERU                           observed             observed           1.0554753    0.9329598    1.1779909
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed           0.5569945    0.4061636    0.7078255
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5257626    0.3871543    0.6643709
6 months    ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba          GAMBIA                         observed             observed          -0.2057183   -0.2614359   -0.1500006
6 months    ki1113344-GMS-Nepal       NEPAL                          observed             observed          -0.6198791   -0.7206518   -0.5191063
6 months    kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -0.6040726   -0.6286341   -0.5795110
6 months    kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -0.4110227   -0.6122701   -0.2097753
24 months   ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -0.8086098   -0.9307952   -0.6864243
24 months   ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.4943421    0.2716679    0.7170163
24 months   ki0047075b-MAL-ED         INDIA                          observed             observed          -0.9524010   -1.0710590   -0.8337430
24 months   ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.3806364   -0.4971717   -0.2641010
24 months   ki0047075b-MAL-ED         PERU                           observed             observed           0.1199242    0.0008627    0.2389858
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed           0.4181579    0.2964894    0.5398263
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0485870   -0.0868148    0.1839888
24 months   ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba          GAMBIA                         observed             observed          -0.7930925   -0.8442611   -0.7419240
24 months   ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.1396441   -1.2416403   -1.0376479
24 months   kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.3119979   -1.3435475   -1.2804484
24 months   kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.0096000   -1.1619164   -0.8572836


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0925653   -0.2511632    0.0660327
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1116861   -0.4936972    0.2703250
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.3573333   -0.6836085   -0.0310582
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.3600810   -0.8778789    0.1577169
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.2766497   -0.4710331   -0.0822663
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.4926326   -0.8675975   -0.1176676
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5089937   -0.9661027   -0.0518846
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -0.0033473   -0.0446450    0.0379504
Birth       ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.0313260   -0.0749240    0.0122721
Birth       ki1101329-Keneba          GAMBIA                         optimal              observed           0.0875074   -0.0043818    0.1793966
Birth       ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.0097202   -0.1875206    0.1680801
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0089985   -0.0573297    0.0393326
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0161335   -0.0591325    0.0268655
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0793975   -0.2170452    0.0582502
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.2227181   -0.4515490    0.0061127
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0765456   -0.2092527    0.0561616
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.2051206   -0.3807426   -0.0294987
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed          -0.1323684   -0.3185570    0.0538203
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.0489456   -0.1534042    0.2512954
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4238061   -0.6508904   -0.1967218
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.0900283   -0.2741145    0.4541710
6 months    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.0580701   -0.1121431   -0.0039971
6 months    ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0231378   -0.0440786   -0.0021970
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed           0.1254723   -0.0673364    0.3182811
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0366373   -0.0952028    0.0219282
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed           0.1222150   -0.1488199    0.3932500
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0260548   -0.1653226    0.1132130
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.0552301   -0.2783193    0.1678591
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed           0.0086723   -0.1093654    0.1267100
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.1071151   -0.2711326    0.0569025
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed           0.1720558    0.0415322    0.3025794
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.2943991   -0.5792050   -0.0095932
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0026930   -0.1853728    0.1907588
24 months   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.0637793   -0.1911711    0.0636124
24 months   ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0242238   -0.0420371   -0.0064106
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.0138711   -0.1884190    0.1606768
24 months   kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0525426   -0.1568972    0.0518121
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed           0.0978397   -0.2454543    0.4411337
