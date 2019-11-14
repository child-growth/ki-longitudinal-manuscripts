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

**Intervention Variable:** predfeed3

**Adjustment Set:**

* arm
* sex
* month
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

agecat      studyid               country                        predfeed3    n_cell       n
----------  --------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1               176     215
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                39     215
Birth       ki0047075b-MAL-ED     BRAZIL                         1                24      57
Birth       ki0047075b-MAL-ED     BRAZIL                         0                33      57
Birth       ki0047075b-MAL-ED     INDIA                          1                29      41
Birth       ki0047075b-MAL-ED     INDIA                          0                12      41
Birth       ki0047075b-MAL-ED     NEPAL                          1                14      26
Birth       ki0047075b-MAL-ED     NEPAL                          0                12      26
Birth       ki0047075b-MAL-ED     PERU                           1               150     223
Birth       ki0047075b-MAL-ED     PERU                           0                73     223
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                33     100
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                67     100
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                26     102
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                76     102
Birth       ki1000109-EE          PAKISTAN                       1                35      35
Birth       ki1000109-EE          PAKISTAN                       0                 0      35
Birth       ki1113344-GMS-Nepal   NEPAL                          1               380     458
Birth       ki1113344-GMS-Nepal   NEPAL                          0                78     458
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1             13482   14888
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0              1406   14888
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1               105     116
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                11     116
6 months    ki0047075b-MAL-ED     BANGLADESH                     1               191     233
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                42     233
6 months    ki0047075b-MAL-ED     BRAZIL                         1                93     187
6 months    ki0047075b-MAL-ED     BRAZIL                         0                94     187
6 months    ki0047075b-MAL-ED     INDIA                          1               147     210
6 months    ki0047075b-MAL-ED     INDIA                          0                63     210
6 months    ki0047075b-MAL-ED     NEPAL                          1               113     227
6 months    ki0047075b-MAL-ED     NEPAL                          0               114     227
6 months    ki0047075b-MAL-ED     PERU                           1               176     270
6 months    ki0047075b-MAL-ED     PERU                           0                94     270
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                63     244
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0               181     244
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                64     212
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               148     212
6 months    ki1000109-EE          PAKISTAN                       1                39      39
6 months    ki1000109-EE          PAKISTAN                       0                 0      39
6 months    ki1113344-GMS-Nepal   NEPAL                          1               367     441
6 months    ki1113344-GMS-Nepal   NEPAL                          0                74     441
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1              8497    9307
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0               810    9307
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                76      88
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                12      88
24 months   ki0047075b-MAL-ED     BANGLADESH                     1               168     205
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                37     205
24 months   ki0047075b-MAL-ED     BRAZIL                         1                79     152
24 months   ki0047075b-MAL-ED     BRAZIL                         0                73     152
24 months   ki0047075b-MAL-ED     INDIA                          1               139     202
24 months   ki0047075b-MAL-ED     INDIA                          0                63     202
24 months   ki0047075b-MAL-ED     NEPAL                          1               110     220
24 months   ki0047075b-MAL-ED     NEPAL                          0               110     220
24 months   ki0047075b-MAL-ED     PERU                           1               131     198
24 months   ki0047075b-MAL-ED     PERU                           0                67     198
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                60     228
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0               168     228
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                54     184
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0               130     184
24 months   ki1000109-EE          PAKISTAN                       1                20      20
24 months   ki1000109-EE          PAKISTAN                       0                 0      20
24 months   ki1113344-GMS-Nepal   NEPAL                          1               322     384
24 months   ki1113344-GMS-Nepal   NEPAL                          0                62     384
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              4397    4813
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               416    4813
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1               136     151
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                15     151


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
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




# Results Detail

