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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                29     194
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               165     194
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1      57
Birth       ki0047075b-MAL-ED          BRAZIL                         0                56      57
Birth       ki0047075b-MAL-ED          INDIA                          1                 1      37
Birth       ki0047075b-MAL-ED          INDIA                          0                36      37
Birth       ki0047075b-MAL-ED          NEPAL                          1                 2      23
Birth       ki0047075b-MAL-ED          NEPAL                          0                21      23
Birth       ki0047075b-MAL-ED          PERU                           1                 2     208
Birth       ki0047075b-MAL-ED          PERU                           0               206     208
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      90
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                90      90
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              8381   10744
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              2363   10744
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1799    2224
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               425    2224
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              7610    9882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              2272    9882
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              3315    4275
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               960    4275
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               137     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               442     579
24 months   ki1101329-Keneba           GAMBIA                         1               514    1514
24 months   ki1101329-Keneba           GAMBIA                         0              1000    1514
24 months   ki1113344-GMS-Nepal        NEPAL                          1               355     469
24 months   ki1113344-GMS-Nepal        NEPAL                          0               114     469
24 months   ki1148112-LCNI-5           MALAWI                         1                34     184
24 months   ki1148112-LCNI-5           MALAWI                         0               150     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              3899    5067
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1168    5067
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              3266    4184
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               918    4184


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/27397cf8-e602-4aaa-80b9-1fdabf23eda2/ac4a02aa-e063-40b0-88e5-877a20aa3ea7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.7790103   -1.1483743   -0.4096464
Birth       ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -0.6562835   -0.8852815   -0.4272855
Birth       ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -1.3595399   -1.4617107   -1.2573691
Birth       ki1101329-Keneba          GAMBIA       optimal              observed          -1.2722403   -1.3706538   -1.1738268
Birth       ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.1235644   -1.2620078   -0.9851211
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.7628029   -0.8011415   -0.7244642
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.6760103   -0.7309552   -0.6210654
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.2934728   -0.5580581   -0.0288874
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed           1.3434957    0.6703247    2.0166668
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.0871609   -0.2424011    0.0680792
6 months    ki0047075b-MAL-ED         PERU         optimal              observed           0.9113307    0.7792285    1.0434330
6 months    ki1000109-EE              PAKISTAN     optimal              observed          -0.7393167   -1.1924599   -0.2861735
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -0.7249143   -1.0477394   -0.4020893
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.0116905   -0.1534679    0.1768490
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.0230607   -0.1211376    0.0750162
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.5851865   -0.7074614   -0.4629115
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed           0.5019796    0.2628933    0.7410658
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.5898484   -0.6353978   -0.5442990
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.3532244   -0.3985077   -0.3079410
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.9123947   -1.0930897   -0.7316997
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed           0.6541836    0.1063827    1.2019846
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed          -0.5120648   -0.6404117   -0.3837179
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.7868618   -0.9481969   -0.6255267
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.6812937   -0.7608143   -0.6017732
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -1.0142418   -1.1404626   -0.8880210
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed          -0.1390921   -0.3210454    0.0428612
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -1.2948899   -1.3537373   -1.2360425
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -1.1723195   -1.2317205   -1.1129185


