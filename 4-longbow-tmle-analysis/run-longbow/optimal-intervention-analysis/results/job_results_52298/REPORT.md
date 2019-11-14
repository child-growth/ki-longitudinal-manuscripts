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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             13479   14888
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1409   14888
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              8495    9307
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               812    9307
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              4396    4813
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               417    4813
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
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/39687249-7710-4407-980f-5a592eac10ad/a7765827-2476-494c-8614-9effb3295360/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.0735792   -1.3093034   -0.8378550
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.7446114   -1.4012399   -0.0879828
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.8411578   -1.1500030   -0.5323126
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.9726839   -1.4883425   -0.4570252
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed          -0.9623754   -1.1771058   -0.7476450
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.6282357   -0.8508789   -0.4055926
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0617871   -1.3072958   -0.8162784
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -1.5462085   -1.8641615   -1.2282554
Birth       ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.8808474   -1.0126765   -0.7490183
Birth       ki1101329-Keneba          GAMBIA                         optimal              observed           0.0679630   -0.1105090    0.2464350
Birth       ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.1483322   -1.2914408   -1.0052237
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.3623592   -1.3998248   -1.3248936
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.8103857   -2.3700975   -1.2506739
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.2321372   -1.3731901   -1.0910843
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.0397506   -0.2206038    0.3001050
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.3215611   -1.5099600   -1.1331621
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.6009044   -0.7628538   -0.4389550
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed          -1.2972984   -1.4183119   -1.1762850
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.6995625   -1.1728488   -0.2262762
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.6528154   -1.8609663   -1.4446645
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed          -1.4877061   -1.6531098   -1.3223023
6 months    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -1.1216348   -1.2346969   -1.0085728
6 months    ki1101329-Keneba          GAMBIA                         optimal              observed          -0.9426935   -1.0077154   -0.8776717
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.3605725   -1.4967347   -1.2244102
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -1.3348208   -1.3758411   -1.2938006
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.1248271   -1.3130522   -0.9366020
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -1.9708810   -2.1267490   -1.8150131
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed          -0.0996101   -0.3376428    0.1384227
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -1.7284191   -1.9138187   -1.5430195
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -1.2710359   -1.4338845   -1.1081873
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed          -1.8369503   -2.0742393   -1.5996613
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -1.4872980   -1.9659106   -1.0086855
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.7037644   -2.9553876   -2.4521411
24 months   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -1.5095974   -1.6604158   -1.3587790
24 months   ki1101329-Keneba          GAMBIA                         optimal              observed          -1.5750466   -1.6318661   -1.5182272
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed          -1.8782627   -2.1045994   -1.6519261
24 months   kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -2.0124119   -2.0503939   -1.9744299
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -1.7143890   -1.8627847   -1.5659933


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
Birth       kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.3843216   -1.4102231   -1.3584201
Birth       kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.6073276   -1.8105798   -1.4040753
6 months    ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -1.2248069   -1.3446487   -1.1049651
6 months    ki0047075b-MAL-ED         BRAZIL                         observed             observed           0.0641266   -0.0913400    0.2195931
6 months    ki0047075b-MAL-ED         INDIA                          observed             observed          -1.2002063   -1.3275718   -1.0728409
6 months    ki0047075b-MAL-ED         NEPAL                          observed             observed          -0.5628634   -0.6765658   -0.4491611
6 months    ki0047075b-MAL-ED         PERU                           observed             observed          -1.3153519   -1.4229629   -1.2077408
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -1.0665369   -1.1970117   -0.9360620
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.4030503   -1.5292443   -1.2768563
6 months    ki1000304b-SAS-CompFeed   INDIA                          observed             observed          -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1101329-Keneba          GAMBIA                         observed             observed          -0.9489317   -1.0001696   -0.8976937
6 months    ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.3499849   -1.4387386   -1.2612312
6 months    kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -1.3470624   -1.3756620   -1.3184628
6 months    kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.1994318   -1.3808291   -1.0180345
24 months   ki0047075b-MAL-ED         BANGLADESH                     observed             observed          -2.0021951   -2.1308572   -1.8735330
24 months   ki0047075b-MAL-ED         BRAZIL                         observed             observed          -0.0151974   -0.1917967    0.1614019
24 months   ki0047075b-MAL-ED         INDIA                          observed             observed          -1.8978960   -2.0332143   -1.7625777
24 months   ki0047075b-MAL-ED         NEPAL                          observed             observed          -1.3153636   -1.4359803   -1.1947469
24 months   ki0047075b-MAL-ED         PERU                           observed             observed          -1.7432323   -1.8646545   -1.6218102
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   observed             observed          -1.6467544   -1.7856657   -1.5078431
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6763587   -2.8207363   -2.5319811
24 months   ki1017093b-PROVIDE        BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba          GAMBIA                         observed             observed          -1.5961170   -1.6505261   -1.5417080
24 months   ki1113344-GMS-Nepal       NEPAL                          observed             observed          -1.8752995   -1.9688053   -1.7817937
24 months   kiGH5241-JiVitA-3         BANGLADESH                     observed             observed          -2.0239144   -2.0607740   -1.9870548
24 months   kiGH5241-JiVitA-4         BANGLADESH                     observed             observed          -1.7726490   -1.9111913   -1.6341067


