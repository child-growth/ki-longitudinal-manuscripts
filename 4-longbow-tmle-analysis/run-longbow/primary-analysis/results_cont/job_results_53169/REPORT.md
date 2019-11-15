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
![](/tmp/a9533c62-aba2-4c57-8435-2ec40f4be8ec/a2ce8187-9163-42cd-b649-83ee54a1dd4d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a9533c62-aba2-4c57-8435-2ec40f4be8ec/a2ce8187-9163-42cd-b649-83ee54a1dd4d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a9533c62-aba2-4c57-8435-2ec40f4be8ec/a2ce8187-9163-42cd-b649-83ee54a1dd4d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.1352586   -1.2897991   -0.9807181
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.0182021   -1.3122427   -0.7241614
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.6108427   -1.0472838   -0.1744017
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    NA                -0.7755490   -1.1614956   -0.3896024
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                -1.3499569   -1.7633443   -0.9365696
Birth       ki0047075b-MAL-ED     INDIA                          0                    NA                -0.5785425   -0.9737785   -0.1833065
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.9335419   -1.3112760   -0.5558078
Birth       ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.7088895   -1.3732447   -0.0445342
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                -0.8819000   -1.0185470   -0.7452531
Birth       ki0047075b-MAL-ED     PERU                           0                    NA                -0.8624778   -1.0386567   -0.6862989
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.3935422   -0.7474136   -0.0396708
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -0.6204833   -0.8692723   -0.3716943
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.1834728   -1.5930080   -0.7739375
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.0715610   -1.3376039   -0.8055182
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.0247289   -1.1318262   -0.9176316
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.1742412   -1.4398328   -0.9086497
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.5901667   -1.6138216   -1.5665119
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.6151041   -1.6699953   -1.5602128
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.5782245   -1.7806964   -1.3757527
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -2.0158033   -2.8331271   -1.1984794
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.1751097   -1.2986536   -1.0515659
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -1.4522721   -1.7889330   -1.1156112
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0569795   -0.2844104    0.1704514
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.1793488   -0.0334796    0.3921773
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                -1.2285706   -1.3773417   -1.0797995
6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                -1.1492020   -1.3917118   -0.9066922
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.6071781   -0.7716075   -0.4427487
6 months    ki0047075b-MAL-ED     NEPAL                          0                    NA                -0.5168229   -0.6738101   -0.3598357
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -1.2852073   -1.4133138   -1.1571008
6 months    ki0047075b-MAL-ED     PERU                           0                    NA                -1.3641216   -1.5544678   -1.1737753
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -1.0496126   -1.3177914   -0.7814339
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -1.0867144   -1.2385944   -0.9348343
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.3420562   -1.5493525   -1.1347600
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.4240237   -1.5789885   -1.2690589
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.3290587   -1.4237462   -1.2343711
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.4498247   -1.6920056   -1.2076439
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -1.3200043   -1.3492222   -1.2907864
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -1.3644615   -1.4489470   -1.2799760
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.1269613   -1.3154986   -0.9384240
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -1.7631183   -2.4048530   -1.1213837
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -1.9918274   -2.1386213   -1.8450336
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    NA                -2.0901865   -2.3457426   -1.8346303
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.2434826   -0.4824166   -0.0045485
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    NA                 0.2095271   -0.0529581    0.4720123
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -2.0158209   -2.1711472   -1.8604945
24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                -1.6753974   -1.9265077   -1.4242871
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -1.3874026   -1.5541613   -1.2206440
24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                -1.2205962   -1.3955016   -1.0456909
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -1.7304702   -1.8764198   -1.5845206
24 months   ki0047075b-MAL-ED     PERU                           0                    NA                -1.8511569   -2.0690806   -1.6332331
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -1.6629601   -1.9029106   -1.4230096
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                -1.6547637   -1.8213625   -1.4881648
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.5588833   -2.8001049   -2.3176616
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.7382517   -2.9167454   -2.5597580
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -1.8830151   -1.9845893   -1.7814410
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                -1.8160393   -2.0518221   -1.5802565
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -2.0052595   -2.0430628   -1.9674561
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                -2.1540573   -2.2578222   -2.0502924
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -1.7129179   -1.8607326   -1.5651031
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    NA                -2.1818493   -2.4538637   -1.9098348


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
Birth       kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.5928457   -1.6158667   -1.5698248
Birth       kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.6073276   -1.8105798   -1.4040753
6 months    ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -1.2242918   -1.3439424   -1.1046413
6 months    ki0047075b-MAL-ED     BRAZIL                         NA                   NA                 0.0609091   -0.0944768    0.2162950
6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.2002381   -1.3274929   -1.0729833
6 months    ki0047075b-MAL-ED     NEPAL                          NA                   NA                -0.5634068   -0.6769687   -0.4498449
6 months    ki0047075b-MAL-ED     PERU                           NA                   NA                -1.3108735   -1.4182407   -1.2035062
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -1.0662227   -1.1965862   -0.9358591
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.4030503   -1.5292443   -1.2768563
6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.3499849   -1.4387386   -1.2612312
6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -1.3240051   -1.3526414   -1.2953689
6 months    kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.1994318   -1.3808291   -1.0180345
24 months   ki0047075b-MAL-ED     BANGLADESH                     NA                   NA                -2.0016585   -2.1303297   -1.8729874
24 months   ki0047075b-MAL-ED     BRAZIL                         NA                   NA                -0.0162939   -0.1929098    0.1603221
24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                -1.8994059   -2.0346781   -1.7641337
24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                -1.3109318   -1.4313748   -1.1904888
24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                -1.7412963   -1.8630698   -1.6195228
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                -1.6424525   -1.7808926   -1.5040124
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6768207   -2.8213178   -2.5323235
24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                -1.8752995   -1.9688053   -1.7817937
24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                -2.0187325   -2.0554682   -1.9819968
24 months   kiGH5241-JiVitA-4     BANGLADESH                     NA                   NA                -1.7726490   -1.9111913   -1.6341067


### Parameter: ATE


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH                     0                    1                  0.1170565   -0.2159353    0.4500483
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     BRAZIL                         0                    1                 -0.1647063   -0.7558075    0.4263950
Birth       ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     INDIA                          0                    1                  0.7714145    0.1890925    1.3537364
Birth       ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     NEPAL                          0                    1                  0.2246525   -0.5338207    0.9831257
Birth       ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     PERU                           0                    1                  0.0194222   -0.1780744    0.2169189
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.2269411   -0.6634809    0.2095986
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1119118   -0.3793626    0.6031861
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.1495123   -0.4361653    0.1371407
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0249373   -0.0803499    0.0304753
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.4375787   -1.2577989    0.3826415
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.2771624   -0.6286216    0.0742968
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.2363284   -0.0751534    0.5478101
6 months    ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     INDIA                          0                    1                  0.0793686   -0.2067762    0.3655134
6 months    ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     NEPAL                          0                    1                  0.0903552   -0.1376579    0.3183684
6 months    ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     PERU                           0                    1                 -0.0789142   -0.3063736    0.1485451
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 -0.0371018   -0.3459197    0.2717162
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0819675   -0.3385094    0.1745745
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 -0.1207661   -0.3795511    0.1380189
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.0444572   -0.1299354    0.0410211
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.6361570   -1.3084485    0.0361344
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1                 -0.0983590   -0.3919655    0.1952475
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1                  0.4530097    0.0945161    0.8115032
24 months   ki0047075b-MAL-ED     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     INDIA                          0                    1                  0.3404235    0.0473606    0.6334863
24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                  0.1668064   -0.0758174    0.4094302
24 months   ki0047075b-MAL-ED     PERU                           1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     PERU                           0                    1                 -0.1206867   -0.3803535    0.1389802
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                  0.0081965   -0.2848687    0.3012617
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1793684   -0.4794857    0.1207489
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                  0.0669758   -0.1884241    0.3223757
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 -0.1487979   -0.2558152   -0.0417805
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1                 -0.4689314   -0.7777309   -0.1601319


### Parameter: PAR


agecat      studyid               country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH                     1                    NA                 0.0402818   -0.0207996    0.1013633
Birth       ki0047075b-MAL-ED     BRAZIL                         1                    NA                -0.0888064   -0.4274959    0.2498832
Birth       ki0047075b-MAL-ED     INDIA                          1                    NA                 0.1423960   -0.0528241    0.3376161
Birth       ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.1100804   -0.2452620    0.4654227
Birth       ki0047075b-MAL-ED     PERU                           1                    NA                 0.0065189   -0.0577151    0.0707528
Birth       ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.1861578   -0.4838721    0.1115565
Birth       ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0748453   -0.2918036    0.4414943
Birth       ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0307951   -0.0796850    0.0180947
Birth       kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0026790   -0.0079484    0.0025904
Birth       kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0291030   -0.0996004    0.0413943
6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0491821   -0.1104324    0.0120681
6 months    ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.1178886   -0.0401034    0.2758806
6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0283325   -0.0559169    0.1125819
6 months    ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0437714   -0.0710917    0.1586345
6 months    ki0047075b-MAL-ED     PERU                           1                    NA                -0.0256661   -0.1043307    0.0529984
6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                -0.0166101   -0.2560323    0.2228122
6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0609941   -0.2408504    0.1188623
6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0209262   -0.0635897    0.0217373
6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0040008   -0.0114979    0.0034963
6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0724705   -0.1599359    0.0149948
24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    NA                -0.0098311   -0.0614205    0.0417583
24 months   ki0047075b-MAL-ED     BRAZIL                         1                    NA                 0.2271887    0.0507528    0.4036246
24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.1164149    0.0211546    0.2116753
24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                 0.0764708   -0.0449582    0.1978998
24 months   ki0047075b-MAL-ED     PERU                           1                    NA                -0.0108261   -0.0983041    0.0766520
24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0205077   -0.2029675    0.2439828
24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1179374   -0.3304434    0.0945687
24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0077156   -0.0327258    0.0481571
24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                -0.0134730   -0.0230038   -0.0039422
24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    NA                -0.0597312   -0.0993996   -0.0200627
