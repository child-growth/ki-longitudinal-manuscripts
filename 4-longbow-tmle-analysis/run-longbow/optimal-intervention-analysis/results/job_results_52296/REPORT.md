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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             12323   15793
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              3470   15793
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7624    9877
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2253    9877
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3897    5048
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1151    5048
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
![](/tmp/a34c7f02-8a5b-4c28-924c-afe26085b673/5ebc37b5-647f-4e47-825a-eba25019c00c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.0630394   -1.2650023   -0.8610764
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.6593115   -0.9568363   -0.3617866
Birth       ki0047075b-MAL-ED     PERU         optimal              observed          -0.9164629   -1.0651064   -0.7678193
Birth       ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.0832154   -1.1991557   -0.9672750
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.2074622   -1.2506469   -1.1642776
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.5078613   -1.5596950   -1.4560276
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -1.1398112   -1.3093447   -0.9702776
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.0340861   -0.4196277    0.3514555
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed          -1.4186341   -1.6284072   -1.2088610
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed          -0.8591978   -1.1495671   -0.5688286
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -1.2736984   -1.4451674   -1.1022295
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -0.9995198   -2.2835589    0.2845193
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.3057936   -1.3949878   -1.2165994
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -1.5253395   -1.7174390   -1.3332400
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -1.3271447   -1.3632807   -1.2910088
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.3366654   -1.3832446   -1.2900861
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -2.0279730   -2.1847339   -1.8712120
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.5075891   -0.7790042   -0.2361740
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -1.8534705   -1.9861040   -1.7208369
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed          -1.3883101   -1.8019225   -0.9746977
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -1.6495225   -1.8186474   -1.4803977
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -1.8912668   -2.0582913   -1.7242422
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed          -2.0374424   -2.1967557   -1.8781290
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -2.0136822   -2.0565033   -1.9708611
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -1.7764614   -1.8203631   -1.7325596


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.0530244   -1.1913751   -0.9146736
Birth       ki0047075b-MAL-ED     BRAZIL       observed             observed          -0.6963333   -0.9881882   -0.4044785
Birth       ki0047075b-MAL-ED     PERU         observed             observed          -0.9065728   -1.0297267   -0.7834188
Birth       ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.0641208   -1.1525364   -0.9757052
Birth       kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.2156259   -1.2478377   -1.1834141
Birth       kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.5273138   -1.5765339   -1.4780937
6 months    ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.1905988   -1.3103463   -1.0708514
6 months    ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED     INDIA        observed             observed          -1.2185703   -1.3422027   -1.0949380
6 months    ki0047075b-MAL-ED     NEPAL        observed             observed          -0.5616889   -0.6770008   -0.4463770
6 months    ki0047075b-MAL-ED     PERU         observed             observed          -1.3264945   -1.4355111   -1.2174779
6 months    ki1000109-EE          PAKISTAN     observed             observed          -2.1595486   -2.5331781   -1.7859192
6 months    ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.3540280   -1.4334801   -1.2745760
6 months    ki1148112-LCNI-5      MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -1.3370052   -1.3650190   -1.3089913
6 months    kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.3482303   -1.3866421   -1.3098185
24 months   ki0047075b-MAL-ED     BANGLADESH   observed             observed          -1.9581707   -2.0862906   -1.8300508
24 months   ki0047075b-MAL-ED     BRAZIL       observed             observed           0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED     INDIA        observed             observed          -1.8848804   -2.0154334   -1.7543274
24 months   ki0047075b-MAL-ED     NEPAL        observed             observed          -1.3232192   -1.4452887   -1.2011496
24 months   ki0047075b-MAL-ED     PERU         observed             observed          -1.7544776   -1.8753255   -1.6336298
24 months   ki1113344-GMS-Nepal   NEPAL        observed             observed          -1.9002128   -1.9869255   -1.8135001
24 months   ki1148112-LCNI-5      MALAWI       observed             observed          -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3     BANGLADESH   observed             observed          -2.0173019   -2.0536076   -1.9809962
24 months   kiGH5241-JiVitA-4     BANGLADESH   observed             observed          -1.7914765   -1.8297816   -1.7531715


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.0100150   -0.1455337   0.1655637
Birth       ki0047075b-MAL-ED     BRAZIL       optimal              observed          -0.0370219   -0.1538328   0.0797891
Birth       ki0047075b-MAL-ED     PERU         optimal              observed           0.0098901   -0.1030760   0.1228562
Birth       ki1113344-GMS-Nepal   NEPAL        optimal              observed           0.0190946   -0.0759898   0.1141790
Birth       kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0081637   -0.0334514   0.0171240
Birth       kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0194525   -0.0476813   0.0087762
6 months    ki0047075b-MAL-ED     BANGLADESH   optimal              observed          -0.0507877   -0.1863344   0.0847590
6 months    ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.0851068   -0.2663885   0.4366022
6 months    ki0047075b-MAL-ED     INDIA        optimal              observed           0.2000638    0.0218300   0.3782976
6 months    ki0047075b-MAL-ED     NEPAL        optimal              observed           0.2975090    0.0251704   0.5698475
6 months    ki0047075b-MAL-ED     PERU         optimal              observed          -0.0527960   -0.1944807   0.0888887
6 months    ki1000109-EE          PAKISTAN     optimal              observed          -1.1600288   -2.3949122   0.0748546
6 months    ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0482344   -0.0979154   0.0014466
6 months    ki1148112-LCNI-5      MALAWI       optimal              observed          -0.1142561   -0.2586421   0.0301299
6 months    kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0098604   -0.0335793   0.0138584
6 months    kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0115650   -0.0413734   0.0182434
24 months   ki0047075b-MAL-ED     BANGLADESH   optimal              observed           0.0698022   -0.0423617   0.1819661
24 months   ki0047075b-MAL-ED     BRAZIL       optimal              observed           0.5146897    0.2444378   0.7849416
24 months   ki0047075b-MAL-ED     INDIA        optimal              observed          -0.0314099   -0.0743791   0.0115593
24 months   ki0047075b-MAL-ED     NEPAL        optimal              observed           0.0650909   -0.3173380   0.4475198
24 months   ki0047075b-MAL-ED     PERU         optimal              observed          -0.1049551   -0.2388963   0.0289862
24 months   ki1113344-GMS-Nepal   NEPAL        optimal              observed          -0.0089460   -0.1391762   0.1212842
24 months   ki1148112-LCNI-5      MALAWI       optimal              observed           0.0723101   -0.0131004   0.1577206
24 months   kiGH5241-JiVitA-3     BANGLADESH   optimal              observed          -0.0036197   -0.0267843   0.0195448
24 months   kiGH5241-JiVitA-4     BANGLADESH   optimal              observed          -0.0150152   -0.0370219   0.0069915