### Parameter: PAR


agecat      studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0213976   -0.1985474    0.1557523
Birth       ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.0449623   -0.5378742    0.6277987
Birth       ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.3664032   -0.7169837   -0.0158226
Birth       ki0047075b-MAL-ED         NEPAL                          optimal              observed           0.1492223   -0.3266058    0.6250504
Birth       ki0047075b-MAL-ED         PERU                           optimal              observed           0.0869943   -0.0774240    0.2514125
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed           0.0485357   -0.0447454    0.1418168
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0468404   -0.1439524    0.0502717
Birth       ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.1524997   -0.1183746    0.4233739
Birth       ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.0042546   -0.1010806    0.0925714
Birth       ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0581326   -0.2232501    0.1069849
Birth       ki1113344-GMS-Nepal       NEPAL                          optimal              observed           0.0928082   -0.0280547    0.2136711
Birth       kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0219624   -0.0511810    0.0072562
Birth       kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed           0.2030582   -0.2816763    0.6877926
6 months    ki0047075b-MAL-ED         BANGLADESH                     optimal              observed           0.0073303   -0.0930981    0.1077587
6 months    ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.0243759   -0.1938699    0.2426218
6 months    ki0047075b-MAL-ED         INDIA                          optimal              observed           0.1213547   -0.0055468    0.2482563
6 months    ki0047075b-MAL-ED         NEPAL                          optimal              observed           0.0380409   -0.0698206    0.1459025
6 months    ki0047075b-MAL-ED         PERU                           optimal              observed          -0.0180534   -0.0782189    0.0421121
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.3669744   -0.8160465    0.0820978
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2497651    0.0697891    0.4297410
6 months    ki1000304b-SAS-CompFeed   INDIA                          optimal              observed           0.0179824   -0.0394213    0.0753861
6 months    ki1017093b-PROVIDE        BANGLADESH                     optimal              observed           0.0299433   -0.0574477    0.1173344
6 months    ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0062381   -0.0476268    0.0351506
6 months    ki1113344-GMS-Nepal       NEPAL                          optimal              observed           0.0105876   -0.1015156    0.1226908
6 months    kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0122416   -0.0418299    0.0173467
6 months    kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0746047   -0.1595948    0.0103853
24 months   ki0047075b-MAL-ED         BANGLADESH                     optimal              observed          -0.0313141   -0.1235636    0.0609355
24 months   ki0047075b-MAL-ED         BRAZIL                         optimal              observed           0.0844127   -0.0733662    0.2421916
24 months   ki0047075b-MAL-ED         INDIA                          optimal              observed          -0.1694770   -0.3043989   -0.0345550
24 months   ki0047075b-MAL-ED         NEPAL                          optimal              observed          -0.0443278   -0.1395365    0.0508810
24 months   ki0047075b-MAL-ED         PERU                           optimal              observed           0.0937180   -0.0888161    0.2762521
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   optimal              observed          -0.1594563   -0.6217025    0.3027898
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0274057   -0.1903386    0.2451499
24 months   ki1017093b-PROVIDE        BANGLADESH                     optimal              observed          -0.0928247   -0.2172823    0.0316328
24 months   ki1101329-Keneba          GAMBIA                         optimal              observed          -0.0210704   -0.0388122   -0.0033286
24 months   ki1113344-GMS-Nepal       NEPAL                          optimal              observed           0.0029633   -0.1960254    0.2019519
24 months   kiGH5241-JiVitA-3         BANGLADESH                     optimal              observed          -0.0115025   -0.0213184   -0.0016866
24 months   kiGH5241-JiVitA-4         BANGLADESH                     optimal              observed          -0.0582600   -0.0977090   -0.0188109
