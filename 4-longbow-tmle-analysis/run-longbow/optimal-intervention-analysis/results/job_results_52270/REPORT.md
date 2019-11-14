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

**Intervention Variable:** hdlvry

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hdlvry    n_cell      n
----------  -------------------------  -----------------------------  -------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             92     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0     92
Birth       ki1000108-IRC              INDIA                          0            381    388
Birth       ki1000108-IRC              INDIA                          1              7    388
Birth       ki1000109-EE               PAKISTAN                       0            161    238
Birth       ki1000109-EE               PAKISTAN                       1             77    238
Birth       ki1000304b-SAS-CompFeed    INDIA                          0            124   1085
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            961   1085
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            391    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            148    539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            567    732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            165    732
Birth       ki1113344-GMS-Nepal        NEPAL                          0            157    646
Birth       ki1113344-GMS-Nepal        NEPAL                          1            489    646
Birth       ki1135781-COHORTS          INDIA                          0           2938   4694
Birth       ki1135781-COHORTS          INDIA                          1           1756   4694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0             41    349
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            308    349
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            554   2808
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1           2254   2808
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            358    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              8    366
6 months    ki1000108-IRC              INDIA                          0            399    407
6 months    ki1000108-IRC              INDIA                          1              8    407
6 months    ki1000109-EE               PAKISTAN                       0            250    371
6 months    ki1000109-EE               PAKISTAN                       1            121    371
6 months    ki1000304b-SAS-CompFeed    INDIA                          0            147   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            944   1091
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             76    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            304    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            450    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            154    604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            554    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            161    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1889   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             32   1921
6 months    ki1113344-GMS-Nepal        NEPAL                          0            129    528
6 months    ki1113344-GMS-Nepal        NEPAL                          1            399    528
6 months    ki1135781-COHORTS          INDIA                          0           2900   4699
6 months    ki1135781-COHORTS          INDIA                          1           1799   4699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             39    332
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            293    332
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1081   4038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1           2957   4038
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            360    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              8    368
24 months   ki1000108-IRC              INDIA                          0            401    409
24 months   ki1000108-IRC              INDIA                          1              8    409
24 months   ki1000109-EE               PAKISTAN                       0            112    166
24 months   ki1000109-EE               PAKISTAN                       1             54    166
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            433    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            145    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            391    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            123    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0            118    456
24 months   ki1113344-GMS-Nepal        NEPAL                          1            338    456
24 months   ki1135781-COHORTS          INDIA                          0           2233   3556
24 months   ki1135781-COHORTS          INDIA                          1           1323   3556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             35    291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            256    291
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1033   4005
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           2972   4005


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/1bb2332f-40b9-4a0a-9f5e-21b694b0cd1a/81c05449-5e22-4b65-ab74-e4df750e85db/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.6007180   -1.2692584    0.0678224
Birth       ki1000109-EE               PAKISTAN                       optimal              observed          -1.9449133   -2.2360192   -1.6538074
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4246252   -1.5554399   -1.2938105
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8653435   -0.9614418   -0.7692452
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8954562   -0.9895897   -0.8013226
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0639460   -1.1752333   -0.9526586
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6420491   -0.6959896   -0.5881086
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7756904   -1.1675038   -0.3838769
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3747231   -1.4919384   -1.2575078
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.0752073   -1.9722808   -0.1781338
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.2278664   -1.3620681   -1.0936648
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -2.0500242   -2.2099174   -1.8901311
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4046692   -1.4962983   -1.3130401
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.8032582   -2.0257436   -1.5807727
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0295546   -1.1148806   -0.9442285
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1701834   -1.2772636   -1.0631031
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.6448974   -0.7667548   -0.5230400
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.2492512   -1.3929524   -1.1055499
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -1.0122091   -1.0611371   -0.9632811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2777205   -1.6700669   -0.8853742
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.2704795   -1.3544842   -1.1864749
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.8928232   -3.3656506   -2.4199958
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.7870155   -1.8819635   -1.6920675
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -2.6149613   -2.8184359   -2.4114867
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5730628   -1.6694486   -1.4766770
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.3642898   -1.5013547   -1.2272249
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.8368629   -2.0071142   -1.6666116
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -2.1389682   -2.1941825   -2.0837539
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9706785   -2.3986149   -1.5427421
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.6736002   -1.7506944   -1.5965059


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1000109-EE               PAKISTAN                       observed             observed          -1.8614286   -2.0501173   -1.6727398
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4401843   -1.5334809   -1.3468878
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.0909443   -1.1734385   -1.0084500
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6762420   -0.7093108   -0.6431732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2665330   -1.4233277   -1.1097382
Birth       kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.5216453   -1.5715117   -1.4717789
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4189572   -1.5607165   -1.2771979
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       observed             observed          -2.0826460   -2.2022514   -1.9630406
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4699588   -1.5446559   -1.3952616
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5440573   -0.5945614   -0.4935533
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3296275   -1.4093037   -1.2499514
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0458076   -1.0793244   -1.0122908
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3017169   -1.4476325   -1.1558012
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3481303   -1.3904710   -1.3057895
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5611005   -2.6603759   -2.4618252
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   ki1000109-EE               PAKISTAN                       observed             observed          -2.6770382   -2.8210532   -2.5330231
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8717982   -1.9591776   -1.7844189
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.2218335   -2.2619519   -2.1817151
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.1628866   -2.3052995   -2.0204737
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7725918   -1.8111207   -1.7340629


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          optimal              observed           0.2926767   -0.3751442    0.9604977
Birth       ki1000109-EE               PAKISTAN                       optimal              observed           0.0834847   -0.1293656    0.2963350
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0155591   -0.0975033    0.0663851
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0197585   -0.0752361    0.0357190
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0140384   -0.0804217    0.0523450
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0269983   -0.1172040    0.0632074
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0341929   -0.0751845    0.0067987
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4908426   -0.8363641   -0.1453211
Birth       kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.1469222   -0.2515664   -0.0422780
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3437499   -1.2322184    0.5447186
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0065398   -0.0196539    0.0065743
6 months    ki1000109-EE               PAKISTAN                       optimal              observed          -0.0326218   -0.1437785    0.0785349
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0652895   -0.1390970    0.0085179
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.0954261   -0.2930137    0.1021616
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0621369   -0.1064540   -0.0178199
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0284950   -0.1033874    0.0463975
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1008400   -0.0087557    0.2104358
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0803764   -0.2104181    0.0496654
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0335985   -0.0685207    0.0013237
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0239963   -0.3705313    0.3225386
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0776508   -0.1477685   -0.0075330
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.3317227   -0.1358553    0.7993007
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.0117620   -0.0259374    0.0024135
24 months   ki1000109-EE               PAKISTAN                       optimal              observed          -0.0620768   -0.2214057    0.0972520
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0293594   -0.0764634    0.0177447
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0769748   -0.1807281    0.0267785
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0349354   -0.1804126    0.1105418
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.0828653   -0.1215894   -0.0441413
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1922081   -0.5593779    0.1749617
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.0989916   -0.1659825   -0.0320007
