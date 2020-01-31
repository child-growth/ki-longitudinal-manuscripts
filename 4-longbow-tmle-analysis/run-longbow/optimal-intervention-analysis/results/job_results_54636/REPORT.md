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

agecat      studyid                    country                        predexfd6    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                72     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               133     205
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 6      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                54      60
Birth       ki0047075b-MAL-ED          INDIA                          1                 4      39
Birth       ki0047075b-MAL-ED          INDIA                          0                35      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                 3      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                21      24
Birth       ki0047075b-MAL-ED          PERU                           1                73     213
Birth       ki0047075b-MAL-ED          PERU                           0               140     213
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                90      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               113     113
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       ki1000108-IRC              INDIA                          1                 0      14
Birth       ki1000108-IRC              INDIA                          0                14      14
Birth       ki1000109-EE               PAKISTAN                       1                38      42
Birth       ki1000109-EE               PAKISTAN                       0                 4      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               346     364
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                18     364
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               159     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               380     539
Birth       ki1101329-Keneba           GAMBIA                         1               485    1403
Birth       ki1101329-Keneba           GAMBIA                         0               918    1403
Birth       ki1113344-GMS-Nepal        NEPAL                          1               419     563
Birth       ki1113344-GMS-Nepal        NEPAL                          0               144     563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             10466   13423
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2957   13423
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              2103    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               529    2632
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                84     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               147     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                30     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               179     209
6 months    ki0047075b-MAL-ED          INDIA                          1                11     218
6 months    ki0047075b-MAL-ED          INDIA                          0               207     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                12     225
6 months    ki0047075b-MAL-ED          NEPAL                          0               213     225
6 months    ki0047075b-MAL-ED          PERU                           1                92     271
6 months    ki0047075b-MAL-ED          PERU                           0               179     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               230     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               231     232
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
6 months    ki1000108-IRC              INDIA                          1                 0      14
6 months    ki1000108-IRC              INDIA                          0                14      14
6 months    ki1000109-EE               PAKISTAN                       1                43      48
6 months    ki1000109-EE               PAKISTAN                       0                 5      48
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               379     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               141     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               463     604
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7644    9901
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2257    9901
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3328    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               944    4272
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                76     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               129     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                25     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               144     169
24 months   ki0047075b-MAL-ED          INDIA                          1                11     209
24 months   ki0047075b-MAL-ED          INDIA                          0               198     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                12     219
24 months   ki0047075b-MAL-ED          NEPAL                          0               207     219
24 months   ki0047075b-MAL-ED          PERU                           1                68     201
24 months   ki0047075b-MAL-ED          PERU                           0               133     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 3     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               213     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               201     202
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                19      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      19
24 months   ki1000108-IRC              INDIA                          1                 0      14
24 months   ki1000108-IRC              INDIA                          0                14      14
24 months   ki1000109-EE               PAKISTAN                       1                20      23
24 months   ki1000109-EE               PAKISTAN                       0                 3      23
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               137     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               441     578
24 months   ki1101329-Keneba           GAMBIA                         1               515    1513
24 months   ki1101329-Keneba           GAMBIA                         0               998    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          1               356     470
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     470
24 months   ki1148112-LCNI-5           MALAWI                         1                34     189
24 months   ki1148112-LCNI-5           MALAWI                         0               155     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3926    5088
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1162    5088
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3292    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               907    4199


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
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/9fbc2f8a-6700-4ab8-a23a-ffa291fb3227/b2be8d4f-043a-49b2-aa3a-10575d3235b0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -1.0265774   -1.2157047   -0.8374501
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.6588000   -0.9595518   -0.3580482
Birth       ki0047075b-MAL-ED         PERU         optimal              observed          -0.8310569   -0.9909907   -0.6711232
Birth       ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -1.5394402   -1.8299178   -1.2489627
Birth       ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.8687357   -0.9548076   -0.7826638
Birth       ki1101329-Keneba          GAMBIA       optimal              observed           0.0332351   -0.0584172    0.1248874
Birth       ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.1217596   -1.2346611   -1.0088580
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.6010995   -1.6341366   -1.5680624
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.5086007   -1.5614412   -1.4557601
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -1.1549793   -1.3356672   -0.9742915
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.0116110   -0.3952013    0.4184234
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed          -1.1876229   -1.3084343   -1.0668114
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.6439581   -1.0313496   -0.2565667
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -1.3071274   -1.4785075   -1.1357472
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -0.8066467   -2.2335630    0.6202696
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -1.4877061   -1.6531098   -1.3223023
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.1619519   -1.2748754   -1.0490283
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.8831550   -0.9686925   -0.7976175
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.2943362   -1.3936711   -1.1950014
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed          -1.7045276   -1.8435858   -1.5654694
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.3118960   -1.3467111   -1.2770808
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.3315006   -1.3807523   -1.2822489
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -2.0253516   -2.1834909   -1.8672123
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.1723384   -0.5071028    0.1624260
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -1.8032116   -1.9447792   -1.6616440
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -1.3047416   -1.4302574   -1.1792258
24 months   ki0047075b-MAL-ED         PERU         optimal              observed          -1.8441388   -2.0042978   -1.6839798
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.5409667   -1.6473134   -1.4346201
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -1.5138450   -1.5964412   -1.4312489
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.9774384   -2.1505443   -1.8043325
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed          -2.1046146   -2.2606008   -1.9486284
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -2.0045089   -2.0552043   -1.9538136
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.7905573   -1.8409146   -1.7402001


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.0530244   -1.1913751   -0.9146736
Birth       ki0047075b-MAL-ED         BRAZIL       observed             observed          -0.6963333   -0.9881882   -0.4044785
Birth       ki0047075b-MAL-ED         PERU         observed             observed          -0.9065728   -1.0297267   -0.7834188
Birth       ki1000304b-SAS-CompFeed   INDIA        observed             observed          -1.3937088   -1.5095039   -1.2779137
Birth       ki1017093b-PROVIDE        BANGLADESH   observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba          GAMBIA       observed             observed           0.0126443   -0.0554367    0.0807254
Birth       ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.0641208   -1.1525364   -0.9757052
Birth       kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.5955338   -1.6186322   -1.5724354
Birth       kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.5273138   -1.5765339   -1.4780937
6 months    ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.1900794   -1.3096296   -1.0705291
6 months    ki0047075b-MAL-ED         BRAZIL       observed             observed           0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED         INDIA        observed             observed          -1.2188303   -1.3423090   -1.0953516
6 months    ki0047075b-MAL-ED         NEPAL        observed             observed          -0.5622370   -0.6774081   -0.4470660
6 months    ki0047075b-MAL-ED         PERU         observed             observed          -1.3220326   -1.4308168   -1.2132484
6 months    ki1000109-EE              PAKISTAN     observed             observed          -2.1595486   -2.5331781   -1.7859192
6 months    ki1000304b-SAS-CompFeed   INDIA        observed             observed          -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH   observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1101329-Keneba          GAMBIA       observed             observed          -0.9331108   -0.9823173   -0.8839043
6 months    ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.3540280   -1.4334801   -1.2745760
6 months    ki1148112-LCNI-5          MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.3138259   -1.3418712   -1.2857806
6 months    kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.3482303   -1.3866421   -1.3098185
24 months   ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.9576341   -2.0857597   -1.8295086
24 months   ki0047075b-MAL-ED         BRAZIL       observed             observed           0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED         INDIA        observed             observed          -1.8863397   -2.0168508   -1.7558287
24 months   ki0047075b-MAL-ED         NEPAL        observed             observed          -1.3187671   -1.4406685   -1.1968657
24 months   ki0047075b-MAL-ED         PERU         observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   ki1017093b-PROVIDE        BANGLADESH   observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba          GAMBIA       observed             observed          -1.5876293   -1.6406755   -1.5345831
24 months   ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.9002128   -1.9869255   -1.8135001
24 months   ki1148112-LCNI-5          MALAWI       observed             observed          -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -2.0118003   -2.0479952   -1.9756055
24 months   kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.7914765   -1.8297816   -1.7531715


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.0264470   -0.1845909    0.1316969
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.0375333   -0.1535793    0.0785127
Birth       ki0047075b-MAL-ED         PERU         optimal              observed          -0.0755159   -0.1902982    0.0392665
Birth       ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.1457314   -0.0954388    0.3869016
Birth       ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.0163663   -0.0633465    0.0306139
Birth       ki1101329-Keneba          GAMBIA       optimal              observed          -0.0205908   -0.0848738    0.0436922
Birth       ki1113344-GMS-Nepal       NEPAL        optimal              observed           0.0576388   -0.0309148    0.1461923
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed           0.0055657   -0.0177941    0.0289255
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0187132   -0.0474563    0.0100299
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.0351000   -0.1801456    0.1099455
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.0359647   -0.3321430    0.4040725
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed          -0.0312074   -0.0784638    0.0160490
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed           0.0817211   -0.2786740    0.4421161
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -0.0149052   -0.1619973    0.1321868
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -1.3529019   -2.7255004    0.0196966
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.0179824   -0.0394213    0.0753861
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.0702604   -0.0268790    0.1673997
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.0499558   -0.1211417    0.0212300
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0596918   -0.1187633   -0.0006202
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed           0.0649320   -0.0106947    0.1405587
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0019299   -0.0212248    0.0173650
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0167297   -0.0504091    0.0169496
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.0677175   -0.0513469    0.1867818
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.1784528   -0.1013270    0.4582326
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -0.0831281   -0.1428202   -0.0234360
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.0140255   -0.0432814    0.0152303
24 months   ki0047075b-MAL-ED         PERU         optimal              observed           0.0916678   -0.0174279    0.2007635
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.0614554   -0.1287647    0.0058538
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.0737843   -0.1409710   -0.0065975
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed           0.0772256   -0.0625881    0.2170393
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed           0.1394823    0.0477615    0.2312031
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0072914   -0.0389971    0.0244143
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0009192   -0.0324122    0.0305738
