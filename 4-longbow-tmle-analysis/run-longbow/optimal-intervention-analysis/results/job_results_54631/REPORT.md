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

**Intervention Variable:** predfeed6

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

agecat      studyid                    country                        predfeed6    n_cell       n
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
Birth       ki1000109-EE               PAKISTAN                       1                38      42
Birth       ki1000109-EE               PAKISTAN                       0                 4      42
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
6 months    ki1000109-EE               PAKISTAN                       1                43      48
6 months    ki1000109-EE               PAKISTAN                       0                 5      48
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
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
24 months   ki1000109-EE               PAKISTAN                       1                20      23
24 months   ki1000109-EE               PAKISTAN                       0                 3      23
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/05173a79-1d11-4b4d-b948-9ad7d3f56943/5595d77d-a44b-4373-850b-82f3db8c22d2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.9569311   -1.1394294   -0.7744328
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.8964507   -1.2874485   -0.5054529
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.8114503   -0.9503542   -0.6725463
Birth       ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.0955401   -1.2148764   -0.9762039
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.5931007   -1.6261500   -1.5600514
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.5086551   -1.5613778   -1.4559323
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.0481607   -1.2156630   -0.8806585
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.0546768   -0.4713188    0.3619652
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -1.1896248   -1.3105038   -1.0687457
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.7389639   -1.0224176   -0.4555101
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -1.2541186   -1.4115287   -1.0967086
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.8201776   -2.2329636    0.5926083
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.3367427   -1.4369094   -1.2365760
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -1.5270590   -1.7148593   -1.3392588
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.3083664   -1.3388033   -1.2779296
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.3192517   -1.3717101   -1.2667932
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.9227683   -2.0674675   -1.7780691
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.4612420   -0.7874877   -0.1349963
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -1.8468549   -1.9785089   -1.7152009
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -1.4290533   -1.6916391   -1.1664675
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -1.7449418   -1.9341023   -1.5557812
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.9367755   -2.0871009   -1.7864501
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -1.9506523   -2.1095818   -1.7917227
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.9905365   -2.0338305   -1.9472426
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.7969211   -1.8502672   -1.7435751


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.0530244   -1.1913751   -0.9146736
Birth       ki0047075b-MAL-ED     BRAZIL       observed             observed          -0.6963333   -0.9881882   -0.4044785
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.9065728   -1.0297267   -0.7834188
Birth       ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.0641208   -1.1525364   -0.9757052
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.5955338   -1.6186322   -1.5724354
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.5273138   -1.5765339   -1.4780937
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.1900794   -1.3096296   -1.0705291
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -1.2188303   -1.3423090   -1.0953516
6 months    ki0047075b-MAL-ED     NEPAL        observed             observed          -0.5622370   -0.6774081   -0.4470660
6 months    ki0047075b-MAL-ED     PERU         observed             observed          -1.3220326   -1.4308168   -1.2132484
6 months    ki1000109-EE          PAKISTAN     observed             observed          -2.1595486   -2.5331781   -1.7859192
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.3540280   -1.4334801   -1.2745760
6 months    ki1148112-LCNI-5      MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.3138259   -1.3418712   -1.2857806
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.3482303   -1.3866421   -1.3098185
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.9576341   -2.0857597   -1.8295086
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -1.8863397   -2.0168508   -1.7558287
24 months   ki0047075b-MAL-ED     NEPAL        observed             observed          -1.3187671   -1.4406685   -1.1968657
24 months   ki0047075b-MAL-ED     PERU         observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.9002128   -1.9869255   -1.8135001
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -2.0118003   -2.0479952   -1.9756055
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.7914765   -1.8297816   -1.7531715


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0960933   -0.2469212    0.0547346
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.2001173   -0.0157736    0.4160082
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.0951225   -0.2058196    0.0155746
Birth       ki1113344-GMS-Nepal   NEPAL        optimal              observed           0.0314194   -0.0609996    0.1238384
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0024331   -0.0258694    0.0210032
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0186588   -0.0488549    0.0115373
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.1419186   -0.2848875    0.0010503
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.1022526   -0.2723621    0.4768672
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0292055   -0.0756282    0.0172172
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed           0.1767268   -0.0803729    0.4338266
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -0.0679140   -0.1982319    0.0624039
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -1.3393710   -2.6960186    0.0172767
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0172853   -0.0761788    0.0416081
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -0.1125366   -0.2531208    0.0280477
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0054594   -0.0174113    0.0064924
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0289787   -0.0680397    0.0100824
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0348658   -0.1385132    0.0687815
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.4673564    0.1466323    0.7880805
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0394848   -0.0786231   -0.0003465
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed           0.1102862   -0.1160623    0.3366347
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -0.0075292   -0.1536814    0.1386229
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed           0.0365627   -0.0861978    0.1593233
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -0.0144800   -0.0753347    0.0463747
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0212638   -0.0483597    0.0058321
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed           0.0054446   -0.0315153    0.0424044
