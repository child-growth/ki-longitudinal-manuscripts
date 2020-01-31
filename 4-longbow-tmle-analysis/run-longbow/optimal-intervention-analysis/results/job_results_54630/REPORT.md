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
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1             12017   13276
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0              1259   13276
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
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1              8516    9328
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0               812    9328
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
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1              4434    4852
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0               418    4852
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
![](/tmp/03cbf41a-3eb4-4e5e-87a2-d33265339328/c5c3fc88-46f5-4ce8-8cd9-3489bea46839/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.9212114   -1.1993491   -0.6430737
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.6266112   -1.0189087   -0.2343136
Birth       ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.7976676   -1.2177586   -0.3775766
Birth       ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.8018505   -1.3382948   -0.2654062
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed          -0.8861324   -1.0519401   -0.7203246
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.4891985   -0.8518970   -0.1265001
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0875593   -1.3543077   -0.8208108
Birth       ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.0863699   -1.2246917   -0.9480480
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.5960466   -1.6407210   -1.5513722
Birth       kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.7881716   -2.3188439   -1.2574993
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -1.1804379   -1.3059163   -1.0549596
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.2174084    0.0039176    0.4308992
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.9689763   -1.1434998   -0.7944528
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.4930453   -0.6582298   -0.3278609
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed          -1.3592273   -1.5177515   -1.2007031
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -1.1703244   -1.4247608   -0.9158880
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2968621   -1.4911150   -1.1026091
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.3436202   -1.4874546   -1.1997859
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -1.3189202   -1.3482713   -1.2895691
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.1285587   -1.3180326   -0.9390848
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -1.9763492   -2.1904997   -1.7621987
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed           0.2012176   -0.0643635    0.4667988
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -1.6035316   -1.8401670   -1.3668963
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -1.2355913   -1.4099798   -1.0612029
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed          -1.6841365   -1.8460371   -1.5222359
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -1.8458664   -2.0434161   -1.6483167
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5335327   -2.7652751   -2.3017903
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -1.8387736   -2.0701453   -1.6074019
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -2.0063590   -2.0535583   -1.9591597
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -1.7155017   -1.8629703   -1.5680332


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
Birth       kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.5928457   -1.6158667   -1.5698248
Birth       kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.6073276   -1.8105798   -1.4040753
6 months    ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -1.2242918   -1.3439424   -1.1046413
6 months    ki0047075b-MAL-ED     BRAZIL                         observed             observed           0.0609091   -0.0944768    0.2162950
6 months    ki0047075b-MAL-ED     INDIA                          observed             observed          -1.2002381   -1.3274929   -1.0729833
6 months    ki0047075b-MAL-ED     NEPAL                          observed             observed          -0.5634068   -0.6769687   -0.4498449
6 months    ki0047075b-MAL-ED     PERU                           observed             observed          -1.3108735   -1.4182407   -1.2035062
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed          -1.0662227   -1.1965862   -0.9358591
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.4030503   -1.5292443   -1.2768563
6 months    ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.3499849   -1.4387386   -1.2612312
6 months    kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -1.3240051   -1.3526414   -1.2953689
6 months    kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.1994318   -1.3808291   -1.0180345
24 months   ki0047075b-MAL-ED     BANGLADESH                     observed             observed          -2.0016585   -2.1303297   -1.8729874
24 months   ki0047075b-MAL-ED     BRAZIL                         observed             observed          -0.0162939   -0.1929098    0.1603221
24 months   ki0047075b-MAL-ED     INDIA                          observed             observed          -1.8994059   -2.0346781   -1.7641337
24 months   ki0047075b-MAL-ED     NEPAL                          observed             observed          -1.3109318   -1.4313748   -1.1904888
24 months   ki0047075b-MAL-ED     PERU                           observed             observed          -1.7412963   -1.8630698   -1.6195228
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   observed             observed          -1.6424525   -1.7808926   -1.5040124
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6768207   -2.8213178   -2.5323235
24 months   ki1113344-GMS-Nepal   NEPAL                          observed             observed          -1.8752995   -1.9688053   -1.7817937
24 months   kiGH5241-JiVitA-3     BANGLADESH                     observed             observed          -2.0187325   -2.0554682   -1.9819968
24 months   kiGH5241-JiVitA-4     BANGLADESH                     observed             observed          -1.7726490   -1.9111913   -1.6341067


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.1737653   -0.4338087    0.0862780
Birth       ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.0730380   -0.3761621    0.2300862
Birth       ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.4098934   -0.8380898    0.0183030
Birth       ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0216110   -0.4246383    0.3814163
Birth       ki0047075b-MAL-ED     PERU                           optimal              observed           0.0107512   -0.0961788    0.1176812
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed          -0.0905015   -0.3903923    0.2093894
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0210682   -0.1454755    0.1033392
Birth       ki1113344-GMS-Nepal   NEPAL                          optimal              observed           0.0308458   -0.0840085    0.1457002
Birth       kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed           0.0032009   -0.0355929    0.0419947
Birth       kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed           0.1808440   -0.2810344    0.6427224
6 months    ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.0438539   -0.1072515    0.0195436
6 months    ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.1564993   -0.3144675    0.0014690
6 months    ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.2312618   -0.3778562   -0.0846674
6 months    ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0703614   -0.1849081    0.0441853
6 months    ki0047075b-MAL-ED     PERU                           optimal              observed           0.0483538   -0.0509552    0.1476629
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.1041017   -0.1146327    0.3228361
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1061882   -0.2646318    0.0522553
6 months    ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0063646   -0.1250239    0.1122946
6 months    kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0050850   -0.0130392    0.0028693
6 months    kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0708731   -0.1565470    0.0148007
24 months   ki0047075b-MAL-ED     BANGLADESH                     optimal              observed          -0.0253093   -0.1962282    0.1456096
24 months   ki0047075b-MAL-ED     BRAZIL                         optimal              observed          -0.2175115   -0.4156498   -0.0193732
24 months   ki0047075b-MAL-ED     INDIA                          optimal              observed          -0.2958743   -0.4960108   -0.0957378
24 months   ki0047075b-MAL-ED     NEPAL                          optimal              observed          -0.0753405   -0.1950139    0.0443329
24 months   ki0047075b-MAL-ED     PERU                           optimal              observed          -0.0571598   -0.1745742    0.0602546
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   optimal              observed           0.2034139    0.0345820    0.3722458
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1432880   -0.3219464    0.0353704
24 months   ki1113344-GMS-Nepal   NEPAL                          optimal              observed          -0.0365259   -0.2472135    0.1741616
24 months   kiGH5241-JiVitA-3     BANGLADESH                     optimal              observed          -0.0123735   -0.0428980    0.0181511
24 months   kiGH5241-JiVitA-4     BANGLADESH                     optimal              observed          -0.0571473   -0.0961948   -0.0180998
