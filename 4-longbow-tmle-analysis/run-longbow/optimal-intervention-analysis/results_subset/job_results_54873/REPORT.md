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

**Outcome Variable:** whz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                68     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               126     194
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 5      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                52      57
Birth       ki0047075b-MAL-ED          INDIA                          1                 4      37
Birth       ki0047075b-MAL-ED          INDIA                          0                33      37
Birth       ki0047075b-MAL-ED          NEPAL                          1                 3      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                20      23
Birth       ki0047075b-MAL-ED          PERU                           1                72     208
Birth       ki0047075b-MAL-ED          PERU                           0               136     208
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                89      90
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               105     105
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       7
Birth       ki1000108-IRC              INDIA                          1                 0      12
Birth       ki1000108-IRC              INDIA                          0                12      12
Birth       ki1000109-EE               PAKISTAN                       1                24      28
Birth       ki1000109-EE               PAKISTAN                       0                 4      28
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               310     325
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                15     325
Birth       ki1017093b-PROVIDE         BANGLADESH                     1               155     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     0               377     532
Birth       ki1101329-Keneba           GAMBIA                         1               450    1327
Birth       ki1101329-Keneba           GAMBIA                         0               877    1327
Birth       ki1113344-GMS-Nepal        NEPAL                          1               390     522
Birth       ki1113344-GMS-Nepal        NEPAL                          0               132     522
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              8392   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2352   10744
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1802    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               422    2224
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               376     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                19     395
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0               168     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               141     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               462     603
6 months    ki1101329-Keneba           GAMBIA                         1               586    1908
6 months    ki1101329-Keneba           GAMBIA                         0              1322    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1               406     547
6 months    ki1113344-GMS-Nepal        NEPAL                          0               141     547
6 months    ki1148112-LCNI-5           MALAWI                         1                47     272
6 months    ki1148112-LCNI-5           MALAWI                         0               225     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7625    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2257    9882
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3327    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               948    4275
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               137     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               442     579
24 months   ki1101329-Keneba           GAMBIA                         1               514    1514
24 months   ki1101329-Keneba           GAMBIA                         0              1000    1514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               355     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     469
24 months   ki1148112-LCNI-5           MALAWI                         1                34     184
24 months   ki1148112-LCNI-5           MALAWI                         0               150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3909    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1158    5067
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3278    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               906    4184


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
![](/tmp/ef5eff6b-bc86-49bf-aa09-cb44195df540/e14a2010-72d3-483a-a2ec-003ab56a21d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.8778364   -1.1037553   -0.6519176
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.1842677   -0.4936490    0.8621844
Birth       ki0047075b-MAL-ED         PERU         optimal              observed           0.0046469   -0.2186930    0.2279868
Birth       ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -0.6562835   -0.8852815   -0.4272855
Birth       ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.2991002   -1.3874910   -1.2107093
Birth       ki1101329-Keneba          GAMBIA       optimal              observed          -1.3033587   -1.4016781   -1.2050392
Birth       ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.0494536   -1.1860678   -0.9128394
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.7687135   -0.8056566   -0.7317705
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.6748650   -0.7297550   -0.6199750
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.1652675   -0.3375635    0.0070286
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed           1.4868898    1.0278642    1.9459155
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed          -0.1346697   -0.6472605    0.3779212
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed           0.0805405   -0.2762151    0.4372962
6 months    ki0047075b-MAL-ED         PERU         optimal              observed           1.2188016    1.0181539    1.4194493
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -0.6771604   -1.1086914   -0.2456295
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -0.7249143   -1.0477394   -0.4020893
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.0323884   -0.1307832    0.1955600
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.0223220   -0.1204032    0.0757593
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.6075305   -0.7234272   -0.4916338
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed           0.3360406    0.2159253    0.4561558
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.5850768   -0.6226955   -0.5474580
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.3470911   -0.3918149   -0.3023673
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.7337115   -0.8929813   -0.5744417
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.3141300   -0.0881783    0.7164384
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -0.7293238   -1.2031978   -0.2554497
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.5338748   -1.0241507   -0.0435988
24 months   ki0047075b-MAL-ED         PERU         optimal              observed           0.0794949   -0.0957878    0.2547777
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.7909868   -0.9529463   -0.6290274
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.6831037   -0.7629357   -0.6032718
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.0650701   -1.1737372   -0.9564029
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed          -0.0537916   -0.2154906    0.1079074
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.2770512   -1.3402937   -1.2138088
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.1993720   -1.2664304   -1.1323136


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   observed             observed          -0.9755670   -1.1287016   -0.8224325
Birth       ki0047075b-MAL-ED         BRAZIL       observed             observed           0.4643860    0.1360519    0.7927200
Birth       ki0047075b-MAL-ED         PERU         observed             observed          -0.0587981   -0.1871869    0.0695908
Birth       ki1000304b-SAS-CompFeed   INDIA        observed             observed          -0.6596308   -0.9005716   -0.4186900
Birth       ki1017093b-PROVIDE        BANGLADESH   observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1101329-Keneba          GAMBIA       observed             observed          -1.2599925   -1.3251703   -1.1948146
Birth       ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.1064559   -1.2034951   -1.0094168
Birth       kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -0.7807809   -0.8030521   -0.7585097
Birth       kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -0.6904586   -0.7435822   -0.6373351
6 months    ki0047075b-MAL-ED         BANGLADESH   observed             observed          -0.1213203   -0.2539388    0.0112981
6 months    ki0047075b-MAL-ED         BRAZIL       observed             observed           0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED         INDIA        observed             observed          -0.7067317   -0.8369134   -0.5765499
6 months    ki0047075b-MAL-ED         NEPAL        observed             observed           0.1091407   -0.0265536    0.2448351
6 months    ki0047075b-MAL-ED         PERU         observed             observed           1.0506150    0.9281868    1.1730433
6 months    ki1000109-EE              PAKISTAN     observed             observed          -0.6106944   -0.9239621   -0.2974268
6 months    ki1000304b-SAS-CompFeed   INDIA        observed             observed          -0.6348861   -0.7630511   -0.5067211
6 months    ki1017093b-PROVIDE        BANGLADESH   observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1101329-Keneba          GAMBIA       observed             observed          -0.1997647   -0.2531388   -0.1463906
6 months    ki1113344-GMS-Nepal       NEPAL        observed             observed          -0.6009171   -0.6886356   -0.5131986
6 months    ki1148112-LCNI-5          MALAWI       observed             observed           0.3925000    0.2735307    0.5114693
6 months    kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -0.6001300   -0.6240378   -0.5762223
6 months    kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -0.3968456   -0.4358721   -0.3578192
24 months   ki0047075b-MAL-ED         BANGLADESH   observed             observed          -0.8169756   -0.9388013   -0.6951499
24 months   ki0047075b-MAL-ED         BRAZIL       observed             observed           0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED         INDIA        observed             observed          -0.9442584   -1.0642426   -0.8242742
24 months   ki0047075b-MAL-ED         NEPAL        observed             observed          -0.3674429   -0.4840752   -0.2508107
24 months   ki0047075b-MAL-ED         PERU         observed             observed           0.1111982   -0.0118399    0.2342362
24 months   ki1017093b-PROVIDE        BANGLADESH   observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba          GAMBIA       observed             observed          -0.8032329   -0.8532842   -0.7531817
24 months   ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.1423525   -1.2336321   -1.0510729
24 months   ki1148112-LCNI-5          MALAWI       observed             observed          -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.3103375   -1.3408810   -1.2797940
24 months   kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.2265320   -1.2620508   -1.1910132


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.0977306   -0.2707052    0.0752440
Birth       ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.2801183   -0.3026619    0.8628985
Birth       ki0047075b-MAL-ED         PERU         optimal              observed          -0.0634450   -0.2492225    0.1223325
Birth       ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -0.0033473   -0.0446450    0.0379504
Birth       ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.0006415   -0.0464989    0.0477820
Birth       ki1101329-Keneba          GAMBIA       optimal              observed           0.0433662   -0.0306247    0.1173571
Birth       ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0570024   -0.1567812    0.0427764
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0120674   -0.0427113    0.0185766
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0155936   -0.0428726    0.0116853
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.0439471   -0.0654115    0.1533057
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.5148125   -0.9358237   -0.0938013
6 months    ki0047075b-MAL-ED         INDIA        optimal              observed          -0.5720620   -1.0791145   -0.0650095
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed           0.0286002   -0.3183263    0.3755267
6 months    ki0047075b-MAL-ED         PERU         optimal              observed          -0.1681866   -0.3340954   -0.0022778
6 months    ki1000109-EE              PAKISTAN     optimal              observed           0.0664660   -0.4245803    0.5575123
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.0900283   -0.2741145    0.4541710
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.2314791   -0.3753540   -0.0876041
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.1774427   -0.2582456   -0.0966398
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed           0.0066134   -0.0689233    0.0821500
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed           0.0564594   -0.0238227    0.1367416
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0150533   -0.0457142    0.0156077
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0497545   -0.0719515   -0.0275575
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.0832641   -0.1715611    0.0050329
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.1484933   -0.2028332    0.4998197
24 months   ki0047075b-MAL-ED         INDIA        optimal              observed          -0.2149346   -0.6828729    0.2530036
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed           0.1664318   -0.3083576    0.6412213
24 months   ki0047075b-MAL-ED         PERU         optimal              observed           0.0317032   -0.0989779    0.1623844
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.1018802   -0.2433769    0.0396165
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.1201292   -0.1842959   -0.0559625
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0772825   -0.1507723   -0.0037926
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed          -0.0232736   -0.0895832    0.0430359
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0332862   -0.0889534    0.0223809
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0271600   -0.0782502    0.0239301
