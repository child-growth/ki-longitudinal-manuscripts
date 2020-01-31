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

agecat      studyid                    country                        exclfeed3    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               138     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                77     215
Birth       ki0047075b-MAL-ED          BRAZIL                         1                12      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                45      57
Birth       ki0047075b-MAL-ED          INDIA                          1                24      41
Birth       ki0047075b-MAL-ED          INDIA                          0                17      41
Birth       ki0047075b-MAL-ED          NEPAL                          1                 8      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                18      26
Birth       ki0047075b-MAL-ED          PERU                           1                49     223
Birth       ki0047075b-MAL-ED          PERU                           0               174     223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                12     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                88     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                17     102
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                85     102
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4
Birth       ki1000108-IRC              INDIA                          1                 0      10
Birth       ki1000108-IRC              INDIA                          0                10      10
Birth       ki1000109-EE               PAKISTAN                       1                35      35
Birth       ki1000109-EE               PAKISTAN                       0                 0      35
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               346     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                18     364
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               387     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               152     539
Birth       ki1101329-Keneba           GAMBIA                         1              1198    1356
Birth       ki1101329-Keneba           GAMBIA                         0               158    1356
Birth       ki1113344-GMS-Nepal        NEPAL                          1               380     458
Birth       ki1113344-GMS-Nepal        NEPAL                          0                78     458
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             12014   13276
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1262   13276
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               105     116
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                11     116
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               428     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               176     604
6 months    ki1101329-Keneba           GAMBIA                         1              1541    1742
6 months    ki1101329-Keneba           GAMBIA                         0               201    1742
6 months    ki1113344-GMS-Nepal        NEPAL                          1               367     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                74     441
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              8514    9328
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               814    9328
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               408     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               170     578
24 months   ki1101329-Keneba           GAMBIA                         1              1274    1420
24 months   ki1101329-Keneba           GAMBIA                         0               146    1420
24 months   ki1113344-GMS-Nepal        NEPAL                          1               322     384
24 months   ki1113344-GMS-Nepal        NEPAL                          0                62     384
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              4433    4852
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               419    4852
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               136     151
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                15     151


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
![](/tmp/396dd3fb-2a3a-4676-868f-ef7188778af6/e4ee8e32-2cb6-43d3-82ce-4110cb534759/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.0284325   -1.2546703   -0.8021946
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.7224592   -1.3696342   -0.0752843
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.8963408   -1.2273242   -0.5653573
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.6925030   -1.1629941   -0.2220119
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.9124291   -1.0993750   -0.7254832
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.7064096   -0.9250719   -0.4877473
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1183489   -1.3728578   -0.8638401
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -1.5462085   -1.8641615   -1.2282554
Birth       ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.8457185   -0.9843689   -0.7070681
Birth       ki1101329-Keneba          GAMBIA                         optimal              observed           0.0753993   -0.0957576    0.2465562
Birth       ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.1763438   -1.3291079   -1.0235796
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.5804056   -1.6208344   -1.5399768
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.9835196   -2.2632879   -1.7037513
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.1662987   -1.3407684   -0.9918290
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.0834764   -0.1492674    0.3162202
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.1886285   -1.3817733   -0.9954836
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.4833171   -0.6349693   -0.3316649
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed          -1.4407245   -1.6134906   -1.2679584
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.6535198   -1.1463903   -0.1606493
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.6291747   -1.8319686   -1.4263808
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -1.4877061   -1.6531098   -1.3223023
6 months    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -1.0935891   -1.2017500   -0.9854282
6 months    ki1101329-Keneba          GAMBIA                         optimal              observed          -0.9291245   -0.9831278   -0.8751213
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.4828968   -1.6323299   -1.3334637
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.3196478   -1.3488178   -1.2904778
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.1215421   -1.3108189   -0.9322653
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.9700409   -2.1266531   -1.8134287
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.1818263   -0.4013250    0.0376724
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.8098639   -2.0080890   -1.6116387
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -1.2481883   -1.4160752   -1.0803013
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -1.7382249   -1.9450726   -1.5313772
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -1.4903210   -1.9760778   -1.0045643
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.7369927   -3.0435640   -2.4304215
24 months   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -1.4965312   -1.6495216   -1.3435407
24 months   ki1101329-Keneba          GAMBIA                         optimal              observed          -1.5744152   -1.6314446   -1.5173859
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.7894119   -1.9957109   -1.5831129
24 months   kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -2.0097748   -2.0541138   -1.9654357
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.7153144   -1.8628175   -1.5678114


### Parameter: E(Y)


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.0949767   -1.2319917   -0.9579618
Birth       ki0047075b-MAL-ED         BRAZIL                         observed             observed          -0.6996491   -0.9856018   -0.4136965
Birth       ki0047075b-MAL-ED         INDIA                          observed             observed          -1.2075610   -1.5261540   -0.8889679
Birth       ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.8234615   -1.1896049   -0.4573182
Birth       ki0047075b-MAL-ED         PERU                           observed             observed          -0.8753812   -0.9932108   -0.7575515
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -0.5797000   -0.7788298   -0.3805702
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1086275   -1.3310338   -0.8862211
Birth       ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -1.3937088   -1.5095039   -1.2779137
Birth       ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba          GAMBIA                         observed             observed           0.0098304   -0.0597854    0.0794461
Birth       ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.0555240   -1.1550843   -0.9559638
Birth       kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.5928457   -1.6158667   -1.5698248
Birth       kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.6073276   -1.8105798   -1.4040753
6 months    ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.2242918   -1.3439424   -1.1046413
6 months    ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.0609091   -0.0944768    0.2162950
6 months    ki0047075b-MAL-ED         INDIA                          observed             observed          -1.2002381   -1.3274929   -1.0729833
6 months    ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.5634068   -0.6769687   -0.4498449
6 months    ki0047075b-MAL-ED         PERU                           observed             observed          -1.3108735   -1.4182407   -1.2035062
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -1.0662227   -1.1965862   -0.9358591
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.4030503   -1.5292443   -1.2768563
6 months    ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1101329-Keneba          GAMBIA                         observed             observed          -0.9489317   -1.0001696   -0.8976937
6 months    ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.3499849   -1.4387386   -1.2612312
6 months    kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.3240051   -1.3526414   -1.2953689
6 months    kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.1994318   -1.3808291   -1.0180345
24 months   ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -2.0016585   -2.1303297   -1.8729874
24 months   ki0047075b-MAL-ED         BRAZIL                         observed             observed          -0.0162939   -0.1929098    0.1603221
24 months   ki0047075b-MAL-ED         INDIA                          observed             observed          -1.8994059   -2.0346781   -1.7641337
24 months   ki0047075b-MAL-ED         NEPAL                          observed             observed          -1.3109318   -1.4313748   -1.1904888
24 months   ki0047075b-MAL-ED         PERU                           observed             observed          -1.7412963   -1.8630698   -1.6195228
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -1.6424525   -1.7808926   -1.5040124
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6768207   -2.8213178   -2.5323235
24 months   ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba          GAMBIA                         observed             observed          -1.5961170   -1.6505261   -1.5417080
24 months   ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.8752995   -1.9688053   -1.7817937
24 months   kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -2.0187325   -2.0554682   -1.9819968
24 months   kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.7726490   -1.9111913   -1.6341067


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0665443   -0.2364435    0.1033549
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.0228101   -0.5443190    0.5899392
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.3112202   -0.6721539    0.0497134
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.1309585   -0.6157079    0.3537908
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed           0.0370479   -0.1067132    0.1808090
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.1267096   -0.0227515    0.2761707
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0097215   -0.1149368    0.1343797
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.1524997   -0.1183746    0.4233739
Birth       ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.0393835   -0.1459498    0.0671828
Birth       ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0655689   -0.2235735    0.0924357
Birth       ki1113344-GMS-Nepal       NEPAL                          optimal              observed           0.1208198   -0.0058233    0.2474628
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0124401   -0.0453593    0.0204791
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed           0.3761920    0.1499508    0.6024332
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0579931   -0.1861001    0.0701138
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.0225673   -0.2091874    0.1640527
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0116096   -0.1426674    0.1194481
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0800896   -0.1906428    0.0304635
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed           0.1298510    0.0019750    0.2577271
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.4127029   -0.8808816    0.0554758
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2261244    0.0596454    0.3926034
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.0179824   -0.0394213    0.0753861
6 months    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed           0.0018976   -0.0824172    0.0862123
6 months    ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0198071   -0.0390230   -0.0005913
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed           0.1329119    0.0109453    0.2548785
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0043574   -0.0118463    0.0031316
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0778897   -0.1651423    0.0093628
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0316176   -0.1264170    0.0631818
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.1655324    0.0165468    0.3145180
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.0895421   -0.2253812    0.0462971
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0627436   -0.1666003    0.0411132
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -0.0030714   -0.1533801    0.1472373
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.1521315   -0.6207954    0.3165325
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0601721   -0.2126477    0.3329919
24 months   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.1058910   -0.2329571    0.0211752
24 months   ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0217018   -0.0403754   -0.0030282
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -0.0858876   -0.2625834    0.0908082
24 months   kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0089577   -0.0328782    0.0149627
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0573346   -0.0961309   -0.0185383