## Results Plots
![](/tmp/6a6db0b3-6510-4d7c-b198-c8690c1fea0b/ee3eeded-3724-4284-811d-6867ce607c1a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.9573099   -1.2467252   -0.6678946
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -1.0488284   -1.4501449   -0.6475119
Birth       ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.7566497   -1.2054271   -0.3078723
Birth       ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.8892183   -1.5152655   -0.2631712
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.9429709   -1.1006894   -0.7852524
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.4546261   -0.8124654   -0.0967868
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2675897   -1.6893129   -0.8458666
Birth       ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.0536513   -1.2084218   -0.8988808
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.3750482   -1.4202031   -1.3298933
Birth       kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.9727807   -2.2787524   -1.6668089
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -1.2408552   -1.3757706   -1.1059398
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.1954699   -0.0202790    0.4112188
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -1.0034430   -1.2010952   -0.8057908
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.5199973   -0.6768687   -0.3631260
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed          -1.4509658   -1.6067691   -1.2951625
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -1.1113392   -1.3423601   -0.8803184
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3295938   -1.5307162   -1.1284713
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.3678909   -1.4792319   -1.2565500
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.3385375   -1.3778302   -1.2992447
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.1221872   -1.3106075   -0.9337670
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -1.9377118   -2.1783948   -1.6970288
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.1375191   -0.1212524    0.3962906
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -1.6012038   -1.8211893   -1.3812183
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -1.2457057   -1.4164397   -1.0749717
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed          -1.6770059   -1.8586360   -1.4953758
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -1.7882785   -1.9977951   -1.5787619
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.4554827   -2.7026251   -2.2083404
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.9293142   -2.1501096   -1.7085188
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -2.0192682   -2.0628644   -1.9756719
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.7153202   -1.8634373   -1.5672030


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -1.0949767   -1.2319917   -0.9579618
Birth       ki0047075b-MAL-ED     BRAZIL                         observed             observed          -0.6996491   -0.9856018   -0.4136965
Birth       ki0047075b-MAL-ED     INDIA                          observed             observed          -1.2075610   -1.5261540   -0.8889679
Birth       ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.8234615   -1.1896049   -0.4573182
Birth       ki0047075b-MAL-ED     PERU                           observed             observed          -0.8753812   -0.9932108   -0.7575515
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed          -0.5797000   -0.7788298   -0.3805702
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1086275   -1.3310338   -0.8862211
Birth       ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.0555240   -1.1550843   -0.9559638
Birth       kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.3843216   -1.4102231   -1.3584201
Birth       kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.6073276   -1.8105798   -1.4040753
6 months    ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -1.2248069   -1.3446487   -1.1049651
6 months    ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.0641266   -0.0913400    0.2195931
6 months    ki0047075b-MAL-ED     INDIA                          observed             observed          -1.2002063   -1.3275718   -1.0728409
6 months    ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.5628634   -0.6765658   -0.4491611
6 months    ki0047075b-MAL-ED     PERU                           observed             observed          -1.3153519   -1.4229629   -1.2077408
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed          -1.0665369   -1.1970117   -0.9360620
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.4030503   -1.5292443   -1.2768563
6 months    ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.3499849   -1.4387386   -1.2612312
6 months    kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.3470624   -1.3756620   -1.3184628
6 months    kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.1994318   -1.3808291   -1.0180345
24 months   ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -2.0021951   -2.1308572   -1.8735330
24 months   ki0047075b-MAL-ED     BRAZIL                         observed             observed          -0.0151974   -0.1917967    0.1614019
24 months   ki0047075b-MAL-ED     INDIA                          observed             observed          -1.8978960   -2.0332143   -1.7625777
24 months   ki0047075b-MAL-ED     NEPAL                          observed             observed          -1.3153636   -1.4359803   -1.1947469
24 months   ki0047075b-MAL-ED     PERU                           observed             observed          -1.7432323   -1.8646545   -1.6218102
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed          -1.6467544   -1.7856657   -1.5078431
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6763587   -2.8207363   -2.5319811
24 months   ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.8752995   -1.9688053   -1.7817937
24 months   kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -2.0239144   -2.0607740   -1.9870548
24 months   kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.7726490   -1.9111913   -1.6341067


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.1376669   -0.4024459    0.1271121
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.3491793    0.0164086    0.6819500
Birth       ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.4509113   -0.8976780   -0.0041446
Birth       ki0047075b-MAL-ED     NEPAL                          optimal              observed           0.0657568   -0.3942421    0.5257557
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed           0.0675897   -0.0413108    0.1764903
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.1250739   -0.4209023    0.1707545
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1589623   -0.1371958    0.4551203
Birth       ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0018727   -0.1095007    0.1057553
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0092734   -0.0442528    0.0257061
Birth       kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed           0.3654531    0.1614292    0.5694769
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed           0.0160483   -0.0613097    0.0934063
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.1313434   -0.2890133    0.0263266
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.1967634   -0.3571859   -0.0363408
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0428661   -0.1538640    0.0681318
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed           0.1356139    0.0314080    0.2398198
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.0448023   -0.1574231    0.2470278
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0734566   -0.2369939    0.0900808
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed           0.0179060   -0.0755465    0.1113586
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0085250   -0.0355494    0.0184995
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0772446   -0.1643772    0.0098880
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.0644833   -0.2602221    0.1312555
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.1527165   -0.3449994    0.0395664
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.2966922   -0.4763512   -0.1170332
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0696579   -0.1856364    0.0463206
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed          -0.0662264   -0.1856407    0.0531878
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.1415241   -0.0430797    0.3261279
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2208760   -0.4216994   -0.0200525
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed           0.0540147   -0.1375563    0.2455857
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0046462   -0.0301269    0.0208345
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0573288   -0.0962092   -0.0184485
