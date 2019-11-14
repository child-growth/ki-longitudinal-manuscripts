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

**Intervention Variable:** exclfeed6

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

agecat      studyid                    country                        exclfeed6    n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                31     205
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               174     205
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 2      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                58      60
Birth       ki0047075b-MAL-ED          INDIA                          1                 1      39
Birth       ki0047075b-MAL-ED          INDIA                          0                38      39
Birth       ki0047075b-MAL-ED          NEPAL                          1                 2      24
Birth       ki0047075b-MAL-ED          NEPAL                          0                22      24
Birth       ki0047075b-MAL-ED          PERU                           1                 2     213
Birth       ki0047075b-MAL-ED          PERU                           0               211     213
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                91      91
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             12302   15793
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              3491   15793
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              2098    2632
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               534    2632
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                33     231
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               198     231
6 months    ki0047075b-MAL-ED          BRAZIL                         1                12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0               197     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 2     218
6 months    ki0047075b-MAL-ED          INDIA                          0               216     218
6 months    ki0047075b-MAL-ED          NEPAL                          1                 5     225
6 months    ki0047075b-MAL-ED          NEPAL                          0               220     225
6 months    ki0047075b-MAL-ED          PERU                           1                 5     271
6 months    ki0047075b-MAL-ED          PERU                           0               266     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     233
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               233     233
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               232     232
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7608    9877
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2269    9877
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3316    4272
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               956    4272
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                31     205
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               174     205
24 months   ki0047075b-MAL-ED          BRAZIL                         1                11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0               158     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 2     209
24 months   ki0047075b-MAL-ED          INDIA                          0               207     209
24 months   ki0047075b-MAL-ED          NEPAL                          1                 5     219
24 months   ki0047075b-MAL-ED          NEPAL                          0               214     219
24 months   ki0047075b-MAL-ED          PERU                           1                 3     201
24 months   ki0047075b-MAL-ED          PERU                           0               198     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0     216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               216     216
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     202
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               202     202
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3887    5048
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1161    5048
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3280    4199
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               919    4199


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
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
![](/tmp/b7b6527e-d1b1-48bb-82b9-a13f73706d58/4e730be2-5d7f-41f2-b80e-76b683a1a571/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -1.1156311   -1.2755302   -0.9557320
Birth       ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -1.5461965   -1.8640911   -1.2283019
Birth       ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.8724190   -0.9614949   -0.7833431
Birth       ki1101329-Keneba          GAMBIA       optimal              observed           0.0378594   -0.0534854    0.1292042
Birth       ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.0135961   -1.1337067   -0.8934854
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.2058596   -1.2472260   -1.1644932
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.5049810   -1.5892128   -1.4207492
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -1.2165569   -1.3942280   -1.0388857
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.3077080   -0.6834575    0.0680416
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.6258867   -1.0942735   -0.1574999
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -1.3145589   -1.4251493   -1.2039685
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -1.0750058   -2.6660228    0.5160113
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -1.4877061   -1.6531098   -1.3223023
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.2132893   -1.3258198   -1.1007587
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.8778458   -0.9643918   -0.7912997
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.3093939   -1.3991295   -1.2196583
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed          -1.5257075   -1.7257859   -1.3256292
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.3303964   -1.3616426   -1.2991503
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.3201911   -1.3646301   -1.2757521
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -2.0477699   -2.1905013   -1.9050385
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.3410161   -0.7530005    0.0709683
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -1.5025297   -1.8362521   -1.1688074
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.4685607   -1.5778972   -1.3592242
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -1.5187707   -1.6033573   -1.4341841
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.8431057   -2.0105544   -1.6756569
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed          -2.0452983   -2.2028822   -1.8877145
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -2.0069248   -2.0470394   -1.9668102
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.7801335   -1.8220261   -1.7382410


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.0530244   -1.1913751   -0.9146736
Birth       ki1000304b-SAS-CompFeed   INDIA        observed             observed          -1.3937088   -1.5095039   -1.2779137
Birth       ki1017093b-PROVIDE        BANGLADESH   observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1101329-Keneba          GAMBIA       observed             observed           0.0126443   -0.0554367    0.0807254
Birth       ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.0641208   -1.1525364   -0.9757052
Birth       kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.2156259   -1.2478377   -1.1834141
Birth       kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.5273138   -1.5765339   -1.4780937
6 months    ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.1905988   -1.3103463   -1.0708514
6 months    ki0047075b-MAL-ED         BRAZIL       observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED         NEPAL        observed             observed          -0.5616889   -0.6770008   -0.4463770
6 months    ki0047075b-MAL-ED         PERU         observed             observed          -1.3264945   -1.4355111   -1.2174779
6 months    ki1000109-EE              PAKISTAN     observed             observed          -2.1595486   -2.5331781   -1.7859192
6 months    ki1000304b-SAS-CompFeed   INDIA        observed             observed          -1.4697236   -1.6333919   -1.3060553
6 months    ki1017093b-PROVIDE        BANGLADESH   observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1101329-Keneba          GAMBIA       observed             observed          -0.9331108   -0.9823173   -0.8839043
6 months    ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.3540280   -1.4334801   -1.2745760
6 months    ki1148112-LCNI-5          MALAWI       observed             observed          -1.6395956   -1.7592633   -1.5199278
6 months    kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.3370052   -1.3650190   -1.3089913
6 months    kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.3482303   -1.3866421   -1.3098185
24 months   ki0047075b-MAL-ED         BANGLADESH   observed             observed          -1.9581707   -2.0862906   -1.8300508
24 months   ki0047075b-MAL-ED         BRAZIL       observed             observed           0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED         NEPAL        observed             observed          -1.3232192   -1.4452887   -1.2011496
24 months   ki1017093b-PROVIDE        BANGLADESH   observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1101329-Keneba          GAMBIA       observed             observed          -1.5876293   -1.6406755   -1.5345831
24 months   ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.9002128   -1.9869255   -1.8135001
24 months   ki1148112-LCNI-5          MALAWI       observed             observed          -1.9651323   -2.1053230   -1.8249415
24 months   kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -2.0173019   -2.0536076   -1.9809962
24 months   kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.7914765   -1.8297816   -1.7531715


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.0626067   -0.0362173    0.1614307
Birth       ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.1524877   -0.1183159    0.4232913
Birth       ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.0126830   -0.0541556    0.0287895
Birth       ki1101329-Keneba          GAMBIA       optimal              observed          -0.0252151   -0.0877332    0.0373030
Birth       ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0505247   -0.1496064    0.0485570
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0097663   -0.0339850    0.0144525
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0223328   -0.0882831    0.0436174
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.0259580   -0.1309579    0.1828739
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.3587287   -0.0127668    0.7302242
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed           0.0641978   -0.4040966    0.5324921
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -0.0119356   -0.0281868    0.0043157
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -1.0845429   -2.6132472    0.4441615
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.0179824   -0.0394213    0.0753861
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.1215978    0.0274869    0.2157086
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.0552650   -0.1259612    0.0154312
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0446341   -0.0970752    0.0078069
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed          -0.1138880   -0.2762953    0.0485192
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0066087   -0.0210487    0.0078312
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0280392   -0.0558613   -0.0002172
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.0895992   -0.0110744    0.1902728
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.3481167   -0.0433144    0.7395477
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed           0.1793106   -0.1664455    0.5250666
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.1338614   -0.2072346   -0.0604883
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.0688586   -0.1391043    0.0013870
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0571071   -0.1881212    0.0739070
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed           0.0801661   -0.0124127    0.1727449
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0103771   -0.0280938    0.0073396
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0113430   -0.0289315    0.0062454