### Parameter: E(Y)


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   observed             observed          -0.9755670   -1.1287016   -0.8224325
Birth       ki1000304b-SAS-CompFeed   INDIA        observed             observed          -0.6596308   -0.9005716   -0.4186900
Birth       ki1017093b-PROVIDE        BANGLADESH   observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1101329-Keneba          GAMBIA       observed             observed          -1.2599925   -1.3251703   -1.1948146
Birth       ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.1064559   -1.2034951   -1.0094168
Birth       kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -0.7807809   -0.8030521   -0.7585097
Birth       kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -0.6904586   -0.7435822   -0.6373351
6 months    ki0047075b-MAL-ED         BANGLADESH   observed             observed          -0.1213203   -0.2539388    0.0112981
6 months    ki0047075b-MAL-ED         BRAZIL       observed             observed           0.9720774    0.8078144    1.1363403
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
24 months   ki0047075b-MAL-ED         NEPAL        observed             observed          -0.3674429   -0.4840752   -0.2508107
24 months   ki1017093b-PROVIDE        BANGLADESH   observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba          GAMBIA       observed             observed          -0.8032329   -0.8532842   -0.7531817
24 months   ki1113344-GMS-Nepal       NEPAL        observed             observed          -1.1423525   -1.2336321   -1.0510729
24 months   ki1148112-LCNI-5          MALAWI       observed             observed          -0.0770652   -0.2204213    0.0662909
24 months   kiGH5241-JiVitA-3         BANGLADESH   observed             observed          -1.3103375   -1.3408810   -1.2797940
24 months   kiGH5241-JiVitA-4         BANGLADESH   observed             observed          -1.2265320   -1.2620508   -1.1910132


### Parameter: PAR


agecat      studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH   optimal              observed          -0.1965567   -0.5489562    0.1558429
Birth       ki1000304b-SAS-CompFeed   INDIA        optimal              observed          -0.0033473   -0.0446450    0.0379504
Birth       ki1017093b-PROVIDE        BANGLADESH   optimal              observed           0.0610813   -0.0017752    0.1239378
Birth       ki1101329-Keneba          GAMBIA       optimal              observed           0.0122478   -0.0624196    0.0869153
Birth       ki1113344-GMS-Nepal       NEPAL        optimal              observed           0.0171085   -0.0825910    0.1168080
Birth       kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0179780   -0.0495800    0.0136240
Birth       kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0144483   -0.0416758    0.0127792
6 months    ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.1721524   -0.0735213    0.4178262
6 months    ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.3714184   -1.0273921    0.2845553
6 months    ki0047075b-MAL-ED         NEPAL        optimal              observed           0.1963017    0.0857679    0.3068354
6 months    ki0047075b-MAL-ED         PERU         optimal              observed           0.1392843    0.0685855    0.2099831
6 months    ki1000109-EE              PAKISTAN     optimal              observed           0.1286222   -0.3610048    0.6182492
6 months    ki1000304b-SAS-CompFeed   INDIA        optimal              observed           0.0900283   -0.2741145    0.4541710
6 months    ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.2107812   -0.3563850   -0.0651774
6 months    ki1101329-Keneba          GAMBIA       optimal              observed          -0.1767039   -0.2572179   -0.0961899
6 months    ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.0157307   -0.0914466    0.0599853
6 months    ki1148112-LCNI-5          MALAWI       optimal              observed          -0.1094796   -0.3102218    0.0912626
6 months    kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0102816   -0.0500832    0.0295199
6 months    kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0436213   -0.0675515   -0.0196910
24 months   ki0047075b-MAL-ED         BANGLADESH   optimal              observed           0.0954191   -0.0362633    0.2271015
24 months   ki0047075b-MAL-ED         BRAZIL       optimal              observed          -0.1915604   -0.6756509    0.2925302
24 months   ki0047075b-MAL-ED         NEPAL        optimal              observed           0.1446219    0.0686412    0.2206026
24 months   ki1017093b-PROVIDE        BANGLADESH   optimal              observed          -0.1060052   -0.2468032    0.0347928
24 months   ki1101329-Keneba          GAMBIA       optimal              observed          -0.1219392   -0.1852083   -0.0586701
24 months   ki1113344-GMS-Nepal       NEPAL        optimal              observed          -0.1281107   -0.2208602   -0.0353612
24 months   ki1148112-LCNI-5          MALAWI       optimal              observed           0.0620269   -0.0453583    0.1694120
24 months   kiGH5241-JiVitA-3         BANGLADESH   optimal              observed          -0.0154476   -0.0655252    0.0346300
24 months   kiGH5241-JiVitA-4         BANGLADESH   optimal              observed          -0.0542125   -0.1002211   -0.0082040
