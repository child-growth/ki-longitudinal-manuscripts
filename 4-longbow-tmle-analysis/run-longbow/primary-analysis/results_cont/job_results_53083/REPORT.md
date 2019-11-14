---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
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







# Results Detail

## Results Plots
![](/tmp/5bbd33bb-4fd0-4038-a3d4-0e61e41c72ad/de067f88-e84f-4e2f-acd1-a9d38d119b3f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5bbd33bb-4fd0-4038-a3d4-0e61e41c72ad/de067f88-e84f-4e2f-acd1-a9d38d119b3f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5bbd33bb-4fd0-4038-a3d4-0e61e41c72ad/de067f88-e84f-4e2f-acd1-a9d38d119b3f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.1284297   -1.2831133   -0.9737461
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -0.9564913   -1.2521455   -0.6608372
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.6439460   -1.0949433   -0.1929487
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.7398143   -1.1191494   -0.3604792
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                -1.4397968   -1.8436488   -1.0359449
Birth       ki0047075b-MAL-ED     INDIA                          0                    NA                -1.0131448   -1.4372998   -0.5889897
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.9644282   -1.3662527   -0.5626037
Birth       ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.6766050   -1.3447022   -0.0085078
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.8826425   -1.0185550   -0.7467299
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                -0.8574188   -1.0319979   -0.6828396
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.4629341   -0.8218805   -0.1039878
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.6373935   -0.8856409   -0.3891462
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.0603285   -1.4838506   -0.6368064
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0655073   -1.3343110   -0.7967036
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.0281167   -1.1351039   -0.9211296
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.2395263   -1.5060737   -0.9729788
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.3806717   -1.4068198   -1.3545235
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.4160658   -1.4788337   -1.3532979
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.5623716   -1.7646655   -1.3600777
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.1781015   -1.9049230   -0.4512800
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.1842414   -1.3096336   -1.0588491
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.4225579   -1.7838717   -1.0612442
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0768465   -0.3009884    0.1472954
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.2023350   -0.0123880    0.4170579
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -1.2264398   -1.3775187   -1.0753609
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -1.1190599   -1.3594498   -0.8786699
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.6067403   -0.7700518   -0.4434289
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.5192346   -0.6742110   -0.3642582
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -1.2947646   -1.4246252   -1.1649041
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                -1.3530090   -1.5478796   -1.1581384
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -1.0425524   -1.3304932   -0.7546117
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -1.0943841   -1.2488149   -0.9399533
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3305665   -1.5346295   -1.1265035
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4306479   -1.5852416   -1.2760542
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.3271807   -1.4220627   -1.2322986
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.4540894   -1.6919429   -1.2162359
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.3429709   -1.3721448   -1.3137971
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.3901263   -1.4753025   -1.3049500
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.1254506   -1.3123303   -0.9385709
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.7666185   -2.4490077   -1.0842294
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.9924792   -2.1402066   -1.8447518
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.9671985   -2.2239964   -1.7104006
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.2038150   -0.4387766    0.0311467
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.2110056   -0.0516404    0.4736517
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -2.0243174   -2.1810012   -1.8676337
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -1.6355712   -1.8831364   -1.3880060
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -1.4013367   -1.5659955   -1.2366778
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -1.2441179   -1.4167277   -1.0715082
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -1.7155577   -1.8596145   -1.5715009
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                -1.8271879   -2.0380476   -1.6163282
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -1.6685615   -1.8996018   -1.4375212
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -1.6483792   -1.8149714   -1.4817870
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5629561   -2.8020990   -2.3238132
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.7364895   -2.9148159   -2.5581631
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.8840199   -1.9857333   -1.7823065
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.8170968   -2.0439990   -1.5901945
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -2.0106968   -2.0486746   -1.9727189
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -2.1573121   -2.2598361   -2.0547882
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.7174170   -1.8655040   -1.5693300
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -2.3833711   -2.7062824   -2.0604598


### Parameter: E(Y)


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.0949767   -1.2319917   -0.9579618
Birth       ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.6996491   -0.9856018   -0.4136965
Birth       ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.2075610   -1.5261540   -0.8889679
Birth       ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.8234615   -1.1896049   -0.4573182
Birth       ki0047075b-MAL-ED     PERU                           NA                   NA                -0.8753812   -0.9932108   -0.7575515
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -0.5797000   -0.7788298   -0.3805702
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1086275   -1.3310338   -0.8862211
Birth       ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.0555240   -1.1550843   -0.9559638
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.3843216   -1.4102231   -1.3584201
Birth       kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.6073276   -1.8105798   -1.4040753
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.2248069   -1.3446487   -1.1049651
6 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0641266   -0.0913400    0.2195931
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.2002063   -1.3275718   -1.0728409
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.5628634   -0.6765658   -0.4491611
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                -1.3153519   -1.4229629   -1.2077408
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -1.0665369   -1.1970117   -0.9360620
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.4030503   -1.5292443   -1.2768563
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.3499849   -1.4387386   -1.2612312
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.3470624   -1.3756620   -1.3184628
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.1994318   -1.3808291   -1.0180345
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -2.0021951   -2.1308572   -1.8735330
24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.0151974   -0.1917967    0.1614019
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.8978960   -2.0332143   -1.7625777
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -1.3153636   -1.4359803   -1.1947469
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -1.7432323   -1.8646545   -1.6218102
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -1.6467544   -1.7856657   -1.5078431
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6763587   -2.8207363   -2.5319811
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.8752995   -1.9688053   -1.7817937
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -2.0239144   -2.0607740   -1.9870548
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.7726490   -1.9111913   -1.6341067


### Parameter: ATE


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.1719384   -0.1617671    0.5056438
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.0958683   -0.6853719    0.4936353
Birth       ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     INDIA                          0                    1                  0.4266521   -0.1725224    1.0258266
Birth       ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     NEPAL                          0                    1                  0.2878232   -0.4999148    1.0755612
Birth       ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                  0.0252237   -0.1707678    0.2212152
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.1744594   -0.6126604    0.2637415
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0051788   -0.5090342    0.4986766
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.2114095   -0.4987287    0.0759096
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0353941   -0.0967298    0.0259416
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    1                  0.3842701   -0.3480352    1.1165754
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.2383166   -0.6217615    0.1451284
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.2791814   -0.0314524    0.5898153
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                  0.1073799   -0.1770309    0.3917907
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0875057   -0.1366183    0.3116296
6 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                 -0.0582444   -0.2925427    0.1760539
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.0518317   -0.3799066    0.2762433
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1000814   -0.3534585    0.1532957
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.1269087   -0.3824782    0.1286607
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0471553   -0.1333141    0.0390035
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.6411679   -1.3448499    0.0625141
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.0252807   -0.2719976    0.3225590
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.4148206    0.0599129    0.7697283
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.3887462    0.0952843    0.6822082
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.1572187   -0.0783128    0.3927503
24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                 -0.1116302   -0.3623694    0.1391090
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0201823   -0.2634040    0.3037687
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1735334   -0.4726255    0.1255587
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0669231   -0.1794625    0.3133088
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.1466154   -0.2525586   -0.0406721
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.6659541   -1.0216773   -0.3102309


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0334529   -0.0266469    0.0935527
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0557031   -0.4000830    0.2886768
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                 0.2322359    0.0269935    0.4374782
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.1409667   -0.2352275    0.5171609
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.0072613   -0.0567307    0.0712533
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1167659   -0.4137104    0.1801786
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0482990   -0.4287258    0.3321278
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0274073   -0.0762585    0.0214439
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0036499   -0.0093748    0.0020750
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0449560   -0.1189956    0.0290836
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0405655   -0.1058686    0.0247376
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.1409731   -0.0155486    0.2974947
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0262334   -0.0588430    0.1113099
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0438769   -0.0700054    0.1577592
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0205872   -0.1013166    0.0601422
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0239844   -0.2836322    0.2356633
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0724838   -0.2504425    0.1054749
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0228042   -0.0659980    0.0203895
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0040915   -0.0116023    0.0034193
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0739812   -0.1573554    0.0093930
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0097159   -0.0620331    0.0426013
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.1886176    0.0165948    0.3606404
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.1264214    0.0284458    0.2243970
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0859730   -0.0329214    0.2048674
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0276746   -0.1118000    0.0564508
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0218071   -0.1921981    0.2358124
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1134026   -0.3251143    0.0983091
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0087204   -0.0311199    0.0485607
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0132176   -0.0226775   -0.0037577
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0552320   -0.0939076   -0.0165564
